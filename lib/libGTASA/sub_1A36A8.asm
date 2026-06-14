; =========================================================
; Game Engine Function: sub_1A36A8
; Address            : 0x1A36A8 - 0x1A36F6
; =========================================================

1A36A8:  PUSH            {R4,R6,R7,LR}
1A36AA:  ADD             R7, SP, #8
1A36AC:  SUB             SP, SP, #8
1A36AE:  LDR             R0, =(unk_7AFD60 - 0x1A36BA)
1A36B0:  MOVS            R4, #0xFF
1A36B2:  MOVS            R1, #0xFF; unsigned __int8
1A36B4:  MOVS            R2, #0; unsigned __int8
1A36B6:  ADD             R0, PC; unk_7AFD60 ; this
1A36B8:  MOVS            R3, #0; unsigned __int8
1A36BA:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A36BC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A36C0:  LDR             R0, =(unk_7AFD64 - 0x1A36CC)
1A36C2:  MOVS            R1, #0xFF; unsigned __int8
1A36C4:  MOVS            R2, #0xFF; unsigned __int8
1A36C6:  MOVS            R3, #0; unsigned __int8
1A36C8:  ADD             R0, PC; unk_7AFD64 ; this
1A36CA:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A36CC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A36D0:  LDR             R0, =(unk_7AFD68 - 0x1A36DC)
1A36D2:  MOVS            R1, #0x64 ; 'd'
1A36D4:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A36D6:  MOVS            R1, #0xFF; unsigned __int8
1A36D8:  ADD             R0, PC; unk_7AFD68 ; this
1A36DA:  MOVS            R2, #0; unsigned __int8
1A36DC:  MOVS            R3, #0; unsigned __int8
1A36DE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A36E2:  LDR             R0, =(unk_7AFD6C - 0x1A36EE)
1A36E4:  MOVS            R1, #0xFF; unsigned __int8
1A36E6:  MOVS            R2, #0; unsigned __int8
1A36E8:  MOVS            R3, #0; unsigned __int8
1A36EA:  ADD             R0, PC; unk_7AFD6C ; this
1A36EC:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A36EE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A36F2:  ADD             SP, SP, #8
1A36F4:  POP             {R4,R6,R7,PC}
