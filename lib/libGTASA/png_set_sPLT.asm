; =========================================================
; Game Engine Function: png_set_sPLT
; Address            : 0x2029BC - 0x202AD6
; =========================================================

2029BC:  PUSH            {R4-R7,LR}
2029BE:  ADD             R7, SP, #0xC
2029C0:  PUSH.W          {R8-R11}
2029C4:  SUB             SP, SP, #4
2029C6:  MOV             R6, R2
2029C8:  MOV             R5, R3
2029CA:  MOV             R10, R1
2029CC:  MOV             R8, R0
2029CE:  CMP             R6, #0
2029D0:  BEQ             loc_202ACE
2029D2:  CMP.W           R8, #0
2029D6:  IT NE
2029D8:  CMPNE.W         R10, #0
2029DC:  BEQ             loc_202ACE
2029DE:  CMP             R5, #1
2029E0:  BLT             loc_202ACE
2029E2:  LDRD.W          R1, R2, [R10,#0x100]
2029E6:  MOVS            R0, #0x10
2029E8:  STR             R0, [SP,#0x20+var_20]
2029EA:  MOV             R0, R8
2029EC:  MOV             R3, R5
2029EE:  BLX             j_png_realloc_array
2029F2:  MOV             R4, R0
2029F4:  CMP             R4, #0
2029F6:  BEQ             loc_202AA2
2029F8:  LDR.W           R1, [R10,#0x100]; p
2029FC:  MOV             R0, R8; int
2029FE:  BLX             j_png_free
202A02:  LDR.W           R1, [R10,#0x104]
202A06:  ADR.W           R9, aPngSetSpltInva; "png_set_sPLT: invalid sPLT"
202A0A:  LDR.W           R0, [R10,#0xF4]
202A0E:  STR.W           R4, [R10,#0x100]
202A12:  ADD.W           R11, R4, R1,LSL#4
202A16:  ORR.W           R0, R0, #0x20 ; ' '
202A1A:  STR.W           R0, [R10,#0xF4]
202A1E:  LDR             R0, [R6]; char *
202A20:  CMP             R0, #0
202A22:  ITT NE
202A24:  LDRNE           R1, [R6,#8]
202A26:  CMPNE           R1, #0
202A28:  BNE             loc_202A38
202A2A:  MOV             R0, R8
202A2C:  MOV             R1, R9
202A2E:  BLX             j_png_app_error
202A32:  SUBS            R5, #1
202A34:  BNE             loc_202A1E
202A36:  B               loc_202ACE
202A38:  LDRB            R1, [R6,#4]
202A3A:  STRB.W          R1, [R11,#4]
202A3E:  BLX             strlen
202A42:  ADDS            R4, R0, #1
202A44:  MOV             R0, R8; int
202A46:  MOV             R1, R4; byte_count
202A48:  BLX             j_png_malloc_base
202A4C:  CMP             R0, #0
202A4E:  STR.W           R0, [R11]
202A52:  BEQ             loc_202AB6
202A54:  LDR             R1, [R6]; void *
202A56:  MOV             R2, R4; size_t
202A58:  BLX             memcpy_1
202A5C:  LDR             R1, [R6,#0xC]
202A5E:  MOV             R0, R8
202A60:  MOVS            R2, #0xA
202A62:  BLX             j_png_malloc_array
202A66:  CMP             R0, #0
202A68:  STR.W           R0, [R11,#8]
202A6C:  BEQ             loc_202AA6
202A6E:  LDRD.W          R1, R2, [R6,#8]; void *
202A72:  STR.W           R2, [R11,#0xC]
202A76:  ADD.W           R2, R2, R2,LSL#2
202A7A:  LSLS            R2, R2, #1; size_t
202A7C:  BLX             memcpy_1
202A80:  LDR.W           R0, [R10,#8]
202A84:  ADDS            R6, #0x10
202A86:  ADD.W           R11, R11, #0x10
202A8A:  LDR.W           R1, [R10,#0x104]
202A8E:  ORR.W           R0, R0, #0x2000
202A92:  STR.W           R0, [R10,#8]
202A96:  ADDS            R0, R1, #1
202A98:  STR.W           R0, [R10,#0x104]
202A9C:  SUBS            R5, #1
202A9E:  BNE             loc_202A1E
202AA0:  B               loc_202ACE
202AA2:  ADR             R1, aTooManySpltChu; "too many sPLT chunks"
202AA4:  B               loc_202ABC
202AA6:  LDR.W           R1, [R11]; p
202AAA:  MOV             R0, R8; int
202AAC:  BLX             j_png_free
202AB0:  MOVS            R0, #0
202AB2:  STR.W           R0, [R11]
202AB6:  CMP             R5, #1
202AB8:  BLT             loc_202ACE
202ABA:  ADR             R1, aSpltOutOfMemor; "sPLT out of memory"
202ABC:  MOV             R0, R8
202ABE:  MOVS            R2, #1
202AC0:  ADD             SP, SP, #4
202AC2:  POP.W           {R8-R11}
202AC6:  POP.W           {R4-R7,LR}
202ACA:  B.W             j_j_png_chunk_report
202ACE:  ADD             SP, SP, #4
202AD0:  POP.W           {R8-R11}
202AD4:  POP             {R4-R7,PC}
