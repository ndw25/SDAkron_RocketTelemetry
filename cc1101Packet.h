/* 
 * File:   cc1101Packet.h
 * Author: DDalv
 *
 * Created on February 16, 2019, 11:09 AM
 */
typedef char byte;
typedef char boolean;

#ifndef CC1101PACKET_H
#define	CC1101PACKET_H

/**
 * Buffer and data lengths
 */
#define CC1101_BUFFER_LEN        64
#define CC1101_DATA_LEN          CC1101_BUFFER_LEN - 3

typedef struct CC1101PACKET
{
    /**
     * Data length
     */
    byte length;

    /**
     * Data buffer
     */
    byte data[CC1101_DATA_LEN];

    /**
     * CRC OK flag
     */
    boolean crc_ok;

    /**
     * Received Strength Signal Indication
     */
    byte rssi;

    /**
     * Link Quality Index
     */
    byte lqi;
}CC1101PACKET;

#endif

