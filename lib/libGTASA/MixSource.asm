; =========================================================
; Game Engine Function: MixSource
; Address            : 0x25ED28 - 0x25F646
; =========================================================

25ED28:  PUSH            {R4-R7,LR}
25ED2A:  ADD             R7, SP, #0xC
25ED2C:  PUSH.W          {R8-R11}
25ED30:  SUB             SP, SP, #4
25ED32:  VPUSH           {D8-D9}
25ED36:  SUB             SP, SP, #0xA0
25ED38:  MOV             R9, R0
25ED3A:  STR             R2, [SP,#0xD0+var_50]
25ED3C:  STR             R1, [SP,#0xD0+var_3C]
25ED3E:  MOVW            R0, #0x2E0C
25ED42:  LDR.W           R12, [R9,R0]
25ED46:  LDR.W           R0, [R9,#0x80]
25ED4A:  CMP.W           R12, #0x4000
25ED4E:  LDRD.W          R4, R6, [R9,#0x88]
25ED52:  LDR.W           R8, [R9,#0x98]
25ED56:  LDRB.W          R5, [R9,#0x4D]
25ED5A:  ITE NE
25ED5C:  LDRNE.W         R1, [R9,#0x68]
25ED60:  MOVEQ           R1, #0
25ED62:  LDR.W           R3, [R9,#0x90]
25ED66:  CMP.W           R8, #0
25ED6A:  LDR.W           R2, [R9,#0x9C]
25ED6E:  STR             R2, [SP,#0xD0+var_54]
25ED70:  LDR.W           R2, [R9,#0xA0]
25ED74:  STR             R2, [SP,#0xD0+var_74]
25ED76:  STR             R5, [SP,#0xD0+var_64]
25ED78:  BEQ             loc_25ED82
25ED7A:  MOV             R2, R8
25ED7C:  LDR             R3, [R3,#4]
25ED7E:  SUBS            R2, #1
25ED80:  BNE             loc_25ED7C
25ED82:  LDR.W           R2, =(ResamplerPrePadding_ptr - 0x25ED94)
25ED86:  MOVW            R10, #0x2144
25ED8A:  STR             R3, [SP,#0xD0+var_7C]
25ED8C:  LDR.W           R3, =(ResamplerPadding_ptr - 0x25ED9A)
25ED90:  ADD             R2, PC; ResamplerPrePadding_ptr
25ED92:  VLDR            S16, =0.000030519
25ED96:  ADD             R3, PC; ResamplerPadding_ptr
25ED98:  LDR             R2, [R2]; ResamplerPrePadding
25ED9A:  VLDR            S18, =0.007874
25ED9E:  LDR             R3, [R3]; ResamplerPadding
25EDA0:  LDR.W           R2, [R2,R1,LSL#2]
25EDA4:  STR             R2, [SP,#0xD0+var_94]
25EDA6:  LDR.W           R1, [R3,R1,LSL#2]
25EDAA:  STR.W           R12, [SP,#0xD0+var_78]
25EDAE:  ADD             R1, R2
25EDB0:  STR             R1, [SP,#0xD0+var_C0]
25EDB2:  MOVW            R1, #0x2E08
25EDB6:  ADD             R1, R9
25EDB8:  STR             R1, [SP,#0xD0+var_58]
25EDBA:  MOVW            R1, #0x2E04
25EDBE:  ADD             R1, R9
25EDC0:  STR             R1, [SP,#0xD0+var_80]
25EDC2:  MOVW            R1, #0x57E4
25EDC6:  ADD             R1, R9
25EDC8:  STR             R1, [SP,#0xD0+var_90]
25EDCA:  MOVW            R1, #0x2E10
25EDCE:  ADD             R1, R9
25EDD0:  STR             R1, [SP,#0xD0+var_84]
25EDD2:  LDR             R1, [SP,#0xD0+var_54]
25EDD4:  LSLS            R3, R1, #1
25EDD6:  LSLS            R1, R1, #2
25EDD8:  STR             R1, [SP,#0xD0+var_38]
25EDDA:  ADD.W           R1, R9, #0x2E00
25EDDE:  STR             R1, [SP,#0xD0+var_88]
25EDE0:  LDR             R1, [SP,#0xD0+var_3C]
25EDE2:  STR             R3, [SP,#0xD0+var_34]
25EDE4:  ADD.W           R3, R1, #0x2140
25EDE8:  ADD.W           R5, R1, #0x130
25EDEC:  SUB.W           R1, R12, #1
25EDF0:  STR             R3, [SP,#0xD0+var_4C]
25EDF2:  SUBS.W          R1, R1, R12
25EDF6:  STR             R1, [SP,#0xD0+var_C4]
25EDF8:  MOV.W           R3, #0
25EDFC:  SBC.W           R1, R3, #0
25EE00:  STR             R1, [SP,#0xD0+var_C8]
25EE02:  ADD.W           R1, R5, R2,LSL#2
25EE06:  LDR             R2, [SP,#0xD0+var_50]
25EE08:  STR             R5, [SP,#0xD0+var_40]
25EE0A:  STR             R1, [SP,#0xD0+var_8C]
25EE0C:  STR             R3, [SP,#0xD0+var_48]
25EE0E:  STRD.W          R8, R0, [SP,#0xD0+var_BC]
25EE12:  SUB.W           R8, R2, R3
25EE16:  LDR             R2, [SP,#0xD0+var_78]
25EE18:  MOVW            R0, #0x3FFF
25EE1C:  ADD.W           R1, R8, #1
25EE20:  ADD             R0, R6
25EE22:  MOVS            R3, #0
25EE24:  UMLAL.W         R0, R3, R1, R2
25EE28:  LSRS            R0, R0, #0xE
25EE2A:  LSRS            R1, R3, #0xE
25EE2C:  ORR.W           R0, R0, R3,LSL#18
25EE30:  LDR             R3, [SP,#0xD0+var_C0]
25EE32:  ADDS.W          R11, R0, R3
25EE36:  ADC.W           R0, R1, #0
25EE3A:  SUBS.W          R1, R11, #0x800
25EE3E:  SBCS.W          R1, R0, #0
25EE42:  MOV.W           R1, #0
25EE46:  IT CC
25EE48:  MOVCC           R1, #1
25EE4A:  CMP             R1, #0
25EE4C:  ITE NE
25EE4E:  MOVNE           R1, R0
25EE50:  MOVEQ.W         R11, #0x800
25EE54:  SUBS.W          R0, R11, R3
25EE58:  LDR             R3, [SP,#0xD0+var_C4]
25EE5A:  SBC.W           R1, R1, #0
25EE5E:  SUBS            R5, R3, R6
25EE60:  LDR             R3, [SP,#0xD0+var_C8]
25EE62:  MOV.W           R1, R1,LSL#14
25EE66:  ORR.W           R1, R1, R0,LSR#18
25EE6A:  SBC.W           R3, R3, #0
25EE6E:  ADDS.W          R0, R5, R0,LSL#14
25EE72:  ADCS            R1, R3
25EE74:  MOVS            R3, #0
25EE76:  BLX             __aeabi_ldivmod
25EE7A:  MOV             LR, R0
25EE7C:  CMP             R8, LR
25EE7E:  IT CC
25EE80:  MOVCC           LR, R8
25EE82:  LDR             R0, [SP,#0xD0+var_48]
25EE84:  LDR             R1, [SP,#0xD0+var_50]
25EE86:  ADD             R0, LR
25EE88:  CMP             R0, R1
25EE8A:  IT CC
25EE8C:  BICCC.W         LR, LR, #3
25EE90:  LDR.W           R8, [SP,#0xD0+var_54]
25EE94:  CMP.W           R8, #0
25EE98:  BEQ.W           loc_25F548
25EE9C:  LDR             R2, [SP,#0xD0+var_94]
25EE9E:  MOVS            R0, #0
25EEA0:  STR             R0, [SP,#0xD0+var_60]
25EEA2:  MOVS            R0, #0
25EEA4:  CMP             R4, R2
25EEA6:  SUB.W           R1, R2, R4
25EEAA:  IT CS
25EEAC:  MOVCS           R0, #1
25EEAE:  CMP             R1, R11
25EEB0:  MOV             R3, R11
25EEB2:  STR             R1, [SP,#0xD0+var_A0]
25EEB4:  IT CC
25EEB6:  MOVCC           R3, R1
25EEB8:  MOVS            R1, #0
25EEBA:  CMP             R3, #0
25EEBC:  IT EQ
25EEBE:  MOVEQ           R1, #1
25EEC0:  ORRS            R0, R1
25EEC2:  STR             R0, [SP,#0xD0+var_9C]
25EEC4:  SUBS            R0, R4, R2
25EEC6:  MOV.W           R1, #0
25EECA:  STR             R0, [SP,#0xD0+var_A4]
25EECC:  IT CS
25EECE:  MOVCS           R1, R0
25EED0:  LSLS            R0, R3, #2
25EED2:  STRD.W          R1, R3, [SP,#0xD0+var_AC]
25EED6:  MOV             R3, R11
25EED8:  STR             R0, [SP,#0xD0+var_B0]
25EEDA:  STRD.W          R4, R6, [SP,#0xD0+var_70]
25EEDE:  LDR             R5, [SP,#0xD0+var_7C]
25EEE0:  STR.W           LR, [SP,#0xD0+var_44]
25EEE4:  STR             R3, [SP,#0xD0+var_5C]
25EEE6:  B               loc_25F090
25EEE8:  LDR             R0, [SP,#0xD0+var_40]
25EEEA:  MOV             R4, R12
25EEEC:  LDR             R1, [SP,#0xD0+var_B0]
25EEEE:  BLX             j___aeabi_memclr8_0
25EEF2:  LDR             R3, [SP,#0xD0+var_5C]
25EEF4:  MOV             R12, R4
25EEF6:  LDR.W           LR, [SP,#0xD0+var_44]
25EEFA:  MOVS            R1, #0
25EEFC:  LDR             R0, [SP,#0xD0+var_A8]
25EEFE:  SUBS            R6, R3, R0
25EF00:  SUB.W           R3, R11, R1
25EF04:  MUL.W           R2, R1, R8
25EF08:  LDR             R1, [SP,#0xD0+var_68]
25EF0A:  CMP             R6, R3
25EF0C:  LDR             R1, [R1,#0x14]
25EF0E:  IT HI
25EF10:  MOVHI           R6, R3
25EF12:  MOVW            R3, #0x1406
25EF16:  STR             R5, [SP,#0xD0+var_B4]
25EF18:  CMP             R1, R3
25EF1A:  BEQ             loc_25EF60
25EF1C:  MOVW            R3, #0x1402
25EF20:  CMP             R1, R3
25EF22:  BEQ             loc_25EF84
25EF24:  CMP.W           R1, #0x1400
25EF28:  BNE             loc_25EFB8
25EF2A:  CMP             R6, #0
25EF2C:  BEQ             loc_25EFB8
25EF2E:  LDR             R1, [SP,#0xD0+var_60]
25EF30:  ADD             R1, R2
25EF32:  LDR             R2, [SP,#0xD0+var_74]
25EF34:  MLA.W           R2, R2, R1, R12
25EF38:  LDR             R1, [SP,#0xD0+var_40]
25EF3A:  ADD.W           R3, R1, R0,LSL#2
25EF3E:  MOV             R1, R6
25EF40:  LDRSB.W         R4, [R2]
25EF44:  ADD             R2, R8
25EF46:  SUBS            R1, #1
25EF48:  VMOV            S0, R4
25EF4C:  VCVT.F32.S32    S0, S0
25EF50:  VMUL.F32        S0, S0, S18
25EF54:  VSTR            S0, [R3]
25EF58:  ADD.W           R3, R3, #4
25EF5C:  BNE             loc_25EF40
25EF5E:  B               loc_25EFB8
25EF60:  CBZ             R6, loc_25EFB8
25EF62:  LDR             R1, [SP,#0xD0+var_60]
25EF64:  ADD             R1, R2
25EF66:  LDR             R2, [SP,#0xD0+var_74]
25EF68:  MLA.W           R2, R2, R1, R12
25EF6C:  LDR             R1, [SP,#0xD0+var_40]
25EF6E:  ADD.W           R3, R1, R0,LSL#2
25EF72:  MOV             R1, R6
25EF74:  LDR             R5, [SP,#0xD0+var_38]
25EF76:  SUBS            R1, #1
25EF78:  LDR             R4, [R2]
25EF7A:  ADD             R2, R5
25EF7C:  STR.W           R4, [R3],#4
25EF80:  BNE             loc_25EF74
25EF82:  B               loc_25EFB8
25EF84:  CBZ             R6, loc_25EFB8
25EF86:  LDR             R1, [SP,#0xD0+var_60]
25EF88:  ADD             R1, R2
25EF8A:  LDR             R2, [SP,#0xD0+var_74]
25EF8C:  MLA.W           R2, R2, R1, R12
25EF90:  LDR             R1, [SP,#0xD0+var_40]
25EF92:  ADD.W           R3, R1, R0,LSL#2
25EF96:  MOV             R1, R6
25EF98:  LDRSH.W         R4, [R2]
25EF9C:  SUBS            R1, #1
25EF9E:  VMOV            S0, R4
25EFA2:  VCVT.F32.S32    S0, S0
25EFA6:  VMUL.F32        S0, S0, S16
25EFAA:  VSTR            S0, [R3]
25EFAE:  ADD.W           R3, R3, #4
25EFB2:  LDR             R5, [SP,#0xD0+var_34]
25EFB4:  ADD             R2, R5
25EFB6:  BNE             loc_25EF98
25EFB8:  LDR             R3, [SP,#0xD0+var_5C]
25EFBA:  ADD             R0, R6
25EFBC:  CMP             R0, R3
25EFBE:  BCS             loc_25F07C
25EFC0:  LDR             R4, [SP,#0xD0+var_B4]
25EFC2:  LDR             R1, [SP,#0xD0+var_60]
25EFC4:  LDR             R2, [SP,#0xD0+var_74]
25EFC6:  SUB.W           R6, R11, R4
25EFCA:  MLA.W           R1, R4, R8, R1
25EFCE:  LDR.W           R11, [SP,#0xD0+var_90]
25EFD2:  MLA.W           R12, R2, R1, R12
25EFD6:  LDR             R1, [SP,#0xD0+var_68]
25EFD8:  SUBS            R2, R3, R0
25EFDA:  CMP             R2, R6
25EFDC:  LDR             R1, [R1,#0x14]
25EFDE:  IT LS
25EFE0:  MOVLS           R6, R2
25EFE2:  MOVW            R2, #0x1406
25EFE6:  CMP             R1, R2
25EFE8:  BEQ             loc_25F024
25EFEA:  MOVW            R2, #0x1402
25EFEE:  CMP             R1, R2
25EFF0:  BEQ             loc_25F040
25EFF2:  CMP.W           R1, #0x1400
25EFF6:  BNE             loc_25F06C
25EFF8:  CBZ             R6, loc_25F06C
25EFFA:  LDR             R1, [SP,#0xD0+var_40]
25EFFC:  MOV             R2, R6
25EFFE:  ADD.W           R3, R1, R0,LSL#2
25F002:  MOV             R1, R12
25F004:  LDRSB.W         R4, [R1]
25F008:  ADD             R1, R8
25F00A:  SUBS            R2, #1
25F00C:  VMOV            S0, R4
25F010:  VCVT.F32.S32    S0, S0
25F014:  VMUL.F32        S0, S0, S18
25F018:  VSTR            S0, [R3]
25F01C:  ADD.W           R3, R3, #4
25F020:  BNE             loc_25F004
25F022:  B               loc_25F06C
25F024:  CBZ             R6, loc_25F06C
25F026:  LDR             R1, [SP,#0xD0+var_40]
25F028:  MOV             R3, R12
25F02A:  ADD.W           R2, R1, R0,LSL#2
25F02E:  MOV             R1, R6
25F030:  LDR             R5, [SP,#0xD0+var_38]
25F032:  SUBS            R1, #1
25F034:  LDR             R4, [R3]
25F036:  ADD             R3, R5
25F038:  STR.W           R4, [R2],#4
25F03C:  BNE             loc_25F030
25F03E:  B               loc_25F06C
25F040:  CBZ             R6, loc_25F06C
25F042:  LDR             R1, [SP,#0xD0+var_40]
25F044:  MOV             R2, R6
25F046:  ADD.W           R3, R1, R0,LSL#2
25F04A:  MOV             R1, R12
25F04C:  LDRSH.W         R4, [R1]
25F050:  SUBS            R2, #1
25F052:  VMOV            S0, R4
25F056:  VCVT.F32.S32    S0, S0
25F05A:  VMUL.F32        S0, S0, S16
25F05E:  VSTR            S0, [R3]
25F062:  ADD.W           R3, R3, #4
25F066:  LDR             R4, [SP,#0xD0+var_34]
25F068:  ADD             R1, R4
25F06A:  BNE             loc_25F04C
25F06C:  LDR             R3, [SP,#0xD0+var_5C]
25F06E:  ADD             R0, R6
25F070:  LDR             R4, [SP,#0xD0+var_50]
25F072:  CMP             R0, R3
25F074:  BCC             loc_25EFD6
25F076:  LDR.W           R12, [SP,#0xD0+var_6C]
25F07A:  B               loc_25F39A
25F07C:  LDR.W           R12, [SP,#0xD0+var_6C]
25F080:  LDR             R4, [SP,#0xD0+var_50]
25F082:  B               loc_25F396
25F084:  SUB.W           R2, R0, R11
25F088:  MOV.W           R11, #0
25F08C:  MOV             R0, R1
25F08E:  B               loc_25F27C
25F090:  LDR.W           R0, [R9,#0x7C]
25F094:  MOVW            R1, #0x1028
25F098:  CMP             R0, R1
25F09A:  BNE             loc_25F0D0
25F09C:  LDR.W           R0, [R9,#0x90]
25F0A0:  LDR             R6, [R0]
25F0A2:  LDR             R0, [SP,#0xD0+var_64]
25F0A4:  LDR.W           R12, [R6]
25F0A8:  LSLS            R0, R0, #0x18
25F0AA:  BEQ             loc_25F0E0
25F0AC:  LDR.W           R11, [R6,#0x28]
25F0B0:  LDR             R0, [SP,#0xD0+var_70]
25F0B2:  CMP             R0, R11
25F0B4:  BCS             loc_25F0E0
25F0B6:  LDR             R5, [R6,#0x24]
25F0B8:  LDR             R0, [SP,#0xD0+var_70]
25F0BA:  STR             R6, [SP,#0xD0+var_68]
25F0BC:  CMP             R0, R5
25F0BE:  BCS.W           loc_25F25A
25F0C2:  LDR             R0, [SP,#0xD0+var_9C]
25F0C4:  CMP             R0, #0
25F0C6:  BEQ.W           loc_25EEE8
25F0CA:  MOVS            R0, #0
25F0CC:  LDR             R1, [SP,#0xD0+var_AC]
25F0CE:  B               loc_25EEFE
25F0D0:  LDR             R0, [SP,#0xD0+var_94]
25F0D2:  CMP             R4, R0
25F0D4:  BCS             loc_25F0EE
25F0D6:  MOV             R0, R5
25F0D8:  LDR.W           R11, [SP,#0xD0+var_A0]
25F0DC:  LDR             R5, [SP,#0xD0+var_64]
25F0DE:  B               loc_25F20C
25F0E0:  LDR             R0, [SP,#0xD0+var_9C]
25F0E2:  STR.W           R12, [SP,#0xD0+var_98]
25F0E6:  CBZ             R0, loc_25F104
25F0E8:  MOVS            R0, #0
25F0EA:  LDR             R3, [SP,#0xD0+var_AC]
25F0EC:  B               loc_25F110
25F0EE:  MOV             R0, R5
25F0F0:  MOV.W           R11, #0
25F0F4:  LDR             R2, [SP,#0xD0+var_A4]
25F0F6:  LDR             R4, [SP,#0xD0+var_50]
25F0F8:  LDR             R5, [SP,#0xD0+var_64]
25F0FA:  B               loc_25F284
25F0FC:  DCFS 0.000030519
25F100:  DCFS 0.007874
25F104:  LDR             R0, [SP,#0xD0+var_40]
25F106:  LDR             R1, [SP,#0xD0+var_B0]
25F108:  BLX             j___aeabi_memclr8_0
25F10C:  LDR             R0, [SP,#0xD0+var_A8]
25F10E:  MOVS            R3, #0
25F110:  LDR             R4, [R6,#0xC]
25F112:  MUL.W           R2, R3, R8
25F116:  LDR             R1, [R6,#0x14]
25F118:  LDR             R6, [SP,#0xD0+var_5C]
25F11A:  SUBS            R3, R4, R3
25F11C:  LDR.W           R11, [SP,#0xD0+var_90]
25F120:  SUBS            R6, R6, R0
25F122:  CMP             R6, R3
25F124:  IT HI
25F126:  MOVHI           R6, R3
25F128:  LDR.W           R12, [SP,#0xD0+var_6C]
25F12C:  MOVW            R3, #0x1406
25F130:  CMP             R1, R3
25F132:  BEQ             loc_25F17A
25F134:  MOVW            R3, #0x1402
25F138:  CMP             R1, R3
25F13A:  BEQ             loc_25F1A0
25F13C:  CMP.W           R1, #0x1400
25F140:  BNE             loc_25F1D6
25F142:  CMP             R6, #0
25F144:  BEQ             loc_25F1D6
25F146:  LDR             R1, [SP,#0xD0+var_60]
25F148:  LDR             R3, [SP,#0xD0+var_98]
25F14A:  ADD             R1, R2
25F14C:  LDR             R2, [SP,#0xD0+var_74]
25F14E:  MLA.W           R2, R2, R1, R3
25F152:  LDR             R1, [SP,#0xD0+var_40]
25F154:  ADD.W           R3, R1, R0,LSL#2
25F158:  MOV             R1, R6
25F15A:  LDRSB.W         R4, [R2]
25F15E:  ADD             R2, R8
25F160:  SUBS            R1, #1
25F162:  VMOV            S0, R4
25F166:  VCVT.F32.S32    S0, S0
25F16A:  VMUL.F32        S0, S0, S18
25F16E:  VSTR            S0, [R3]
25F172:  ADD.W           R3, R3, #4
25F176:  BNE             loc_25F15A
25F178:  B               loc_25F1D6
25F17A:  CBZ             R6, loc_25F1D6
25F17C:  LDR             R1, [SP,#0xD0+var_60]
25F17E:  LDR             R3, [SP,#0xD0+var_98]
25F180:  ADD             R1, R2
25F182:  LDR             R2, [SP,#0xD0+var_74]
25F184:  MLA.W           R2, R2, R1, R3
25F188:  LDR             R1, [SP,#0xD0+var_40]
25F18A:  ADD.W           R3, R1, R0,LSL#2
25F18E:  MOV             R1, R6
25F190:  LDR             R5, [SP,#0xD0+var_38]
25F192:  SUBS            R1, #1
25F194:  LDR             R4, [R2]
25F196:  ADD             R2, R5
25F198:  STR.W           R4, [R3],#4
25F19C:  BNE             loc_25F190
25F19E:  B               loc_25F1D6
25F1A0:  CBZ             R6, loc_25F1D6
25F1A2:  LDR             R1, [SP,#0xD0+var_60]
25F1A4:  LDR             R3, [SP,#0xD0+var_98]
25F1A6:  ADD             R1, R2
25F1A8:  LDR             R2, [SP,#0xD0+var_74]
25F1AA:  MLA.W           R2, R2, R1, R3
25F1AE:  LDR             R1, [SP,#0xD0+var_40]
25F1B0:  ADD.W           R3, R1, R0,LSL#2
25F1B4:  MOV             R1, R6
25F1B6:  LDRSH.W         R4, [R2]
25F1BA:  SUBS            R1, #1
25F1BC:  VMOV            S0, R4
25F1C0:  VCVT.F32.S32    S0, S0
25F1C4:  VMUL.F32        S0, S0, S16
25F1C8:  VSTR            S0, [R3]
25F1CC:  ADD.W           R3, R3, #4
25F1D0:  LDR             R4, [SP,#0xD0+var_34]
25F1D2:  ADD             R2, R4
25F1D4:  BNE             loc_25F1B6
25F1D6:  LDR             R1, [SP,#0xD0+var_5C]
25F1D8:  ADD             R0, R6
25F1DA:  SUBS            R1, R1, R0
25F1DC:  BEQ             loc_25F1F2
25F1DE:  LDR             R2, [SP,#0xD0+var_3C]
25F1E0:  LSLS            R1, R1, #2
25F1E2:  MOV             R4, R12
25F1E4:  ADD.W           R0, R2, R0,LSL#2
25F1E8:  ADD.W           R0, R0, #0x130
25F1EC:  BLX             j___aeabi_memclr8_0
25F1F0:  MOV             R12, R4
25F1F2:  MOVS            R0, #0
25F1F4:  LDR             R4, [SP,#0xD0+var_50]
25F1F6:  STR             R0, [SP,#0xD0+var_64]
25F1F8:  LDR.W           LR, [SP,#0xD0+var_44]
25F1FC:  B               loc_25F39A
25F1FE:  LDR             R0, [R2,#0xC]
25F200:  CMP             R11, R0
25F202:  BCC.W           loc_25F084
25F206:  SUB.W           R11, R11, R0
25F20A:  MOV             R0, R1
25F20C:  MOV             R4, R0
25F20E:  CMP.W           R11, #0
25F212:  BEQ             loc_25F254
25F214:  LDR             R1, [R4,#8]
25F216:  LSLS            R2, R5, #0x18
25F218:  IT EQ
25F21A:  CMPEQ           R1, #0
25F21C:  BEQ             loc_25F232
25F21E:  CBNZ            R1, loc_25F228
25F220:  MOV             R1, R4
25F222:  LDR             R4, [R1,#4]
25F224:  CMP             R4, #0
25F226:  BNE             loc_25F220
25F228:  LDR             R2, [R1]
25F22A:  MOV             R4, R1
25F22C:  CMP             R2, #0
25F22E:  BEQ             loc_25F20E
25F230:  B               loc_25F1FE
25F232:  CMP             R11, R3
25F234:  IT CS
25F236:  MOVCS           R11, R3
25F238:  CMP.W           R11, #0
25F23C:  BEQ             loc_25F274
25F23E:  LDR             R0, [SP,#0xD0+var_40]
25F240:  MOV.W           R1, R11,LSL#2
25F244:  BLX             j___aeabi_memclr8_0
25F248:  LDR             R3, [SP,#0xD0+var_5C]
25F24A:  MOVS            R2, #0
25F24C:  LDR.W           LR, [SP,#0xD0+var_44]
25F250:  MOV             R0, R4
25F252:  B               loc_25F27C
25F254:  MOV.W           R11, #0
25F258:  B               loc_25F27A
25F25A:  LDR             R2, [SP,#0xD0+var_94]
25F25C:  SUBS            R0, R0, R5
25F25E:  CMP             R0, R2
25F260:  BCS             loc_25F26C
25F262:  SUB.W           R1, R11, R5
25F266:  ADD             R0, R1
25F268:  CMP             R0, R2
25F26A:  BCC             loc_25F266
25F26C:  SUBS            R1, R5, R2
25F26E:  ADD             R1, R0
25F270:  MOVS            R0, #0
25F272:  B               loc_25EEFE
25F274:  MOV.W           R11, #0
25F278:  MOV             R0, R4
25F27A:  MOVS            R2, #0
25F27C:  LDR             R4, [SP,#0xD0+var_50]
25F27E:  B               loc_25F284
25F280:  LDR.W           R0, [R9,#0x90]
25F284:  CMP             R11, R3
25F286:  BCS.W           loc_25F392
25F28A:  CMP             R0, #0
25F28C:  BEQ.W           loc_25F392
25F290:  LDR             R1, [R0]
25F292:  CMP             R1, #0
25F294:  BEQ             loc_25F366
25F296:  LDR             R3, [R1,#0xC]
25F298:  CMP             R3, R2
25F29A:  BLS             loc_25F300
25F29C:  MUL.W           R6, R2, R8
25F2A0:  LDR             R4, [SP,#0xD0+var_5C]
25F2A2:  LDR.W           R12, [R1]
25F2A6:  LDR             R1, [R1,#0x14]
25F2A8:  SUB.W           R4, R4, R11
25F2AC:  SUBS            R2, R3, R2
25F2AE:  CMP             R4, R2
25F2B0:  IT HI
25F2B2:  MOVHI           R4, R2
25F2B4:  MOVW            R2, #0x1406
25F2B8:  CMP             R1, R2
25F2BA:  BEQ             loc_25F304
25F2BC:  MOVW            R2, #0x1402
25F2C0:  CMP             R1, R2
25F2C2:  BEQ             loc_25F328
25F2C4:  CMP.W           R1, #0x1400
25F2C8:  BNE             loc_25F35C
25F2CA:  CMP             R4, #0
25F2CC:  BEQ             loc_25F35C
25F2CE:  LDR             R1, [SP,#0xD0+var_60]
25F2D0:  LDR             R2, [SP,#0xD0+var_74]
25F2D2:  ADD             R1, R6
25F2D4:  MLA.W           R2, R2, R1, R12
25F2D8:  LDR             R1, [SP,#0xD0+var_40]
25F2DA:  ADD.W           R3, R1, R11,LSL#2
25F2DE:  MOV             R1, R4
25F2E0:  LDRSB.W         R6, [R2]
25F2E4:  ADD             R2, R8
25F2E6:  SUBS            R1, #1
25F2E8:  VMOV            S0, R6
25F2EC:  VCVT.F32.S32    S0, S0
25F2F0:  VMUL.F32        S0, S0, S18
25F2F4:  VSTR            S0, [R3]
25F2F8:  ADD.W           R3, R3, #4
25F2FC:  BNE             loc_25F2E0
25F2FE:  B               loc_25F35C
25F300:  SUBS            R2, R2, R3
25F302:  B               loc_25F364
25F304:  CBZ             R4, loc_25F35C
25F306:  LDR             R1, [SP,#0xD0+var_60]
25F308:  LDR             R2, [SP,#0xD0+var_74]
25F30A:  ADD             R1, R6
25F30C:  MLA.W           R2, R2, R1, R12
25F310:  LDR             R1, [SP,#0xD0+var_40]
25F312:  ADD.W           R3, R1, R11,LSL#2
25F316:  MOV             R1, R4
25F318:  LDR             R5, [SP,#0xD0+var_38]
25F31A:  SUBS            R1, #1
25F31C:  LDR             R6, [R2]
25F31E:  ADD             R2, R5
25F320:  STR.W           R6, [R3],#4
25F324:  BNE             loc_25F318
25F326:  B               loc_25F35C
25F328:  CBZ             R4, loc_25F35C
25F32A:  LDR             R1, [SP,#0xD0+var_60]
25F32C:  LDR             R2, [SP,#0xD0+var_74]
25F32E:  ADD             R1, R6
25F330:  MLA.W           R2, R2, R1, R12
25F334:  LDR             R1, [SP,#0xD0+var_40]
25F336:  ADD.W           R3, R1, R11,LSL#2
25F33A:  MOV             R1, R4
25F33C:  LDRSH.W         R6, [R2]
25F340:  SUBS            R1, #1
25F342:  VMOV            S0, R6
25F346:  VCVT.F32.S32    S0, S0
25F34A:  VMUL.F32        S0, S0, S16
25F34E:  VSTR            S0, [R3]
25F352:  ADD.W           R3, R3, #4
25F356:  LDR             R6, [SP,#0xD0+var_34]
25F358:  ADD             R2, R6
25F35A:  BNE             loc_25F33C
25F35C:  ADD             R11, R4
25F35E:  LDR             R4, [SP,#0xD0+var_50]
25F360:  LDR             R5, [SP,#0xD0+var_64]
25F362:  MOVS            R2, #0
25F364:  LDR             R3, [SP,#0xD0+var_5C]
25F366:  LDR             R0, [R0,#4]
25F368:  LSLS            R1, R5, #0x18
25F36A:  BEQ             loc_25F372
25F36C:  CMP             R0, #0
25F36E:  BEQ.W           loc_25F280
25F372:  CMP             R0, #0
25F374:  BNE.W           loc_25F284
25F378:  SUBS.W          R1, R3, R11
25F37C:  BEQ             loc_25F392
25F37E:  LDR             R0, [SP,#0xD0+var_3C]
25F380:  LSLS            R1, R1, #2
25F382:  ADD.W           R0, R0, R11,LSL#2
25F386:  ADD.W           R0, R0, #0x130
25F38A:  BLX             j___aeabi_memclr8_0
25F38E:  LDR.W           LR, [SP,#0xD0+var_44]
25F392:  LDR.W           R12, [SP,#0xD0+var_6C]
25F396:  LDR.W           R11, [SP,#0xD0+var_90]
25F39A:  LDR             R0, [SP,#0xD0+var_88]
25F39C:  MOV             R1, R12
25F39E:  LDR             R5, [SP,#0xD0+var_4C]
25F3A0:  LDR             R2, [SP,#0xD0+var_78]
25F3A2:  LDR             R6, [R0]
25F3A4:  LDR             R0, [SP,#0xD0+var_8C]
25F3A6:  MOV             R3, R5
25F3A8:  STR.W           LR, [SP,#0xD0+var_D0]
25F3AC:  BLX             R6
25F3AE:  LDR             R0, [SP,#0xD0+var_60]
25F3B0:  MOVW            R2, #0x57EC
25F3B4:  VLDR            S4, [R5]
25F3B8:  VLDR            S2, [R11]
25F3BC:  ADD.W           R1, R9, R0,LSL#3
25F3C0:  MOVW            R0, #0x57E8
25F3C4:  ADD             R0, R1
25F3C6:  ADD             R1, R2
25F3C8:  LDR.W           R12, [SP,#0xD0+var_44]
25F3CC:  VLDR            S0, [R0]
25F3D0:  CMP.W           R12, #0
25F3D4:  VSUB.F32        S0, S0, S4
25F3D8:  VMUL.F32        S0, S2, S0
25F3DC:  VADD.F32        S4, S4, S0
25F3E0:  VLDR            S0, [R1]
25F3E4:  BEQ             loc_25F42A
25F3E6:  LDR             R2, [SP,#0xD0+var_3C]
25F3E8:  MOV             R1, R12
25F3EA:  VMOV.F32        S6, S4
25F3EE:  ADD.W           R3, R2, R10
25F3F2:  SUBS            R1, #1
25F3F4:  VSUB.F32        S0, S0, S6
25F3F8:  VMUL.F32        S0, S2, S0
25F3FC:  VADD.F32        S0, S6, S0
25F400:  VSTR            S0, [R0,#4]
25F404:  VLDR            S4, [R3]
25F408:  VSTR            S0, [R2,#0x130]
25F40C:  ADD.W           R2, R2, #4
25F410:  VSUB.F32        S8, S6, S4
25F414:  VLDR            S2, [R11]
25F418:  VMUL.F32        S8, S2, S8
25F41C:  VADD.F32        S4, S4, S8
25F420:  BNE             loc_25F3EA
25F422:  VSTR            S6, [R0]
25F426:  MOV             R0, R12
25F428:  B               loc_25F42C
25F42A:  MOVS            R0, #0
25F42C:  VSUB.F32        S0, S0, S4
25F430:  LDR             R5, [SP,#0xD0+var_3C]
25F432:  ADD.W           R0, R5, R0,LSL#2
25F436:  VMUL.F32        S0, S2, S0
25F43A:  VADD.F32        S0, S4, S0
25F43E:  VSTR            S0, [R0,#0x130]
25F442:  LDR             R0, [SP,#0xD0+var_80]
25F444:  LDR             R6, [R0]
25F446:  STRD.W          R4, R12, [SP,#0xD0+var_D0]
25F44A:  LDR             R0, [SP,#0xD0+var_84]
25F44C:  LDR             R1, [SP,#0xD0+var_40]
25F44E:  LDR             R2, [SP,#0xD0+var_60]
25F450:  LDR             R3, [SP,#0xD0+var_48]
25F452:  BLX             R6
25F454:  LDR             R0, [R5,#0x3C]
25F456:  MOVW            R3, #0x5830
25F45A:  CMP             R0, #0
25F45C:  BEQ             loc_25F52A
25F45E:  LDR             R1, [SP,#0xD0+var_60]
25F460:  MOVS            R6, #0
25F462:  MOV.W           R11, R1,LSL#1
25F466:  MOVS            R1, #0x54 ; 'T'
25F468:  MLA.W           R1, R6, R1, R9
25F46C:  LDR             R2, [R1,R3]
25F46E:  CMP             R2, #0
25F470:  BEQ             loc_25F524
25F472:  LDR             R2, [SP,#0xD0+var_4C]
25F474:  ADDS            R0, R1, R3
25F476:  LDR.W           R12, [SP,#0xD0+var_44]
25F47A:  VLDR            S4, [R2]
25F47E:  MOVW            R2, #0x5838
25F482:  ADD             R1, R2
25F484:  CMP.W           R12, #0
25F488:  ADD.W           R2, R1, R11,LSL#2
25F48C:  VLDR            S2, [R2,#4]
25F490:  VLDR            S0, [R2,#8]
25F494:  VSUB.F32        S6, S2, S4
25F498:  VLDR            S2, [R1]
25F49C:  VMUL.F32        S6, S2, S6
25F4A0:  VADD.F32        S4, S4, S6
25F4A4:  BEQ             loc_25F4EE
25F4A6:  LDR             R4, [SP,#0xD0+var_3C]
25F4A8:  ADDS            R2, #4
25F4AA:  MOV             R3, R12
25F4AC:  VMOV.F32        S6, S4
25F4B0:  ADD.W           R5, R4, R10
25F4B4:  SUBS            R3, #1
25F4B6:  VSUB.F32        S0, S0, S6
25F4BA:  VMUL.F32        S0, S2, S0
25F4BE:  VADD.F32        S0, S6, S0
25F4C2:  VSTR            S0, [R2,#4]
25F4C6:  VLDR            S4, [R5]
25F4CA:  VSTR            S0, [R4,#0x130]
25F4CE:  ADD.W           R4, R4, #4
25F4D2:  VSUB.F32        S8, S6, S4
25F4D6:  VLDR            S2, [R1]
25F4DA:  VMUL.F32        S8, S2, S8
25F4DE:  VADD.F32        S4, S4, S8
25F4E2:  BNE             loc_25F4AC
25F4E4:  VSTR            S6, [R2]
25F4E8:  MOV             R1, R12
25F4EA:  LDR             R4, [SP,#0xD0+var_50]
25F4EC:  B               loc_25F4F0
25F4EE:  MOVS            R1, #0
25F4F0:  VSUB.F32        S0, S0, S4
25F4F4:  LDR.W           R8, [SP,#0xD0+var_3C]
25F4F8:  MOV             R3, R4
25F4FA:  ADD.W           R1, R8, R1,LSL#2
25F4FE:  VMUL.F32        S0, S2, S0
25F502:  VADD.F32        S0, S4, S0
25F506:  VSTR            S0, [R1,#0x130]
25F50A:  LDR             R1, [SP,#0xD0+var_58]
25F50C:  LDR             R2, [SP,#0xD0+var_48]
25F50E:  LDR             R5, [R1]
25F510:  LDR             R1, [SP,#0xD0+var_40]
25F512:  STR.W           R12, [SP,#0xD0+var_D0]
25F516:  BLX             R5
25F518:  LDR.W           R0, [R8,#0x3C]
25F51C:  MOVW            R3, #0x5830
25F520:  LDR.W           R8, [SP,#0xD0+var_54]
25F524:  ADDS            R6, #1
25F526:  CMP             R6, R0
25F528:  BCC             loc_25F466
25F52A:  LDR             R0, [SP,#0xD0+var_60]
25F52C:  MOV             R1, R0
25F52E:  ADDS            R1, #1
25F530:  CMP             R1, R8
25F532:  MOV             R0, R1
25F534:  STR             R0, [SP,#0xD0+var_60]
25F536:  LDRD.W          R4, R6, [SP,#0xD0+var_70]
25F53A:  LDR             R5, [SP,#0xD0+var_7C]
25F53C:  LDR.W           LR, [SP,#0xD0+var_44]
25F540:  LDR             R3, [SP,#0xD0+var_5C]
25F542:  BNE.W           loc_25F090
25F546:  B               loc_25F54A
25F548:  LDR             R5, [SP,#0xD0+var_7C]
25F54A:  LDR             R1, [SP,#0xD0+var_78]
25F54C:  CMP.W           LR, #0
25F550:  MOV             R0, LR
25F552:  BEQ             loc_25F562
25F554:  ADD             R6, R1
25F556:  SUBS            R0, #1
25F558:  ADD.W           R4, R4, R6,LSR#14
25F55C:  BFC.W           R6, #0xE, #0x12
25F560:  BNE             loc_25F554
25F562:  LDR.W           R8, [SP,#0xD0+var_BC]
25F566:  LDR             R0, [SP,#0xD0+var_48]
25F568:  ADD             R0, LR
25F56A:  STR             R0, [SP,#0xD0+var_48]
25F56C:  B               loc_25F574
25F56E:  ADD.W           R8, R8, #1
25F572:  SUBS            R4, R4, R0
25F574:  LDR             R2, [R5]
25F576:  CBZ             R2, loc_25F586
25F578:  LDR             R1, [R2,#0x28]
25F57A:  CMP             R1, R4
25F57C:  BHI             loc_25F5CE
25F57E:  LDR             R0, [R2,#0xC]
25F580:  LDR.W           R11, [R2,#0x24]
25F584:  B               loc_25F58E
25F586:  MOVS            R0, #0
25F588:  MOV.W           R11, #0
25F58C:  MOVS            R1, #0
25F58E:  LDR             R2, [SP,#0xD0+var_64]
25F590:  MOVS.W          R12, R2,LSL#24
25F594:  BEQ             loc_25F5A2
25F596:  LDR.W           R3, [R9,#0x7C]
25F59A:  MOVW            R2, #0x1028
25F59E:  CMP             R3, R2
25F5A0:  BEQ             loc_25F5BE
25F5A2:  CMP             R4, R0
25F5A4:  BCC             loc_25F5CE
25F5A6:  LDR             R5, [R5,#4]
25F5A8:  CMP             R5, #0
25F5AA:  BNE             loc_25F56E
25F5AC:  CMP.W           R12, #0
25F5B0:  BEQ             loc_25F5EE
25F5B2:  LDR.W           R5, [R9,#0x90]
25F5B6:  MOV.W           R8, #0
25F5BA:  SUBS            R4, R4, R0
25F5BC:  B               loc_25F574
25F5BE:  SUB.W           R0, R4, R11
25F5C2:  SUB.W           R1, R1, R11
25F5C6:  BLX             __aeabi_uidivmod
25F5CA:  ADD.W           R4, R1, R11
25F5CE:  LDR             R1, [SP,#0xD0+var_B8]
25F5D0:  MOVW            R0, #0x1012
25F5D4:  CMP             R1, R0
25F5D6:  MOV.W           R1, #0
25F5DA:  IT EQ
25F5DC:  MOVEQ           R1, #1
25F5DE:  BNE             loc_25F5FE
25F5E0:  LDR             R2, [SP,#0xD0+var_50]
25F5E2:  LDR             R3, [SP,#0xD0+var_48]
25F5E4:  STR             R5, [SP,#0xD0+var_7C]
25F5E6:  CMP             R3, R2
25F5E8:  BCC.W           loc_25EE0C
25F5EC:  B               loc_25F600
25F5EE:  MOVW            R0, #0x1014
25F5F2:  MOVS            R1, #0
25F5F4:  STR             R0, [SP,#0xD0+var_B8]
25F5F6:  MOVS            R4, #0
25F5F8:  LDR.W           R8, [R9,#0x94]
25F5FC:  MOVS            R6, #0
25F5FE:  LDR             R3, [SP,#0xD0+var_48]
25F600:  MOVW            R0, #0x2DF0
25F604:  CMP             R1, #0
25F606:  LDR.W           R2, [R9,R0]
25F60A:  ADD             R2, R3
25F60C:  STR.W           R2, [R9,R0]
25F610:  STR.W           R8, [R9,#0x98]
25F614:  LDR             R0, [SP,#0xD0+var_B8]
25F616:  STR.W           R0, [R9,#0x80]
25F61A:  STRD.W          R4, R6, [R9,#0x88]
25F61E:  BEQ             loc_25F62E
25F620:  LDR.W           R0, [R9,#0xE4]
25F624:  CMP             R0, R3
25F626:  IT LS
25F628:  MOVLS           R0, R3
25F62A:  SUBS            R0, R0, R3
25F62C:  B               loc_25F634
25F62E:  MOVS            R0, #0
25F630:  STRB.W          R0, [R9,#0xE0]
25F634:  STR.W           R0, [R9,#0xE4]
25F638:  ADD             SP, SP, #0xA0
25F63A:  VPOP            {D8-D9}
25F63E:  ADD             SP, SP, #4
25F640:  POP.W           {R8-R11}
25F644:  POP             {R4-R7,PC}
