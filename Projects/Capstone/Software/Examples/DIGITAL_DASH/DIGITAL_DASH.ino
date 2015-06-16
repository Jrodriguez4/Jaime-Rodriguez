// Digital Dash - Capstone 2015
// Sean Koppenhafer, Chad Thueson, Jaime Rodriguez, Rishal Dass and Noah Erickson
//
// Simple interrupt CAN test
//
// Uses due_can library from https://github.com/collin80/due_can

#include <due_can.h>

#define BAUD_RATE 250000  //250kbps

//RMS CAN MESSAGES
#define TEMP1_ID                  0x0A0  //Tempuratues 1
#define TEMP2_ID                  0x0A1  //Tempuratues 2
#define TEMP3_ID                  0x0A2  //Tempuratues 3
#define ANALOG_INPUT_VOLTAGE_ID   0x0A3   //Tempuratues 3
#define DIGITAL_INPUT_STATUS_ID   0x0A4  //Tempuratues 3
#define MOTOR_POSITION_ID         0x0A5  //Tempuratues 3
#define CURRENT_INFO_ID           0x0A6  //Tempuratues 3
#define VOLTAGE_INFO_ID           0x0A7  //Tempuratues 3
#define FLUX_INFO_ID              0x0A8 //Tempuratues 3
#define INTERNAL_VOLTAGE_ID       0x0A9  //Tempuratues 3
#define INTERNAL_STATES_ID        0x0AA  //Tempuratues 3
#define FAULT_CODES_ID            0x0AB  //Tempuratues 3
#define TORQUE_TIMER_INFO_ID      0x0AC  //Tempuratues 3
#define MOD_INDEX_FLEX_WEAK_ID    0x0AD  //Tempuratues 3
#define FIRMWARE_INFO_ID          0x0AE  //Tempuratues 3
#define DIAGNOSTIC_ID             0x0AF  //Tempuratues 3

#define CAN_FRAME_DATA_LEN 8

CAN_FRAME message;

//Leave defined if you use native port, comment if using programming port
//#define Serial SerialUSB

void process_message(CAN_FRAME *incoming_frame);

void setup() {
  //Initialize CAN busses to 250kbps
  Can0.begin(BAUD_RATE);
  Can1.begin(BAUD_RATE);
  Serial.begin(9600);
 } 
 
void loop() {
  //Look for the message we are about to send
  Can1.watchFor(CAN_MESSAGE_ID);
  Can1.setGeneralCallback(process_message);  //Interrupt function for all incoming messages
  
  //Create the transmit message to send
  message.id = CAN_MESSAGE_ID;
  message.length = CAN_FRAME_DATA_LEN;
  message.data.low = CAN_MESSAGE_DATA_LOW;
  message.data.high = CAN_MESSAGE_DATA_HIGH;
  Can0.sendFrame(message);

  while (1) {
  }
}

void process_message(CAN_FRAME *incoming_message) {
  Serial.print("CAN message received= ");
  Serial.print(incoming_message->data.low, HEX);
  Serial.print(incoming_message->data.high, HEX);
  
  // Disable CAN0 Controller
  Can0.disable();

  // Disable CAN1 Controller
  Can1.disable();

  Serial.print("\nEnd of test");
}

