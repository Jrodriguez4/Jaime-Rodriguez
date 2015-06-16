// Digital Dash - Capstone 2015
// Sean Koppenhafer, Chad Thueson, Jaime Rodriguez, Rishal Dass and Noah Erickson
//
// Simple interrupt CAN test
//
// Uses due_can library from https://github.com/collin80/due_can

#include <due_can.h>

#define BAUD_RATE 250000  //250kbps

#define CAN_MESSAGE_ID 0x0A0  //Tempuratues 1 from RMS
#define CAN_MESSAGE_DATA_LOW 0x44332211
#define CAN_MESSAGE_DATA_HIGH 0x88776655
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


