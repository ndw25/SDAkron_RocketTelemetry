/*  Rocket Telemetry Senior Design Project
    Author: David Dalvin 
    Created on 1/22/2019
    Version 1.0
    SPI Code to Interface with CC1101 Transmitter and Receiver
 */

#include "config.h"
#include "smartrf_CC1101.h"
#include "txRxRegisterConfiguration.h"
#include "LCDDisplay.h"

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

void us_delay(int us)   // Max value 32767 us = 0.032767s, min division 
{
    T2CON = 0x8010; // Timer 2 on, TCKPS<1,0> = 01 thus 8 Prescale thus 2MHz
    TMR2 = 0;
    while (TMR2 < us * 2); // 1/16MHz/(8*2)) = 1us.)
}

void ms_delay(int ms)   // Max value 1048 ms = 1.048s, min division
{
    T2CON = 0x8030; // Timer 2 on, TCKPS<1,0> = 11 thus 256 Prescale
    TMR2 = 0;
    while (TMR2 < ms * 63); // 1/16MHz/(256*63)) = 0.001008 close to 1 ms.)
}

void main(void) {
    TRISA = 0x00;
    PORTA = 0x01;

    ms_delay(32); // At least 30ms for LCD Internal Initialization
    InitPMP(); // Initialize the Parallel Master Port
    InitLCD(); // Initialize the LCD

    ClrLCD();
    SetCursorAtLine(1);
    putsLCD("Successfully");
    SetCursorAtLine(2);
    putsLCD("Powered On");
    ms_delay(500);
    ms_delay(500);
    ms_delay(500);
    ms_delay(500);
    ClrLCD();

    SPI1Init(); // Initialize SPI port.
    PORTA = 0x00;
    ms_delay(36);

    txSetup(); //
    us_delay(50);
    SetCursorAtLine(1);
    putsLCD("RS Config");
    SetCursorAtLine(2);
    putsLCD("Success");

    registerStatus = writeSPI1(0x8B);
    us_delay(200);
    registerStatus = readSPI1();
    us_delay(200);

    PORTA = 0x01;
    us_delay(10);
    while (1) {
        ms_delay(500);
    }
        
    #include <stdio.h>
#include "cc1101.h"

void SetTxCS(int CSValue)
{
	PORTAbits.RA0 = CSValue
}

void CC1101_reset(void)
{
  SetTxCS(1);                  // Deselect CC1101
  us_delay(5);
  SetTxCS(0);                      // Select CC1101
  us_delay(10);
  SetTxCS(1);                    // Deselect CC1101
  us_delay(41);
  SetTxCS(0);                     // Select CC1101

  while(PORTFbits.RF7==1);                          // Wait until MISO goes low
  //spi_send(CC1101_SRES);                // Send reset command strobe
  writeSPI1(SMARTRF_CMD_SRES); // CC1101 System Reset 
  us_delay(10);
  writeSPI1(0x0B);
  us_delay(10);
  while(PORTFbits.RF7==1);                        // Wait until MISO goes low

  SetTxCS(1);                   // Deselect CC1101

  txSetup;                     // Reconfigure CC1101
  //setRegsFromEeprom();                  // Take user settings from EEPROM
}

void CC1101_init(void)
{

  CC1101_reset();                              // Reset CC1101

  CC1101_setCarrierFreq(CFREQ_315);

}

void main() {

  int i = 0;

  // initialize the RF Chip
  CC1101_init();

  int data[61];
  int datalength = 5;
  data[0]=5;
  data[1]=0xaa;
  data[2]=0;
  data[3]=1;
  data[4]=0;

  while(1)
  {

	  data.data[0]++;

	  char sent = CC1101_sendData(data);

	  if(!sent)
		  printf("Failed!\n");
	  else
		  printf("Sent :)\n");

	  us_delay(10000);
	  us_delay();
	  us
  }


}

}
