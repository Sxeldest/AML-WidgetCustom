; =========================================================
; Game Engine Function: alSourcefv
; Address            : 0x257364 - 0x2574C8
; =========================================================

257364:  PUSH            {R4-R7,LR}
257366:  ADD             R7, SP, #0xC
257368:  PUSH.W          {R8}
25736C:  MOV             R8, R2
25736E:  MOV             R6, R1
257370:  MOV             R5, R0
257372:  BLX             j_GetContextRef
257376:  MOV             R4, R0
257378:  CMP             R4, #0
25737A:  BEQ.W           loc_2573EE
25737E:  ADD.W           R0, R4, #8
257382:  MOV             R1, R5
257384:  BLX             j_LookupUIntMapKey
257388:  CMP             R0, #0
25738A:  BEQ.W           loc_2573F4
25738E:  CMP.W           R8, #0
257392:  BEQ.W           loc_257428
257396:  CMP.W           R6, #0xC000
25739A:  BGE.W           loc_257470
25739E:  MOVW            R1, #0x1001
2573A2:  SUBS            R1, R6, R1
2573A4:  CMP             R1, #0x32 ; '2'; switch 51 cases
2573A6:  BHI.W           def_2573AA; jumptable 002573AA default case
2573AA:  TBB.W           [PC,R1]; switch jump
2573AE:  DCB 0x1A; jump table for switch statement
2573AF:  DCB 0x1A
2573B0:  DCB 0x1A
2573B1:  DCB 0x1A
2573B2:  DCB 0x1A
2573B3:  DCB 0x1A
2573B4:  DCB 0x1A
2573B5:  DCB 0x71
2573B6:  DCB 0x1A
2573B7:  DCB 0x1A
2573B8:  DCB 0x71
2573B9:  DCB 0x71
2573BA:  DCB 0x1A
2573BB:  DCB 0x1A
2573BC:  DCB 0x71
2573BD:  DCB 0x1A
2573BE:  DCB 0x71
2573BF:  DCB 0x71
2573C0:  DCB 0x71
2573C1:  DCB 0x71
2573C2:  DCB 0x1A
2573C3:  DCB 0x1A
2573C4:  DCB 0x71
2573C5:  DCB 0x71
2573C6:  DCB 0x71
2573C7:  DCB 0x71
2573C8:  DCB 0x71
2573C9:  DCB 0x71
2573CA:  DCB 0x71
2573CB:  DCB 0x71
2573CC:  DCB 0x71
2573CD:  DCB 0x1A
2573CE:  DCB 0x1A
2573CF:  DCB 0x1A
2573D0:  DCB 0x1A
2573D1:  DCB 0x1A
2573D2:  DCB 0x1A
2573D3:  DCB 0x1A
2573D4:  DCB 0x1A
2573D5:  DCB 0x71
2573D6:  DCB 0x71
2573D7:  DCB 0x71
2573D8:  DCB 0x71
2573D9:  DCB 0x71
2573DA:  DCB 0x71
2573DB:  DCB 0x71
2573DC:  DCB 0x71
2573DD:  DCB 0x71
2573DE:  DCB 0x1A
2573DF:  DCB 0x1A
2573E0:  DCB 0x1A
2573E1:  ALIGN 2
2573E2:  MOV             R1, R4; jumptable 002573AA cases 0-6,8,9,12,13,15,20,21,31-38,48-50
2573E4:  MOV             R2, R6
2573E6:  MOV             R3, R8
2573E8:  BL              sub_256840
2573EC:  B               loc_257462
2573EE:  POP.W           {R8}
2573F2:  POP             {R4-R7,PC}
2573F4:  LDR             R0, =(TrapALError_ptr - 0x2573FA)
2573F6:  ADD             R0, PC; TrapALError_ptr
2573F8:  LDR             R0, [R0]; TrapALError
2573FA:  LDRB            R0, [R0]
2573FC:  CMP             R0, #0
2573FE:  ITT NE
257400:  MOVNE           R0, #5; sig
257402:  BLXNE           raise
257406:  LDREX.W         R0, [R4,#0x50]
25740A:  CBNZ            R0, loc_25745A
25740C:  ADD.W           R0, R4, #0x50 ; 'P'
257410:  MOVW            R1, #0xA001
257414:  DMB.W           ISH
257418:  STREX.W         R2, R1, [R0]
25741C:  CBZ             R2, loc_25745E
25741E:  LDREX.W         R2, [R0]
257422:  CMP             R2, #0
257424:  BEQ             loc_257418
257426:  B               loc_25745A
257428:  LDR             R0, =(TrapALError_ptr - 0x25742E)
25742A:  ADD             R0, PC; TrapALError_ptr
25742C:  LDR             R0, [R0]; TrapALError
25742E:  LDRB            R0, [R0]
257430:  CMP             R0, #0
257432:  ITT NE
257434:  MOVNE           R0, #5; sig
257436:  BLXNE           raise
25743A:  LDREX.W         R0, [R4,#0x50]
25743E:  CBNZ            R0, loc_25745A
257440:  ADD.W           R0, R4, #0x50 ; 'P'
257444:  MOVW            R1, #0xA003
257448:  DMB.W           ISH
25744C:  STREX.W         R2, R1, [R0]
257450:  CBZ             R2, loc_25745E
257452:  LDREX.W         R2, [R0]
257456:  CMP             R2, #0
257458:  BEQ             loc_25744C
25745A:  CLREX.W
25745E:  DMB.W           ISH
257462:  MOV             R0, R4
257464:  POP.W           {R8}
257468:  POP.W           {R4-R7,LR}
25746C:  B.W             ALCcontext_DecRef
257470:  SUB.W           R1, R6, #0x20000
257474:  SUBS            R1, #7
257476:  CMP             R1, #6
257478:  BCC             loc_2573E2; jumptable 002573AA cases 0-6,8,9,12,13,15,20,21,31-38,48-50
25747A:  CMP.W           R6, #0xC000
25747E:  IT NE
257480:  CMPNE.W         R6, #0xD000
257484:  BEQ             loc_2573E2; jumptable 002573AA cases 0-6,8,9,12,13,15,20,21,31-38,48-50
257486:  B               loc_257490; jumptable 002573AA cases 7,10,11,14,16-19,22-30,39-47
257488:  MOVW            R1, #0x202; jumptable 002573AA default case
25748C:  CMP             R6, R1
25748E:  BEQ             loc_2573E2; jumptable 002573AA cases 0-6,8,9,12,13,15,20,21,31-38,48-50
257490:  LDR             R0, =(TrapALError_ptr - 0x257496); jumptable 002573AA cases 7,10,11,14,16-19,22-30,39-47
257492:  ADD             R0, PC; TrapALError_ptr
257494:  LDR             R0, [R0]; TrapALError
257496:  LDRB            R0, [R0]
257498:  CMP             R0, #0
25749A:  ITT NE
25749C:  MOVNE           R0, #5; sig
25749E:  BLXNE           raise
2574A2:  LDREX.W         R0, [R4,#0x50]
2574A6:  CMP             R0, #0
2574A8:  BNE             loc_25745A
2574AA:  ADD.W           R0, R4, #0x50 ; 'P'
2574AE:  MOVW            R1, #0xA002
2574B2:  DMB.W           ISH
2574B6:  STREX.W         R2, R1, [R0]
2574BA:  CMP             R2, #0
2574BC:  BEQ             loc_25745E
2574BE:  LDREX.W         R2, [R0]
2574C2:  CMP             R2, #0
2574C4:  BEQ             loc_2574B6
2574C6:  B               loc_25745A
