; =========================================================
; Game Engine Function: sub_21EDC4
; Address            : 0x21EDC4 - 0x21EFA2
; =========================================================

21EDC4:  PUSH            {R4-R7,LR}
21EDC6:  ADD             R7, SP, #0xC
21EDC8:  PUSH.W          {R8-R11}
21EDCC:  SUB             SP, SP, #4
21EDCE:  VPUSH           {D8}
21EDD2:  SUB             SP, SP, #0x120
21EDD4:  MOV             R4, R0
21EDD6:  LDR             R0, =(dword_6BD644 - 0x21EDDC)
21EDD8:  ADD             R0, PC; dword_6BD644
21EDDA:  LDR             R0, [R0]
21EDDC:  ADDS            R5, R4, R0
21EDDE:  MOV             R0, R4
21EDE0:  LDR             R1, [R5,#4]
21EDE2:  BLX             R1
21EDE4:  CMP             R0, #0
21EDE6:  BEQ.W           loc_21EF7C
21EDEA:  LDRSB.W         R0, [R4,#1]
21EDEE:  CMP.W           R0, #0xFFFFFFFF
21EDF2:  BGT.W           loc_21EF92
21EDF6:  LDR.W           R8, [R5]
21EDFA:  CMP.W           R8, #0
21EDFE:  ITT NE
21EE00:  LDRNE.W         R9, [R4,#4]
21EE04:  CMPNE.W         R9, #0
21EE08:  BEQ.W           loc_21EF92
21EE0C:  MOV             R11, R4
21EE0E:  LDR.W           R1, [R11,#0x2C]!
21EE12:  VLDR            S16, [R11,#-0x18]
21EE16:  CMP             R1, R11
21EE18:  BEQ             loc_21EE56
21EE1A:  LDR             R0, =(RwEngineInstance_ptr - 0x21EE24)
21EE1C:  LDR.W           R10, =(dword_6BD690 - 0x21EE26)
21EE20:  ADD             R0, PC; RwEngineInstance_ptr
21EE22:  ADD             R10, PC; dword_6BD690
21EE24:  LDR             R5, [R0]; RwEngineInstance
21EE26:  LDRD.W          R6, R0, [R1]
21EE2A:  STR             R6, [R0]
21EE2C:  LDRD.W          R0, R2, [R1]
21EE30:  STR             R2, [R0,#4]
21EE32:  LDR.W           R0, [R1,#-0xC]!
21EE36:  LDR             R2, [R1,#4]
21EE38:  STR             R0, [R2]
21EE3A:  LDRD.W          R0, R2, [R1]
21EE3E:  STR             R2, [R0,#4]
21EE40:  LDR             R0, [R5]
21EE42:  LDR.W           R2, [R10]
21EE46:  LDR.W           R3, [R0,#0x140]
21EE4A:  ADD             R0, R2
21EE4C:  LDR             R0, [R0,#4]
21EE4E:  BLX             R3
21EE50:  CMP             R6, R11
21EE52:  MOV             R1, R6
21EE54:  BNE             loc_21EE26
21EE56:  MOV             R0, R9
21EE58:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
21EE5C:  VLDR            D16, [R0,#0x30]
21EE60:  ADD             R6, SP, #0x148+var_138
21EE62:  LDR             R1, [R0,#0x38]
21EE64:  MOVS            R5, #0
21EE66:  STR             R1, [SP,#0x148+var_130]
21EE68:  VSTR            D16, [SP,#0x148+var_138]
21EE6C:  VLDR            D16, [R0,#0x30]
21EE70:  VSTR            D16, [SP,#0x148+var_148]
21EE74:  LDR             R0, [R0,#0x38]
21EE76:  VLDR            S0, [SP,#0x148+var_148]
21EE7A:  VLDR            S2, [SP,#0x148+var_148+4]
21EE7E:  STR             R0, [SP,#0x148+var_140]
21EE80:  VADD.F32        S0, S16, S0
21EE84:  VLDR            S4, [SP,#0x148+var_140]
21EE88:  VADD.F32        S2, S16, S2
21EE8C:  LDR             R0, =(RwEngineInstance_ptr - 0x21EE96)
21EE8E:  VADD.F32        S4, S16, S4
21EE92:  ADD             R0, PC; RwEngineInstance_ptr
21EE94:  LDR.W           R9, [R0]; RwEngineInstance
21EE98:  VSTR            S0, [SP,#0x148+var_148]
21EE9C:  VLDR            S0, [SP,#0x148+var_138]
21EEA0:  VSTR            S2, [SP,#0x148+var_148+4]
21EEA4:  VLDR            S2, [SP,#0x148+var_138+4]
21EEA8:  VSUB.F32        S0, S0, S16
21EEAC:  VSTR            S4, [SP,#0x148+var_140]
21EEB0:  VLDR            S4, [SP,#0x148+var_130]
21EEB4:  VSUB.F32        S2, S2, S16
21EEB8:  VSUB.F32        S4, S4, S16
21EEBC:  VSTR            S0, [SP,#0x148+var_138]
21EEC0:  VSTR            S2, [SP,#0x148+var_138+4]
21EEC4:  VSTR            S4, [SP,#0x148+var_130]
21EEC8:  LDR.W           R10, [R8,#0x1C]
21EECC:  MOV             R8, SP
21EECE:  B               loc_21EED4
21EED0:  LDR.W           R10, [R10,#0xC]
21EED4:  LDR.W           R0, [R10]
21EED8:  CMP             R0, #0
21EEDA:  BLT             loc_21EF22
21EEDC:  ADDS            R1, R6, R0
21EEDE:  VLDR            S0, [R10,#0x10]
21EEE2:  VLDR            S2, [R1]
21EEE6:  VCMPE.F32       S2, S0
21EEEA:  VMRS            APSR_nzcv, FPSCR
21EEEE:  BGE             loc_21EF0C
21EEF0:  ADD             R0, R8
21EEF2:  VLDR            S0, [R10,#0x14]
21EEF6:  LDR.W           R1, [R10,#8]
21EEFA:  VLDR            S2, [R0]
21EEFE:  VCMPE.F32       S0, S2
21EF02:  VMRS            APSR_nzcv, FPSCR
21EF06:  BLT             loc_21EF6C
21EF08:  MOV             R10, R1
21EF0A:  B               loc_21EED4
21EF0C:  ADD             R0, R8
21EF0E:  VLDR            S0, [R10,#0x14]
21EF12:  VLDR            S2, [R0]
21EF16:  VCMPE.F32       S0, S2
21EF1A:  VMRS            APSR_nzcv, FPSCR
21EF1E:  BLT             loc_21EED0
21EF20:  B               loc_21EF5C
21EF22:  LDR             R1, =(dword_6BD690 - 0x21EF2C)
21EF24:  LDR.W           R0, [R9]
21EF28:  ADD             R1, PC; dword_6BD690
21EF2A:  LDR             R1, [R1]
21EF2C:  LDR.W           R2, [R0,#0x13C]
21EF30:  ADD             R0, R1
21EF32:  LDR             R0, [R0,#4]
21EF34:  BLX             R2
21EF36:  STR.W           R10, [R0,#0x14]
21EF3A:  STR             R4, [R0,#8]
21EF3C:  LDR.W           R1, [R10,#0x48]!
21EF40:  STRD.W          R1, R10, [R0]
21EF44:  LDR.W           R1, [R10]
21EF48:  STR             R0, [R1,#4]
21EF4A:  STR.W           R0, [R10]
21EF4E:  LDR             R1, [R4,#0x2C]
21EF50:  STRD.W          R1, R11, [R0,#0xC]
21EF54:  ADDS            R0, #0xC
21EF56:  LDR             R1, [R4,#0x2C]
21EF58:  STR             R0, [R1,#4]
21EF5A:  STR             R0, [R4,#0x2C]
21EF5C:  ADD             R0, SP, #0x148+var_128
21EF5E:  LDR.W           R10, [R0,R5,LSL#2]
21EF62:  SUBS            R5, #1
21EF64:  CMP.W           R5, #0xFFFFFFFF
21EF68:  BGT             loc_21EED4
21EF6A:  B               loc_21EF92
21EF6C:  ADDS            R5, #1
21EF6E:  ADD             R2, SP, #0x148+var_128
21EF70:  LDR.W           R0, [R10,#0xC]
21EF74:  MOV             R10, R1
21EF76:  STR.W           R0, [R2,R5,LSL#2]
21EF7A:  B               loc_21EF64
21EF7C:  MOVS            R0, #0
21EF7E:  STR             R0, [SP,#0x148+var_128]
21EF80:  MOVS            R0, #0x80000016; int
21EF86:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21EF8A:  STR             R0, [SP,#0x148+var_124]
21EF8C:  ADD             R0, SP, #0x148+var_128
21EF8E:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21EF92:  MOV             R0, R4
21EF94:  ADD             SP, SP, #0x120
21EF96:  VPOP            {D8}
21EF9A:  ADD             SP, SP, #4
21EF9C:  POP.W           {R8-R11}
21EFA0:  POP             {R4-R7,PC}
