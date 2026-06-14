; =========================================================
; Game Engine Function: sub_21EBEC
; Address            : 0x21EBEC - 0x21EDB0
; =========================================================

21EBEC:  PUSH            {R4-R7,LR}
21EBEE:  ADD             R7, SP, #0xC
21EBF0:  PUSH.W          {R8-R11}
21EBF4:  SUB             SP, SP, #0x11C
21EBF6:  MOV             R4, R0
21EBF8:  LDR             R0, =(dword_6BD63C - 0x21EBFE)
21EBFA:  ADD             R0, PC; dword_6BD63C
21EBFC:  LDR             R0, [R0]
21EBFE:  ADDS            R5, R4, R0
21EC00:  MOV             R0, R4
21EC02:  LDR             R1, [R5,#4]
21EC04:  BLX             R1
21EC06:  CMP             R0, #0
21EC08:  BEQ.W           loc_21EDA4
21EC0C:  LDR.W           R8, [R5]
21EC10:  CMP.W           R8, #0
21EC14:  BEQ.W           loc_21EDA6
21EC18:  MOV             R11, R4
21EC1A:  LDR.W           R6, [R11,#0x64]!
21EC1E:  CMP             R6, R11
21EC20:  BEQ             loc_21EC72
21EC22:  LDR             R0, =(RwEngineInstance_ptr - 0x21EC2C)
21EC24:  LDR.W           R9, =(dword_6BD690 - 0x21EC2E)
21EC28:  ADD             R0, PC; RwEngineInstance_ptr
21EC2A:  ADD             R9, PC; dword_6BD690
21EC2C:  LDR             R5, [R0]; RwEngineInstance
21EC2E:  MOV             R0, R6
21EC30:  LDR.W           R1, [R0,#-4]
21EC34:  LDR             R6, [R0]
21EC36:  CMP             R1, #0
21EC38:  ITTT NE
21EC3A:  SUBNE.W         R1, R0, #0xC
21EC3E:  LDRNE           R0, [R1,#0x14]
21EC40:  CMPNE           R0, #0
21EC42:  BNE             loc_21EC4A
21EC44:  CMP             R6, R11
21EC46:  BNE             loc_21EC2E
21EC48:  B               loc_21EC72
21EC4A:  LDR             R0, [R1,#0x10]
21EC4C:  STR             R6, [R0]
21EC4E:  LDRD.W          R0, R2, [R1,#0xC]
21EC52:  STR             R2, [R0,#4]
21EC54:  LDRD.W          R0, R2, [R1]
21EC58:  STR             R0, [R2]
21EC5A:  LDRD.W          R0, R2, [R1]
21EC5E:  STR             R2, [R0,#4]
21EC60:  LDR.W           R0, [R9]
21EC64:  LDR             R2, [R5]
21EC66:  LDR             R0, [R2,R0]
21EC68:  LDR.W           R2, [R2,#0x140]
21EC6C:  BLX             R2
21EC6E:  CMP             R6, R11
21EC70:  BNE             loc_21EC2E
21EC72:  MOV             R0, R4
21EC74:  BLX             j__Z30RpAtomicGetWorldBoundingSphereP8RpAtomic; RpAtomicGetWorldBoundingSphere(RpAtomic *)
21EC78:  VLDR            D16, [R0]
21EC7C:  ADD             R5, SP, #0x138+var_128
21EC7E:  LDR             R1, [R0,#8]
21EC80:  MOVS            R6, #0
21EC82:  STR             R1, [SP,#0x138+var_120]
21EC84:  VSTR            D16, [SP,#0x138+var_128]
21EC88:  VLDR            D16, [R0]
21EC8C:  LDR             R1, [R0,#8]
21EC8E:  STR             R1, [SP,#0x138+var_130]
21EC90:  VSTR            D16, [SP,#0x138+var_138]
21EC94:  VLDR            S0, [R0,#0xC]
21EC98:  VLDR            S2, [SP,#0x138+var_128]
21EC9C:  VLDR            S4, [SP,#0x138+var_128+4]
21ECA0:  VLDR            S6, [SP,#0x138+var_120]
21ECA4:  VSUB.F32        S2, S2, S0
21ECA8:  VSUB.F32        S4, S4, S0
21ECAC:  LDR             R0, =(RwEngineInstance_ptr - 0x21ECB6)
21ECAE:  VSUB.F32        S6, S6, S0
21ECB2:  ADD             R0, PC; RwEngineInstance_ptr
21ECB4:  LDR.W           R9, [R0]; RwEngineInstance
21ECB8:  VSTR            S2, [SP,#0x138+var_128]
21ECBC:  VLDR            S2, [SP,#0x138+var_138]
21ECC0:  VSTR            S4, [SP,#0x138+var_128+4]
21ECC4:  VLDR            S4, [SP,#0x138+var_138+4]
21ECC8:  VADD.F32        S2, S0, S2
21ECCC:  VSTR            S6, [SP,#0x138+var_120]
21ECD0:  VLDR            S6, [SP,#0x138+var_130]
21ECD4:  VADD.F32        S4, S0, S4
21ECD8:  VADD.F32        S0, S0, S6
21ECDC:  VSTR            S2, [SP,#0x138+var_138]
21ECE0:  VSTR            S4, [SP,#0x138+var_138+4]
21ECE4:  VSTR            S0, [SP,#0x138+var_130]
21ECE8:  LDR.W           R10, [R8,#0x1C]
21ECEC:  MOV             R8, SP
21ECEE:  B               loc_21ECF4
21ECF0:  LDR.W           R10, [R10,#0xC]
21ECF4:  LDR.W           R0, [R10]
21ECF8:  CMP             R0, #0
21ECFA:  BLT             loc_21ED42
21ECFC:  ADDS            R1, R5, R0
21ECFE:  VLDR            S0, [R10,#0x10]
21ED02:  VLDR            S2, [R1]
21ED06:  VCMPE.F32       S2, S0
21ED0A:  VMRS            APSR_nzcv, FPSCR
21ED0E:  BGE             loc_21ED2C
21ED10:  ADD             R0, R8
21ED12:  VLDR            S0, [R10,#0x14]
21ED16:  LDR.W           R1, [R10,#8]
21ED1A:  VLDR            S2, [R0]
21ED1E:  VCMPE.F32       S0, S2
21ED22:  VMRS            APSR_nzcv, FPSCR
21ED26:  BLT             loc_21ED94
21ED28:  MOV             R10, R1
21ED2A:  B               loc_21ECF4
21ED2C:  ADD             R0, R8
21ED2E:  VLDR            S0, [R10,#0x14]
21ED32:  VLDR            S2, [R0]
21ED36:  VCMPE.F32       S0, S2
21ED3A:  VMRS            APSR_nzcv, FPSCR
21ED3E:  BLT             loc_21ECF0
21ED40:  B               loc_21ED84
21ED42:  LDR             R0, =(dword_6BD690 - 0x21ED4C)
21ED44:  LDR.W           R1, [R9]
21ED48:  ADD             R0, PC; dword_6BD690
21ED4A:  LDR             R0, [R0]
21ED4C:  LDR             R0, [R1,R0]
21ED4E:  LDR.W           R1, [R1,#0x13C]
21ED52:  BLX             R1
21ED54:  STR.W           R10, [R0,#0x14]
21ED58:  ADD.W           R2, R10, #0x38 ; '8'
21ED5C:  STR             R4, [R0,#8]
21ED5E:  LDRB            R1, [R4,#2]
21ED60:  TST.W           R1, #1
21ED64:  IT EQ
21ED66:  ADDEQ.W         R2, R10, #0x40 ; '@'
21ED6A:  LDR             R1, [R2]
21ED6C:  STRD.W          R1, R2, [R0]
21ED70:  LDR             R1, [R2]
21ED72:  STR             R0, [R1,#4]
21ED74:  STR             R0, [R2]
21ED76:  LDR             R1, [R4,#0x64]
21ED78:  STRD.W          R1, R11, [R0,#0xC]
21ED7C:  ADDS            R0, #0xC
21ED7E:  LDR             R1, [R4,#0x64]
21ED80:  STR             R0, [R1,#4]
21ED82:  STR             R0, [R4,#0x64]
21ED84:  ADD             R0, SP, #0x138+var_11C
21ED86:  LDR.W           R10, [R0,R6,LSL#2]
21ED8A:  SUBS            R6, #1
21ED8C:  CMP.W           R6, #0xFFFFFFFF
21ED90:  BGT             loc_21ECF4
21ED92:  B               loc_21EDA6
21ED94:  ADDS            R6, #1
21ED96:  ADD             R2, SP, #0x138+var_11C
21ED98:  LDR.W           R0, [R10,#0xC]
21ED9C:  MOV             R10, R1
21ED9E:  STR.W           R0, [R2,R6,LSL#2]
21EDA2:  B               loc_21ED8C
21EDA4:  MOVS            R4, #0
21EDA6:  MOV             R0, R4
21EDA8:  ADD             SP, SP, #0x11C
21EDAA:  POP.W           {R8-R11}
21EDAE:  POP             {R4-R7,PC}
