; =========================================================
; Game Engine Function: sub_1626E4
; Address            : 0x1626E4 - 0x16272C
; =========================================================

1626E4:  PUSH            {R7,LR}
1626E6:  MOV             R7, SP
1626E8:  SUB             SP, SP, #0x10
1626EA:  MOV             R12, R0
1626EC:  STR             R1, [SP,#0x18+var_C]
1626EE:  LDR.W           LR, [R12,#8]!
1626F2:  CMP.W           LR, #0
1626F6:  BEQ             loc_16270C
1626F8:  LDR             R1, [R0,#4]
1626FA:  MOVS            R0, #0
1626FC:  MOV             R3, LR
1626FE:  LDRB.W          R2, [R1],#1
162702:  SUBS            R3, #1
162704:  ADD.W           R0, R0, R2,LSR#7
162708:  BNE             loc_1626FE
16270A:  B               loc_16270E
16270C:  MOVS            R0, #0
16270E:  LDR             R1, =(asc_84965 - 0x16271C); "{}: {}/{}" ...
162710:  SUB.W           R0, LR, R0
162714:  STR             R0, [SP,#0x18+var_10]
162716:  ADD             R0, SP, #0x18+var_10
162718:  ADD             R1, PC; "{}: {}/{}"
16271A:  ADD             R3, SP, #0x18+var_C
16271C:  STRD.W          R0, R12, [SP,#0x18+var_18]
162720:  MOVS            R0, #3
162722:  MOVS            R2, #9
162724:  BL              sub_162730
162728:  ADD             SP, SP, #0x10
16272A:  POP             {R7,PC}
