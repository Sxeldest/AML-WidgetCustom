; =========================================================
; Game Engine Function: sub_16F984
; Address            : 0x16F984 - 0x16FD1C
; =========================================================

16F984:  PUSH            {R4-R7,LR}
16F986:  ADD             R7, SP, #0xC
16F988:  PUSH.W          {R8-R11}
16F98C:  SUB             SP, SP, #4
16F98E:  VPUSH           {D8-D13}
16F992:  SUB             SP, SP, #0x48
16F994:  LDR             R0, =(dword_381B58 - 0x16F9A0)
16F996:  MOVW            R9, #0x19AC
16F99A:  MOVS            R1, #1
16F99C:  ADD             R0, PC; dword_381B58
16F99E:  STR             R0, [SP,#0x98+var_84]
16F9A0:  LDR             R6, [R0]
16F9A2:  LDR.W           R4, [R6,R9]
16F9A6:  LDR.W           R0, [R4,#0x184]
16F9AA:  LDR.W           R8, [R4,#0x1C0]
16F9AE:  STRB.W          R1, [R4,#0x7C]
16F9B2:  SUBS            R1, R0, #1
16F9B4:  STR.W           R1, [R4,#0x184]
16F9B8:  BEQ             loc_16F9C6
16F9BA:  LDR.W           R1, [R4,#0x18C]
16F9BE:  ADD.W           R0, R1, R0,LSL#2
16F9C2:  SUBS            R0, #8
16F9C4:  B               loc_16F9CA
16F9C6:  ADD.W           R0, R4, #0x234
16F9CA:  LDR.W           R1, [R8,#0x10]
16F9CE:  LDR             R0, [R0]
16F9D0:  CMP             R1, #2
16F9D2:  STR.W           R0, [R4,#0x170]
16F9D6:  BLT             loc_16F9E8
16F9D8:  BL              sub_16DE44
16F9DC:  LDR.W           R1, [R4,#0x27C]
16F9E0:  ADD.W           R0, R1, #0x64 ; 'd'
16F9E4:  BL              sub_174C68
16F9E8:  VLDR            S2, [R8,#0x20]
16F9EC:  MOVS            R5, #0
16F9EE:  VLDR            S0, [R4,#0xCC]
16F9F2:  VCMP.F32        S2, S0
16F9F6:  VMRS            APSR_nzcv, FPSCR
16F9FA:  IT GE
16F9FC:  VMOVGE.F32      S0, S2
16FA00:  LDR.W           R0, [R8,#4]
16FA04:  VSTR            S0, [R8,#0x20]
16FA08:  VSTR            S0, [R4,#0xCC]
16FA0C:  LSLS            R1, R0, #0x1B
16FA0E:  ITT PL
16FA10:  LDRPL.W         R1, [R8,#0x28]
16FA14:  STRPL.W         R1, [R4,#0xE0]
16FA18:  LSLS            R1, R0, #0x1F
16FA1A:  MOV.W           R1, #0
16FA1E:  BNE.W           loc_16FCE2
16FA22:  LDRB.W          R1, [R4,#0x7F]
16FA26:  CBZ             R1, loc_16FA2C
16FA28:  MOVS            R1, #0
16FA2A:  B               loc_16FCE2
16FA2C:  VLDR            S18, [R4,#0x1D4]
16FA30:  MOVS            R1, #0
16FA32:  VLDR            S2, [R8,#0x24]
16FA36:  VLDR            S20, [R4,#0x1DC]
16FA3A:  VCMP.F32        S2, S18
16FA3E:  VMRS            APSR_nzcv, FPSCR
16FA42:  VCMP.F32        S0, S20
16FA46:  IT GE
16FA48:  VMOVGE.F32      S18, S2
16FA4C:  VMRS            APSR_nzcv, FPSCR
16FA50:  IT MI
16FA52:  VMOVMI.F32      S20, S0
16FA56:  LDR.W           R3, [R8,#0x10]
16FA5A:  CMP             R3, #2
16FA5C:  BLT.W           loc_16FCE2
16FA60:  VMOV.F32        S0, #1.0
16FA64:  AND.W           R0, R0, #2
16FA68:  STR             R0, [SP,#0x98+var_88]
16FA6A:  MOV.W           R0, #0xFFFFFFFF
16FA6E:  VMOV.F32        S16, #4.0
16FA72:  STR             R0, [SP,#0x98+var_8C]
16FA74:  VMOV.F32        S24, #-4.0
16FA78:  LDR             R0, [SP,#0x98+var_84]
16FA7A:  ADD.W           R1, R6, R9
16FA7E:  MOVS            R6, #0
16FA80:  MOV.W           R10, #1
16FA84:  STR             R1, [SP,#0x98+var_90]
16FA86:  LDR.W           R11, [R0]
16FA8A:  VADD.F32        S22, S18, S0
16FA8E:  STR             R4, [SP,#0x98+var_80]
16FA90:  MOVW            R2, #0x19AC
16FA94:  LDR.W           R1, [R8]
16FA98:  LDR.W           R0, [R11,R2]
16FA9C:  MOV             R5, R8
16FA9E:  LDR.W           R8, [R8,#0x44]
16FAA2:  MOV             R9, R3
16FAA4:  LDR.W           R0, [R0,#0x1C0]
16FAA8:  VLDR            S0, [R0,#0x14]
16FAAC:  VLDR            S2, [R0,#0x18]
16FAB0:  LDR             R0, [R0,#0x44]
16FAB2:  VSUB.F32        S2, S2, S0
16FAB6:  ADD             R0, R6
16FAB8:  VLDR            S4, [R0,#0x1C]
16FABC:  ADD.W           R0, R11, R2
16FAC0:  VSTR            S18, [SP,#0x98+var_6C]
16FAC4:  VMLA.F32        S0, S2, S4
16FAC8:  VLDR            S2, [R4,#0xC]
16FACC:  VSTR            S20, [SP,#0x98+var_64]
16FAD0:  ADD.W           R4, R10, R1
16FAD4:  VADD.F32        S26, S2, S0
16FAD8:  VADD.F32        S0, S26, S16
16FADC:  VADD.F32        S2, S26, S24
16FAE0:  VSTR            S0, [SP,#0x98+var_68]
16FAE4:  VSTR            S2, [SP,#0x98+var_70]
16FAE8:  LDR             R2, [R0,#0x24]
16FAEA:  CMP             R4, R2
16FAEC:  IT EQ
16FAEE:  STREQ           R4, [R0,#0x28]
16FAF0:  LDR             R1, [R0,#0x50]
16FAF2:  MOVS            R2, #0
16FAF4:  CMP             R4, R1
16FAF6:  ITT EQ
16FAF8:  MOVEQ           R1, #1
16FAFA:  STRBEQ.W        R1, [R0,#0x54]
16FAFE:  ADD             R0, SP, #0x98+var_70
16FB00:  MOV             R1, R4
16FB02:  BL              sub_167448
16FB06:  CBZ             R0, loc_16FB0E
16FB08:  MOV             R8, R5
16FB0A:  MOV             R3, R9
16FB0C:  B               loc_16FBDC
16FB0E:  LDR             R1, [SP,#0x98+var_88]
16FB10:  MOVS            R0, #0
16FB12:  STRB.W          R0, [R7,#var_71]
16FB16:  STRB.W          R0, [R7,#var_72]
16FB1A:  CBNZ            R1, loc_16FB66
16FB1C:  STR             R0, [SP,#0x98+var_98]
16FB1E:  ADD             R0, SP, #0x98+var_70
16FB20:  SUB.W           R2, R7, #-var_71
16FB24:  SUB.W           R3, R7, #-var_72
16FB28:  MOV             R1, R4
16FB2A:  BL              sub_17AD64
16FB2E:  LDRB.W          R1, [R7,#var_71]
16FB32:  LDRB.W          R0, [R7,#var_72]
16FB36:  CBNZ            R1, loc_16FB3A
16FB38:  CBZ             R0, loc_16FB42
16FB3A:  LDR             R2, [SP,#0x98+var_90]
16FB3C:  MOVS            R3, #4
16FB3E:  STR.W           R3, [R2,#0x368]
16FB42:  CBZ             R0, loc_16FB56
16FB44:  ADD.W           R2, R8, R6
16FB48:  LDRB.W          R2, [R2,#0x24]
16FB4C:  LSLS            R2, R2, #0x1E
16FB4E:  LDR             R2, [SP,#0x98+var_8C]
16FB50:  IT PL
16FB52:  MOVPL           R2, R10
16FB54:  STR             R2, [SP,#0x98+var_8C]
16FB56:  CLZ.W           R0, R0
16FB5A:  MOV             R8, R5
16FB5C:  MOV.W           R0, R0,LSR#5
16FB60:  CBZ             R1, loc_16FB6A
16FB62:  MOVS            R1, #0x1C
16FB64:  B               loc_16FB6C
16FB66:  MOVS            R0, #1
16FB68:  MOV             R8, R5
16FB6A:  MOVS            R1, #0x1B
16FB6C:  LDR             R5, [SP,#0x98+var_84]
16FB6E:  CMP             R0, #0
16FB70:  MOVW            R0, #0x1518
16FB74:  ADD             R4, SP, #0x98+var_60
16FB76:  LDR             R2, [R5]
16FB78:  IT EQ
16FB7A:  MOVEQ           R1, #0x1D
16FB7C:  ADD             R0, R2
16FB7E:  ADD.W           R1, R0, R1,LSL#4
16FB82:  ADDS            R1, #0xAC
16FB84:  VLDR            S0, [R0]
16FB88:  VLD1.32         {D16-D17}, [R1]
16FB8C:  MOV             R0, R4
16FB8E:  MOVS            R1, #0xC
16FB90:  VST1.64         {D16-D17}, [R0],R1
16FB94:  VLDR            S2, [R0]
16FB98:  VMUL.F32        S0, S0, S2
16FB9C:  VSTR            S0, [R0]
16FBA0:  MOV             R0, R4
16FBA2:  BL              sub_165778
16FBA6:  VCVT.S32.F32    S0, S26
16FBAA:  MOV             R3, R0; int
16FBAC:  LDR             R0, [SP,#0x98+var_80]
16FBAE:  MOV.W           R1, #0x3F800000
16FBB2:  ADD             R2, SP, #0x98+var_7C; int
16FBB4:  VSTR            S22, [SP,#0x98+var_5C]
16FBB8:  VSTR            S20, [SP,#0x98+var_78]
16FBBC:  LDR.W           R0, [R0,#0x27C]; int
16FBC0:  STR             R1, [SP,#0x98+var_98]
16FBC2:  MOV             R1, R4; int
16FBC4:  VCVT.F32.S32    S0, S0
16FBC8:  VSTR            S0, [SP,#0x98+var_60]
16FBCC:  VSTR            S0, [SP,#0x98+var_7C]
16FBD0:  BL              sub_173FCC
16FBD4:  LDR.W           R11, [R5]
16FBD8:  LDR.W           R3, [R8,#0x10]
16FBDC:  LDR             R4, [SP,#0x98+var_80]
16FBDE:  ADD.W           R10, R10, #1
16FBE2:  ADDS            R6, #0x1C
16FBE4:  CMP             R10, R3
16FBE6:  BLT.W           loc_16FA90
16FBEA:  LDR.W           R9, [SP,#0x98+var_8C]
16FBEE:  ADDS.W          R0, R9, #1
16FBF2:  BEQ             loc_16FCA0
16FBF4:  LDRB.W          R1, [R8,#9]
16FBF8:  CBNZ            R1, loc_16FC12
16FBFA:  CMP             R3, #0
16FBFC:  BMI             loc_16FC12
16FBFE:  LDR.W           R2, [R8,#0x44]
16FC02:  ADDS            R1, R3, #1
16FC04:  ADDS            R2, #4
16FC06:  LDR.W           R3, [R2,#-4]
16FC0A:  SUBS            R1, #1
16FC0C:  STR.W           R3, [R2],#0x1C
16FC10:  BNE             loc_16FC06
16FC12:  LDR             R1, [SP,#0x98+var_84]
16FC14:  MOVW            R2, #0x19EC
16FC18:  MOVS            R3, #1
16FC1A:  CMP.W           R9, #0
16FC1E:  MOV.W           R5, #0
16FC22:  LDR             R1, [R1]
16FC24:  ADD             R2, R1
16FC26:  VLDR            S0, [R1,#0xE0]
16FC2A:  VLDR            S2, [R2]
16FC2E:  MOVW            R2, #0x19AC
16FC32:  LDR             R2, [R1,R2]
16FC34:  VSUB.F32        S0, S0, S2
16FC38:  VLDR            S2, [R2,#0xC]
16FC3C:  STRB.W          R3, [R8,#9]
16FC40:  MOVW            R3, #0x157C
16FC44:  ADD             R3, R1
16FC46:  LDR.W           R1, [R2,#0x1C0]
16FC4A:  ITE LE
16FC4C:  LDRLE           R6, [R1,#0xC]
16FC4E:  SUBGT.W         R6, R9, #1
16FC52:  VADD.F32        S0, S0, S16
16FC56:  RSB.W           R6, R6, R6,LSL#3
16FC5A:  VLDR            S4, [R1,#0x18]
16FC5E:  LDR             R2, [R1,#0x44]
16FC60:  VLDR            S8, [R3]
16FC64:  ADD.W           R6, R2, R6,LSL#2
16FC68:  VLDR            S6, [R6]
16FC6C:  VSUB.F32        S2, S0, S2
16FC70:  VLDR            S0, [R1,#0x14]
16FC74:  VSUB.F32        S4, S4, S0
16FC78:  VMOV.F32        S10, S0
16FC7C:  VMLA.F32        S10, S4, S6
16FC80:  VADD.F32        S6, S8, S10
16FC84:  VCMP.F32        S2, S6
16FC88:  VMRS            APSR_nzcv, FPSCR
16FC8C:  IT GE
16FC8E:  VMOVGE.F32      S6, S2
16FC92:  LDRB.W          R3, [R8,#4]
16FC96:  LSLS            R3, R3, #0x1D
16FC98:  BMI             loc_16FCA6
16FC9A:  VMOV.F32        S0, S6
16FC9E:  B               loc_16FCD0
16FCA0:  MOVS            R1, #0
16FCA2:  MOVS            R5, #0
16FCA4:  B               loc_16FCE2
16FCA6:  CMN.W           R9, #2
16FCAA:  IT LE
16FCAC:  LDRLE           R0, [R1,#0xC]
16FCAE:  RSB.W           R0, R0, R0,LSL#3
16FCB2:  ADD.W           R0, R2, R0,LSL#2
16FCB6:  VLDR            S2, [R0]
16FCBA:  VMLA.F32        S0, S4, S2
16FCBE:  VSUB.F32        S0, S0, S8
16FCC2:  VCMP.F32        S6, S0
16FCC6:  VMRS            APSR_nzcv, FPSCR
16FCCA:  IT MI
16FCCC:  VMOVMI.F32      S0, S6
16FCD0:  VMOV            R1, S0
16FCD4:  MOV             R0, R9
16FCD6:  BL              sub_1709D0
16FCDA:  SUBS.W          R1, R9, #0xFFFFFFFF
16FCDE:  IT NE
16FCE0:  MOVNE           R1, #1
16FCE2:  VLDR            S0, [R4,#0xC]
16FCE6:  VLDR            S2, [R4,#0x1B4]
16FCEA:  STR.W           R5, [R4,#0x1C0]
16FCEE:  VADD.F32        S0, S0, S2
16FCF2:  VLDR            S2, =0.0
16FCF6:  STRB.W          R1, [R8,#9]
16FCFA:  STR.W           R5, [R4,#0x1BC]
16FCFE:  VADD.F32        S0, S0, S2
16FD02:  VCVT.S32.F32    S0, S0
16FD06:  VCVT.F32.S32    S0, S0
16FD0A:  VSTR            S0, [R4,#0xC8]
16FD0E:  ADD             SP, SP, #0x48 ; 'H'
16FD10:  VPOP            {D8-D13}
16FD14:  ADD             SP, SP, #4
16FD16:  POP.W           {R8-R11}
16FD1A:  POP             {R4-R7,PC}
