; =========================================================
; Game Engine Function: sub_1A6AD8
; Address            : 0x1A6AD8 - 0x1A6B26
; =========================================================

1A6AD8:  PUSH            {R4,R6,R7,LR}
1A6ADA:  ADD             R7, SP, #8
1A6ADC:  SUB             SP, SP, #8
1A6ADE:  LDR             R0, =(unk_9ECCC4 - 0x1A6AEA)
1A6AE0:  MOVS            R4, #0xFF
1A6AE2:  MOVS            R1, #0xFF; unsigned __int8
1A6AE4:  MOVS            R2, #0; unsigned __int8
1A6AE6:  ADD             R0, PC; unk_9ECCC4 ; this
1A6AE8:  MOVS            R3, #0; unsigned __int8
1A6AEA:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6AEC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A6AF0:  LDR             R0, =(unk_9ECCC8 - 0x1A6AFC)
1A6AF2:  MOVS            R1, #0xFF; unsigned __int8
1A6AF4:  MOVS            R2, #0xFF; unsigned __int8
1A6AF6:  MOVS            R3, #0; unsigned __int8
1A6AF8:  ADD             R0, PC; unk_9ECCC8 ; this
1A6AFA:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6AFC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A6B00:  LDR             R0, =(unk_9ECCCC - 0x1A6B0C)
1A6B02:  MOVS            R1, #0x64 ; 'd'
1A6B04:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A6B06:  MOVS            R1, #0xFF; unsigned __int8
1A6B08:  ADD             R0, PC; unk_9ECCCC ; this
1A6B0A:  MOVS            R2, #0; unsigned __int8
1A6B0C:  MOVS            R3, #0; unsigned __int8
1A6B0E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A6B12:  LDR             R0, =(unk_9ECCD0 - 0x1A6B1E)
1A6B14:  MOVS            R1, #0xFF; unsigned __int8
1A6B16:  MOVS            R2, #0; unsigned __int8
1A6B18:  MOVS            R3, #0; unsigned __int8
1A6B1A:  ADD             R0, PC; unk_9ECCD0 ; this
1A6B1C:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A6B1E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A6B22:  ADD             SP, SP, #8
1A6B24:  POP             {R4,R6,R7,PC}
