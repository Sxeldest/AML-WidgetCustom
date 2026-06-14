; =========================================================
; Game Engine Function: _ZN7CObjectnwEj
; Address            : 0x453320 - 0x453380
; =========================================================

453320:  PUSH            {R7,LR}
453322:  MOV             R7, SP
453324:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x45332E)
453326:  MOV.W           LR, #0
45332A:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
45332C:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
45332E:  LDR             R1, [R0]; CPools::ms_pObjectPool
453330:  LDRD.W          R12, R0, [R1,#8]
453334:  ADDS            R0, #1
453336:  STR             R0, [R1,#0xC]
453338:  CMP             R0, R12
45333A:  BNE             loc_45334C
45333C:  MOVS            R0, #0
45333E:  MOVS.W          R2, LR,LSL#31
453342:  STR             R0, [R1,#0xC]
453344:  IT NE
453346:  POPNE           {R7,PC}
453348:  MOV.W           LR, #1
45334C:  LDR             R2, [R1,#4]
45334E:  LDRSB           R3, [R2,R0]
453350:  CMP.W           R3, #0xFFFFFFFF
453354:  BGT             loc_453334
453356:  AND.W           R3, R3, #0x7F
45335A:  STRB            R3, [R2,R0]
45335C:  LDR             R0, [R1,#4]
45335E:  LDR             R2, [R1,#0xC]
453360:  LDRB            R3, [R0,R2]
453362:  AND.W           R12, R3, #0x80
453366:  ADDS            R3, #1
453368:  AND.W           R3, R3, #0x7F
45336C:  ORR.W           R3, R3, R12
453370:  STRB            R3, [R0,R2]
453372:  MOV.W           R2, #0x1A4
453376:  LDR             R0, [R1]
453378:  LDR             R1, [R1,#0xC]
45337A:  MLA.W           R0, R1, R2, R0
45337E:  POP             {R7,PC}
