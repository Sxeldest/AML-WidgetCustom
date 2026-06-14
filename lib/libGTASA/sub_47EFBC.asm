; =========================================================
; Game Engine Function: sub_47EFBC
; Address            : 0x47EFBC - 0x47F2FA
; =========================================================

47EFBC:  PUSH            {R4-R7,LR}
47EFBE:  ADD             R7, SP, #0xC
47EFC0:  PUSH.W          {R8-R11}
47EFC4:  SUB             SP, SP, #0x1C
47EFC6:  MOV             R9, R0
47EFC8:  LDR             R0, =(__stack_chk_guard_ptr - 0x47EFCE)
47EFCA:  ADD             R0, PC; __stack_chk_guard_ptr
47EFCC:  LDR             R0, [R0]; __stack_chk_guard
47EFCE:  LDR             R0, [R0]
47EFD0:  STR             R0, [SP,#0x38+var_20]
47EFD2:  LDR.W           R6, [R9,#0x18]
47EFD6:  LDR             R0, [R6,#4]
47EFD8:  CBNZ            R0, loc_47EFE6
47EFDA:  LDR             R1, [R6,#0xC]
47EFDC:  MOV             R0, R9
47EFDE:  BLX             R1
47EFE0:  CMP             R0, #0
47EFE2:  BEQ             loc_47F0DA
47EFE4:  LDR             R0, [R6,#4]
47EFE6:  LDR             R5, [R6]
47EFE8:  SUBS            R0, #1
47EFEA:  LDRB.W          R4, [R5],#1
47EFEE:  BNE             loc_47EFFE
47EFF0:  LDR             R1, [R6,#0xC]
47EFF2:  MOV             R0, R9
47EFF4:  BLX             R1
47EFF6:  CMP             R0, #0
47EFF8:  BEQ             loc_47F0DA
47EFFA:  LDRD.W          R5, R0, [R6]
47EFFE:  LDRB.W          R2, [R5],#1
47F002:  LSLS            R1, R4, #8
47F004:  SUBS            R4, R0, #1
47F006:  ORRS            R1, R2
47F008:  SUBS.W          R11, R1, #2
47F00C:  STR.W           R11, [SP,#0x38+var_34]
47F010:  IT LS
47F012:  MOVLS.W         R11, #0
47F016:  CMP             R1, #0xF
47F018:  STR             R1, [SP,#0x38+var_38]
47F01A:  IT HI
47F01C:  MOVHI.W         R11, #0xE
47F020:  CMP.W           R11, #0
47F024:  BEQ             loc_47F050
47F026:  SUB.W           R8, R7, #-var_2E
47F02A:  MOV.W           R10, #0
47F02E:  CBNZ            R4, loc_47F03E
47F030:  LDR             R1, [R6,#0xC]
47F032:  MOV             R0, R9
47F034:  BLX             R1
47F036:  CMP             R0, #0
47F038:  BEQ             loc_47F0DA
47F03A:  LDRD.W          R5, R4, [R6]
47F03E:  LDRB.W          R0, [R5],#1
47F042:  SUBS            R4, #1
47F044:  STRB.W          R0, [R8,R10]
47F048:  ADD.W           R10, R10, #1
47F04C:  CMP             R10, R11
47F04E:  BCC             loc_47F02E
47F050:  LDR             R3, [SP,#0x38+var_34]
47F052:  LDR.W           R0, [R9,#0x17C]
47F056:  SUB.W           R8, R3, R11
47F05A:  CMP             R0, #0xEE
47F05C:  BEQ             loc_47F0DE
47F05E:  CMP             R0, #0xE0
47F060:  BNE             loc_47F114
47F062:  CMP.W           R11, #0xE
47F066:  BCC             loc_47F132
47F068:  LDRB.W          R0, [R7,#var_2E]
47F06C:  CMP             R0, #0x4A ; 'J'
47F06E:  ITT EQ
47F070:  LDRBEQ.W        R0, [R7,#var_2D]
47F074:  CMPEQ           R0, #0x46 ; 'F'
47F076:  BNE             loc_47F160
47F078:  LDRB.W          R0, [R7,#var_2C]
47F07C:  CMP             R0, #0x49 ; 'I'
47F07E:  BNE             loc_47F148
47F080:  LDRB.W          R0, [R7,#var_2B]
47F084:  CMP             R0, #0x46 ; 'F'
47F086:  ITT EQ
47F088:  LDRBEQ.W        R0, [R7,#var_2A]
47F08C:  CMPEQ           R0, #0
47F08E:  BNE             loc_47F148
47F090:  MOVS            R0, #1
47F092:  MOV             R11, R8
47F094:  STRB.W          R0, [R9,#0x100]
47F098:  LDRB.W          R0, [R7,#var_29]
47F09C:  STRB.W          R0, [R9,#0x101]
47F0A0:  LDRB.W          R1, [R7,#var_28]
47F0A4:  CMP             R0, #1
47F0A6:  STRB.W          R1, [R9,#0x102]
47F0AA:  LDRB.W          R1, [R7,#var_27]
47F0AE:  STRB.W          R1, [R9,#0x103]
47F0B2:  LDRB.W          R1, [R7,#var_26]
47F0B6:  LDRB.W          R2, [R7,#var_25]
47F0BA:  ORR.W           R1, R2, R1,LSL#8
47F0BE:  STRH.W          R1, [R9,#0x104]
47F0C2:  LDRB.W          R1, [R7,#var_24]
47F0C6:  LDRB.W          R2, [R7,#var_23]
47F0CA:  ORR.W           R1, R2, R1,LSL#8
47F0CE:  STRH.W          R1, [R9,#0x106]
47F0D2:  BNE.W           loc_47F21E
47F0D6:  MOVS            R0, #1
47F0D8:  B               loc_47F24C
47F0DA:  MOVS            R0, #0
47F0DC:  B               loc_47F192
47F0DE:  CMP.W           R11, #0xC
47F0E2:  BCC             loc_47F10C
47F0E4:  LDRB.W          R0, [R7,#var_2E]
47F0E8:  CMP             R0, #0x41 ; 'A'
47F0EA:  BNE             loc_47F10C
47F0EC:  LDRB.W          R0, [R7,#var_2D]
47F0F0:  CMP             R0, #0x64 ; 'd'
47F0F2:  ITT EQ
47F0F4:  LDRBEQ.W        R0, [R7,#var_2C]
47F0F8:  CMPEQ           R0, #0x6F ; 'o'
47F0FA:  BNE             loc_47F10C
47F0FC:  LDRB.W          R0, [R7,#var_2B]
47F100:  CMP             R0, #0x62 ; 'b'
47F102:  ITT EQ
47F104:  LDRBEQ.W        R0, [R7,#var_2A]
47F108:  CMPEQ           R0, #0x65 ; 'e'
47F10A:  BEQ             loc_47F1AC
47F10C:  LDR.W           R0, [R9]
47F110:  MOVS            R1, #0x4E ; 'N'
47F112:  B               loc_47F166
47F114:  LDR.W           R0, [R9]
47F118:  MOVS            R1, #0x44 ; 'D'
47F11A:  STR             R1, [R0,#0x14]
47F11C:  LDR.W           R0, [R9]
47F120:  LDR.W           R1, [R9,#0x17C]
47F124:  STR             R1, [R0,#0x18]
47F126:  LDR.W           R0, [R9]
47F12A:  LDR             R1, [R0]
47F12C:  MOV             R0, R9
47F12E:  BLX             R1
47F130:  B               loc_47F17A
47F132:  CMP.W           R11, #6
47F136:  BCC             loc_47F160
47F138:  LDRB.W          R0, [R7,#var_2E]
47F13C:  CMP             R0, #0x4A ; 'J'
47F13E:  ITT EQ
47F140:  LDRBEQ.W        R0, [R7,#var_2D]
47F144:  CMPEQ           R0, #0x46 ; 'F'
47F146:  BNE             loc_47F160
47F148:  LDRB.W          R0, [R7,#var_2C]
47F14C:  CMP             R0, #0x58 ; 'X'
47F14E:  BNE             loc_47F160
47F150:  LDRB.W          R0, [R7,#var_2B]
47F154:  CMP             R0, #0x58 ; 'X'
47F156:  ITT EQ
47F158:  LDRBEQ.W        R0, [R7,#var_2A]
47F15C:  CMPEQ           R0, #0
47F15E:  BEQ             loc_47F206
47F160:  LDR.W           R0, [R9]
47F164:  MOVS            R1, #0x4D ; 'M'
47F166:  STR             R1, [R0,#0x14]
47F168:  LDR.W           R0, [R9]
47F16C:  STR             R3, [R0,#0x18]
47F16E:  LDR.W           R0, [R9]
47F172:  MOVS            R1, #1
47F174:  LDR             R2, [R0,#4]
47F176:  MOV             R0, R9
47F178:  BLX             R2
47F17A:  CMP.W           R8, #1
47F17E:  STRD.W          R5, R4, [R6]
47F182:  BLT             loc_47F190
47F184:  LDR.W           R0, [R9,#0x18]
47F188:  MOV             R1, R8
47F18A:  LDR             R2, [R0,#0x10]
47F18C:  MOV             R0, R9
47F18E:  BLX             R2
47F190:  MOVS            R0, #1
47F192:  LDR             R1, =(__stack_chk_guard_ptr - 0x47F19A)
47F194:  LDR             R2, [SP,#0x38+var_20]
47F196:  ADD             R1, PC; __stack_chk_guard_ptr
47F198:  LDR             R1, [R1]; __stack_chk_guard
47F19A:  LDR             R1, [R1]
47F19C:  SUBS            R1, R1, R2
47F19E:  ITTT EQ
47F1A0:  ADDEQ           SP, SP, #0x1C
47F1A2:  POPEQ.W         {R8-R11}
47F1A6:  POPEQ           {R4-R7,PC}
47F1A8:  BLX             __stack_chk_fail
47F1AC:  LDRB.W          R2, [R7,#var_27]
47F1B0:  MOV             R11, R8
47F1B2:  LDRB.W          R1, [R7,#var_26]
47F1B6:  LDR.W           R0, [R9]
47F1BA:  LDRB.W          LR, [R7,#var_25]
47F1BE:  ORR.W           R1, R1, R2,LSL#8
47F1C2:  LDRB.W          R12, [R7,#var_29]
47F1C6:  LDRB.W          R10, [R7,#var_23]
47F1CA:  LDRB.W          R3, [R7,#var_24]
47F1CE:  LDRB.W          R8, [R7,#var_28]
47F1D2:  ORR.W           R3, R3, LR,LSL#8
47F1D6:  ORR.W           R2, R8, R12,LSL#8
47F1DA:  STRD.W          R2, R1, [R0,#0x18]
47F1DE:  STRD.W          R3, R10, [R0,#0x20]
47F1E2:  MOVS            R1, #0x4C ; 'L'
47F1E4:  LDR.W           R0, [R9]
47F1E8:  MOV.W           R8, #1
47F1EC:  STR             R1, [R0,#0x14]
47F1EE:  MOVS            R1, #1
47F1F0:  LDR.W           R0, [R9]
47F1F4:  LDR             R2, [R0,#4]
47F1F6:  MOV             R0, R9
47F1F8:  BLX             R2
47F1FA:  STRB.W          R10, [R9,#0x109]
47F1FE:  STRB.W          R8, [R9,#0x108]
47F202:  MOV             R8, R11
47F204:  B               loc_47F17A
47F206:  LDRB.W          R0, [R7,#var_29]
47F20A:  CMP             R0, #0x13
47F20C:  BEQ             loc_47F2D4
47F20E:  CMP             R0, #0x11
47F210:  BEQ             loc_47F2DC
47F212:  CMP             R0, #0x10
47F214:  BNE             loc_47F2E4
47F216:  LDR.W           R0, [R9]
47F21A:  MOVS            R1, #0x6C ; 'l'
47F21C:  B               loc_47F166
47F21E:  LDR.W           R0, [R9]
47F222:  MOVS            R1, #0x77 ; 'w'
47F224:  STR             R1, [R0,#0x14]
47F226:  LDR.W           R0, [R9]
47F22A:  LDRB.W          R1, [R9,#0x101]
47F22E:  STR             R1, [R0,#0x18]
47F230:  LDR.W           R0, [R9]
47F234:  LDRB.W          R1, [R9,#0x102]
47F238:  STR             R1, [R0,#0x1C]
47F23A:  MOV.W           R1, #0xFFFFFFFF
47F23E:  LDR.W           R0, [R9]
47F242:  LDR             R2, [R0,#4]
47F244:  MOV             R0, R9
47F246:  BLX             R2
47F248:  LDRB.W          R0, [R9,#0x101]
47F24C:  LDR.W           R1, [R9]
47F250:  STR             R0, [R1,#0x18]
47F252:  LDRB.W          R0, [R9,#0x102]
47F256:  STR             R0, [R1,#0x1C]
47F258:  LDRH.W          R0, [R9,#0x104]
47F25C:  STR             R0, [R1,#0x20]
47F25E:  LDRH.W          R0, [R9,#0x106]
47F262:  STR             R0, [R1,#0x24]
47F264:  LDRB.W          R0, [R9,#0x103]
47F268:  STR             R0, [R1,#0x28]
47F26A:  MOVS            R1, #0x57 ; 'W'
47F26C:  LDR.W           R0, [R9]
47F270:  STR             R1, [R0,#0x14]
47F272:  MOVS            R1, #1
47F274:  LDR.W           R0, [R9]
47F278:  LDR             R2, [R0,#4]
47F27A:  MOV             R0, R9
47F27C:  BLX             R2
47F27E:  LDRB.W          R8, [R7,#var_22]
47F282:  LDRB.W          R10, [R7,#var_21]
47F286:  ORRS.W          R0, R10, R8
47F28A:  BEQ             loc_47F2B0
47F28C:  LDR.W           R0, [R9]
47F290:  MOVS            R1, #0x5A ; 'Z'
47F292:  STR             R1, [R0,#0x14]
47F294:  MOVS            R1, #1
47F296:  LDR.W           R0, [R9]
47F29A:  STR.W           R8, [R0,#0x18]
47F29E:  LDR.W           R0, [R9]
47F2A2:  STR.W           R10, [R0,#0x1C]
47F2A6:  LDR.W           R0, [R9]
47F2AA:  LDR             R2, [R0,#4]
47F2AC:  MOV             R0, R9
47F2AE:  BLX             R2
47F2B0:  SMULBB.W        R0, R10, R8
47F2B4:  MOV             R8, R11
47F2B6:  ADD.W           R1, R0, R0,LSL#1
47F2BA:  LDR             R0, [SP,#0x38+var_38]
47F2BC:  SUBS            R0, #0x10
47F2BE:  CMP             R0, R1
47F2C0:  BEQ.W           loc_47F17A
47F2C4:  LDR.W           R1, [R9]
47F2C8:  MOVS            R2, #0x58 ; 'X'
47F2CA:  STR             R2, [R1,#0x14]
47F2CC:  LDR.W           R1, [R9]
47F2D0:  STR             R0, [R1,#0x18]
47F2D2:  B               loc_47F16E
47F2D4:  LDR.W           R0, [R9]
47F2D8:  MOVS            R1, #0x6E ; 'n'
47F2DA:  B               loc_47F166
47F2DC:  LDR.W           R0, [R9]
47F2E0:  MOVS            R1, #0x6D ; 'm'
47F2E2:  B               loc_47F166
47F2E4:  LDR.W           R1, [R9]
47F2E8:  MOVS            R2, #0x59 ; 'Y'
47F2EA:  STR             R2, [R1,#0x14]
47F2EC:  LDR.W           R1, [R9]
47F2F0:  STR             R0, [R1,#0x18]
47F2F2:  LDR.W           R0, [R9]
47F2F6:  STR             R3, [R0,#0x1C]
47F2F8:  B               loc_47F16E
