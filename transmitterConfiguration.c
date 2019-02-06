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
    writeSPI1(0x30);
    ms_delay(200);
writeSPI1(0x0B);
writeSPI1(SMARTRF_SETTING_FSCTRL1);
    return 0;
}
