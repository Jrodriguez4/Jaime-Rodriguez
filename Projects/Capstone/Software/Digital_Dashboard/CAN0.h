// Digital Dash - Capstone 2015
// Sean Koppenhafer, Chad Thueson, Jaime Rodriguez, Rishal Dass and Noah Erickson
//
// CAN0.h - Header file for the CAN bus with the RMS on it.
//
// Uses due_can library from https://github.com/collin80/due_can

#ifndef CAN0_H
#define CAN0_H

#include <due_can.h>

#define SHIFT16  16
#define SCALE10  10
#define SCALE100 100

//RMS CAN message IDs
#define TEMP1_ID                  0x0A0  
#define TEMP2_ID                  0x0A1  
#define TEMP3_ID                  0x0A2  
#define CURRENT_INFO_ID           0x0A6  
#define VOLTAGE_INFO_ID           0x0A7  
#define INTERNAL_VOLTAGE_ID       0x0A9  
#define INTERNAL_STATES_ID        0x0AA  
#define FAULT_CODES_ID            0x0AB
#define MOTOR_TORQUE_ID           0x0AC

//Can0 interrupt handler functions
void CAN0_interrupt_handler(CAN_FRAME*);
static void process_gate_driver_temperature(CAN_FRAME*);
static void process_control_board_temperature(CAN_FRAME*);
static void process_motor_temp(CAN_FRAME*);
static void process_DC_current(CAN_FRAME*);
static void process_DC_bus_voltage(CAN_FRAME*);
static void process_internal_voltage(CAN_FRAME*);
static void process_internal_states(CAN_FRAME*);
static void process_motor_torque(CAN_FRAME*);

#endif


