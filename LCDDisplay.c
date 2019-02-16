/*
 * File:   LCDDisplay.c
 * Author: dd69
 *
 * Created on February 7, 2019, 5:10 PM
 */
#include <xc.h>
#include "LCDDisplay.h"
#include "spiConfiguration.h"

void InitPMP(void) {
    // PMP initialization. See my notes in Sec 13 PMP of Fam. Ref. Manual
    PMCON = 0x8303; // Following Fig. 13-34. Text says 0x83BF (it works) *
    PMMODE = 0x03FF; // Master Mode 1. 8-bit data, long waits.
    PMAEN = 0x0001; // PMA0 enabled
}

void InitLCD(void) {
    // PMP is in Master Mode 1, simply by writing to PMDIN1 the PMP takes care
    // of the 3 control signals so as to write to the LCD.
    PMADDR = 0; // PMA0 physically connected to RS, 0 select Control register
    PMDIN1 = 0b00111000; // 8-bit, 2 lines, 5X7. See Table 9.1 of text Function set
    ms_delay(1); // 1ms > 40us
    PMDIN1 = 0b00001100; // ON, cursor off, blink off
    ms_delay(1); // 1ms > 40us
    PMDIN1 = 0b00000001; // clear display
    ms_delay(2); // 2ms > 1.64ms
    PMDIN1 = 0b00000110; // increment cursor, no shift
    ms_delay(2); // 2ms > 1.64ms
} // InitLCD

char ReadLCD(int addr) {
    // As for dummy read, see 13.4.2, the first read has previous value in PMDIN1
    int dummy;
    while (PMMODEbits.BUSY); // wait for PMP to be available
    PMADDR = addr; // select the command address
    dummy = PMDIN1; // initiate a read cycle, dummy
    while (PMMODEbits.BUSY); // wait for PMP to be available
    return ( PMDIN1); // read the status register
} // ReadLCD
// In the following, addr = 0 -> access Control, addr = 1 -> access Data
#define BusyLCD() ReadLCD( 0) & 0x80 // D<7> = Busy Flag
#define AddrLCD() ReadLCD( 0) & 0x7F // Not actually used here
#define getLCD() ReadLCD( 1) // Not actually used here.

void WriteLCD(int addr, char c) {
    while (BusyLCD());
    while (PMMODEbits.BUSY); // wait for PMP to be available
    PMADDR = addr;
    PMDIN1 = c;
} // WriteLCD
// In the following, addr = 0 -> access Control, addr = 1 -> access Data
#define putLCD( d) WriteLCD( 1, (d))
#define CmdLCD( c) WriteLCD( 0, (c))
#define HomeLCD() WriteLCD( 0, 2) // See HD44780 instruction set in
#define ClrLCD() WriteLCD( 0, 1) // Table 9.1 of text book

void putsLCD(char *s) {
    while (*s) putLCD(*s++); // See paragraph starting at bottom, pg. 87 text
} //putsLCD

void SetCursorAtLine(int i) {
    int a;
    if (i == 1) {
        CmdLCD(0x80); //Sets DRAM Address for HD44780 instruction set
        //To enable DRAM, hex 0x80 is translated to binary: 1000 0000

    } else if (i == 2) {
        CmdLCD(0xC0); //Sets DRAM Address for HD44780 instruction set
        //To enable DRAM, hex 0xC0 is translated to binary: 1100 0000
    } else {
        TRISA = 0x00; // hex for zero, sets PORTA<0:7> for output
        for (a = 1; a < 20; a++) //Loop to flash LEDs for 5 seconds at 2Hz
        {
            PORTA = 0xFF; //Turns LEDs on
            ms_delay(1000); //Delays half of the cycle // On For 2 Seconds
            PORTA = 0x00; //Turns LEDs off
            ms_delay(500); //Delays half of the cycle // Off For 1 Seconds
        }
    }
}
