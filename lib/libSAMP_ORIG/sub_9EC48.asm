; =========================================================
; Game Engine Function: sub_9EC48
; Address            : 0x9EC48 - 0x9F260
; =========================================================

9EC48:  PUSH            {R4-R7,LR}
9EC4A:  ADD             R7, SP, #0xC
9EC4C:  PUSH.W          {R8-R11}
9EC50:  SUB             SP, SP, #0xE4
9EC52:  STR             R3, [SP,#0x100+var_FC]
9EC54:  MOV             R9, R1
9EC56:  STR             R0, [SP,#0x100+var_F4]
9EC58:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x9EC60)
9EC5C:  ADD             R0, PC; __stack_chk_guard_ptr
9EC5E:  LDR             R0, [R0]; __stack_chk_guard
9EC60:  LDR             R0, [R0]
9EC62:  STR             R0, [SP,#0x100+var_20]
9EC64:  LDR             R0, [R1,#8]
9EC66:  REV             R0, R0
9EC68:  STR             R0, [SP,#0x100+var_F8]
9EC6A:  BL              sub_885E4
9EC6E:  MOV             R11, R0
9EC70:  LDR.W           R0, [R9]
9EC74:  MOVS            R1, #0
9EC76:  REV             R0, R0
9EC78:  MOVT            R1, #0x57BC
9EC7C:  CMP             R0, R1
9EC7E:  BNE             loc_9EC8C
9EC80:  LDR.W           R0, [R9,#4]
9EC84:  REV             R0, R0
9EC86:  CMP             R0, #0
9EC88:  BEQ.W           loc_9EE08
9EC8C:  LDR             R0, [SP,#0x100+var_FC]
9EC8E:  LDR             R4, [R7,#arg_0]
9EC90:  STR.W           R11, [SP,#0x100+var_EC]
9EC94:  VMOV            S0, R0
9EC98:  CBZ             R4, loc_9ED10
9EC9A:  ADD.W           R0, R4, #0x1D
9EC9E:  MOVS            R1, #0xB
9ECA0:  VLD1.8          {D16-D17}, [R0],R1
9ECA4:  ADD             R5, SP, #0x100+var_B8
9ECA6:  VST1.64         {D16-D17}, [R5],R1
9ECAA:  LDR             R1, [R4,#0x14]
9ECAC:  STR             R1, [SP,#0x100+var_F0]
9ECAE:  ADD.W           R1, R4, #0x48 ; 'H'
9ECB2:  LDRB.W          R2, [R4,#0x3F]
9ECB6:  VLD1.32         {D16-D17}, [R1]!
9ECBA:  STRB.W          R2, [SP,#0x100+var_E6]
9ECBE:  ADD             R2, SP, #0x100+var_E0
9ECC0:  VST1.64         {D16-D17}, [R2]!
9ECC4:  VLD1.32         {D16-D17}, [R1]!
9ECC8:  VLD1.8          {D18-D19}, [R0]!
9ECCC:  VST1.64         {D16-D17}, [R2]!
9ECD0:  VLDR            D16, [R1]
9ECD4:  LDRH.W          R6, [R4,#0x3D]
9ECD8:  LDRH.W          R3, [R4,#9]
9ECDC:  VLDR            S2, [R0]
9ECE0:  LDRB            R0, [R4,#0xB]
9ECE2:  STRB.W          R0, [SP,#0x100+var_E2]
9ECE6:  LDR.W           R10, [R4,#0xC]
9ECEA:  LDR.W           R8, [R4,#0x18]
9ECEE:  VST1.8          {D18-D19}, [R5]
9ECF2:  LDRB            R0, [R4,#0x1C]
9ECF4:  STRH.W          R6, [SP,#0x100+var_E8]
9ECF8:  LDRB.W          R11, [R4,#0x3C]
9ECFC:  VLDR            S4, [R4,#0x44]
9ED00:  LDR.W           R9, [R4,#0x40]
9ED04:  STRH.W          R3, [SP,#0x100+var_E4]
9ED08:  LDR             R1, [R4,#0x70]
9ED0A:  VSTR            D16, [R2]
9ED0E:  B               loc_9ED50
9ED10:  VMOV.I32        Q8, #0
9ED14:  ADD             R0, SP, #0x100+var_B8
9ED16:  ADDS            R0, #3
9ED18:  MOVS            R1, #0
9ED1A:  VMOV.F32        S4, #1.0
9ED1E:  VLDR            S2, =3.4028e38
9ED22:  VST1.8          {D16-D17}, [R0]!
9ED26:  MOV.W           R8, #1
9ED2A:  MOV.W           R9, #0
9ED2E:  MOV.W           R11, #0
9ED32:  STR             R1, [R0]
9ED34:  ADD             R0, SP, #0x100+var_E0
9ED36:  VST1.64         {D16-D17}, [R0]!
9ED3A:  MOV.W           R10, #0
9ED3E:  VST1.64         {D16-D17}, [R0]!
9ED42:  STR             R1, [R0]
9ED44:  MOVS            R0, #3
9ED46:  STR             R0, [SP,#0x100+var_F0]
9ED48:  MOVS            R0, #0
9ED4A:  STR.W           R1, [SP,#0x100+var_A1]
9ED4E:  STR             R1, [SP,#0x100+var_BC]
9ED50:  MOVS            R2, #0xB
9ED52:  ADD             R3, SP, #0x100+var_B8
9ED54:  VLD1.8          {D16-D17}, [R3],R2
9ED58:  VLD1.8          {D18-D19}, [R3]
9ED5C:  ADD             R3, SP, #0x100+src
9ED5E:  ADD.W           LR, R3, #0x1D
9ED62:  STRB.W          R0, [SP,#0x100+var_7C]
9ED66:  LDR             R0, [SP,#0x100+var_F0]
9ED68:  STR             R0, [SP,#0x100+var_84]
9ED6A:  ADD             R0, SP, #0x100+var_E0
9ED6C:  VST1.8          {D16-D17}, [LR],R2
9ED70:  MOVS            R2, #1
9ED72:  VLD1.64         {D16-D17}, [R0]!
9ED76:  VST1.8          {D18-D19}, [LR]!
9ED7A:  VLD1.64         {D18-D19}, [R0]!
9ED7E:  VLDR            D20, [R0]
9ED82:  ADD.W           R0, R3, #0x48 ; 'H'
9ED86:  VST1.64         {D16-D17}, [R0]!
9ED8A:  VST1.64         {D18-D19}, [R0]!
9ED8E:  VSTR            D20, [R0]
9ED92:  LDR             R0, [SP,#0x100+var_EC]
9ED94:  STR             R0, [SP,#0x100+src]
9ED96:  LDR             R0, [SP,#0x100+var_F8]
9ED98:  STR             R0, [SP,#0x100+var_94]
9ED9A:  LDR             R0, [R7,#arg_4]
9ED9C:  LDRB.W          R6, [SP,#0x100+var_E2]
9EDA0:  LDRH.W          R4, [SP,#0x100+var_E8]
9EDA4:  CMP             R0, #0
9EDA6:  LDRB.W          R5, [SP,#0x100+var_E6]
9EDAA:  LDRH.W          R12, [SP,#0x100+var_E4]
9EDAE:  STR             R1, [SP,#0x100+var_28]
9EDB0:  ADD             R1, SP, #0x100+src; src
9EDB2:  VSTR            S2, [LR]
9EDB6:  STRB.W          R2, [SP,#0x100+var_90]
9EDBA:  STRH.W          R12, [SP,#0x100+var_8F]
9EDBE:  STRB.W          R6, [SP,#0x100+var_8D]
9EDC2:  STR.W           R8, [SP,#0x100+var_80]
9EDC6:  STR.W           R10, [SP,#0x100+var_8C]
9EDCA:  STRB.W          R11, [SP,#0x100+var_5C]
9EDCE:  STRH.W          R4, [SP,#0x100+var_5B]
9EDD2:  STRB.W          R5, [SP,#0x100+var_59]
9EDD6:  VSTR            S4, [SP,#0x100+var_54]
9EDDA:  STR.W           R9, [SP,#0x100+var_58]
9EDDE:  VSTR            S0, [SP,#0x100+var_88]
9EDE2:  IT NE
9EDE4:  STRNE           R0, [SP,#0x100+var_68]
9EDE6:  LDR             R0, [SP,#0x100+var_F4]; int
9EDE8:  BL              sub_9E8A4
9EDEC:  LDR             R1, [SP,#0x100+var_20]
9EDEE:  LDR.W           R2, =(__stack_chk_guard_ptr - 0x9EDF6)
9EDF2:  ADD             R2, PC; __stack_chk_guard_ptr
9EDF4:  LDR             R2, [R2]; __stack_chk_guard
9EDF6:  LDR             R2, [R2]
9EDF8:  CMP             R2, R1
9EDFA:  ITTT EQ
9EDFC:  ADDEQ           SP, SP, #0xE4
9EDFE:  POPEQ.W         {R8-R11}
9EE02:  POPEQ           {R4-R7,PC}
9EE04:  BLX             __stack_chk_fail
9EE08:  LDR             R0, =(dword_1AEE78 - 0x9EE16)
9EE0A:  ADD.W           R10, R9, #0x10
9EE0E:  LDR             R1, =(dword_1AEE7C - 0x9EE1C)
9EE10:  LDR             R2, =(dword_1AEE74 - 0x9EE1E)
9EE12:  ADD             R0, PC; dword_1AEE78
9EE14:  LDR.W           R3, [R9,#8]
9EE18:  ADD             R1, PC; dword_1AEE7C
9EE1A:  ADD             R2, PC; dword_1AEE74
9EE1C:  LDR             R5, =(dword_1AEE80 - 0x9EE2C)
9EE1E:  STR.W           R11, [R1]
9EE22:  STR.W           R9, [R2]
9EE26:  REV             R2, R3
9EE28:  ADD             R5, PC; dword_1AEE80
9EE2A:  ADD.W           R8, R11, R2
9EE2E:  MOV             R3, R11
9EE30:  STR.W           R8, [R0]
9EE34:  ADD.W           R0, R8, #1
9EE38:  STR.W           R11, [R5]
9EE3C:  STR             R0, [SP,#0x100+var_EC]
9EE3E:  STR             R5, [SP,#0x100+var_F0]
9EE40:  B               loc_9EE4E
9EE42:  STR             R3, [R5]
9EE44:  ADD.W           R10, R10, #4
9EE48:  CMP             R3, R8
9EE4A:  BHI.W           loc_9EC8C
9EE4E:  LDRB.W          R4, [R10]
9EE52:  MOV             R0, R3; dest
9EE54:  CMP             R4, #0x20 ; ' '
9EE56:  BCC             loc_9EED6
9EE58:  SXTB            R1, R4
9EE5A:  CMP.W           R1, #0xFFFFFFFF
9EE5E:  BLE.W           loc_9EFD8
9EE62:  CMP             R4, #0x40 ; '@'
9EE64:  BCC.W           loc_9F040
9EE68:  LDRB.W          R2, [R10,#2]
9EE6C:  ADD.W           LR, R2, #1
9EE70:  ADD.W           R3, R0, LR
9EE74:  CMP             R3, R8
9EE76:  BHI.W           loc_9F11E
9EE7A:  LDRB.W          R1, [R10,#1]
9EE7E:  LDR             R3, [SP,#0x100+var_EC]
9EE80:  ORR.W           R4, R1, R4,LSL#8
9EE84:  MOVW            R1, #0x3FFF
9EE88:  SUBS            R6, R1, R4
9EE8A:  ADDS            R1, R0, R6
9EE8C:  CMP             R1, R11
9EE8E:  BCC.W           loc_9F11E
9EE92:  CMP             R2, #0xF
9EE94:  BCC.W           loc_9F10E
9EE98:  SUBS            R3, R2, R4
9EE9A:  ADD             R3, R0
9EE9C:  ADD.W           R3, R3, #0x4000
9EEA0:  CMP             R0, R3
9EEA2:  ITTT CC
9EEA4:  ADDCC           R2, R0
9EEA6:  ADDCC           R2, #1
9EEA8:  CMPCC           R1, R2
9EEAA:  BCC.W           loc_9F10E
9EEAE:  BIC.W           R12, LR, #0xF
9EEB2:  AND.W           R2, LR, #0xF
9EEB6:  ADD.W           R3, R0, R12
9EEBA:  ADD             R1, R12
9EEBC:  MOV             R4, R12
9EEBE:  ADDS            R5, R0, R6
9EEC0:  SUBS            R4, #0x10
9EEC2:  VLD1.8          {D16-D17}, [R5]
9EEC6:  VST1.8          {D16-D17}, [R0]!
9EECA:  BNE             loc_9EEBE
9EECC:  LDR             R5, [SP,#0x100+var_F0]
9EECE:  CMP             LR, R12
9EED0:  BNE.W           loc_9F112
9EED4:  B               loc_9F11E
9EED6:  CMP             R4, #0x18
9EED8:  BCC             loc_9EF54
9EEDA:  LDRB.W          R2, [R10,#3]
9EEDE:  ADD.W           LR, R2, #1
9EEE2:  ADD.W           R3, R0, LR
9EEE6:  CMP             R3, R8
9EEE8:  BHI             loc_9EE42
9EEEA:  LDRB.W          R3, [R10,#2]
9EEEE:  LDRB.W          R1, [R10,#1]
9EEF2:  ORR.W           R3, R3, R4,LSL#16
9EEF6:  ORR.W           R4, R3, R1,LSL#8
9EEFA:  MOV             R1, #0xFFFFF
9EF02:  LDR             R3, [SP,#0x100+var_EC]
9EF04:  SUBS            R1, R1, R4
9EF06:  ADD.W           R6, R1, #0x80000
9EF0A:  ADDS            R1, R0, R6
9EF0C:  CMP             R1, R11
9EF0E:  BCC             loc_9EE42
9EF10:  CMP             R2, #0xF
9EF12:  BCC.W           loc_9F0FC
9EF16:  SUBS            R3, R2, R4
9EF18:  ADD             R3, R0
9EF1A:  ADD.W           R3, R3, #0x180000
9EF1E:  CMP             R0, R3
9EF20:  ITTT CC
9EF22:  ADDCC           R2, R0
9EF24:  ADDCC           R2, #1
9EF26:  CMPCC           R1, R2
9EF28:  BCC.W           loc_9F0FC
9EF2C:  BIC.W           R12, LR, #0xF
9EF30:  AND.W           R2, LR, #0xF
9EF34:  ADD.W           R3, R0, R12
9EF38:  ADD             R1, R12
9EF3A:  MOV             R4, R12
9EF3C:  ADDS            R5, R0, R6
9EF3E:  SUBS            R4, #0x10
9EF40:  VLD1.8          {D16-D17}, [R5]
9EF44:  VST1.8          {D16-D17}, [R0]!
9EF48:  BNE             loc_9EF3C
9EF4A:  LDR             R5, [SP,#0x100+var_F0]
9EF4C:  CMP             LR, R12
9EF4E:  BNE.W           loc_9F100
9EF52:  B               loc_9EE42
9EF54:  CMP             R4, #0x10
9EF56:  BCC.W           loc_9F066
9EF5A:  LDRH.W          R1, [R10,#3]
9EF5E:  LSLS            R1, R1, #0x10
9EF60:  REV             R2, R1
9EF62:  ADD.W           LR, R2, #1
9EF66:  ADD.W           R3, R0, LR
9EF6A:  CMP             R3, R8
9EF6C:  BHI.W           loc_9F240
9EF70:  LDRB.W          R3, [R10,#2]
9EF74:  LDRB.W          R1, [R10,#1]
9EF78:  ORR.W           R3, R3, R4,LSL#16
9EF7C:  ORR.W           R4, R3, R1,LSL#8
9EF80:  MOV             R1, #0xFFFFF
9EF88:  SUBS            R6, R1, R4
9EF8A:  LDR             R3, [SP,#0x100+var_EC]
9EF8C:  ADDS            R1, R0, R6
9EF8E:  CMP             R1, R11
9EF90:  BCC.W           loc_9F240
9EF94:  CMP             R2, #0xF
9EF96:  BCC.W           loc_9F126
9EF9A:  SUBS            R3, R2, R4
9EF9C:  ADD             R3, R0
9EF9E:  ADD.W           R3, R3, #0x100000
9EFA2:  CMP             R0, R3
9EFA4:  ITTT CC
9EFA6:  ADDCC           R2, R0
9EFA8:  ADDCC           R2, #1
9EFAA:  CMPCC           R1, R2
9EFAC:  BCC.W           loc_9F126
9EFB0:  BIC.W           R12, LR, #0xF
9EFB4:  AND.W           R2, LR, #0xF
9EFB8:  ADD.W           R3, R0, R12
9EFBC:  ADD             R1, R12
9EFBE:  MOV             R4, R12
9EFC0:  ADDS            R5, R0, R6
9EFC2:  SUBS            R4, #0x10
9EFC4:  VLD1.8          {D16-D17}, [R5]
9EFC8:  VST1.8          {D16-D17}, [R0]!
9EFCC:  BNE             loc_9EFC0
9EFCE:  LDR             R5, [SP,#0x100+var_F0]
9EFD0:  CMP             LR, R12
9EFD2:  BNE.W           loc_9F12A
9EFD6:  B               loc_9F240
9EFD8:  SUB.W           R5, R4, #0x7F
9EFDC:  ADDS            R2, R0, R5
9EFDE:  CMP             R2, R8
9EFE0:  MOV             R3, R2
9EFE2:  BHI.W           loc_9F148
9EFE6:  LDRB.W          R12, [R10,#1]
9EFEA:  LDR             R3, [SP,#0x100+var_EC]
9EFEC:  MVN.W           LR, R12
9EFF0:  ADD.W           R1, LR, R0
9EFF4:  CMP             R1, R11
9EFF6:  BCC.W           loc_9F148
9EFFA:  CMP             R5, #0
9EFFC:  BEQ.W           loc_9F226
9F000:  CMP             R5, #0x10
9F002:  BCC.W           loc_9F138
9F006:  SUB.W           R3, R4, R12
9F00A:  ADD             R3, R0
9F00C:  SUBS            R3, #0x80
9F00E:  CMP             R0, R3
9F010:  IT CC
9F012:  CMPCC           R1, R2
9F014:  BCC.W           loc_9F138
9F018:  BIC.W           R12, R5, #0xF
9F01C:  AND.W           R2, R5, #0xF
9F020:  ADD.W           R3, R0, R12
9F024:  ADD             R1, R12
9F026:  MOV             R4, R12
9F028:  ADD.W           R6, R0, LR
9F02C:  SUBS            R4, #0x10
9F02E:  VLD1.8          {D16-D17}, [R6]
9F032:  VST1.8          {D16-D17}, [R0]!
9F036:  BNE             loc_9F028
9F038:  CMP             R5, R12
9F03A:  BNE.W           loc_9F13C
9F03E:  B               loc_9F148
9F040:  SUB.W           R2, R4, #0x1F; n
9F044:  ADDS            R5, R0, R2
9F046:  CMP             R5, R8
9F048:  BHI             loc_9F05C
9F04A:  LDR             R3, [SP,#0x100+var_EC]
9F04C:  ADD.W           R1, R10, #1; src
9F050:  CMP             R1, R9
9F052:  BCC             loc_9F05E
9F054:  BLX             j_memcpy
9F058:  LDRB.W          R4, [R10]
9F05C:  MOV             R3, R5
9F05E:  LDR             R5, [SP,#0x100+var_F0]
9F060:  SUB.W           R0, R4, #0x1E
9F064:  B               loc_9F098
9F066:  CMP             R4, #8
9F068:  BCC             loc_9F0A4
9F06A:  LDRB.W          R1, [R10,#1]
9F06E:  ORR.W           R6, R1, R4,LSL#8
9F072:  SUBW            R2, R6, #0x7FF; n
9F076:  ADDS            R4, R0, R2
9F078:  CMP             R4, R8
9F07A:  BHI             loc_9F092
9F07C:  LDR             R3, [SP,#0x100+var_EC]
9F07E:  ADD.W           R1, R10, #2; src
9F082:  CMP             R1, R9
9F084:  BCC             loc_9F094
9F086:  BLX             j_memcpy
9F08A:  LDRH.W          R0, [R10]
9F08E:  LSLS            R0, R0, #0x10
9F090:  REV             R6, R0
9F092:  MOV             R3, R4
9F094:  SUBW            R0, R6, #0x7FD
9F098:  STR             R3, [R5]
9F09A:  CMP             R0, #0
9F09C:  BEQ.W           loc_9EC8C
9F0A0:  ADD             R10, R0
9F0A2:  B               loc_9EE48
9F0A4:  CMP             R4, #4
9F0A6:  BEQ.W           loc_9F1BA
9F0AA:  CMP             R4, #6
9F0AC:  BEQ             loc_9F152
9F0AE:  CMP             R4, #7
9F0B0:  BNE.W           loc_9EC8C
9F0B4:  LDRH.W          R1, [R10,#1]
9F0B8:  LSLS            R1, R1, #0x10
9F0BA:  REV             R6, R1
9F0BC:  ADDS            R2, R6, #1; n
9F0BE:  ADDS            R4, R0, R2
9F0C0:  CMP             R4, R8
9F0C2:  BHI             loc_9F0DA
9F0C4:  LDR             R3, [SP,#0x100+var_EC]
9F0C6:  ADD.W           R1, R10, #3; src
9F0CA:  CMP             R1, R9
9F0CC:  BCC             loc_9F0DC
9F0CE:  BLX             j_memcpy
9F0D2:  LDRH.W          R0, [R10,#1]
9F0D6:  LSLS            R0, R0, #0x10
9F0D8:  REV             R6, R0
9F0DA:  MOV             R3, R4
9F0DC:  ADD.W           R0, R6, R10
9F0E0:  STR             R3, [R5]
9F0E2:  ADD.W           R10, R0, #4
9F0E6:  B               loc_9EE48
9F0E8:  DCFS 3.4028e38
9F0EC:  DCD dword_1AEE78 - 0x9EE16
9F0F0:  DCD dword_1AEE7C - 0x9EE1C
9F0F4:  DCD dword_1AEE74 - 0x9EE1E
9F0F8:  DCD dword_1AEE80 - 0x9EE2C
9F0FC:  MOV             R2, LR
9F0FE:  MOV             R3, R0
9F100:  LDRB.W          R0, [R1],#1
9F104:  SUBS            R2, #1
9F106:  STRB.W          R0, [R3],#1
9F10A:  BNE             loc_9F100
9F10C:  B               loc_9EE42
9F10E:  MOV             R2, LR
9F110:  MOV             R3, R0
9F112:  LDRB.W          R0, [R1],#1
9F116:  SUBS            R2, #1
9F118:  STRB.W          R0, [R3],#1
9F11C:  BNE             loc_9F112
9F11E:  STR             R3, [R5]
9F120:  ADD.W           R10, R10, #3
9F124:  B               loc_9EE48
9F126:  MOV             R2, LR
9F128:  MOV             R3, R0
9F12A:  LDRB.W          R0, [R1],#1
9F12E:  SUBS            R2, #1
9F130:  STRB.W          R0, [R3],#1
9F134:  BNE             loc_9F12A
9F136:  B               loc_9F240
9F138:  MOV             R2, R5
9F13A:  MOV             R3, R0
9F13C:  LDRB.W          R0, [R1],#1
9F140:  SUBS            R2, #1
9F142:  STRB.W          R0, [R3],#1
9F146:  BNE             loc_9F13C
9F148:  LDR             R5, [SP,#0x100+var_F0]
9F14A:  ADD.W           R10, R10, #2
9F14E:  STR             R3, [R5]
9F150:  B               loc_9EE48
9F152:  LDRB.W          R2, [R10,#4]
9F156:  ADD.W           LR, R2, #1
9F15A:  ADD.W           R3, R0, LR
9F15E:  CMP             R3, R8
9F160:  BHI             loc_9F240
9F162:  LDRB.W          R1, [R10,#1]
9F166:  LDRB.W          R6, [R10,#3]
9F16A:  LDRB.W          R3, [R10,#2]
9F16E:  ORR.W           R1, R6, R1,LSL#16
9F172:  ORR.W           R4, R1, R3,LSL#8
9F176:  LDR             R3, [SP,#0x100+var_EC]
9F178:  MVNS            R6, R4
9F17A:  ADDS            R1, R0, R6
9F17C:  CMP             R1, R11
9F17E:  BCC             loc_9F240
9F180:  CMP             R2, #0xF
9F182:  BCC             loc_9F230
9F184:  SUBS            R3, R2, R4
9F186:  ADD             R3, R0
9F188:  CMP             R0, R3
9F18A:  ITTT CC
9F18C:  ADDCC           R2, R0
9F18E:  ADDCC           R2, #1
9F190:  CMPCC           R1, R2
9F192:  BCC             loc_9F230
9F194:  BIC.W           R12, LR, #0xF
9F198:  AND.W           R2, LR, #0xF
9F19C:  ADD.W           R3, R0, R12
9F1A0:  ADD             R1, R12
9F1A2:  MOV             R4, R12
9F1A4:  ADDS            R5, R0, R6
9F1A6:  SUBS            R4, #0x10
9F1A8:  VLD1.8          {D16-D17}, [R5]
9F1AC:  VST1.8          {D16-D17}, [R0]!
9F1B0:  BNE             loc_9F1A4
9F1B2:  LDR             R5, [SP,#0x100+var_F0]
9F1B4:  CMP             LR, R12
9F1B6:  BNE             loc_9F234
9F1B8:  B               loc_9F240
9F1BA:  LDRH.W          R1, [R10,#4]
9F1BE:  LSLS            R1, R1, #0x10
9F1C0:  REV             R2, R1
9F1C2:  ADD.W           LR, R2, #1
9F1C6:  ADD.W           R3, R0, LR
9F1CA:  CMP             R3, R8
9F1CC:  BHI             loc_9F258
9F1CE:  LDRB.W          R1, [R10,#1]
9F1D2:  LDRB.W          R6, [R10,#3]
9F1D6:  LDRB.W          R3, [R10,#2]
9F1DA:  ORR.W           R1, R6, R1,LSL#16
9F1DE:  ORR.W           R4, R1, R3,LSL#8
9F1E2:  LDR             R3, [SP,#0x100+var_EC]
9F1E4:  MVNS            R6, R4
9F1E6:  ADDS            R1, R0, R6
9F1E8:  CMP             R1, R11
9F1EA:  BCC             loc_9F258
9F1EC:  CMP             R2, #0xF
9F1EE:  BCC             loc_9F248
9F1F0:  SUBS            R3, R2, R4
9F1F2:  ADD             R3, R0
9F1F4:  CMP             R0, R3
9F1F6:  ITTT CC
9F1F8:  ADDCC           R2, R0
9F1FA:  ADDCC           R2, #1
9F1FC:  CMPCC           R1, R2
9F1FE:  BCC             loc_9F248
9F200:  BIC.W           R12, LR, #0xF
9F204:  AND.W           R2, LR, #0xF
9F208:  ADD.W           R3, R0, R12
9F20C:  ADD             R1, R12
9F20E:  MOV             R4, R12
9F210:  ADDS            R5, R0, R6
9F212:  SUBS            R4, #0x10
9F214:  VLD1.8          {D16-D17}, [R5]
9F218:  VST1.8          {D16-D17}, [R0]!
9F21C:  BNE             loc_9F210
9F21E:  LDR             R5, [SP,#0x100+var_F0]
9F220:  CMP             LR, R12
9F222:  BNE             loc_9F24C
9F224:  B               loc_9F258
9F226:  MOV             R3, R0
9F228:  LDR             R5, [SP,#0x100+var_F0]
9F22A:  ADD.W           R10, R10, #2
9F22E:  B               loc_9EE48
9F230:  MOV             R2, LR
9F232:  MOV             R3, R0
9F234:  LDRB.W          R0, [R1],#1
9F238:  SUBS            R2, #1
9F23A:  STRB.W          R0, [R3],#1
9F23E:  BNE             loc_9F234
9F240:  STR             R3, [R5]
9F242:  ADD.W           R10, R10, #5
9F246:  B               loc_9EE48
9F248:  MOV             R2, LR
9F24A:  MOV             R3, R0
9F24C:  LDRB.W          R0, [R1],#1
9F250:  SUBS            R2, #1
9F252:  STRB.W          R0, [R3],#1
9F256:  BNE             loc_9F24C
9F258:  ADD.W           R10, R10, #6
9F25C:  STR             R3, [R5]
9F25E:  B               loc_9EE48
