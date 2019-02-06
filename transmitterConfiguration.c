/*
 * File:   transmitterConfiguration.c
 * Author: dd69
 *
 * Created on January 23, 2019, 5:02 PM
 */


#include "smartrf_CC1101.h"
#include "spiConfiguration.h"

int txSetup(void) {
// Tell Tx register address; write register value
    writeSPI1(0x30); // CC1101 System Reset 
    ms_delay(200);
    writeSPI1(0x0B);
    writeSPI1(SMARTRF_SETTING_FSCTRL1);
    writeSPI1(0x0D);
    writeSPI1(SMARTRF_SETTING_FREQ2);
    writeSPI1(0x0F);
    writeSPI1(SMARTRF_SETTING_FREQ0);
    writeSPI1(0x11);
    writeSPI1(SMARTRF_SETTING_MDMCFG3);
    writeSPI1(0x13);
    writeSPI1(SMARTRF_SETTING_MDMCFG1);
    writeSPI1(0x0A);
    writeSPI1(SMARTRF_SETTING_CHANNR);
    writeSPI1(0x21);
    writeSPI1(SMARTRF_SETTING_FREND1);
    writeSPI1(0x18);
    writeSPI1(SMARTRF_SETTING_MCSM0);
    writeSPI1(0x1A);
    writeSPI1(SMARTRF_SETTING_BSCFG);
    writeSPI1(0x1C);
    writeSPI1(SMARTRF_SETTING_AGCCTRL1);
    writeSPI1(0x23);
    writeSPI1(SMARTRF_SETTING_FSCAL3);
    writeSPI1(0x25);
    writeSPI1(SMARTRF_SETTING_FSCAL1);
    writeSPI1(0x29);
    writeSPI1(SMARTRF_SETTING_FSTEST);
    writeSPI1(0x2D);
    writeSPI1(SMARTRF_SETTING_TEST1);
    writeSPI1(0x03);
    writeSPI1(SMARTRF_SETTING_FIFOTHR);
    writeSPI1(0x02);
    writeSPI1(SMARTRF_SETTING_IOCFG0D);
    writeSPI1(0x08);
    writeSPI1(SMARTRF_SETTING_PKTCTRL0);
    writeSPI1(0x06);
    writeSPI1(SMARTRF_SETTING_PKTLEN);

    return 0;
}
