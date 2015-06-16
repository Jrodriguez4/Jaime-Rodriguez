/*
 * nocLock_v2.c
 *
 * Created: 10/22/2014 7:12:52 PM
 *  Authors: Sean Koppenhafer, Travis Berger, Cameron Tribe, Jaime Rodriguez
 */ 

#define F_CPU 8000000				//8MHz CPU clock
#define MAXIMUM_KNOCKS 100
#define SOUND_THRESHOLD 60
#define TIME_OFFSET_MS 500		//Time tolerance for input knocks
#define POST_KNOCK_DELAY_MS 75		//Time to delay in ms after a knock spike on ADC
#define LED_DELAY_TIME_MS 2000		//Delay time for LEDs to stay on
#define BUTTON_DELAY_TIME_MS 200
#define OUTSIDE_BUTTON_DELAY 300
#define FLASH_DELAY 500

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h>
#include <inttypes.h>
#include <util/delay.h>

/* Button functions */
uint8_t check_inside_button(void);
uint8_t check_outside_button(void);
uint8_t check_reset_button(void);

/* Functions that deal with the knocks */
uint8_t record_knock(int*);
void check_knock(int*, uint8_t);
uint8_t read_knocks(int*, uint8_t (*button_function)(void));
uint8_t compare_knocks(int*, int*, uint8_t, uint8_t);

/* Output control functions */
void open_lock(void);
void close_lock(void);
void green_LED_on(void);
void red_LED_on(void);
void yellow_LED_on(void);
void blink_red(void);

/* Timer functions */
void turn_on_timer(void);
void turn_off_timer(void);

/* ADC functions */
void setup_ADC(void);
void start_conversion(void);

/* EEPROM functions */
void write_eeprom(int*, uint8_t);
uint8_t read_eeprom(int*);

volatile int current_time_ms = 0;

int main(void)
{
	uint8_t number_of_knocks, temp_num_knocks;
	uint8_t inside_button, outside_button, reset_button;
	int knock_times[MAXIMUM_KNOCKS];
	DDRB = 0x1C;			//Make PORTB 2-4 an output and PORTB 0-1, 6 an input
	PORTB = 0x00;			//Set outputs to low on default
	CLKPR = (1 << CLKPCE);	//Set this bit before changing clock pre-scaler
	CLKPR = 0;				//Set pre-scaler to 1 for 8MHz clock
	
	/* Setup */
	inside_button = 0;
	outside_button = 0;
	reset_button = 0;
	setup_ADC();
	red_LED_on();
	
	/*If EEPROM reads 0xFF, then no knock is stored*/
	number_of_knocks = read_eeprom(&knock_times[0]);
	
	/* If no knock is stored, then go into special first time condition */
	if( number_of_knocks == 0xFF ) {
RESET:
		/* Loop until a knock is recorded */
		for(;;) {
			if(outside_button) {
				open_lock();
			}
			if(inside_button) {
				_delay_ms(BUTTON_DELAY_TIME_MS);	//Wait for the button press period to pass
				number_of_knocks = record_knock(&knock_times[0]);
				
				//Need to check the inside button again to avoid getting caught in this loop
				inside_button = check_inside_button();
				_delay_ms(BUTTON_DELAY_TIME_MS);
				//Check for a valid knock number
				if( number_of_knocks > 0 && number_of_knocks < MAXIMUM_KNOCKS ) {
					break;
				}
			}
			
			outside_button = check_outside_button();
			inside_button = check_inside_button();
		}
	}
	
	//Update the button state before entering next loop
	outside_button = check_outside_button();
	inside_button = check_inside_button();
	reset_button = check_reset_button();
	
	for(;;) {
		if(outside_button) {
			_delay_ms(OUTSIDE_BUTTON_DELAY);	//Wait for the button press period to pass
			check_knock(&knock_times[0], number_of_knocks);
			_delay_ms(OUTSIDE_BUTTON_DELAY);	//Wait for the button press period to pass
		}
		if(inside_button) {
			_delay_ms(BUTTON_DELAY_TIME_MS);	//Wait for the button press period to pass
			temp_num_knocks = record_knock(&knock_times[0]);
			if(temp_num_knocks > 0 && temp_num_knocks < MAXIMUM_KNOCKS) {
				number_of_knocks = temp_num_knocks;
			}
			_delay_ms(BUTTON_DELAY_TIME_MS);	//Wait for the button press period to pass
		}
		if(reset_button) {
			//Reset the knock in eeprom as backdoor fail safe
			_delay_ms(BUTTON_DELAY_TIME_MS);
			write_eeprom(NULL,0xFF);	//Reset the eeprom
			number_of_knocks = 0;
			goto RESET;
		}
			
		outside_button = check_outside_button();
		inside_button = check_inside_button();
		reset_button = check_reset_button();
	}
	
	return 0;
}

