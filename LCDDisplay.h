/*
 * File:   LCDDisplay.c
 * Author: dd69
 *
 * Created on February 7, 2019, 5:10 PM
 */

#ifndef LCDDisplay
#define	LCDDisplay
void InitPMP(void);
void InitLCD(void);
char ReadLCD(int addr);
void WriteLCD(int addr, char c);
void putsLCD(char *s);
void SetCursorAtLine(int i);
#define putLCD( d) WriteLCD( 1, (d))
#define CmdLCD( c) WriteLCD( 0, (c))
#define HomeLCD() WriteLCD( 0, 2) // See HD44780 instruction set in
#define ClrLCD() WriteLCD( 0, 1) // Table 9.1 of text book
#endif