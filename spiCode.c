/*  Rocket Telemetry Senior Design Project
    Author: David Dalvin 
    Created on 1/22/2019
    Version 1.0
    SPI Code to Inferface with CC1101 Transmitter and Receiver
 */

#include "config.h"
#include "smartrf_CC1101.h"
// #include "transmitterConfiguration.h"

int registerStatus;

void SPI1Init(void) {
    SPI1CON1 = 0x0120; // Master Mode, 8-bit bytes, Idle state low, Active Hi
    // Data changes on clock transition from Active to Idle
    // SCL1 at 16000000/(8*64) = 31.25 kHz.
    SPI1STAT = 0x8000; // enable SPI peripheral
}// SPI1Init

// Send one byte of data and receive one back at the same time

unsigned char writeSPI1(unsigned char j) {
    while (SPI1STATbits.SPITBF); // If SPI1TBF full, just wait. This may not
    // be necessary, but good practice.
    SPI1BUF = j; // Write byte to SPI1BUF
    while (!SPI1STATbits.SPIRBF); // Wait if Receive Not Complete
    return SPI1BUF; // Read the received value
}// writeSPI1

unsigned char readSPI1(void) {
    while (SPI1STATbits.SPITBF); // If SPI1TBF full, just wait. This may not
    // be necessary, but good practice.
    SPI1BUF = 0x3D; // Write byte to SPI1BUF
    while (!SPI1STATbits.SPIRBF); // Wait if Receive Not Complete
    return SPI1BUF; // Read the received value
}// writeSPI1

void us_delay(int us) {
    T2CON = 0x8010; // Timer 2 on, TCKPS<1,0> = 01 thus 8 Prescale thus 2MHz
    TMR2 = 0;
    while (TMR2 < us * 2); // 1/16MHz/(8*2)) = 1us.)
}

void ms_delay(int ms) {
    T2CON = 0x8030; // Timer 2 on, TCKPS<1,0> = 11 thus 256 Prescale
    TMR2 = 0;
    while (TMR2 < ms * 63); // 1/16MHz/(256*63)) = 0.001008 close to 1 ms.)
}

int txSetup(void) {
// Tell Tx register address; write register value
    writeSPI1(0x0B);
    ms_delay(10);
    writeSPI1(SMARTRF_SETTING_FSCTRL1);
    ms_delay(10);
    return 0;
}

void main(void) {
    TRISA = 0x00;
    PORTA = 0x01;
    
    PORTA = 0x00;
    us_delay(10);
    SPI1Init(); // Initialize SPI port.
    PORTA = 0x01;
    us_delay(10);
    
    PORTA = 0x00;
    ms_delay(36);
    
    txSetup(); //
    us_delay(200);

    registerStatus = writeSPI1(0x8B);
    us_delay(200);
    registerStatus = readSPI1();
    us_delay(200);
    
    PORTA = 0x01;
    us_delay(10);
    while (1) {
        ms_delay(500);
    }
}