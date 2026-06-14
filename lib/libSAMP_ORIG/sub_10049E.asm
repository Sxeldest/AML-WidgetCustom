; =========================================================
; Game Engine Function: sub_10049E
; Address            : 0x10049E - 0x1004F2
; =========================================================

10049E:  PUSH            {R4-R7,LR}
1004A0:  ADD             R7, SP, #0xC
1004A2:  PUSH.W          {R11}
1004A6:  MOVS            R2, #0
1004A8:  STR             R2, [R1]
1004AA:  LDRD.W          R3, R2, [R0]
1004AE:  CMP             R2, R3
1004B0:  BEQ             loc_1004BC
1004B2:  LDRB            R4, [R3]
1004B4:  CMP             R4, #0x30 ; '0'
1004B6:  BCC             loc_1004BC
1004B8:  CMP             R4, #0x39 ; '9'
1004BA:  BLS             loc_1004C4
1004BC:  MOVS            R0, #1
1004BE:  POP.W           {R11}
1004C2:  POP             {R4-R7,PC}
1004C4:  MOVS            R4, #0
1004C6:  CMP             R3, R2
1004C8:  BEQ             loc_1004EE
1004CA:  LDRB            R5, [R3]
1004CC:  SUBS            R5, #0x30 ; '0'
1004CE:  CMP             R5, #9
1004D0:  BHI             loc_1004EE
1004D2:  ADD.W           R4, R4, R4,LSL#2
1004D6:  ADDS            R5, R3, #1
1004D8:  LSLS            R6, R4, #1
1004DA:  STR             R5, [R0]
1004DC:  STR             R6, [R1]
1004DE:  LDRB            R3, [R3]
1004E0:  ADD.W           R3, R3, R4,LSL#1
1004E4:  SUB.W           R4, R3, #0x30 ; '0'
1004E8:  STR             R4, [R1]
1004EA:  MOV             R3, R5
1004EC:  B               loc_1004C6
1004EE:  MOVS            R0, #0
1004F0:  B               loc_1004BE
