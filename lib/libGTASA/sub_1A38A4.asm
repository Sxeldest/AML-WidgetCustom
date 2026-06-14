; =========================================================
; Game Engine Function: sub_1A38A4
; Address            : 0x1A38A4 - 0x1A38F2
; =========================================================

1A38A4:  PUSH            {R4,R6,R7,LR}
1A38A6:  ADD             R7, SP, #8
1A38A8:  SUB             SP, SP, #8
1A38AA:  LDR             R0, =(unk_81A99D - 0x1A38B6)
1A38AC:  MOVS            R4, #0xFF
1A38AE:  MOVS            R1, #0xFF; unsigned __int8
1A38B0:  MOVS            R2, #0; unsigned __int8
1A38B2:  ADD             R0, PC; unk_81A99D ; this
1A38B4:  MOVS            R3, #0; unsigned __int8
1A38B6:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A38B8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A38BC:  LDR             R0, =(unk_81A9A1 - 0x1A38C8)
1A38BE:  MOVS            R1, #0xFF; unsigned __int8
1A38C0:  MOVS            R2, #0xFF; unsigned __int8
1A38C2:  MOVS            R3, #0; unsigned __int8
1A38C4:  ADD             R0, PC; unk_81A9A1 ; this
1A38C6:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A38C8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A38CC:  LDR             R0, =(unk_81A9A5 - 0x1A38D8)
1A38CE:  MOVS            R1, #0x64 ; 'd'
1A38D0:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A38D2:  MOVS            R1, #0xFF; unsigned __int8
1A38D4:  ADD             R0, PC; unk_81A9A5 ; this
1A38D6:  MOVS            R2, #0; unsigned __int8
1A38D8:  MOVS            R3, #0; unsigned __int8
1A38DA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A38DE:  LDR             R0, =(unk_81A9A9 - 0x1A38EA)
1A38E0:  MOVS            R1, #0xFF; unsigned __int8
1A38E2:  MOVS            R2, #0; unsigned __int8
1A38E4:  MOVS            R3, #0; unsigned __int8
1A38E6:  ADD             R0, PC; unk_81A9A9 ; this
1A38E8:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A38EA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A38EE:  ADD             SP, SP, #8
1A38F0:  POP             {R4,R6,R7,PC}
