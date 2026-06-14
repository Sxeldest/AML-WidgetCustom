; =========================================================
; Game Engine Function: opus_decode_native
; Address            : 0x18EE74 - 0x18F178
; =========================================================

18EE74:  PUSH            {R4-R7,LR}
18EE76:  ADD             R7, SP, #0xC
18EE78:  PUSH.W          {R8-R11}
18EE7C:  SUB             SP, SP, #0x94
18EE7E:  MOV             R8, R0
18EE80:  LDR             R0, =(__stack_chk_guard_ptr - 0x18EE8C)
18EE82:  LDR.W           R10, [R7,#arg_4]
18EE86:  MOV             R11, R3
18EE88:  ADD             R0, PC; __stack_chk_guard_ptr
18EE8A:  MOV             R5, R2
18EE8C:  MOV             R6, R1
18EE8E:  CMP.W           R10, #1
18EE92:  LDR             R0, [R0]; __stack_chk_guard
18EE94:  LDR             R0, [R0]
18EE96:  STR             R0, [SP,#0xB0+var_20]
18EE98:  BHI.W           loc_18EFE2
18EE9C:  LDR.W           R9, [R7,#arg_0]
18EEA0:  CMP             R6, #0
18EEA2:  IT NE
18EEA4:  CMPNE           R5, #0
18EEA6:  BEQ             loc_18EEAE
18EEA8:  CMP.W           R10, #0
18EEAC:  BEQ             loc_18EED0
18EEAE:  LDR.W           R0, [R8,#0xC]
18EEB2:  MOV             R1, #0x51EB851F
18EEBA:  SMMUL.W         R0, R0, R1
18EEBE:  ASRS            R1, R0, #7
18EEC0:  ADD.W           R1, R1, R0,LSR#31
18EEC4:  MOV             R0, R9
18EEC6:  BLX             sub_2211C4
18EECA:  CMP             R1, #0
18EECC:  BNE.W           loc_18EFE2
18EED0:  CMP             R6, #0
18EED2:  IT NE
18EED4:  CMPNE           R5, #0
18EED6:  BNE             loc_18EF0E
18EED8:  MOVS            R4, #0
18EEDA:  MOVS            R5, #0
18EEDC:  LDR.W           R0, [R8,#8]
18EEE0:  SUB.W           R1, R9, R5
18EEE4:  STRD.W          R1, R4, [SP,#0xB0+var_B0]
18EEE8:  MOVS            R1, #0
18EEEA:  MOVS            R2, #0
18EEEC:  MULS            R0, R5
18EEEE:  ADD.W           R3, R11, R0,LSL#1
18EEF2:  MOV             R0, R8
18EEF4:  BL              sub_18F180
18EEF8:  MOV             R6, R0
18EEFA:  CMP             R6, #0
18EEFC:  IT GE
18EEFE:  ADDGE           R5, R5, R6
18EF00:  BLT             loc_18EFE6
18EF02:  CMP             R5, R9
18EF04:  BLT             loc_18EEDC
18EF06:  STR.W           R5, [R8,#0x48]
18EF0A:  MOV             R6, R5
18EF0C:  B               loc_18EFE6
18EF0E:  BLT             loc_18EFE2
18EF10:  LDRB            R0, [R6]
18EF12:  TST.W           R0, #0x80
18EF16:  BNE             loc_18EF3A
18EF18:  AND.W           R1, R0, #0x60 ; '`'
18EF1C:  MOV.W           R2, #0x3E8
18EF20:  CMP             R1, #0x60 ; '`'
18EF22:  IT EQ
18EF24:  MOVWEQ          R2, #0x3E9
18EF28:  STR             R2, [SP,#0xB0+var_90]
18EF2A:  BNE             loc_18EF54
18EF2C:  LSRS            R1, R0, #4
18EF2E:  MOV.W           R0, #0x228
18EF32:  BFI.W           R1, R0, #1, #0x1F
18EF36:  STR             R1, [SP,#0xB0+var_98]
18EF38:  B               loc_18EF5E
18EF3A:  UBFX.W          R0, R0, #5, #2
18EF3E:  ADDW            R1, R0, #0x44E
18EF42:  CMP             R0, #0
18EF44:  IT EQ
18EF46:  MOVWEQ          R1, #0x44D
18EF4A:  MOVW            R0, #0x3EA
18EF4E:  STR             R1, [SP,#0xB0+var_98]
18EF50:  STR             R0, [SP,#0xB0+var_90]
18EF52:  B               loc_18EF5E
18EF54:  UBFX.W          R0, R0, #5, #2
18EF58:  ADDW            R0, R0, #0x44D
18EF5C:  STR             R0, [SP,#0xB0+var_98]
18EF5E:  LDR.W           R1, [R8,#0xC]
18EF62:  MOV             R0, R6
18EF64:  BLX             j_opus_packet_get_samples_per_frame
18EF68:  ADD             R2, SP, #0xB0+var_80
18EF6A:  STR             R0, [SP,#0xB0+var_8C]
18EF6C:  MOVS            R1, #0
18EF6E:  LDRB            R4, [R6]
18EF70:  STRD.W          R1, R2, [SP,#0xB0+var_B0]
18EF74:  ADD             R0, SP, #0xB0+var_84
18EF76:  LDR             R2, [R7,#arg_8]
18EF78:  SUB.W           R3, R7, #-var_85
18EF7C:  STR             R0, [SP,#0xB0+var_A8]
18EF7E:  MOV             R1, R5
18EF80:  LDR             R0, [R7,#arg_C]
18EF82:  STR             R0, [SP,#0xB0+var_A4]
18EF84:  MOV             R0, R6
18EF86:  BLX             j_opus_packet_parse_impl
18EF8A:  MOV             R3, R0
18EF8C:  CMP             R3, #0
18EF8E:  BLT             loc_18F002
18EF90:  AND.W           R0, R4, #4
18EF94:  MOVS            R1, #1
18EF96:  CMP.W           R10, #0
18EF9A:  ADD.W           R2, R1, R0,LSR#2
18EF9E:  LDR             R0, [SP,#0xB0+var_84]
18EFA0:  ADD.W           R12, R6, R0
18EFA4:  BEQ             loc_18F006
18EFA6:  LDR             R1, [SP,#0xB0+var_90]
18EFA8:  MOVW            R0, #0x3EA
18EFAC:  LDR             R3, [SP,#0xB0+var_8C]
18EFAE:  CMP             R1, R0
18EFB0:  BEQ             loc_18EFC2
18EFB2:  CMP             R3, R9
18EFB4:  BGT             loc_18EFC2
18EFB6:  LDR.W           R0, [R8,#0x38]
18EFBA:  MOVW            R1, #0x3EA
18EFBE:  CMP             R0, R1
18EFC0:  BNE             loc_18F0A8
18EFC2:  LDR.W           R0, [R8,#0xC]
18EFC6:  MOV             R1, #0x51EB851F
18EFCE:  SMMUL.W         R0, R0, R1
18EFD2:  ASRS            R1, R0, #7
18EFD4:  ADD.W           R1, R1, R0,LSR#31
18EFD8:  MOV             R0, R9
18EFDA:  BLX             sub_2211C4
18EFDE:  CMP             R1, #0
18EFE0:  BEQ             loc_18F078
18EFE2:  MOV.W           R6, #0xFFFFFFFF
18EFE6:  LDR             R0, =(__stack_chk_guard_ptr - 0x18EFEE)
18EFE8:  LDR             R1, [SP,#0xB0+var_20]
18EFEA:  ADD             R0, PC; __stack_chk_guard_ptr
18EFEC:  LDR             R0, [R0]; __stack_chk_guard
18EFEE:  LDR             R0, [R0]
18EFF0:  SUBS            R0, R0, R1
18EFF2:  ITTTT EQ
18EFF4:  MOVEQ           R0, R6
18EFF6:  ADDEQ           SP, SP, #0x94
18EFF8:  POPEQ.W         {R8-R11}
18EFFC:  POPEQ           {R4-R7,PC}
18EFFE:  BLX             __stack_chk_fail
18F002:  MOV             R6, R3
18F004:  B               loc_18EFE6
18F006:  LDR             R1, [SP,#0xB0+var_8C]
18F008:  MUL.W           R0, R3, R1
18F00C:  CMP             R0, R9
18F00E:  BLE             loc_18F016
18F010:  MOV             R6, #0xFFFFFFFE
18F014:  B               loc_18EFE6
18F016:  STR.W           R1, [R8,#0x40]
18F01A:  CMP             R3, #1
18F01C:  STR.W           R2, [R8,#0x30]
18F020:  LDR             R0, [SP,#0xB0+var_98]
18F022:  STR.W           R0, [R8,#0x34]
18F026:  LDR             R0, [SP,#0xB0+var_90]
18F028:  STR.W           R0, [R8,#0x38]
18F02C:  BLT             loc_18F0E0
18F02E:  ADD             R5, SP, #0xB0+var_80
18F030:  MOV.W           R10, #0
18F034:  MOVS            R6, #0
18F036:  STR             R3, [SP,#0xB0+var_94]
18F038:  LDR.W           R0, [R8,#8]
18F03C:  SUB.W           R1, R9, R6
18F040:  LDRSH.W         R2, [R5,R10,LSL#1]
18F044:  MOV             R4, R9
18F046:  STR             R1, [SP,#0xB0+var_B0]
18F048:  MULS            R0, R6
18F04A:  MOVS            R1, #0
18F04C:  STR             R1, [SP,#0xB0+var_AC]
18F04E:  MOV             R1, R12
18F050:  MOV             R9, R12
18F052:  ADD.W           R3, R11, R0,LSL#1
18F056:  MOV             R0, R8
18F058:  BL              sub_18F180
18F05C:  CMP             R0, #0
18F05E:  BLT             loc_18F0E8
18F060:  LDRSH.W         R1, [R5,R10,LSL#1]
18F064:  ADD             R6, R0
18F066:  LDR             R3, [SP,#0xB0+var_94]
18F068:  ADD.W           R10, R10, #1
18F06C:  ADD             R9, R1
18F06E:  CMP             R10, R3
18F070:  MOV             R12, R9
18F072:  MOV             R9, R4
18F074:  BLT             loc_18F038
18F076:  B               loc_18F0E2
18F078:  MOVS            R4, #0
18F07A:  MOVS            R5, #0
18F07C:  LDR.W           R0, [R8,#8]
18F080:  SUB.W           R1, R9, R5
18F084:  STRD.W          R1, R4, [SP,#0xB0+var_B0]
18F088:  MOVS            R1, #0
18F08A:  MOVS            R2, #0
18F08C:  MULS            R0, R5
18F08E:  ADD.W           R3, R11, R0,LSL#1
18F092:  MOV             R0, R8
18F094:  BL              sub_18F180
18F098:  MOV             R6, R0
18F09A:  CMP             R6, #0
18F09C:  IT GE
18F09E:  ADDGE           R5, R5, R6
18F0A0:  BLT             loc_18EFE6
18F0A2:  CMP             R5, R9
18F0A4:  BLT             loc_18F07C
18F0A6:  B               loc_18EF06
18F0A8:  SUBS.W          R5, R9, R3
18F0AC:  BEQ             loc_18F134
18F0AE:  STR.W           R12, [SP,#0xB0+var_9C]
18F0B2:  MOVW            R1, #0x851F
18F0B6:  STR             R2, [SP,#0xB0+var_94]
18F0B8:  MOVT            R1, #0x51EB
18F0BC:  LDR.W           R0, [R8,#0xC]
18F0C0:  LDR.W           R4, [R8,#0x48]
18F0C4:  SMMUL.W         R0, R0, R1
18F0C8:  ASRS            R1, R0, #7
18F0CA:  ADD.W           R1, R1, R0,LSR#31
18F0CE:  MOV             R0, R5
18F0D0:  BLX             sub_2211C4
18F0D4:  CBZ             R1, loc_18F0EC
18F0D6:  MOV.W           R6, #0xFFFFFFFF
18F0DA:  STR.W           R4, [R8,#0x48]
18F0DE:  B               loc_18EFE6
18F0E0:  MOVS            R6, #0
18F0E2:  STR.W           R6, [R8,#0x48]
18F0E6:  B               loc_18EFE6
18F0E8:  MOV             R6, R0
18F0EA:  B               loc_18EFE6
18F0EC:  STR             R4, [SP,#0xB0+var_A0]
18F0EE:  MOVS            R4, #0
18F0F0:  MOV.W           R10, #0
18F0F4:  LDR.W           R0, [R8,#8]
18F0F8:  SUB.W           R1, R5, R10
18F0FC:  STRD.W          R1, R4, [SP,#0xB0+var_B0]
18F100:  MOVS            R1, #0
18F102:  MOVS            R2, #0
18F104:  MUL.W           R0, R0, R10
18F108:  ADD.W           R3, R11, R0,LSL#1
18F10C:  MOV             R0, R8
18F10E:  BL              sub_18F180
18F112:  MOV             R6, R0
18F114:  CMP             R6, #0
18F116:  IT GE
18F118:  ADDGE           R10, R6
18F11A:  BLT             loc_18F126
18F11C:  CMP             R10, R5
18F11E:  BLT             loc_18F0F4
18F120:  MOV             R6, R10
18F122:  STR.W           R10, [R8,#0x48]
18F126:  LDR             R3, [SP,#0xB0+var_8C]
18F128:  CMP.W           R6, #0xFFFFFFFF
18F12C:  LDR             R2, [SP,#0xB0+var_94]
18F12E:  LDRD.W          R4, R12, [SP,#0xB0+var_A0]
18F132:  BLE             loc_18F172
18F134:  LDR.W           R0, [R8,#8]
18F138:  STR.W           R3, [R8,#0x40]
18F13C:  STR.W           R2, [R8,#0x30]
18F140:  MULS            R0, R5
18F142:  LDR             R1, [SP,#0xB0+var_98]
18F144:  STR.W           R1, [R8,#0x34]
18F148:  LDR             R1, [SP,#0xB0+var_90]
18F14A:  STR.W           R1, [R8,#0x38]
18F14E:  MOVS            R1, #1
18F150:  LDRSH.W         R2, [SP,#0xB0+var_80]
18F154:  STRD.W          R3, R1, [SP,#0xB0+var_B0]
18F158:  MOV             R1, R12
18F15A:  ADD.W           R3, R11, R0,LSL#1
18F15E:  MOV             R0, R8
18F160:  BL              sub_18F180
18F164:  MOV             R6, R0
18F166:  CMP             R6, #0
18F168:  ITT GE
18F16A:  STRGE.W         R9, [R8,#0x48]
18F16E:  MOVGE           R6, R9
18F170:  B               loc_18EFE6
18F172:  STR.W           R4, [R8,#0x48]
18F176:  B               loc_18EFE6
