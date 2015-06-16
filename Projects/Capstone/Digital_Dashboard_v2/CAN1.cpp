// Digital Dash - Capstone 2015
// Sean Koppenhafer, Chad Thueson, Jaime Rodriguez, Rishal Dass and Noah Erickson
//
// CAN1.cpp - Implements functions defined in CAN1.h
// CAN1 connects to the BMS(battery management system)
// The BMS sends big endian messages which must be converted to little endian
//
// Uses due_can library from https://github.com/collin80/due_can

#include "CAN1.h"
#include "Digital_Dashboard.h"

extern screen_msgs screen_messages;
extern warning_msgs warning_messages;

/******************************************************************************************
** CAN1 INTERRUPT HANDLER FUNCTION
** DIRECTS EACH BMS CAN MESSAGES TO THE CORRECT HANDLER FUNCTION
******************************************************************************************/
void CAN1_interrupt_handler(CAN_FRAME* incoming_message) {
  switch(incoming_message->id) {
    case RLEC13_ID:
      process_RLEC13(incoming_message);
      break;
  }
}

/******************************************************************************
** PROCESSES RLEC 4 FROM THE BMS
** Max cell voltage is bytes 0 and 1
** Min cell voltage is bytes 2 and 3
** RLEC temp is byte 4 of RLEC message
******************************************************************************
/******************************************************************************
** PROCESSES RLEC 13 FROM THE BMS
******************************************************************************/
static void process_RLEC13(CAN_FRAME *incoming_message) {
 short max_cell_temperature = (incoming_message->data.low & 0xFF000000) >> 24;  //Warning >40C
 short min_cell_temperature = incoming_message->data.high & 0xFF;  //Warning if <40C
 
 screen_messages.max_cell_temp = max_cell_temperature;
 screen_messages.min_cell_temp = min_cell_temperature;
 
 //Warning if above 40C
  if(screen_messages.max_cell_temp > MAX_CELL_WARNING_TEMP)
    warning_messages.max_cell_temp_warning = 1;
  else
    warning_messages.max_cell_temp_warning = 0;
    
  //Warning if below 0C
  if(screen_messages.min_cell_temp > MIN_CELL_WARNING_TEMP)
    warning_messages.min_cell_temp_warning = 1;
  else
    warning_messages.min_cell_temp_warning = 0;
}

/******************************************************************************
** CONVERTS BIG ENDIAN TO LITTLE ENDIAN
******************************************************************************/
static uint16_t big_endian_to_little_endian(uint16_t to_convert) {
  const uint8_t shift_byte = 8;
  
  uint8_t low_byte = to_convert & 0xFF;
  uint8_t high_byte = (to_convert & 0xFF00) >> shift_byte;
  uint16_t little_endian = (low_byte << shift_byte) | high_byte;
  
  return little_endian;
}

