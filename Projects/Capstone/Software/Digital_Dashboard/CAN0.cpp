// Digital Dash - Capstone 2015
// Sean Koppenhafer, Chad Thueson, Jaime Rodriguez, Rishal Dass and Noah Erickson
//
// CAN0.cpp - Implements functions defined in CAN0.h
// CAN0 is on the RMS CAN bus
//
// Uses due_can library from https://github.com/collin80/due_can

#include "CAN0.h"
#include "Digital_Dashboard.h"

extern screen_msgs screen_messages;
extern warning_msgs warning_messages;

/******************************************************************************************
** CAN0 INTERRUPT HANDLER FUNCTION
** DIRECTS EACH RMS CAN MESSAGE TO THE CORRECT HANDLER FUNCTION
******************************************************************************************/
void CAN0_interrupt_handler(CAN_FRAME* incoming_message) {
  switch(incoming_message->id) {
    case TEMP1_ID:
      process_gate_driver_temperature(incoming_message);
      break;
    case TEMP2_ID:
      process_control_board_temperature(incoming_message);
      break;
    case TEMP3_ID:
      process_motor_temp(incoming_message);
      break;
    case CURRENT_INFO_ID:
      process_DC_current(incoming_message);
      break;
    case VOLTAGE_INFO_ID:
      process_DC_bus_voltage(incoming_message);
      break;
    case INTERNAL_VOLTAGE_ID:
      process_internal_voltage(incoming_message);
      break;
    case INTERNAL_STATES_ID:
      process_internal_states(incoming_message);
      break;
    case MOTOR_TORQUE_ID:
      process_motor_torque(incoming_message);
      break;
  }
}

/******************************************************************************
** INTERRUPT HANDLER FUNCTION FOR THE RMS GATE DRIVER TEMPERATURE
******************************************************************************/
static void process_gate_driver_temperature(CAN_FRAME *incoming_message) {
  const uint32_t gate_driver_temp_mask = 0xFFFF0000;  //Bytes 6 and 7
  
  screen_messages.gate_driver_temp_value = (incoming_message->data.high & gate_driver_temp_mask) >> SHIFT16;
  screen_messages.gate_driver_temp_value /= SCALE10;
  
  //Warning above 80C
  if(screen_messages.gate_driver_temp_value > GATE_DRIVER_WARNING_TEMP)
    warning_messages.gate_driver_temp_warning = 1;
  else
    warning_messages.gate_driver_temp_warning = 0;
}

/******************************************************************************
** INTERRUPT HANDLER FUNCTION FOR THE RMS CONTROL BOARD TEMPERATURE
******************************************************************************/
static void process_control_board_temperature(CAN_FRAME *incoming_message) {
  const uint32_t control_board_temp_mask = 0xFFFF;  //Bytes 0 and 1 contain control board temperature
  
  screen_messages.control_board_temp_value = incoming_message->data.low & control_board_temp_mask;
  screen_messages.control_board_temp_value /= SCALE10;
  
  //Warning above 80C
  if(screen_messages.control_board_temp_value > CONTROL_BOARD_WARNING_TEMP)
    warning_messages.control_board_temp_warning = 1;
  else
    warning_messages.control_board_temp_warning = 0;
}

/******************************************************************************
** INTERRUPT HANDLER FUNCTION FOR THE RMS MOTOR TEMPERATURE
******************************************************************************/
static void process_motor_temp(CAN_FRAME *incoming_message) {
  const uint16_t motor_temp_mask = 0xFFFF;  //Bytes 4 and 5 contain motor temperature
  
  screen_messages.motor_temp_value = incoming_message->data.high & motor_temp_mask;
  screen_messages.motor_temp_value /= SCALE100;
}

/******************************************************************************
** INTERRUPT HANDLER FUNCTION FOR THE RMS DC CURRENT
******************************************************************************/
static void process_DC_current(CAN_FRAME *incoming_message) {
  const uint32_t dc_current_mask = 0xFFFF0000;  //Bytes 6 and 7 contain DC current
  
  screen_messages.DC_current_value = (incoming_message->data.high & dc_current_mask) >> SHIFT16;
  screen_messages.DC_current_value /= SCALE10;  //Just display, no warnings
}

/******************************************************************************
** INTERRUPT HANDLER FUNCTION FOR THE RMS DC BUS VOLTAGE
******************************************************************************/
static void process_DC_bus_voltage(CAN_FRAME *incoming_message) {
  const uint32_t DC_bus_voltage_mask = 0xFFFF;  //Bytes 0 and 1 contain DC bus voltage
  
  screen_messages.DC_bus_voltage_value = incoming_message->data.low & DC_bus_voltage_mask;
  screen_messages.DC_bus_voltage_value /= SCALE10;
}

/******************************************************************************
** INTERRUPT HANDLER FUNCTION FOR THE RMS LOW VOLTAGE BUS
** ONLY THE 12V BUS VOLTAGE IS NEEDED FROM THIS MESSAGE
******************************************************************************/
static void process_internal_voltage(CAN_FRAME *incoming_message) {
  const uint32_t low_voltage_mask = 0xFFFF0000;  //Bytes 6 and 7 contain 12V rail
  
  screen_messages.internal_voltage_value = (incoming_message->data.high & low_voltage_mask) >> SHIFT16;
  screen_messages.internal_voltage_value /= SCALE100;  
  
  //Warning if <11V for more than a second
  //TODO: SETUP TIMER 
  if(screen_messages.internal_voltage_value < WARNING_12V_VOLTAGE)
    warning_messages.voltage_12V_warning = 1;
  else
    warning_messages.voltage_12V_warning = 0;
}

/******************************************************************************
** INTERRUPT HANDLER FUNCTION FOR THE RMS INTERNAL STATE
** ONLY THE VMS STATE IS NEEDED FROM THIS MESSAGE
******************************************************************************/
static void process_internal_states(CAN_FRAME *incoming_message) {
  const uint32_t RMS_state_mask = 0xFFFF;  //Bytes 0 and 1 contain the VMS state
  
  uint16_t RMS_state = incoming_message->data.low & RMS_state_mask;
  
  switch(RMS_state) {
    case 0:
      screen_messages.RMS_state = START_STATE;
      break;
    case 1:
      screen_messages.RMS_state = INIT_STATE;
      break;
    case 2:
      screen_messages.RMS_state = ACTIVE_STATE;
      break;
    case 3:
      screen_messages.RMS_state = COMPLETE_STATE;
      break;
    case 4:
      screen_messages.RMS_state = WAIT_STATE;
      break;
    case 5:
      screen_messages.RMS_state = READY_STATE;
      break;
    case 6:
      screen_messages.RMS_state = RUNNING_STATE;
      break;
    case 7:
      screen_messages.RMS_state = BLINK_STATE;
      break;
    case 14:
      screen_messages.RMS_state = SHUTDOWN_STATE;
      break;
    case 15:
      screen_messages.RMS_state = POWER_STATE;
      break;
  }
}

/******************************************************************************
** OUTPUTS THE TORQUE FEEDBACK VALUE FROM THE MOTOR
******************************************************************************/
static void process_motor_torque(CAN_FRAME* incoming_message) {
  const uint32_t motor_torque_mask = 0xFFFF0000;  //Bytes 2 and 3 contain motor torque
  const uint8_t shift_2_bytes = 16;
  
  screen_messages.motor_torque = incoming_message->data.low & motor_torque_mask;
  screen_messages.motor_torque >>= shift_2_bytes;
  screen_messages.motor_torque /= SCALE10;
  if(screen_messages.motor_torque < 0) screen_messages.motor_torque = 0;
}

