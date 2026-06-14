; =========================================================
; Game Engine Function: sub_1152E8
; Address            : 0x1152E8 - 0x115308
; =========================================================

1152E8:  PUSH            {R4,R6,R7,LR}
1152EA:  ADD             R7, SP, #8
1152EC:  MOV             R4, R0
1152EE:  LDR             R0, [R0,#0x10]
1152F0:  CMP             R4, R0
1152F2:  BEQ             loc_1152FA
1152F4:  CBZ             R0, loc_115304
1152F6:  MOVS            R1, #5
1152F8:  B               loc_1152FC
1152FA:  MOVS            R1, #4
1152FC:  LDR             R2, [R0]
1152FE:  LDR.W           R1, [R2,R1,LSL#2]
115302:  BLX             R1
115304:  MOV             R0, R4
115306:  POP             {R4,R6,R7,PC}
