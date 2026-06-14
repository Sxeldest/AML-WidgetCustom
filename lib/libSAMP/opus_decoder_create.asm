; =========================================================
; Game Engine Function: opus_decoder_create
; Address            : 0x18EDA0 - 0x18EE6C
; =========================================================

18EDA0:  PUSH            {R4-R7,LR}
18EDA2:  ADD             R7, SP, #0xC
18EDA4:  PUSH.W          {R8}
18EDA8:  SUB             SP, SP, #8
18EDAA:  MOV             R6, R0
18EDAC:  LDR             R0, =(__stack_chk_guard_ptr - 0x18EDB6)
18EDAE:  MOV             R8, R2
18EDB0:  MOV             R5, R1
18EDB2:  ADD             R0, PC; __stack_chk_guard_ptr
18EDB4:  CMP.W           R6, #0x3E80
18EDB8:  LDR             R0, [R0]; __stack_chk_guard
18EDBA:  LDR             R0, [R0]
18EDBC:  STR             R0, [SP,#0x18+var_14]
18EDBE:  BLT             loc_18EDD4
18EDC0:  ITT NE
18EDC2:  MOVWNE          R0, #0xBB80
18EDC6:  CMPNE           R6, R0
18EDC8:  BEQ             loc_18EDE2
18EDCA:  MOVW            R0, #0x5DC0
18EDCE:  CMP             R6, R0
18EDD0:  BEQ             loc_18EDE2
18EDD2:  B               loc_18EDE8
18EDD4:  CMP.W           R6, #0x1F40
18EDD8:  BEQ             loc_18EDE2
18EDDA:  MOVW            R0, #0x2EE0
18EDDE:  CMP             R6, R0
18EDE0:  BNE             loc_18EDE8
18EDE2:  SUBS            R0, R5, #1
18EDE4:  CMP             R0, #2
18EDE6:  BCC             loc_18EDF8
18EDE8:  CMP.W           R8, #0
18EDEC:  ITT NE
18EDEE:  MOVNE.W         R0, #0xFFFFFFFF
18EDF2:  STRNE.W         R0, [R8]
18EDF6:  B               loc_18EE4E
18EDF8:  MOV             R0, SP
18EDFA:  BLX             j_silk_Get_Decoder_Size
18EDFE:  CBZ             R0, loc_18EE04
18EE00:  MOVS            R0, #0
18EE02:  B               loc_18EE1A
18EE04:  LDR             R0, [SP,#0x18+var_18]
18EE06:  ADDS            R0, #3
18EE08:  BIC.W           R0, R0, #3
18EE0C:  STR             R0, [SP,#0x18+var_18]
18EE0E:  MOV             R0, R5
18EE10:  BLX             j_celt_decoder_get_size
18EE14:  LDR             R1, [SP,#0x18+var_18]
18EE16:  ADD             R0, R1
18EE18:  ADDS            R0, #0x50 ; 'P'; size
18EE1A:  BLX             malloc
18EE1E:  MOV             R4, R0
18EE20:  CBZ             R4, loc_18EE40
18EE22:  MOV             R0, R4
18EE24:  MOV             R1, R6
18EE26:  MOV             R2, R5
18EE28:  BLX             j_opus_decoder_init
18EE2C:  CMP.W           R8, #0
18EE30:  IT NE
18EE32:  STRNE.W         R0, [R8]
18EE36:  CBZ             R0, loc_18EE50
18EE38:  MOV             R0, R4; ptr
18EE3A:  BLX             free
18EE3E:  B               loc_18EE4E
18EE40:  CMP.W           R8, #0
18EE44:  ITT NE
18EE46:  MOVNE           R0, #0xFFFFFFF9
18EE4A:  STRNE.W         R0, [R8]
18EE4E:  MOVS            R4, #0
18EE50:  LDR             R0, =(__stack_chk_guard_ptr - 0x18EE58)
18EE52:  LDR             R1, [SP,#0x18+var_14]
18EE54:  ADD             R0, PC; __stack_chk_guard_ptr
18EE56:  LDR             R0, [R0]; __stack_chk_guard
18EE58:  LDR             R0, [R0]
18EE5A:  SUBS            R0, R0, R1
18EE5C:  ITTTT EQ
18EE5E:  MOVEQ           R0, R4
18EE60:  ADDEQ           SP, SP, #8
18EE62:  POPEQ.W         {R8}
18EE66:  POPEQ           {R4-R7,PC}
18EE68:  BLX             __stack_chk_fail
