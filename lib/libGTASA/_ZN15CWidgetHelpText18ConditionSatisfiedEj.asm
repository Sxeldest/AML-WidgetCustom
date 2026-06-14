; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText18ConditionSatisfiedEj
; Address            : 0x2B83A4 - 0x2B8480
; =========================================================

2B83A4:  LDR             R1, =(_ZN15CWidgetHelpText11m_pInstanceE_ptr - 0x2B83AA)
2B83A6:  ADD             R1, PC; _ZN15CWidgetHelpText11m_pInstanceE_ptr
2B83A8:  LDR             R1, [R1]; CWidgetHelpText::m_pInstance ...
2B83AA:  LDR             R1, [R1]; CWidgetHelpText::m_pInstance
2B83AC:  CMP             R1, #0
2B83AE:  BEQ             locret_2B847E
2B83B0:  LDR.W           R2, [R1,#0x3E8]
2B83B4:  CMP             R2, R0
2B83B6:  ITTT EQ
2B83B8:  MOVEQ           R2, #0
2B83BA:  MOVTEQ          R2, #0x40A0
2B83BE:  STREQ.W         R2, [R1,#0x3D8]
2B83C2:  LDR.W           R2, [R1,#0x71C]
2B83C6:  CMP             R2, R0
2B83C8:  ITTT EQ
2B83CA:  MOVEQ           R2, #0
2B83CC:  MOVTEQ          R2, #0x40A0
2B83D0:  STREQ.W         R2, [R1,#0x70C]
2B83D4:  LDR.W           R2, [R1,#0xA50]
2B83D8:  CMP             R2, R0
2B83DA:  ITTT EQ
2B83DC:  MOVEQ           R2, #0
2B83DE:  MOVTEQ          R2, #0x40A0
2B83E2:  STREQ.W         R2, [R1,#0xA40]
2B83E6:  LDR.W           R2, [R1,#0xD84]
2B83EA:  CMP             R2, R0
2B83EC:  ITTT EQ
2B83EE:  MOVEQ           R2, #0
2B83F0:  MOVTEQ          R2, #0x40A0
2B83F4:  STREQ.W         R2, [R1,#0xD74]
2B83F8:  MOVW            R2, #0x10B8
2B83FC:  LDR             R2, [R1,R2]
2B83FE:  CMP             R2, R0
2B8400:  BNE             loc_2B840E
2B8402:  MOVS            R3, #0
2B8404:  MOVW            R2, #0x10A8
2B8408:  MOVT            R3, #0x40A0
2B840C:  STR             R3, [R1,R2]
2B840E:  MOVW            R2, #0x13EC
2B8412:  LDR             R2, [R1,R2]
2B8414:  CMP             R2, R0
2B8416:  BNE             loc_2B8424
2B8418:  MOVS            R3, #0
2B841A:  MOVW            R2, #0x13DC
2B841E:  MOVT            R3, #0x40A0
2B8422:  STR             R3, [R1,R2]
2B8424:  MOV.W           R2, #0x1720
2B8428:  LDR             R2, [R1,R2]
2B842A:  CMP             R2, R0
2B842C:  BNE             loc_2B843A
2B842E:  MOVS            R3, #0
2B8430:  MOVW            R2, #0x1710
2B8434:  MOVT            R3, #0x40A0
2B8438:  STR             R3, [R1,R2]
2B843A:  MOVW            R2, #0x1A54
2B843E:  LDR             R2, [R1,R2]
2B8440:  CMP             R2, R0
2B8442:  BNE             loc_2B8450
2B8444:  MOVS            R3, #0
2B8446:  MOVW            R2, #0x1A44
2B844A:  MOVT            R3, #0x40A0
2B844E:  STR             R3, [R1,R2]
2B8450:  MOVW            R2, #0x1D88
2B8454:  LDR             R2, [R1,R2]
2B8456:  CMP             R2, R0
2B8458:  BNE             loc_2B8466
2B845A:  MOVS            R3, #0
2B845C:  MOVW            R2, #0x1D78
2B8460:  MOVT            R3, #0x40A0
2B8464:  STR             R3, [R1,R2]
2B8466:  MOVW            R2, #0x20BC
2B846A:  LDR             R2, [R1,R2]
2B846C:  CMP             R2, R0
2B846E:  IT NE
2B8470:  BXNE            LR
2B8472:  MOVS            R2, #0
2B8474:  MOVW            R0, #0x20AC
2B8478:  MOVT            R2, #0x40A0
2B847C:  STR             R2, [R1,R0]
2B847E:  BX              LR