/* Button is active high */
uint8_t check_inside_button(void) {
	uint8_t pin_mask = 0x01;
	uint8_t retval = PINB & pin_mask;
	return retval;
}

/* Button is active high */
uint8_t check_outside_button(void) {
	uint8_t pin_mask = 0x02;
	uint8_t retval = PINB & pin_mask;
	return retval;
}

/* Button is active high */
uint8_t check_reset_button(void) {
	uint8_t pin_mask = 0x40;
	uint8_t retval = PINB & pin_mask;
	return retval;
}

/* Inside button press gets us here.  This function saves a new knock combination.
** Returns 0 if button is pressed before knocks are done
** Returns 0xFE or 0xFF if knocks do not match
** Returns knock count if the knocks do match
*/
uint8_t record_knock(int* knock_times) {
	uint8_t first_num_knocks, second_num_knocks;
	uint8_t compare_return;
	int confirmation_knocks[MAXIMUM_KNOCKS];
	
	//Turn on yellow LED and read first knock
	yellow_LED_on();
	first_num_knocks = read_knocks(knock_times, &check_inside_button);
	//Button was pressed to exit recording mode
	if( first_num_knocks == 0 ) {
		goto EXIT;
	}
	green_LED_on();
	_delay_ms(LED_DELAY_TIME_MS);
	yellow_LED_on();
	
	//Get confirmation knock and then compare the two knocks
	second_num_knocks = read_knocks(&confirmation_knocks[0], &check_inside_button);
	compare_return = compare_knocks(knock_times, &confirmation_knocks[0], first_num_knocks, second_num_knocks);
	
	//Return value of 0 means no error
	if(!compare_return) {
		green_LED_on();
		_delay_ms(LED_DELAY_TIME_MS);
		write_eeprom(knock_times, first_num_knocks);
	}
	else {
		//Return zero knocks if there was a compare error
		//Then flash the LED twice
		first_num_knocks = 0;
		blink_red();
	}
	
EXIT:
	red_LED_on();
	return first_num_knocks;
}

/* Input knock sequence and compare it to the stored knock.  If same, then open lock */
void check_knock(int* stored_knocks, uint8_t stored_knock_num) {
	int new_knock_times[MAXIMUM_KNOCKS];
	uint8_t new_knock_num;
	uint8_t compare_return;
	
	//Turn on yellow LED and read in knock
	yellow_LED_on();
	new_knock_num = read_knocks(&new_knock_times[0], &check_outside_button);
	//Button was pressed to exist listening mode
	if( new_knock_num == 0 ) {
		goto EXIT;
	}
	compare_return = compare_knocks(stored_knocks, &new_knock_times[0], stored_knock_num, new_knock_num);

	//Non-zero return is error
	if(!compare_return) {
		open_lock();
	}
	else {
		blink_red();
	}
	
EXIT:
	red_LED_on();
}

/* Reads the knock in from the knock sensor
** Return 0 if button pressed to exit
** Return knock count otherwise
*/
uint8_t read_knocks(int* knock_array, uint8_t (*button_function)(void) ) {
	uint8_t knock_index;
	uint8_t button_value = button_function();	/* Use function pointer so function can be used for inside/outside button */
	knock_index = 0;
	sei();		//Turn on global interrupts
	
	while( ADC < SOUND_THRESHOLD ) {
		if( button_value ) {
			 knock_index = 0;
			goto EXIT; //No knocks were recorded before the button was pressed
		}
		//Update button status
		button_value =  button_function();
	}
	knock_array[knock_index++] = 0;
	_delay_ms(POST_KNOCK_DELAY_MS);		//Delay after first spike in knock value
	turn_on_timer();

	button_value =  button_function();
	//Grab input until button is pressed again
	while( !button_value ) {
		//Only store sounds that are louder than the threshold
		if( ADC > SOUND_THRESHOLD ) {
			knock_array[knock_index++] = current_time_ms;
			_delay_ms(POST_KNOCK_DELAY_MS);		//Delay after first spike in knock value
		}
	
		button_value =  button_function();
	}

	turn_off_timer();
EXIT:
	cli();		//Turn off global interrupts
	return knock_index;
}

/* Compares the knock times.  
** Returns 0xFE if the knock numbers don't match
** Returns 0xFD if the knock times don't match 
*/
uint8_t compare_knocks(int* stored_knock, int* new_knock, uint8_t stored_knock_num, uint8_t new_knock_num) {
	int timer_index;
	int stored, new;
	uint8_t retval = 0;
	
	//Check if number of knocks are the same
	if(stored_knock_num != new_knock_num) {
		retval = 0xFE;	//Error condition
		goto EXIT;
	}
	
	//Compare the timer values - needs a threshold to accept reasonable values
	for(timer_index = 0; timer_index < stored_knock_num; timer_index++) {
		stored = stored_knock[timer_index];
		new = new_knock[timer_index];
		if( (new < (stored - TIME_OFFSET_MS)) || (new > (stored + TIME_OFFSET_MS)) ) {
			retval = 0xFF;	//Error condition
			goto EXIT;
		}
	}
	
EXIT:
	return retval;
}


