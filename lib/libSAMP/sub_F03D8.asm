; =========================================================
; Game Engine Function: sub_F03D8
; Address            : 0xF03D8 - 0xF0418
; =========================================================

F03D8:  PUSH            {R4,R5,R7,LR}
F03DA:  ADD             R7, SP, #8
F03DC:  LDR             R5, [R0,#8]
F03DE:  MOV             R4, R1
F03E0:  LDRD.W          R0, R2, [R5,#8]
F03E4:  ADDS            R1, R0, #1
F03E6:  CMP             R2, R1
F03E8:  BCS             loc_F03F6
F03EA:  LDR             R0, [R5]
F03EC:  LDR             R2, [R0]
F03EE:  MOV             R0, R5
F03F0:  BLX             R2
F03F2:  LDR             R0, [R5,#8]
F03F4:  ADDS            R1, R0, #1
F03F6:  MOVW            R2, #0xCCCD
F03FA:  STR             R1, [R5,#8]
F03FC:  MOVT            R2, #0xCCCC
F0400:  LDR             R1, [R5,#4]
F0402:  UMULL.W         R2, R3, R4, R2
F0406:  LSRS            R2, R3, #3
F0408:  ADD.W           R2, R2, R2,LSL#2
F040C:  SUB.W           R2, R4, R2,LSL#1
F0410:  ORR.W           R2, R2, #0x30 ; '0'
F0414:  STRB            R2, [R1,R0]
F0416:  POP             {R4,R5,R7,PC}
