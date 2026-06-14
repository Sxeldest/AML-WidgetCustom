; =========================================================
; Game Engine Function: _Z19_rwOpenGLRGBToPixelPvS_i
; Address            : 0x1AD5C8 - 0x1AD61C
; =========================================================

1AD5C8:  PUSH            {R4,R6,R7,LR}
1AD5CA:  ADD             R7, SP, #8
1AD5CC:  SUB             SP, SP, #8
1AD5CE:  ANDS.W          R2, R2, #0xF00
1AD5D2:  BEQ             loc_1AD5E0
1AD5D4:  CMP.W           R2, #0x600
1AD5D8:  BEQ             loc_1AD5E6
1AD5DA:  CMP.W           R2, #0x500
1AD5DE:  BNE             loc_1AD600
1AD5E0:  LDR             R1, [R1]
1AD5E2:  REV             R1, R1
1AD5E4:  B               loc_1AD5FA
1AD5E6:  LDRB            R2, [R1]
1AD5E8:  LDRB            R3, [R1,#1]
1AD5EA:  LDRB            R1, [R1,#2]
1AD5EC:  LSLS            R2, R2, #0x18
1AD5EE:  ORR.W           R2, R2, R3,LSL#16
1AD5F2:  ORR.W           R1, R2, R1,LSL#8
1AD5F6:  ORR.W           R1, R1, #0xFF
1AD5FA:  MOVS            R4, #1
1AD5FC:  STR             R1, [R0]
1AD5FE:  B               loc_1AD616
1AD600:  MOVS            R0, #0xD
1AD602:  MOVS            R4, #0
1AD604:  MOVT            R0, #0x8000; int
1AD608:  STR             R4, [SP,#0x10+var_10]
1AD60A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1AD60E:  STR             R0, [SP,#0x10+var_C]
1AD610:  MOV             R0, SP
1AD612:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1AD616:  MOV             R0, R4
1AD618:  ADD             SP, SP, #8
1AD61A:  POP             {R4,R6,R7,PC}
