; =========================================================
; Game Engine Function: png_set_keep_unknown_chunks
; Address            : 0x202D44 - 0x202EA8
; =========================================================

202D44:  PUSH            {R4-R7,LR}
202D46:  ADD             R7, SP, #0xC
202D48:  PUSH.W          {R8-R11}
202D4C:  SUB             SP, SP, #4
202D4E:  MOV             R11, R3
202D50:  MOV             R8, R1
202D52:  CMP             R0, #0
202D54:  BEQ.W           loc_202E98
202D58:  CMP.W           R8, #4
202D5C:  BCC             loc_202D62
202D5E:  ADR             R1, aPngSetKeepUnkn_0; "png_set_keep_unknown_chunks: invalid ke"...
202D60:  B               loc_202D9A
202D62:  CMP.W           R11, #0
202D66:  BLE             loc_202D6E
202D68:  CBNZ            R2, loc_202D82
202D6A:  ADR             R1, aPngSetKeepUnkn_1; "png_set_keep_unknown_chunks: no chunk l"...
202D6C:  B               loc_202D9A
202D6E:  CMP.W           R11, #0
202D72:  STR.W           R8, [R0,#0x2F8]
202D76:  BEQ.W           loc_202E98
202D7A:  LDR             R2, =(aBkgd_0 - 0x202D84); "bKGD"
202D7C:  MOV.W           R11, #0x12
202D80:  ADD             R2, PC; "bKGD"
202D82:  LDRD.W          R9, R12, [R0,#0x2FC]
202D86:  CMP.W           R12, #0
202D8A:  IT EQ
202D8C:  MOVEQ           R9, R12
202D8E:  ADD.W           R1, R9, R11
202D92:  CMP.W           R1, #0x33333333
202D96:  BLS             loc_202DA8
202D98:  ADR             R1, aPngSetKeepUnkn_2; "png_set_keep_unknown_chunks: too many c"...
202D9A:  ADD             SP, SP, #4
202D9C:  POP.W           {R8-R11}
202DA0:  POP.W           {R4-R7,LR}
202DA4:  B.W             j_j_png_app_error
202DA8:  CMP.W           R8, #0
202DAC:  BEQ             loc_202DDA
202DAE:  ADD.W           R1, R1, R1,LSL#2
202DB2:  MOV             R5, R2
202DB4:  MOV             R4, R0
202DB6:  BLX             j_png_malloc
202DBA:  MOV             R12, R0
202DBC:  CMP.W           R9, #0
202DC0:  BEQ             loc_202DD4
202DC2:  LDR.W           R1, [R4,#0x300]; void *
202DC6:  ADD.W           R2, R9, R9,LSL#2; size_t
202DCA:  MOV             R0, R12; void *
202DCC:  MOV             R6, R12
202DCE:  BLX             memcpy_1
202DD2:  MOV             R12, R6
202DD4:  MOV             R0, R4; int
202DD6:  MOV             R2, R5
202DD8:  B               loc_202DE0
202DDA:  CMP.W           R9, #0
202DDE:  BEQ             loc_202E72
202DE0:  MOV.W           R10, #0
202DE4:  CMP.W           R12, #0
202DE8:  BEQ             loc_202E76
202DEA:  ADD.W           R1, R10, R10,LSL#2
202DEE:  CMP.W           R9, #0
202DF2:  ADD             R1, R2
202DF4:  MOV             R4, R12
202DF6:  BEQ             loc_202E14
202DF8:  MOVS            R5, #0
202DFA:  MOV             R4, R12
202DFC:  LDR             R3, [R1]
202DFE:  LDR             R6, [R4]
202E00:  CMP             R6, R3
202E02:  MOV.W           R3, #0
202E06:  IT NE
202E08:  MOVNE           R3, #1
202E0A:  CBZ             R3, loc_202E22
202E0C:  ADDS            R5, #1
202E0E:  ADDS            R4, #5
202E10:  CMP             R5, R9
202E12:  BCC             loc_202DFC
202E14:  CMP.W           R8, #0
202E18:  BEQ             loc_202E26
202E1A:  ADD.W           R9, R9, #1
202E1E:  LDR             R1, [R1]
202E20:  STR             R1, [R4]
202E22:  STRB.W          R8, [R4,#4]
202E26:  ADD.W           R10, R10, #1
202E2A:  CMP             R10, R11
202E2C:  BNE             loc_202DEA
202E2E:  CMP.W           R9, #0
202E32:  BEQ             loc_202E60
202E34:  MOVS            R4, #0
202E36:  MOV             R1, R12
202E38:  MOV             R2, R12
202E3A:  LDRB            R3, [R2,#4]
202E3C:  CBZ             R3, loc_202E50
202E3E:  CMP             R2, R1
202E40:  ADD.W           R4, R4, #1
202E44:  ITTTT NE
202E46:  LDRNE           R3, [R2]
202E48:  LDRBNE          R6, [R2,#4]
202E4A:  STRBNE          R6, [R1,#4]
202E4C:  STRNE           R3, [R1]
202E4E:  ADDS            R1, #5
202E50:  SUBS.W          R9, R9, #1
202E54:  ADD.W           R2, R2, #5
202E58:  BNE             loc_202E3A
202E5A:  CBZ             R4, loc_202E60
202E5C:  MOV             R10, R12
202E5E:  B               loc_202E78
202E60:  LDR.W           R1, [R0,#0x300]
202E64:  CMP             R1, R12
202E66:  BEQ             loc_202EA0
202E68:  MOV             R1, R12; p
202E6A:  MOV             R4, R0
202E6C:  BLX             j_png_free
202E70:  MOV             R0, R4; int
202E72:  MOV.W           R10, #0
202E76:  MOVS            R4, #0
202E78:  LDR.W           R12, [R0,#0x300]
202E7C:  CMP             R12, R10
202E7E:  STR.W           R4, [R0,#0x2FC]
202E82:  BEQ             loc_202E98
202E84:  CMP.W           R12, #0
202E88:  BEQ             loc_202E94
202E8A:  MOV             R1, R12; p
202E8C:  MOV             R4, R0
202E8E:  BLX             j_png_free
202E92:  MOV             R0, R4
202E94:  STR.W           R10, [R0,#0x300]
202E98:  ADD             SP, SP, #4
202E9A:  POP.W           {R8-R11}
202E9E:  POP             {R4-R7,PC}
202EA0:  MOV.W           R10, #0
202EA4:  MOVS            R4, #0
202EA6:  B               loc_202E7C
