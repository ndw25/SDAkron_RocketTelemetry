/*
 * File:   txRxRegisterConfiguration.c
 * Author: dd69
 *
 * Created on January 23, 2019, 5:02 PM
 */


#include "smartrf_CC1101.h"
#include "spiConfiguration.h"

int txSetup(void) {
// Tell Tx register address; write register value
    writeSPI1(0x30); // CC1101 System Reset 
    us_delay(10);
    writeSPI1(0x0B);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FSCTRL1);
    us_delay(10);
    writeSPI1(0x0D);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FREQ2);
    us_delay(10);
    writeSPI1(0x0F);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FREQ0);
    us_delay(10);
    writeSPI1(0x11);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_MDMCFG3);
    us_delay(10);
    writeSPI1(0x13);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_MDMCFG1);
    us_delay(10);
    writeSPI1(0x0A);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_CHANNR);
    us_delay(10);
    writeSPI1(0x21);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FREND1);
    us_delay(10);
    writeSPI1(0x18);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_MCSM0);
    us_delay(10);
    writeSPI1(0x17); //NEED CORRECT WRITE ADDRESS
    us_delay(10);       
    writeSPI1(SMARTRF_SETTING_MCSM1)
    us_delay(10);
    writeSPI1(0x16); //NEED CORRECT WRITE ADDRESS
    us_delay(10);       
    writeSPI1(SMARTRF_SETTING_MCSM2)
    us_delay(10);
    writeSPI1(0x1A);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_BSCFG);
    us_delay(10);
    writeSPI1(0x1C);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_AGCCTRL1);
    us_delay(10);
    writeSPI1(0x23);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FSCAL3);
    us_delay(10);
    writeSPI1(0x25);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FSCAL1);
    us_delay(10);
    writeSPI1(0x29);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FSTEST);
    us_delay(10);
    writeSPI1(0x2D);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_TEST1);
    us_delay(10);
    writeSPI1(0x03);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_FIFOTHR);
    us_delay(10);
    writeSPI1(0x02);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_IOCFG0D);
    us_delay(10);
    writeSPI1(0x08);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_PKTCTRL0);
    us_delay(10);
    writeSPI1(0x06);
    us_delay(10);
    writeSPI1(SMARTRF_SETTING_PKTLEN);
    us_delay(10);
    return 0;
}
