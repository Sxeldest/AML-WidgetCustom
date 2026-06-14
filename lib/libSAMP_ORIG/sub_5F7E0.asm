; =========================================================
; Game Engine Function: sub_5F7E0
; Address            : 0x5F7E0 - 0x5F836
; =========================================================

5F7E0:  PUSH            {R4,R5,R7,LR}
5F7E2:  ADD             R7, SP, #8
5F7E4:  SUB             SP, SP, #0x10
5F7E6:  MOV             R5, R1
5F7E8:  LDR             R1, =(__stack_chk_guard_ptr - 0x5F7F2)
5F7EA:  MOVS            R2, #0xF
5F7EC:  MOVS            R3, #0
5F7EE:  ADD             R1, PC; __stack_chk_guard_ptr
5F7F0:  MOVS            R4, #0
5F7F2:  LDR             R1, [R1]; __stack_chk_guard
5F7F4:  LDR             R1, [R1]
5F7F6:  STR             R1, [SP,#0x18+var_C]
5F7F8:  ADD             R1, SP, #0x18+var_10
5F7FA:  STR             R1, [SP,#0x18+var_18]
5F7FC:  MOVS            R1, #0
5F7FE:  BLX             sub_109C50
5F802:  LDR             R0, [SP,#0x18+var_10]
5F804:  BIC.W           R0, R0, #1
5F808:  CBZ             R0, loc_5F81E
5F80A:  LDRD.W          R1, R2, [R5]
5F80E:  CMP             R1, R2
5F810:  BEQ             loc_5F81C
5F812:  MOVS            R4, #0
5F814:  ADDS            R2, R1, #4
5F816:  STR             R2, [R5]
5F818:  STR             R0, [R1]
5F81A:  B               loc_5F81E
5F81C:  MOVS            R4, #5
5F81E:  LDR             R0, [SP,#0x18+var_C]
5F820:  LDR             R1, =(__stack_chk_guard_ptr - 0x5F826)
5F822:  ADD             R1, PC; __stack_chk_guard_ptr
5F824:  LDR             R1, [R1]; __stack_chk_guard
5F826:  LDR             R1, [R1]
5F828:  CMP             R1, R0
5F82A:  ITTT EQ
5F82C:  MOVEQ           R0, R4
5F82E:  ADDEQ           SP, SP, #0x10
5F830:  POPEQ           {R4,R5,R7,PC}
5F832:  BLX             __stack_chk_fail
