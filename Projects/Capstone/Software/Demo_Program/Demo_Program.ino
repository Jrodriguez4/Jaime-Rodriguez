// Digital Dash - Capstone 2015
// Sean Koppenhafer, Chad Thueson, Jaime Rodriguez, Rishal Dass and Noah Erickson
//
// Demo program that runs on a second board to simulate messages coming from the car
// Should be used to demo the project when away from the car for the capstone presentation
//
// Uses due_can library from https://github.com/collin80/due_can

#include <due_can.h>
#include <inttypes.h>

//These can be uncommented for debugging purposes
//#define DEBUG_MOTOR_TORQUE
//#define DEBUG_GATE
//#define DEBUG_CELL_VOLTAGE
//#define JITTER_DEBUG
#define FULL_DEMO

//RMS CAN message IDs
#define TEMP1_ID                  0x0A0  
#define MOTOR_TORQUE_ID           0x0AC

//BMS CAN message IDs
#define RLEC4_ID 0x1C4

//Input analog pins
#define GATE_DRIVER_PIN 0    //Actually AIN3 (pin 23) on EVCU
#define MOTOR_TORQUE_PIN 2   //Actually AIN1 (pin 21) on EVCU
#define BATTERY_PIN 3        //Actually AIN0 (pin 20) on EVCU

#define CAN_FRAME_DATA_LEN 8
#define SCALE10 10
#define SCALE100 100

CAN_FRAME message;

void send_motor_torque(uint16_t);
void send_gate_driver_temp(uint16_t);
void send_cell_voltage(uint16_t);
uint16_t little_to_big_endian(uint16_t);
uint16_t input_jitter_removal(uint16_t);

void setup() {
  //Initialize serial for the screen
  SerialUSB.begin(115200);
  
  //RMS is on CAN0, BMS on CAN1
  Can0.begin(CAN_BPS_1000K);
  Can1.begin(CAN_BPS_500K);
  message.length = CAN_FRAME_DATA_LEN;
} 
 
void loop() {
  uint16_t battery_level, gate_driver_temp, motor_torque;
  
  battery_level = analogRead(BATTERY_PIN);
  motor_torque = analogRead(MOTOR_TORQUE_PIN);
  gate_driver_temp = analogRead(GATE_DRIVER_PIN);
  
  #ifdef FULL_DEMO
  send_cell_voltage(battery_level);
  send_motor_torque(motor_torque);
  send_gate_driver_temp(gate_driver_temp);
  #endif
  delay(50);  //Needed to not overload the screen with messages
}  //End loop

/*************************************************************************
** SENDING MESSAGE FUNCTIONS
*************************************************************************/
// Input value: motor torque can be ~15 to ~800
void send_motor_torque(uint16_t motor_torque) {
  const uint16_t max_torque = 400;  //The largest torque value that can be displayed on the screen
  //Value stored in bytes 2 and 3
  if(motor_torque > max_torque) motor_torque = max_torque;
  
  message.data.low = (motor_torque * 10) << 16;  //Scale by 10 to account for scaling on screen side
  
  #ifdef DEBUG_MOTOR_TORQUE
  SerialUSB.print("MOTOR_TORQUE = ");
  SerialUSB.println(motor_torque);
  #endif
  
  message.id = MOTOR_TORQUE_ID;
  Can0.sendFrame(message);
}

// Input value: gate driver temp can be ~15 to ~800
// Has a resolution of 50
void send_gate_driver_temp(uint16_t gate_temp) {
  uint16_t jitter_removed = input_jitter_removal(gate_temp);
  
  message.data.high = jitter_removed * 2;  //Min value of 10 and max of 1000 on screen
  if(message.data.high > 1000) message.data.high = 1000;
  
  #ifdef DEBUG_GATE
  SerialUSB.print("GATE_TEMP = ");
  SerialUSB.println(message.data.high);
  #endif
  
  message.data.high <<= 16;   //Value stored in bytes 6 and 7
  message.data.low = 0;
  message.id = TEMP1_ID;
  Can0.sendFrame(message);
}

// Input value: min_cell_scale temp can be ~15 to ~800
// Has a resolution of 50
void send_cell_voltage(uint16_t battery_level) {
  const uint8_t max_voltage_offset = 41;  //Attempt to be 0.1V above min cell voltage
  const uint16_t max_voltage_out = 2048;  //Highest value that can be outputted (5V)
  uint16_t jitter_removed = input_jitter_removal(battery_level);
  
  uint16_t min_cell_voltage = jitter_removed * 3;
  uint16_t max_cell_voltage = min_cell_voltage + max_voltage_offset;
  
  if(max_cell_voltage > max_voltage_out) max_cell_voltage = max_voltage_out;
  if(min_cell_voltage > max_voltage_out) min_cell_voltage = max_voltage_out;
  
  #ifdef DEBUG_CELL_VOLTAGE
  SerialUSB.print("CELL_VOLTAGE_MIN = ");
  SerialUSB.print(min_cell_voltage);
  SerialUSB.print(", CELL_VOLTAGE_MAX = ");
  SerialUSB.println(max_cell_voltage);
  #endif
  
  message.data.low = little_to_big_endian(max_cell_voltage);  //Value stored in bytes 0 and 1
  message.data.low |= little_to_big_endian(min_cell_voltage) << 16;  //Value stored in bytes 2 and 3
  
  //RLEC temp value stored in byte 4
  message.data.high = 0;
  message.id = RLEC4_ID;
  Can1.sendFrame(message);
}

/*************************************************************************
** CONVERTS LITTLE ENDIAN TO BIG ENDIAN 
*************************************************************************/
uint16_t little_to_big_endian(uint16_t to_convert) {
  const uint8_t shift_byte = 8;
  
  uint8_t low_byte = to_convert & 0xFF;
  uint8_t high_byte = (to_convert & 0xFF00) >> shift_byte;
  uint16_t big_endian = (low_byte << shift_byte) | high_byte;
  
  return big_endian;
}

/*************************************************************************
** SCALES ALL ANALOG INPUTS TO INCREMENTS OF 50 TO REMOVE JITTER ON THE LINE
*************************************************************************/
uint16_t input_jitter_removal(uint16_t val_to_remove) {
  uint16_t jitter_removed;
  uint16_t mod_value = val_to_remove % 100;
  uint16_t hundreds = val_to_remove - mod_value;
  
  if(mod_value >= 50) mod_value = 50;
  else mod_value = 0;
  
  jitter_removed = hundreds + mod_value;
  #ifdef JITTER_DEBUG
  SerialUSB.print("JITTER = ");
  SerialUSB.println(jitter_removed);
  #endif
  return jitter_removed;
}

