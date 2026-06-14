; =========================================================
; Game Engine Function: _Z25_rwOpenGLMatrixToRwMatrixPv
; Address            : 0x1B10CE - 0x1B1114
; =========================================================

1B10CE:  PUSH            {R4,R6,R7,LR}
1B10D0:  ADD             R7, SP, #8
1B10D2:  MOV             R4, R0
1B10D4:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
1B10D8:  LDR             R1, [R4]
1B10DA:  MOVS            R2, #0
1B10DC:  STR             R1, [R0]
1B10DE:  LDR             R1, [R4,#4]
1B10E0:  STR             R1, [R0,#4]
1B10E2:  LDR             R1, [R4,#8]
1B10E4:  STRD.W          R1, R2, [R0,#8]
1B10E8:  LDR             R1, [R4,#0x10]
1B10EA:  STR             R1, [R0,#0x10]
1B10EC:  LDR             R1, [R4,#0x14]
1B10EE:  STR             R1, [R0,#0x14]
1B10F0:  LDR             R1, [R4,#0x18]
1B10F2:  STRD.W          R1, R2, [R0,#0x18]
1B10F6:  LDR             R1, [R4,#0x20]
1B10F8:  STR             R1, [R0,#0x20]
1B10FA:  LDR             R1, [R4,#0x24]
1B10FC:  STR             R1, [R0,#0x24]
1B10FE:  LDR             R1, [R4,#0x28]
1B1100:  STRD.W          R1, R2, [R0,#0x28]
1B1104:  LDR             R1, [R4,#0x30]
1B1106:  STR             R1, [R0,#0x30]
1B1108:  LDR             R1, [R4,#0x34]
1B110A:  STR             R1, [R0,#0x34]
1B110C:  LDR             R1, [R4,#0x38]
1B110E:  STRD.W          R1, R2, [R0,#0x38]
1B1112:  POP             {R4,R6,R7,PC}
