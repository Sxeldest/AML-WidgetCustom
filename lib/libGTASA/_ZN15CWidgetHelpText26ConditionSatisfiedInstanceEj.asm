; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText26ConditionSatisfiedInstanceEj
; Address            : 0x2B8484 - 0x2B8554
; =========================================================

2B8484:  LDR.W           R2, [R0,#0x3E8]
2B8488:  CMP             R2, R1
2B848A:  ITTT EQ
2B848C:  MOVEQ           R2, #0
2B848E:  MOVTEQ          R2, #0x40A0
2B8492:  STREQ.W         R2, [R0,#0x3D8]
2B8496:  LDR.W           R2, [R0,#0x71C]
2B849A:  CMP             R2, R1
2B849C:  ITTT EQ
2B849E:  MOVEQ           R2, #0
2B84A0:  MOVTEQ          R2, #0x40A0
2B84A4:  STREQ.W         R2, [R0,#0x70C]
2B84A8:  LDR.W           R2, [R0,#0xA50]
2B84AC:  CMP             R2, R1
2B84AE:  ITTT EQ
2B84B0:  MOVEQ           R2, #0
2B84B2:  MOVTEQ          R2, #0x40A0
2B84B6:  STREQ.W         R2, [R0,#0xA40]
2B84BA:  LDR.W           R2, [R0,#0xD84]
2B84BE:  CMP             R2, R1
2B84C0:  ITTT EQ
2B84C2:  MOVEQ           R2, #0
2B84C4:  MOVTEQ          R2, #0x40A0
2B84C8:  STREQ.W         R2, [R0,#0xD74]
2B84CC:  MOVW            R2, #0x10B8
2B84D0:  LDR             R2, [R0,R2]
2B84D2:  CMP             R2, R1
2B84D4:  BNE             loc_2B84E2
2B84D6:  MOVS            R3, #0
2B84D8:  MOVW            R2, #0x10A8
2B84DC:  MOVT            R3, #0x40A0
2B84E0:  STR             R3, [R0,R2]
2B84E2:  MOVW            R2, #0x13EC
2B84E6:  LDR             R2, [R0,R2]
2B84E8:  CMP             R2, R1
2B84EA:  BNE             loc_2B84F8
2B84EC:  MOVS            R3, #0
2B84EE:  MOVW            R2, #0x13DC
2B84F2:  MOVT            R3, #0x40A0
2B84F6:  STR             R3, [R0,R2]
2B84F8:  MOV.W           R2, #0x1720
2B84FC:  LDR             R2, [R0,R2]
2B84FE:  CMP             R2, R1
2B8500:  BNE             loc_2B850E
2B8502:  MOVS            R3, #0
2B8504:  MOVW            R2, #0x1710
2B8508:  MOVT            R3, #0x40A0
2B850C:  STR             R3, [R0,R2]
2B850E:  MOVW            R2, #0x1A54
2B8512:  LDR             R2, [R0,R2]
2B8514:  CMP             R2, R1
2B8516:  BNE             loc_2B8524
2B8518:  MOVS            R3, #0
2B851A:  MOVW            R2, #0x1A44
2B851E:  MOVT            R3, #0x40A0
2B8522:  STR             R3, [R0,R2]
2B8524:  MOVW            R2, #0x1D88
2B8528:  LDR             R2, [R0,R2]
2B852A:  CMP             R2, R1
2B852C:  BNE             loc_2B853A
2B852E:  MOVS            R3, #0
2B8530:  MOVW            R2, #0x1D78
2B8534:  MOVT            R3, #0x40A0
2B8538:  STR             R3, [R0,R2]
2B853A:  MOVW            R2, #0x20BC
2B853E:  LDR             R2, [R0,R2]
2B8540:  CMP             R2, R1
2B8542:  IT NE
2B8544:  BXNE            LR
2B8546:  MOVS            R2, #0
2B8548:  MOVW            R1, #0x20AC
2B854C:  MOVT            R2, #0x40A0
2B8550:  STR             R2, [R0,R1]
2B8552:  BX              LR
