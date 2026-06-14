; =========================================================
; Game Engine Function: opus_encoder_get_size
; Address            : 0xC4FAC - 0xC4FFE
; =========================================================

C4FAC:  PUSH            {R4,R6,R7,LR}
C4FAE:  ADD             R7, SP, #8
C4FB0:  SUB             SP, SP, #8
C4FB2:  MOV             R4, R0
C4FB4:  LDR             R0, =(__stack_chk_guard_ptr - 0xC4FBA)
C4FB6:  ADD             R0, PC; __stack_chk_guard_ptr
C4FB8:  LDR             R0, [R0]; __stack_chk_guard
C4FBA:  LDR             R0, [R0]
C4FBC:  STR             R0, [SP,#0x10+var_C]
C4FBE:  SUBS            R0, R4, #1
C4FC0:  CMP             R0, #1
C4FC2:  BHI             loc_C4FCC
C4FC4:  MOV             R0, SP
C4FC6:  BLX             j_silk_Get_Encoder_Size
C4FCA:  CBZ             R0, loc_C4FD0
C4FCC:  MOVS            R0, #0
C4FCE:  B               loc_C4FE8
C4FD0:  LDR             R0, [SP,#0x10+var_10]
C4FD2:  ADDS            R0, #3
C4FD4:  BIC.W           R0, R0, #3
C4FD8:  STR             R0, [SP,#0x10+var_10]
C4FDA:  MOV             R0, R4
C4FDC:  BLX             j_celt_encoder_get_size
C4FE0:  LDR             R1, [SP,#0x10+var_10]
C4FE2:  ADD             R0, R1
C4FE4:  ADDW            R0, R0, #0x898
C4FE8:  LDR             R1, =(__stack_chk_guard_ptr - 0xC4FF0)
C4FEA:  LDR             R2, [SP,#0x10+var_C]
C4FEC:  ADD             R1, PC; __stack_chk_guard_ptr
C4FEE:  LDR             R1, [R1]; __stack_chk_guard
C4FF0:  LDR             R1, [R1]
C4FF2:  SUBS            R1, R1, R2
C4FF4:  ITT EQ
C4FF6:  ADDEQ           SP, SP, #8
C4FF8:  POPEQ           {R4,R6,R7,PC}
C4FFA:  BLX             __stack_chk_fail