/* Active high solenoid - only stay open for 5 seconds at a time*/
void open_lock(void) {
	unsigned int open_time_ms = 5000;
	PORTB |= 0x04;
	green_LED_on();
	_delay_ms(open_time_ms);
	close_lock();
}

void close_lock(void) {
	PORTB &= ~0x04;
	red_LED_on();
}

void green_LED_on(void) {
	PORTB |= 0x08;		//Turn on green LED
	PORTB &= ~0x10;		//Turn off red LED
}

void red_LED_on(void) {
	PORTB |= 0x10;		//Turn on red LED
	PORTB &= ~0x08;		//Turn off green LED
}

void yellow_LED_on(void) {
	PORTB |= 0x18;		//Turn on red and green pins to make yellow
}

void blink_red(void) {
	PORTB &= ~0x08;		//Turn off green LED
	PORTB &= ~0x10;		//Turn off red LED
	_delay_ms(FLASH_DELAY);
	red_LED_on();
	_delay_ms(FLASH_DELAY);
	PORTB &= ~0x10;		//Turn off red LED
	_delay_ms(FLASH_DELAY);
	red_LED_on();
	_delay_ms(FLASH_DELAY);
	PORTB &= ~0x10;		//Turn off red LED
	_delay_ms(FLASH_DELAY);
}

/* Turns on the timer */
void turn_on_timer(void) {
	uint8_t compare_ticks = 125;		//Interrupt every 1ms
	TCCR0A = (1 << WGM01);				//Set the CTC bit
	OCR0A = compare_ticks;				//Interrupt every 1ms
	TIMSK0 = (1 << OCIE0A);				//Enable compare register interrupts
	TCCR0B = (1 << CS01) | (1 << CS00);	//Set pre-scalar to 64
}

/* Shuts the timer off */
void turn_off_timer(void) {
	current_time_ms = 0;
	TCCR0A = (0 << WGM01);
	OCR0A = 0;
	TIMSK0 = (0 << OCIE0A);
	TCCR0B = (0 << CS01) & (0 << CS00);
	TCNT0 = 0;	//Reset timer counter
}

/* Sets up the analog to digital converter */
void setup_ADC(void) {
	ADMUX = (1 << REFS0) | (1 << MUX2) | (1 << MUX0);	//Vcc external reference voltage and ADC MUX 5
	ADCSRA = (1 << ADEN) | (1 << ADIE) | (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);	//Enable ADC, enable interrupts, and set pre-scaler to 128
	DIDR0 = (1 << ADC5D);
	
	start_conversion();
}

/* Starts an A to D conversion */
void start_conversion(void) {
	ADCSRA |= (1 << ADSC);	//Start the conversion
}

/* Stores the knock times in eeprom in case power is turned off */
void write_eeprom(int* knock_times, uint8_t knock_number) {
	uint8_t i;
	int eeprom_address;
	eeprom_address = 0;
	
	/* Write the number of knocks to address 0x00 in eeprom
	then write the knock times into the next addresses */
	eeprom_write_byte( (uint8_t*)eeprom_address, knock_number );
	eeprom_address += 4;		//dword align the address
	
	for(i = 0; i < knock_number; i++) {
		eeprom_write_dword( (uint32_t*)eeprom_address, (uint32_t)knock_times[i] );
		eeprom_address += 4;
	}
}

/* Read the knock times back out of eeprom after a reset event */
uint8_t read_eeprom(int* knock_times) {
	uint8_t i;
	uint8_t knock_count;
	int eeprom_address;
	eeprom_address = 0;
	
	//Read in the number of knocks first
	knock_count = eeprom_read_byte( (uint8_t*)eeprom_address );
	eeprom_address += 4;
	
	//EEPROM resets to 0xFF
	if (knock_count == 0xFF)
		goto EXIT;
	else if(knock_count > MAXIMUM_KNOCKS) {
		knock_count = 0xFF;		//Return this as error code
		goto EXIT;
	}
		
	//If there are valid set of knocks in memory, read them in now
	for(i = 0; i < knock_count; i++) {
		knock_times[i] = eeprom_read_dword( (uint32_t*)eeprom_address );
		eeprom_address += 4;
	}
	
EXIT:
	return knock_count;
}

/* Interrupt service routine for timer */
ISR(TIMER0_COMPA_vect) {
	current_time_ms++;
}

/* Interrupt service routine for A to D converter */
ISR(ADC_vect) {
	start_conversion();
}
