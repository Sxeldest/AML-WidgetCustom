; =========================================================
; Game Engine Function: sub_1A3AE4
; Address            : 0x1A3AE4 - 0x1A3B32
; =========================================================

1A3AE4:  PUSH            {R4,R6,R7,LR}
1A3AE6:  ADD             R7, SP, #8
1A3AE8:  SUB             SP, SP, #8
1A3AEA:  LDR             R0, =(unk_81AF94 - 0x1A3AF6)
1A3AEC:  MOVS            R4, #0xFF
1A3AEE:  MOVS            R1, #0xFF; unsigned __int8
1A3AF0:  MOVS            R2, #0; unsigned __int8
1A3AF2:  ADD             R0, PC; unk_81AF94 ; this
1A3AF4:  MOVS            R3, #0; unsigned __int8
1A3AF6:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A3AF8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A3AFC:  LDR             R0, =(unk_81AF98 - 0x1A3B08)
1A3AFE:  MOVS            R1, #0xFF; unsigned __int8
1A3B00:  MOVS            R2, #0xFF; unsigned __int8
1A3B02:  MOVS            R3, #0; unsigned __int8
1A3B04:  ADD             R0, PC; unk_81AF98 ; this
1A3B06:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A3B08:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A3B0C:  LDR             R0, =(byte_81AF9C - 0x1A3B18)
1A3B0E:  MOVS            R1, #0x64 ; 'd'
1A3B10:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A3B12:  MOVS            R1, #0xFF; unsigned __int8
1A3B14:  ADD             R0, PC; byte_81AF9C ; this
1A3B16:  MOVS            R2, #0; unsigned __int8
1A3B18:  MOVS            R3, #0; unsigned __int8
1A3B1A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A3B1E:  LDR             R0, =(byte_81AFA0 - 0x1A3B2A)
1A3B20:  MOVS            R1, #0xFF; unsigned __int8
1A3B22:  MOVS            R2, #0; unsigned __int8
1A3B24:  MOVS            R3, #0; unsigned __int8
1A3B26:  ADD             R0, PC; byte_81AFA0 ; this
1A3B28:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A3B2A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A3B2E:  ADD             SP, SP, #8
1A3B30:  POP             {R4,R6,R7,PC}
