; =========================================================
; Game Engine Function: INT123_icy2utf8
; Address            : 0x226CF4 - 0x226E82
; =========================================================

226CF4:  PUSH            {R4-R7,LR}
226CF6:  ADD             R7, SP, #0xC
226CF8:  PUSH.W          {R8-R11}
226CFC:  SUB             SP, SP, #4
226CFE:  VPUSH           {D8-D11}
226D02:  SUB             SP, SP, #8
226D04:  CMP             R1, #0
226D06:  BNE             loc_226DA8
226D08:  LDRB            R2, [R0]
226D0A:  CBZ             R2, loc_226D82
226D0C:  MOV             R1, R0
226D0E:  ADDS            R6, R1, #1
226D10:  SXTB            R3, R2
226D12:  CMP             R3, #0
226D14:  BGE             loc_226D7A
226D16:  ADD.W           R3, R2, #0x3E ; '>'
226D1A:  UXTB            R3, R3
226D1C:  CMP             R3, #0x3B ; ';'
226D1E:  BHI             loc_226DA8
226D20:  UXTB            R2, R2
226D22:  CMP             R2, #0xEF
226D24:  BEQ             loc_226D32
226D26:  CMP             R2, #0xC2
226D28:  BNE             loc_226D40
226D2A:  LDRB            R1, [R6]
226D2C:  CMP             R1, #0xA0
226D2E:  BCS             loc_226D44
226D30:  B               loc_226DA8
226D32:  LDRB            R2, [R6]
226D34:  CMP             R2, #0xBF
226D36:  BNE             loc_226D4E
226D38:  LDRB            R1, [R1,#2]
226D3A:  CMP             R1, #0xBD
226D3C:  BLS             loc_226D4E
226D3E:  B               loc_226DA8
226D40:  CMP             R2, #0xE0
226D42:  BCS             loc_226D4A
226D44:  MOVS            R1, #1
226D46:  CBNZ            R1, loc_226D6A
226D48:  B               loc_226D7A
226D4A:  CMP             R2, #0xF0
226D4C:  BCS             loc_226D54
226D4E:  MOVS            R1, #2
226D50:  CBNZ            R1, loc_226D6A
226D52:  B               loc_226D7A
226D54:  CMP             R2, #0xF8
226D56:  BCS             loc_226D5E
226D58:  MOVS            R1, #3
226D5A:  CBNZ            R1, loc_226D6A
226D5C:  B               loc_226D7A
226D5E:  CMP             R2, #0xFC
226D60:  MOV.W           R1, #5
226D64:  IT CC
226D66:  MOVCC           R1, #4
226D68:  CBZ             R1, loc_226D7A
226D6A:  LDRB.W          R2, [R6],#1
226D6E:  SUBS            R1, #1
226D70:  AND.W           R2, R2, #0xC0
226D74:  CMP             R2, #0x80
226D76:  BEQ             loc_226D68
226D78:  B               loc_226DA8
226D7A:  MOV             R1, R6
226D7C:  LDRB            R2, [R1]
226D7E:  CMP             R2, #0
226D80:  BNE             loc_226D0E
226D82:  MOV             R4, R0
226D84:  BLX             strlen
226D88:  ADDS            R0, #1; byte_count
226D8A:  BLX             malloc
226D8E:  CMP             R0, #0
226D90:  BEQ             loc_226E72
226D92:  MOV             R1, R4; char *
226D94:  ADD             SP, SP, #8
226D96:  VPOP            {D8-D11}
226D9A:  ADD             SP, SP, #4
226D9C:  POP.W           {R8-R11}
226DA0:  POP.W           {R4-R7,LR}
226DA4:  B.W             j_strcpy
226DA8:  STR             R0, [SP,#0x48+var_44]
226DAA:  BLX             strlen
226DAE:  ADDS            R4, R0, #1
226DB0:  ADD.W           R0, R4, R4,LSL#1; byte_count
226DB4:  BLX             malloc
226DB8:  MOV             R9, R0
226DBA:  CMP.W           R9, #0
226DBE:  BEQ             loc_226E72
226DC0:  MOVS            R6, #0
226DC2:  CMP             R4, #0
226DC4:  BEQ             loc_226E62
226DC6:  LDR.W           R11, =(unk_5F0770 - 0x226DD8)
226DCA:  VDUP.32         Q4, R6
226DCE:  VMOV.I32        Q5, #1
226DD2:  MOVS            R5, #0
226DD4:  ADD             R11, PC; unk_5F0770
226DD6:  LDR             R3, [SP,#0x48+var_44]
226DD8:  LDRB            R0, [R3,R5]
226DDA:  ADDS            R5, #1
226DDC:  LDRH.W          R10, [R11,R0,LSL#1]
226DE0:  ADD.W           R0, R11, R0,LSL#1
226DE4:  LDRH.W          R8, [R0,#2]
226DE8:  CMP             R10, R8
226DEA:  BCS             loc_226E5E
226DEC:  LDR             R1, =(unk_5F0972 - 0x226DFC)
226DEE:  ADD.W           R2, R10, #1
226DF2:  CMP             R2, R8
226DF4:  ADD.W           R0, R9, R6; void *
226DF8:  ADD             R1, PC; unk_5F0972
226DFA:  IT LS
226DFC:  MOVLS           R2, R8
226DFE:  ADD             R1, R10; void *
226E00:  SUB.W           R2, R2, R10; size_t
226E04:  BLX             memcpy_1
226E08:  SUB.W           R0, R8, R10
226E0C:  CMP             R0, #4
226E0E:  BCS             loc_226E14
226E10:  LDR             R3, [SP,#0x48+var_44]
226E12:  B               loc_226E54
226E14:  BIC.W           R1, R0, #3
226E18:  CBZ             R1, loc_226E52
226E1A:  VMOV            D18, D8
226E1E:  LDR             R3, [SP,#0x48+var_44]
226E20:  VMOV            Q8, Q4
226E24:  ADD             R10, R1
226E26:  MOV             R2, R1
226E28:  VMOV.32         D18[0], R6
226E2C:  VMOV            D16, D18
226E30:  VADD.I32        Q8, Q8, Q5
226E34:  SUBS            R2, #4
226E36:  BNE             loc_226E30
226E38:  VEXT.8          Q9, Q8, Q8, #8
226E3C:  CMP             R0, R1
226E3E:  VADD.I32        Q8, Q8, Q9
226E42:  VDUP.32         Q9, D16[1]
226E46:  VADD.I32        Q8, Q8, Q9
226E4A:  VMOV.32         R6, D16[0]
226E4E:  BNE             loc_226E54
226E50:  B               loc_226E5E
226E52:  LDR             R3, [SP,#0x48+var_44]
226E54:  ADD.W           R10, R10, #1
226E58:  ADDS            R6, #1
226E5A:  CMP             R10, R8
226E5C:  BCC             loc_226E54
226E5E:  CMP             R5, R4
226E60:  BNE             loc_226DD8
226E62:  MOV             R0, R9; ptr
226E64:  MOV             R1, R6; size
226E66:  BLX             realloc
226E6A:  CBNZ            R0, loc_226E74
226E6C:  MOV             R0, R9; p
226E6E:  BLX             free
226E72:  MOVS            R0, #0
226E74:  ADD             SP, SP, #8
226E76:  VPOP            {D8-D11}
226E7A:  ADD             SP, SP, #4
226E7C:  POP.W           {R8-R11}
226E80:  POP             {R4-R7,PC}
