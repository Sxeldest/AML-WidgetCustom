; =========================================================
; Game Engine Function: png_write_pHYs
; Address            : 0x208BE0 - 0x208CE8
; =========================================================

208BE0:  PUSH            {R4-R7,LR}
208BE2:  ADD             R7, SP, #0xC
208BE4:  PUSH.W          {R8}
208BE8:  SUB             SP, SP, #0x18
208BEA:  MOV             R4, R0
208BEC:  LDR             R0, =(__stack_chk_guard_ptr - 0x208BF6)
208BEE:  MOV             R8, R3
208BF0:  MOV             R5, R2
208BF2:  ADD             R0, PC; __stack_chk_guard_ptr
208BF4:  MOV             R6, R1
208BF6:  CMP.W           R8, #2
208BFA:  LDR             R0, [R0]; __stack_chk_guard
208BFC:  LDR             R0, [R0]
208BFE:  STR             R0, [SP,#0x28+var_14]
208C00:  BLT             loc_208C0A
208C02:  ADR             R1, aUnrecognizedUn_0; "Unrecognized unit type for pHYs chunk"
208C04:  MOV             R0, R4
208C06:  BLX             j_png_warning
208C0A:  LSRS            R0, R6, #0x10
208C0C:  STRB.W          R6, [R7,#var_22]
208C10:  STRB.W          R5, [R7,#var_1E]
208C14:  CMP             R4, #0
208C16:  STRB.W          R8, [R7,#var_1D]
208C1A:  STRB.W          R0, [R7,#var_24]
208C1E:  MOV.W           R0, R6,LSR#24
208C22:  STRB.W          R0, [R7,#var_25]
208C26:  MOV.W           R0, R6,LSR#8
208C2A:  STRB.W          R0, [R7,#var_23]
208C2E:  MOV.W           R0, R5,LSR#24
208C32:  STRB.W          R0, [R7,#var_21]
208C36:  MOV.W           R0, R5,LSR#16
208C3A:  STRB.W          R0, [R7,#var_20]
208C3E:  MOV.W           R0, R5,LSR#8
208C42:  STRB.W          R0, [R7,#var_1F]
208C46:  BEQ             loc_208CCE
208C48:  MOVS            R0, #0x22 ; '"'
208C4A:  ADD             R5, SP, #0x28+var_1C
208C4C:  STR.W           R0, [R4,#0x368]
208C50:  MOV.W           R0, #0x9000000
208C54:  STR             R0, [SP,#0x28+var_1C]
208C56:  MOV             R0, #0x73594870
208C5E:  MOV             R1, R5
208C60:  STR             R0, [SP,#0x28+var_18]
208C62:  MOV             R0, R4
208C64:  MOVS            R2, #8
208C66:  BLX             j_png_write_data
208C6A:  MOV             R0, #0x70485973
208C72:  STR.W           R0, [R4,#0x1DC]
208C76:  MOV             R0, R4
208C78:  BLX             j_png_reset_crc
208C7C:  ADDS            R1, R5, #4
208C7E:  MOV             R0, R4
208C80:  MOVS            R2, #4
208C82:  BLX             j_png_calculate_crc
208C86:  SUB.W           R5, R7, #-var_25
208C8A:  MOVS            R0, #0x42 ; 'B'
208C8C:  STR.W           R0, [R4,#0x368]
208C90:  MOV             R0, R4
208C92:  MOV             R1, R5
208C94:  MOVS            R2, #9
208C96:  BLX             j_png_write_data
208C9A:  MOV             R0, R4
208C9C:  MOV             R1, R5
208C9E:  MOVS            R2, #9
208CA0:  BLX             j_png_calculate_crc
208CA4:  LDR.W           R0, [R4,#0x1F8]
208CA8:  MOVS            R1, #0x82
208CAA:  STR.W           R1, [R4,#0x368]
208CAE:  MOVS            R2, #4
208CB0:  STRB.W          R0, [SP,#0x28+var_1C+3]
208CB4:  LSRS            R1, R0, #0x10
208CB6:  STRB.W          R1, [SP,#0x28+var_1C+1]
208CBA:  LSRS            R1, R0, #0x18
208CBC:  STRB.W          R1, [SP,#0x28+var_1C]
208CC0:  LSRS            R0, R0, #8
208CC2:  ADD             R1, SP, #0x28+var_1C
208CC4:  STRB.W          R0, [SP,#0x28+var_1C+2]
208CC8:  MOV             R0, R4
208CCA:  BLX             j_png_write_data
208CCE:  LDR             R0, =(__stack_chk_guard_ptr - 0x208CD6)
208CD0:  LDR             R1, [SP,#0x28+var_14]
208CD2:  ADD             R0, PC; __stack_chk_guard_ptr
208CD4:  LDR             R0, [R0]; __stack_chk_guard
208CD6:  LDR             R0, [R0]
208CD8:  SUBS            R0, R0, R1
208CDA:  ITTT EQ
208CDC:  ADDEQ           SP, SP, #0x18
208CDE:  POPEQ.W         {R8}
208CE2:  POPEQ           {R4-R7,PC}
208CE4:  BLX             __stack_chk_fail
