/***************************************************************
 *  SmartRF Studio(tm) Export
 *
 *  Radio register settings specifed with C-code
 *  compatible #define statements.
 *
 ***************************************************************/
// https://www.edaboard.com/showthread.php?259494-CC1101-doesn-t-transmit-correctly
// https://github.com/SpaceTeddy/CC1101/issues/12
// https://forums.electricimp.com/t/cc1101-example-code/192


#ifndef SMARTRF_CC1101_H
#define SMARTRF_CC1101_H

#define SMARTRF_RADIO_CC1101

#define SMARTRF_SETTING_FSCTRL1    0x06
#define SMARTRF_SETTING_FSCTRL0    0x00
#define SMARTRF_SETTING_FREQ2      0x21
#define SMARTRF_SETTING_FREQ1      0x7B
#define SMARTRF_SETTING_FREQ0      0x42
#define SMARTRF_SETTING_MDMCFG4    0xC7
#define SMARTRF_SETTING_MDMCFG3    0x83
#define SMARTRF_SETTING_MDMCFG2    0x13
#define SMARTRF_SETTING_MDMCFG1    0x20
#define SMARTRF_SETTING_MDMCFG0    0x00
#define SMARTRF_SETTING_CHANNR     0x00
#define SMARTRF_SETTING_DEVIATN    0x40
#define SMARTRF_SETTING_FREND1     0x56
#define SMARTRF_SETTING_FREND0     0x10
#define SMARTRF_SETTING_MCSM0      0x24
#define SMARTRF_SETTING_MCSM1      0x00
#define SMARTRF_SETTING_MCSM2      0x07
#define SMARTRF_SETTING_FOCCFG     0x16
#define SMARTRF_SETTING_BSCFG      0x6C
#define SMARTRF_SETTING_AGCCTRL2   0x43
#define SMARTRF_SETTING_AGCCTRL1   0x40
#define SMARTRF_SETTING_AGCCTRL0   0x91
#define SMARTRF_SETTING_FSCAL3     0xE9
#define SMARTRF_SETTING_FSCAL2     0x2A
#define SMARTRF_SETTING_FSCAL1     0x00
#define SMARTRF_SETTING_FSCAL0     0x1F
#define SMARTRF_SETTING_FSTEST     0x59
#define SMARTRF_SETTING_TEST2      0x81
#define SMARTRF_SETTING_TEST1      0x35
#define SMARTRF_SETTING_TEST0      0x09
#define SMARTRF_SETTING_FIFOTHR    0x47
#define SMARTRF_SETTING_IOCFG2     0x29
#define SMARTRF_SETTING_IOCFG0D    0x06
#define SMARTRF_SETTING_PKTCTRL1   0x04
#define SMARTRF_SETTING_PKTCTRL0   0x05
#define SMARTRF_SETTING_ADDR       0x00
#define SMARTRF_SETTING_PKTLEN     0xFF


#define SMARTRF_CMD_SRES 0x30   // Reset chip
#define SMARTRF_CMD_SFSTXON 0x31    // Enable and calibrate frequency synthesizer
                                    //(if MCSM0.FS_AUTOCAL=1). If in RX (with CCA):
                                    // Go to a wait state where only the synthesizer 
                                    // is running (for quick RX / TX turnaround).
#define SMARTRF_CMD_SRX 0x34    // Enable RX. Perform calibration first if coming from IDLE and MCSM0.FS_AUTOCAL=1
#define SMARTRF_CMD_STX 0x35    // In IDLE state: Enable TX. Perform calibration
                                // first if MCSM0.FS_AUTOCAL=1. If in RX state 
                                // and CCA is enabled: Only go to TX if channel is clear
#define SMARTRF_CMD_SIDLE 0x36  // Exit RX / TX, turn off frequency synthesizer
#define SMARTRF_CMD_SPWD 0x39   // Enter power down mode when CSn goes high
#define SMARTRF_CMD_SFRX 0x3A   // Flush the RX buffer. Only use in IDLE or overflow
#define SMARTRF_CMD_SFTX 0x3B   // Flush the TX buffer. Only use in IDLE or underflow
#define SMARTRF_CMD_SNOP 0x3D   // Nop to get chip status byte
#endif

