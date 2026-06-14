; =========================================================
; Game Engine Function: sub_115204
; Address            : 0x115204 - 0x115284
; =========================================================

115204:  PUSH            {R4-R7,LR}
115206:  ADD             R7, SP, #0xC
115208:  PUSH.W          {R8,R9,R11}
11520C:  SUB             SP, SP, #8
11520E:  MOV             R6, R0
115210:  LDRB            R0, [R0,#0xC]
115212:  DMB.W           ISH
115216:  LSLS            R0, R0, #0x1F
115218:  BNE             loc_11527C
11521A:  ADD.W           R8, R6, #4
11521E:  MOV             R9, R2
115220:  MOV             R5, R1
115222:  MOV             R0, R8; this
115224:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
115228:  LDR             R0, [R6,#8]
11522A:  STR             R0, [SP,#0x20+var_1C]
11522C:  DMB.W           ISH
115230:  LDREX.W         R1, [R0]
115234:  ADDS            R1, #1
115236:  STREX.W         R2, R1, [R0]
11523A:  CMP             R2, #0
11523C:  BNE             loc_115230
11523E:  MOV             R0, R8; this
115240:  DMB.W           ISH
115244:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
115248:  LDR             R0, [SP,#0x20+var_1C]
11524A:  LDRD.W          R6, R4, [R0,#4]
11524E:  CMP             R6, R4
115250:  BEQ             loc_115276
115252:  LDR             R0, [R6]
115254:  LDRB            R1, [R0,#8]
115256:  DMB.W           ISH
11525A:  LSLS            R1, R1, #0x1F
11525C:  BEQ             loc_115272
11525E:  LDRB            R1, [R0,#9]
115260:  DMB.W           ISH
115264:  LSLS            R1, R1, #0x1F
115266:  BNE             loc_115272
115268:  LDR             R1, [R0]
11526A:  LDR             R3, [R1,#0x10]
11526C:  MOV             R1, R5
11526E:  MOV             R2, R9
115270:  BLX             R3
115272:  ADDS            R6, #8
115274:  B               loc_11524E
115276:  ADD             R0, SP, #0x20+var_1C
115278:  BL              sub_111E8A
11527C:  ADD             SP, SP, #8
11527E:  POP.W           {R8,R9,R11}
115282:  POP             {R4-R7,PC}
