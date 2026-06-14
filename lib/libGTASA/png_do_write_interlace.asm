; =========================================================
; Game Engine Function: png_do_write_interlace
; Address            : 0x209044 - 0x20921C
; =========================================================

209044:  PUSH            {R4-R7,LR}
209046:  ADD             R7, SP, #0xC
209048:  PUSH.W          {R8-R11}
20904C:  SUB             SP, SP, #0xC
20904E:  MOV             R6, R1
209050:  MOV             R10, R0
209052:  CMP             R2, #5
209054:  BGT.W           loc_209214
209058:  LDRB.W          R0, [R10,#0xB]
20905C:  CMP             R0, #4
20905E:  BEQ             loc_2090CC
209060:  CMP             R0, #2
209062:  BEQ             loc_209132
209064:  CMP             R0, #1
209066:  BNE.W           loc_209198
20906A:  LDR             R1, =(unk_5EF59C - 0x209074)
20906C:  LDR.W           R8, [R10]
209070:  ADD             R1, PC; unk_5EF59C
209072:  LDRB            R4, [R1,R2]
209074:  CMP             R8, R4
209076:  BLS.W           loc_2091E4
20907A:  LDR             R0, =(unk_5EF5A3 - 0x209088)
20907C:  MOVS            R1, #0
20907E:  MOV.W           R12, #7
209082:  MOV             LR, R6
209084:  ADD             R0, PC; unk_5EF5A3
209086:  LDRB.W          R9, [R0,R2]
20908A:  MOV             R0, R4
20908C:  MOVS            R4, #7
20908E:  MOV             R11, R0
209090:  MOV             R5, R0
209092:  LSRS            R0, R5, #3
209094:  CMP             R4, #0
209096:  LDRB            R3, [R6,R0]
209098:  BIC.W           R0, R12, R5
20909C:  LSR.W           R0, R3, R0
2090A0:  AND.W           R0, R0, #1
2090A4:  LSL.W           R0, R0, R4
2090A8:  ORR.W           R1, R1, R0
2090AC:  BEQ             loc_2090B2
2090AE:  SUBS            R4, #1
2090B0:  B               loc_2090BA
2090B2:  STRB.W          R1, [LR],#1
2090B6:  MOVS            R4, #7
2090B8:  MOVS            R1, #0
2090BA:  ADD             R5, R9
2090BC:  CMP             R5, R8
2090BE:  BCC             loc_209092
2090C0:  CMP             R4, #7
2090C2:  MOV             R4, R11
2090C4:  IT NE
2090C6:  STRBNE.W        R1, [LR]
2090CA:  B               loc_2091E4
2090CC:  LDR             R0, =(unk_5EF59C - 0x2090D6)
2090CE:  LDR.W           R11, [R10]
2090D2:  ADD             R0, PC; unk_5EF59C
2090D4:  LDRB            R4, [R0,R2]
2090D6:  CMP             R11, R4
2090D8:  BLS.W           loc_2091E4
2090DC:  LDR             R0, =(unk_5EF5A3 - 0x2090EA)
2090DE:  LSLS            R5, R4, #2
2090E0:  MOV.W           R12, #4
2090E4:  MOVS            R3, #0
2090E6:  ADD             R0, PC; unk_5EF5A3
2090E8:  MOV             LR, R6
2090EA:  STR             R2, [SP,#0x28+var_20]
2090EC:  LDRB.W          R9, [R0,R2]
2090F0:  MOVS            R0, #4
2090F2:  STR             R4, [SP,#0x28+var_24]
2090F4:  MOV.W           R8, R9,LSL#2
2090F8:  LSRS            R2, R4, #1
2090FA:  BIC.W           R1, R12, R5
2090FE:  LDRB            R2, [R6,R2]
209100:  CMP             R0, #0
209102:  LSR.W           R1, R2, R1
209106:  AND.W           R1, R1, #0xF
20910A:  LSL.W           R1, R1, R0
20910E:  ORR.W           R3, R3, R1
209112:  BEQ             loc_209118
209114:  SUBS            R0, #4
209116:  B               loc_209120
209118:  STRB.W          R3, [LR],#1
20911C:  MOVS            R3, #0
20911E:  MOVS            R0, #4
209120:  ADD             R4, R9
209122:  ADD             R5, R8
209124:  CMP             R4, R11
209126:  BCC             loc_2090F8
209128:  CMP             R0, #4
20912A:  IT NE
20912C:  STRBNE.W        R3, [LR]
209130:  B               loc_2091E0
209132:  LDR             R0, =(unk_5EF59C - 0x20913C)
209134:  LDR.W           R11, [R10]
209138:  ADD             R0, PC; unk_5EF59C
20913A:  LDRB            R4, [R0,R2]
20913C:  CMP             R11, R4
20913E:  BLS             loc_2091E4
209140:  LDR             R0, =(unk_5EF5A3 - 0x20914E)
209142:  LSLS            R5, R4, #1
209144:  MOVS            R3, #0
209146:  MOV.W           R12, #6
20914A:  ADD             R0, PC; unk_5EF5A3
20914C:  MOV             LR, R6
20914E:  STR             R2, [SP,#0x28+var_20]
209150:  LDRB.W          R9, [R0,R2]
209154:  MOV             R0, R4
209156:  MOVS            R4, #6
209158:  STR             R0, [SP,#0x28+var_24]
20915A:  MOV.W           R8, R9,LSL#1
20915E:  LSRS            R2, R0, #2
209160:  BIC.W           R1, R12, R5
209164:  LDRB            R2, [R6,R2]
209166:  CMP             R4, #0
209168:  LSR.W           R1, R2, R1
20916C:  AND.W           R1, R1, #3
209170:  LSL.W           R1, R1, R4
209174:  ORR.W           R3, R3, R1
209178:  BEQ             loc_20917E
20917A:  SUBS            R4, #2
20917C:  B               loc_209186
20917E:  STRB.W          R3, [LR],#1
209182:  MOVS            R4, #6
209184:  MOVS            R3, #0
209186:  ADD             R0, R9
209188:  ADD             R5, R8
20918A:  CMP             R0, R11
20918C:  BCC             loc_20915E
20918E:  CMP             R4, #6
209190:  BEQ             loc_2091E0
209192:  STRB.W          R3, [LR]
209196:  B               loc_2091E0
209198:  LDR             R1, =(unk_5EF59C - 0x2091A2)
20919A:  LDR.W           R11, [R10]
20919E:  ADD             R1, PC; unk_5EF59C
2091A0:  LDRB            R4, [R1,R2]
2091A2:  CMP             R11, R4
2091A4:  BLS             loc_2091E4
2091A6:  LSRS            R5, R0, #3
2091A8:  LDR             R0, =(unk_5EF5A3 - 0x2091B4)
2091AA:  STR.W           R10, [SP,#0x28+var_28]
2091AE:  MOV             R9, R4
2091B0:  ADD             R0, PC; unk_5EF5A3
2091B2:  SMLABB.W        R4, R5, R9, R6
2091B6:  STR             R2, [SP,#0x28+var_20]
2091B8:  LDRB.W          R10, [R0,R2]
2091BC:  STR.W           R9, [SP,#0x28+var_24]
2091C0:  SMULBB.W        R8, R5, R10
2091C4:  CMP             R6, R4
2091C6:  BEQ             loc_2091D2
2091C8:  MOV             R0, R6; void *
2091CA:  MOV             R1, R4; void *
2091CC:  MOV             R2, R5; size_t
2091CE:  BLX             memcpy_1
2091D2:  ADD             R9, R10
2091D4:  ADD             R4, R8
2091D6:  ADD             R6, R5
2091D8:  CMP             R9, R11
2091DA:  BCC             loc_2091C4
2091DC:  LDR.W           R10, [SP,#0x28+var_28]
2091E0:  LDRD.W          R4, R2, [SP,#0x28+var_24]
2091E4:  LDR             R0, =(unk_5EF5A3 - 0x2091EE)
2091E6:  LDR.W           R3, [R10]
2091EA:  ADD             R0, PC; unk_5EF5A3
2091EC:  LDRB            R1, [R0,R2]
2091EE:  ADDS            R0, R3, R1
2091F0:  SUBS            R0, #1
2091F2:  SUBS            R0, R0, R4
2091F4:  BLX             __aeabi_uidiv
2091F8:  LDRB.W          R1, [R10,#0xB]
2091FC:  STR.W           R0, [R10]
209200:  CMP             R1, #8
209202:  BCC             loc_20920A
209204:  LSRS            R1, R1, #3
209206:  MULS            R0, R1
209208:  B               loc_209210
20920A:  MULS            R0, R1
20920C:  ADDS            R0, #7
20920E:  LSRS            R0, R0, #3
209210:  STR.W           R0, [R10,#4]
209214:  ADD             SP, SP, #0xC
209216:  POP.W           {R8-R11}
20921A:  POP             {R4-R7,PC}
