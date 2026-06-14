; =========================================================
; Game Engine Function: sub_8C9D8
; Address            : 0x8C9D8 - 0x8CBC4
; =========================================================

8C9D8:  PUSH            {R4-R7,LR}
8C9DA:  ADD             R7, SP, #0xC
8C9DC:  PUSH.W          {R8,R9,R11}
8C9E0:  LDR             R5, =(dword_1ACF68 - 0x8C9EA)
8C9E2:  MOVW            R0, #0x19D0
8C9E6:  ADD             R5, PC; dword_1ACF68
8C9E8:  LDR             R6, [R5]
8C9EA:  LDR             R0, [R6,R0]
8C9EC:  CBNZ            R0, loc_8C9F8
8C9EE:  MOVW            R0, #0x196C
8C9F2:  ADDS            R4, R6, R0
8C9F4:  LDR             R0, [R4,#0x50]
8C9F6:  CBZ             R0, loc_8C9FE
8C9F8:  POP.W           {R8,R9,R11}
8C9FC:  POP             {R4-R7,PC}
8C9FE:  LDR.W           R0, [R4,#0x148]
8CA02:  CMP             R0, #0
8CA04:  ITT NE
8CA06:  LDRBNE.W        R1, [R0,#0x80]
8CA0A:  CMPNE           R1, #0
8CA0C:  BNE             loc_8C9F8
8CA0E:  LDRB.W          R1, [R6,#0x3D8]
8CA12:  CBZ             R1, loc_8CA56
8CA14:  LDR             R1, [R4,#0x48]
8CA16:  CBZ             R1, loc_8CA46
8CA18:  LDR             R0, [R4,#0x44]
8CA1A:  BL              sub_8C564
8CA1E:  LDRB.W          R0, [R6,#0xB0]
8CA22:  CBZ             R0, loc_8CA56
8CA24:  LDR             R0, [R4,#0x48]
8CA26:  LDRB            R1, [R0,#8]
8CA28:  LSLS            R1, R1, #0x1F
8CA2A:  BNE             loc_8CA56
8CA2C:  VLDR            S4, [R6,#0x384]
8CA30:  VLDR            S6, [R0,#0xC]
8CA34:  VCMP.F32        S4, S6
8CA38:  VMRS            APSR_nzcv, FPSCR
8CA3C:  BGE.W           loc_8CB6E
8CA40:  MOVS            R0, #0
8CA42:  STR             R0, [R4,#0x4C]
8CA44:  B               loc_8CA56
8CA46:  CBZ             R0, loc_8CA56
8CA48:  BL              sub_8CBC8
8CA4C:  CMP             R0, #0
8CA4E:  ITT EQ
8CA50:  MOVEQ           R0, #0
8CA52:  BLEQ            sub_8C628
8CA56:  LDRB.W          R0, [R6,#0x3D9]
8CA5A:  CMP             R0, #0
8CA5C:  BEQ             loc_8C9F8
8CA5E:  LDR             R0, [R5]
8CA60:  MOVW            R1, #0x1A9C
8CA64:  ADD.W           R12, R0, R1
8CA68:  LDR.W           LR, [R0,R1]
8CA6C:  CMP.W           LR, #1
8CA70:  BLT             loc_8CA9C
8CA72:  LDR.W           R1, [R12,#8]
8CA76:  ADD.W           R2, LR, LR,LSL#3
8CA7A:  ADD.W           R3, LR, #1
8CA7E:  ADD.W           R1, R1, R2,LSL#2
8CA82:  SUBS            R1, #0x20 ; ' '
8CA84:  B               loc_8CA8E
8CA86:  SUBS            R3, #1
8CA88:  SUBS            R1, #0x24 ; '$'
8CA8A:  CMP             R3, #1
8CA8C:  BLS             loc_8CA9C
8CA8E:  LDR             R2, [R1]
8CA90:  CMP             R2, #0
8CA92:  BEQ             loc_8CA86
8CA94:  LDRB            R6, [R2,#0xB]
8CA96:  LSLS            R6, R6, #0x1C
8CA98:  BPL             loc_8CA86
8CA9A:  B               loc_8CA9E
8CA9C:  MOVS            R2, #0
8CA9E:  CLZ.W           R3, R2
8CAA2:  LDR             R1, [R4]
8CAA4:  LSRS            R3, R3, #5
8CAA6:  CMP             R1, #1
8CAA8:  BLT             loc_8CAD4
8CAAA:  CBZ             R2, loc_8CAD4
8CAAC:  LDR             R6, [R4,#8]
8CAAE:  SUBS            R6, #4
8CAB0:  LDR.W           R5, [R6,R1,LSL#2]
8CAB4:  CMP             R5, R2
8CAB6:  BEQ             loc_8CADC
8CAB8:  LDR             R0, [R4,#0x44]
8CABA:  CMP             R1, #2
8CABC:  SUB.W           R0, R5, R0
8CAC0:  CLZ.W           R0, R0
8CAC4:  MOV.W           R0, R0,LSR#5
8CAC8:  ORR.W           R3, R3, R0
8CACC:  BCC             loc_8CAD4
8CACE:  SUBS            R1, #1
8CAD0:  LSLS            R0, R3, #0x1F
8CAD2:  BEQ             loc_8CAB0
8CAD4:  LSLS            R0, R3, #0x1F
8CAD6:  BEQ             loc_8CAE2
8CAD8:  LDR             R2, [R4,#0x44]
8CADA:  B               loc_8CAE2
8CADC:  LSLS            R1, R3, #0x1F
8CADE:  IT NE
8CAE0:  LDRNE           R2, [R4,#0x44]
8CAE2:  CMP.W           LR, #0
8CAE6:  BEQ.W           loc_8C9F8
8CAEA:  CBZ             R2, loc_8CB58
8CAEC:  CMP.W           LR, #1
8CAF0:  BLT             loc_8CB58
8CAF2:  LDR.W           R12, [R12,#8]
8CAF6:  MOVS            R0, #0
8CAF8:  MOV.W           R9, #1
8CAFC:  ADD.W           R8, R12, #0x28 ; '('
8CB00:  B               loc_8CB16
8CB02:  LSLS            R1, R4, #0x1F
8CB04:  BEQ             loc_8CB5A
8CB06:  ADDS            R0, #1
8CB08:  ADD.W           R9, R9, #1
8CB0C:  ADD.W           R8, R8, #0x24 ; '$'
8CB10:  CMP             R0, LR
8CB12:  BEQ.W           loc_8C9F8
8CB16:  ADD.W           R1, R0, R0,LSL#3
8CB1A:  ADD.W           R1, R12, R1,LSL#2
8CB1E:  LDR             R1, [R1,#4]
8CB20:  CMP             R1, #0
8CB22:  BEQ             loc_8CB06
8CB24:  LDRB            R4, [R1,#0xB]
8CB26:  LSLS            R4, R4, #0x1F
8CB28:  BNE             loc_8CB06
8CB2A:  MOVS            R4, #0
8CB2C:  MOV             R5, R9
8CB2E:  MOV             R6, R8
8CB30:  CMP             R1, #0
8CB32:  ITTTT NE
8CB34:  LDRNE.W         R3, [R2,#0x2FC]
8CB38:  LDRNE.W         R1, [R1,#0x2FC]
8CB3C:  SUBNE           R1, R1, R3
8CB3E:  CLZNE.W         R1, R1
8CB42:  ITT NE
8CB44:  LSRNE           R1, R1, #5
8CB46:  ORRNE           R4, R1
8CB48:  CMP             R5, LR
8CB4A:  BGE             loc_8CB02
8CB4C:  LSLS            R1, R4, #0x1F
8CB4E:  BNE             loc_8CB02
8CB50:  LDR.W           R1, [R6],#0x24
8CB54:  ADDS            R5, #1
8CB56:  B               loc_8CB30
8CB58:  MOVS            R0, #0
8CB5A:  CMP             R0, LR
8CB5C:  BGE.W           loc_8C9F8
8CB60:  MOVS            R1, #1
8CB62:  POP.W           {R8,R9,R11}
8CB66:  POP.W           {R4-R7,LR}
8CB6A:  B.W             sub_98854
8CB6E:  VLDR            S2, [R0,#0x10]
8CB72:  VLDR            S0, [R6,#0x388]
8CB76:  VCMP.F32        S0, S2
8CB7A:  VMRS            APSR_nzcv, FPSCR
8CB7E:  BLT.W           loc_8CA40
8CB82:  VLDR            S8, [R0,#0x1C]
8CB86:  VADD.F32        S6, S6, S8
8CB8A:  VCMP.F32        S4, S6
8CB8E:  VMRS            APSR_nzcv, FPSCR
8CB92:  BPL.W           loc_8CA40
8CB96:  LDR             R2, [R5]
8CB98:  MOVW            R1, #0x1554
8CB9C:  VLDR            S8, [R0,#0x274]
8CBA0:  ADD             R1, R2
8CBA2:  VLDR            S4, [R1]
8CBA6:  VLDR            S6, [R1,#0x378]
8CBAA:  VADD.F32        S4, S4, S4
8CBAE:  VMLA.F32        S4, S6, S8
8CBB2:  VADD.F32        S2, S2, S4
8CBB6:  VCMP.F32        S0, S2
8CBBA:  VMRS            APSR_nzcv, FPSCR
8CBBE:  BMI.W           loc_8CA56
8CBC2:  B               loc_8CA40
