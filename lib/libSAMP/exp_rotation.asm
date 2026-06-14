; =========================================================
; Game Engine Function: exp_rotation
; Address            : 0x19EDD0 - 0x19F140
; =========================================================

19EDD0:  PUSH            {R4-R7,LR}
19EDD2:  ADD             R7, SP, #0xC
19EDD4:  PUSH.W          {R8-R11}
19EDD8:  SUB             SP, SP, #0x34
19EDDA:  STR             R0, [SP,#0x50+var_30]
19EDDC:  MOV             R4, R3
19EDDE:  LDR             R0, [R7,#arg_0]
19EDE0:  MOV             R11, R1
19EDE2:  STR             R2, [SP,#0x50+var_2C]
19EDE4:  LSLS            R1, R0, #1
19EDE6:  CMP             R1, R11
19EDE8:  BGE.W           loc_19F138
19EDEC:  LDR             R1, [R7,#arg_4]
19EDEE:  CMP             R1, #0
19EDF0:  BEQ.W           loc_19F138
19EDF4:  ADR             R2, dword_19F140
19EDF6:  ADD.W           R1, R2, R1,LSL#2
19EDFA:  LDR.W           R1, [R1,#-4]
19EDFE:  MLA.W           R5, R1, R0, R11
19EE02:  MOV             R0, R5
19EE04:  BLX             j_celt_rcp
19EE08:  SXTH.W          R1, R11
19EE0C:  MOV             R9, R4
19EE0E:  RSB.W           R4, R1, R1,LSL#15
19EE12:  LSRS            R0, R0, #0x10
19EE14:  ASRS            R6, R4, #0x10
19EE16:  MUL.W           R8, R6, R0
19EE1A:  MOV             R0, R5
19EE1C:  BLX             j_celt_rcp
19EE20:  UXTH            R0, R0
19EE22:  MULS            R6, R0
19EE24:  MOV             R0, R5
19EE26:  BLX             j_celt_rcp
19EE2A:  ASRS            R0, R0, #0x10
19EE2C:  UXTH            R1, R4
19EE2E:  MULS            R0, R1
19EE30:  LSRS            R1, R6, #0xF
19EE32:  ADD.W           R1, R1, R8,LSL#1
19EE36:  ADD.W           R0, R1, R0,LSR#15
19EE3A:  SMULBB.W        R4, R0, R0
19EE3E:  LSRS            R0, R4, #0x10
19EE40:  BLX             j_celt_cos_norm
19EE44:  MOV             R5, R0
19EE46:  MOVW            R0, #0x7FFF
19EE4A:  EOR.W           R0, R0, R4,LSR#16
19EE4E:  MOV             R4, R9
19EE50:  BLX             j_celt_cos_norm
19EE54:  MOV             R8, R0
19EE56:  LSLS            R0, R4, #3
19EE58:  CMP             R0, R11
19EE5A:  BLE             loc_19EE62
19EE5C:  MOV.W           R9, #0
19EE60:  B               loc_19EE78
19EE62:  ASRS            R0, R4, #2
19EE64:  MOV.W           R9, #0
19EE68:  ADD.W           R9, R9, #1
19EE6C:  MLA.W           R1, R9, R9, R9
19EE70:  MLA.W           R1, R1, R4, R0
19EE74:  CMP             R1, R11
19EE76:  BLT             loc_19EE68
19EE78:  MOV             R0, R11
19EE7A:  MOV             R1, R4
19EE7C:  BLX             sub_220A6C
19EE80:  MOV             R3, R0
19EE82:  CMP             R4, #1
19EE84:  BLT.W           loc_19F138
19EE88:  SUB.W           R0, R3, R9
19EE8C:  STR             R0, [SP,#0x50+var_3C]
19EE8E:  SUBS            R0, R3, #3
19EE90:  STR             R0, [SP,#0x50+var_44]
19EE92:  NEGS            R0, R5
19EE94:  SUB.W           R10, R3, #1
19EE98:  SUB.W           R1, R3, R9,LSL#1
19EE9C:  MOVS            R2, #0
19EE9E:  SXTH.W          R11, R0
19EEA2:  RSB.W           R0, R11, #0
19EEA6:  STR             R1, [SP,#0x50+var_40]
19EEA8:  SXTH            R0, R0
19EEAA:  STR             R3, [SP,#0x50+var_24]
19EEAC:  STR             R0, [SP,#0x50+var_38]
19EEAE:  RSB.W           R0, R8, #0
19EEB2:  STR             R4, [SP,#0x50+var_34]
19EEB4:  SXTH.W          R12, R0
19EEB8:  RSB.W           R0, R12, #0
19EEBC:  SXTH.W          LR, R0
19EEC0:  SUBS            R0, R1, #1
19EEC2:  STRD.W          R0, R10, [SP,#0x50+var_4C]
19EEC6:  MUL.W           R0, R2, R3
19EECA:  LDR             R1, [SP,#0x50+var_30]
19EECC:  STR             R2, [SP,#0x50+var_28]
19EECE:  ADD.W           R0, R1, R0,LSL#1
19EED2:  STR             R0, [SP,#0x50+var_20]
19EED4:  LDR             R0, [SP,#0x50+var_2C]
19EED6:  CMP.W           R0, #0xFFFFFFFF
19EEDA:  BLE.W           loc_19F006
19EEDE:  CMP             R3, #2
19EEE0:  BLT             loc_19EF1C
19EEE2:  LDR             R0, [SP,#0x50+var_20]
19EEE4:  MOVS            R1, #0
19EEE6:  LDRH            R2, [R0]
19EEE8:  MOV             R3, R0
19EEEA:  LDRSH.W         R4, [R0,#2]!
19EEEE:  SXTH            R2, R2
19EEF0:  SMULBB.W        R6, R2, R5
19EEF4:  ADDS            R1, #1
19EEF6:  SMULBB.W        R2, R12, R2
19EEFA:  CMP             R1, R10
19EEFC:  SMLABB.W        R6, LR, R4, R6
19EF00:  SMLABB.W        R2, R4, R5, R2
19EF04:  ADD.W           R4, R6, #0x4000
19EF08:  ADD.W           R2, R2, #0x4000
19EF0C:  MOV.W           R4, R4,LSR#15
19EF10:  STRH            R4, [R3]
19EF12:  MOV.W           R2, R2,LSR#15
19EF16:  MOV             R3, R0
19EF18:  STRH            R2, [R0]
19EF1A:  BNE             loc_19EEEA
19EF1C:  LDR             R0, [SP,#0x50+var_24]
19EF1E:  CMP             R0, #3
19EF20:  BLT             loc_19EF64
19EF22:  LDR             R0, [SP,#0x50+var_44]
19EF24:  LDR             R1, [SP,#0x50+var_20]
19EF26:  ADD.W           R1, R1, R0,LSL#1
19EF2A:  LDRSH.W         R2, [R1]
19EF2E:  CMP             R0, #0
19EF30:  LDRSH.W         R3, [R1,#2]
19EF34:  SMULBB.W        R4, R12, R2
19EF38:  SMULBB.W        R2, R2, R5
19EF3C:  SMLABB.W        R2, LR, R3, R2
19EF40:  SMLABB.W        R4, R3, R5, R4
19EF44:  ADD.W           R2, R2, #0x4000
19EF48:  ADD.W           R3, R4, #0x4000
19EF4C:  MOV.W           R2, R2,LSR#15
19EF50:  MOV.W           R3, R3,LSR#15
19EF54:  STRH            R3, [R1,#2]
19EF56:  STRH            R2, [R1]
19EF58:  SUB.W           R2, R0, #1
19EF5C:  SUB.W           R1, R1, #2
19EF60:  MOV             R0, R2
19EF62:  BGT             loc_19EF2A
19EF64:  LDR             R6, [SP,#0x50+var_38]
19EF66:  CMP.W           R9, #0
19EF6A:  BEQ.W           loc_19F12A
19EF6E:  LDR.W           R10, [SP,#0x50+var_3C]
19EF72:  CMP.W           R10, #1
19EF76:  BLT             loc_19EFB4
19EF78:  LDR             R0, [SP,#0x50+var_20]
19EF7A:  MOVS            R1, #0
19EF7C:  LDRSH.W         R3, [R0]
19EF80:  ADDS            R1, #1
19EF82:  LDRSH.W         R2, [R0,R9,LSL#1]
19EF86:  CMP             R1, R10
19EF88:  SMULBB.W        R4, R11, R3
19EF8C:  SMULBB.W        R3, R3, R8
19EF90:  SMLABB.W        R4, R2, R8, R4
19EF94:  SMLABB.W        R2, R6, R2, R3
19EF98:  ADD.W           R3, R4, #0x4000
19EF9C:  ADD.W           R2, R2, #0x4000
19EFA0:  MOV.W           R3, R3,LSR#15
19EFA4:  MOV.W           R2, R2,LSR#15
19EFA8:  STRH.W          R3, [R0,R9,LSL#1]
19EFAC:  STRH            R2, [R0]
19EFAE:  ADD.W           R0, R0, #2
19EFB2:  BNE             loc_19EF7C
19EFB4:  LDR             R0, [SP,#0x50+var_40]
19EFB6:  LDR.W           R10, [SP,#0x50+var_48]
19EFBA:  CMP             R0, #1
19EFBC:  BLT.W           loc_19F12A
19EFC0:  LDR             R1, [SP,#0x50+var_4C]
19EFC2:  LDR             R0, [SP,#0x50+var_20]
19EFC4:  ADD.W           R0, R0, R1,LSL#1
19EFC8:  LDRSH.W         R3, [R0]
19EFCC:  CMP             R1, #0
19EFCE:  LDRSH.W         R2, [R0,R9,LSL#1]
19EFD2:  SMULBB.W        R4, R11, R3
19EFD6:  SMULBB.W        R3, R3, R8
19EFDA:  SMLABB.W        R4, R2, R8, R4
19EFDE:  SMLABB.W        R2, R6, R2, R3
19EFE2:  ADD.W           R3, R4, #0x4000
19EFE6:  ADD.W           R2, R2, #0x4000
19EFEA:  MOV.W           R3, R3,LSR#15
19EFEE:  MOV.W           R2, R2,LSR#15
19EFF2:  STRH.W          R3, [R0,R9,LSL#1]
19EFF6:  STRH            R2, [R0]
19EFF8:  SUB.W           R2, R1, #1
19EFFC:  SUB.W           R0, R0, #2
19F000:  MOV             R1, R2
19F002:  BGT             loc_19EFC8
19F004:  B               loc_19F12A
19F006:  CMP.W           R9, #0
19F00A:  BEQ             loc_19F098
19F00C:  LDR             R6, [SP,#0x50+var_3C]
19F00E:  CMP             R6, #1
19F010:  BLT             loc_19F04E
19F012:  LDR             R0, [SP,#0x50+var_20]
19F014:  MOVS            R1, #0
19F016:  LDRSH.W         R3, [R0]
19F01A:  ADDS            R1, #1
19F01C:  LDRSH.W         R2, [R0,R9,LSL#1]
19F020:  CMP             R1, R6
19F022:  SMULBB.W        R4, R3, R5
19F026:  SMULBB.W        R3, R3, R8
19F02A:  SMLABB.W        R4, R2, R8, R4
19F02E:  SMLABB.W        R2, R11, R2, R3
19F032:  ADD.W           R3, R4, #0x4000
19F036:  ADD.W           R2, R2, #0x4000
19F03A:  MOV.W           R3, R3,LSR#15
19F03E:  MOV.W           R2, R2,LSR#15
19F042:  STRH.W          R3, [R0,R9,LSL#1]
19F046:  STRH            R2, [R0]
19F048:  ADD.W           R0, R0, #2
19F04C:  BNE             loc_19F016
19F04E:  LDR             R0, [SP,#0x50+var_40]
19F050:  CMP             R0, #1
19F052:  BLT             loc_19F098
19F054:  LDR             R0, [SP,#0x50+var_4C]
19F056:  LDR             R1, [SP,#0x50+var_20]
19F058:  ADD.W           R1, R1, R0,LSL#1
19F05C:  LDRSH.W         R3, [R1]
19F060:  CMP             R0, #0
19F062:  LDRSH.W         R2, [R1,R9,LSL#1]
19F066:  SMULBB.W        R4, R3, R5
19F06A:  SMULBB.W        R3, R3, R8
19F06E:  SMLABB.W        R4, R2, R8, R4
19F072:  SMLABB.W        R2, R11, R2, R3
19F076:  ADD.W           R3, R4, #0x4000
19F07A:  ADD.W           R2, R2, #0x4000
19F07E:  MOV.W           R3, R3,LSR#15
19F082:  MOV.W           R2, R2,LSR#15
19F086:  STRH.W          R3, [R1,R9,LSL#1]
19F08A:  STRH            R2, [R1]
19F08C:  SUB.W           R2, R0, #1
19F090:  SUB.W           R1, R1, #2
19F094:  MOV             R0, R2
19F096:  BGT             loc_19F05C
19F098:  LDR             R0, [SP,#0x50+var_24]
19F09A:  MOV             R6, R10
19F09C:  CMP             R0, #2
19F09E:  BLT             loc_19F0E0
19F0A0:  LDR             R0, [SP,#0x50+var_20]
19F0A2:  MOV.W           R10, #0
19F0A6:  MOV             R1, R0
19F0A8:  LDRH            R0, [R1]
19F0AA:  MOV             R2, R1
19F0AC:  LDRSH.W         R3, [R1,#2]!
19F0B0:  SXTH            R0, R0
19F0B2:  SMULBB.W        R4, R0, R5
19F0B6:  ADD.W           R10, R10, #1
19F0BA:  SMULBB.W        R0, R0, R8
19F0BE:  CMP             R10, R6
19F0C0:  SMLABB.W        R4, R12, R3, R4
19F0C4:  SMLABB.W        R0, R3, R5, R0
19F0C8:  ADD.W           R3, R4, #0x4000
19F0CC:  ADD.W           R0, R0, #0x4000
19F0D0:  MOV.W           R3, R3,LSR#15
19F0D4:  STRH            R3, [R2]
19F0D6:  MOV.W           R0, R0,LSR#15
19F0DA:  MOV             R2, R1
19F0DC:  STRH            R0, [R1]
19F0DE:  BNE             loc_19F0AC
19F0E0:  LDR             R0, [SP,#0x50+var_24]
19F0E2:  MOV             R10, R6
19F0E4:  CMP             R0, #3
19F0E6:  BLT             loc_19F12A
19F0E8:  LDR             R1, [SP,#0x50+var_44]
19F0EA:  LDR             R0, [SP,#0x50+var_20]
19F0EC:  ADD.W           R0, R0, R1,LSL#1
19F0F0:  LDRSH.W         R2, [R0]
19F0F4:  CMP             R1, #0
19F0F6:  LDRSH.W         R3, [R0,#2]
19F0FA:  SMULBB.W        R4, R2, R8
19F0FE:  SMULBB.W        R2, R2, R5
19F102:  SMLABB.W        R2, R12, R3, R2
19F106:  SMLABB.W        R4, R3, R5, R4
19F10A:  ADD.W           R2, R2, #0x4000
19F10E:  ADD.W           R3, R4, #0x4000
19F112:  MOV.W           R2, R2,LSR#15
19F116:  MOV.W           R3, R3,LSR#15
19F11A:  STRH            R3, [R0,#2]
19F11C:  STRH            R2, [R0]
19F11E:  SUB.W           R2, R1, #1
19F122:  SUB.W           R0, R0, #2
19F126:  MOV             R1, R2
19F128:  BGT             loc_19F0F0
19F12A:  LDR             R2, [SP,#0x50+var_28]
19F12C:  LDR             R4, [SP,#0x50+var_34]
19F12E:  LDR             R3, [SP,#0x50+var_24]
19F130:  ADDS            R2, #1
19F132:  CMP             R2, R4
19F134:  BNE.W           loc_19EEC6
19F138:  ADD             SP, SP, #0x34 ; '4'
19F13A:  POP.W           {R8-R11}
19F13E:  POP             {R4-R7,PC}
