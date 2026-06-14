; =========================================================
; Game Engine Function: opus_encoder_get_size
; Address            : 0x1A2D6C - 0x1A2DBE
; =========================================================

1A2D6C:  PUSH            {R4,R6,R7,LR}
1A2D6E:  ADD             R7, SP, #8
1A2D70:  SUB             SP, SP, #8
1A2D72:  MOV             R4, R0
1A2D74:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A2D7A)
1A2D76:  ADD             R0, PC; __stack_chk_guard_ptr
1A2D78:  LDR             R0, [R0]; __stack_chk_guard
1A2D7A:  LDR             R0, [R0]
1A2D7C:  STR             R0, [SP,#0x10+var_C]
1A2D7E:  SUBS            R0, R4, #1
1A2D80:  CMP             R0, #1
1A2D82:  BHI             loc_1A2D8C
1A2D84:  MOV             R0, SP
1A2D86:  BLX             j_silk_Get_Encoder_Size
1A2D8A:  CBZ             R0, loc_1A2D90
1A2D8C:  MOVS            R0, #0
1A2D8E:  B               loc_1A2DA8
1A2D90:  LDR             R0, [SP,#0x10+var_10]
1A2D92:  ADDS            R0, #3
1A2D94:  BIC.W           R0, R0, #3
1A2D98:  STR             R0, [SP,#0x10+var_10]
1A2D9A:  MOV             R0, R4
1A2D9C:  BLX             j_celt_encoder_get_size
1A2DA0:  LDR             R1, [SP,#0x10+var_10]
1A2DA2:  ADD             R0, R1
1A2DA4:  ADDW            R0, R0, #0x898
1A2DA8:  LDR             R1, =(__stack_chk_guard_ptr - 0x1A2DB0)
1A2DAA:  LDR             R2, [SP,#0x10+var_C]
1A2DAC:  ADD             R1, PC; __stack_chk_guard_ptr
1A2DAE:  LDR             R1, [R1]; __stack_chk_guard
1A2DB0:  LDR             R1, [R1]
1A2DB2:  SUBS            R1, R1, R2
1A2DB4:  ITT EQ
1A2DB6:  ADDEQ           SP, SP, #8
1A2DB8:  POPEQ           {R4,R6,R7,PC}
1A2DBA:  BLX             __stack_chk_fail
