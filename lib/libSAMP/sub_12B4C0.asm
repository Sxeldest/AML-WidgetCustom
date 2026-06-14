; =========================================================
; Game Engine Function: sub_12B4C0
; Address            : 0x12B4C0 - 0x12B598
; =========================================================

12B4C0:  PUSH            {R4-R7,LR}
12B4C2:  ADD             R7, SP, #0xC
12B4C4:  PUSH.W          {R8,R9,R11}
12B4C8:  SUB             SP, SP, #0x28
12B4CA:  MOV             R8, R0
12B4CC:  BL              sub_167F4C
12B4D0:  MOV             R9, R0
12B4D2:  LDR.W           R0, [R0,#0x8C]
12B4D6:  ADD             R1, SP, #0x40+var_28
12B4D8:  STR             R1, [SP,#0x40+var_40]
12B4DA:  ADD             R1, SP, #0x40+var_1C
12B4DC:  ADD             R2, SP, #0x40+var_20
12B4DE:  ADD             R3, SP, #0x40+var_24
12B4E0:  BL              sub_17513C
12B4E4:  LDR             R0, =(off_234B44 - 0x12B4EC)
12B4E6:  LDR             R2, [SP,#0x40+var_28]
12B4E8:  ADD             R0, PC; off_234B44
12B4EA:  LDR             R0, [R0]; off_26370C
12B4EC:  LSLS            R2, R2, #3
12B4EE:  LDR             R3, [R0]
12B4F0:  LDRD.W          R1, R0, [SP,#0x40+var_24]
12B4F4:  BLX             R3
12B4F6:  MOV             R6, R0
12B4F8:  LDR             R0, =(off_234B4C - 0x12B4FE)
12B4FA:  ADD             R0, PC; off_234B4C
12B4FC:  LDR             R0, [R0]; off_263714
12B4FE:  LDR             R1, [R0]
12B500:  MOV             R0, R6
12B502:  BLX             R1
12B504:  CMP             R6, #0
12B506:  BEQ             loc_12B58C
12B508:  LDR             R0, [R6,#8]
12B50A:  CMP             R0, #1
12B50C:  BLT             loc_12B52C
12B50E:  LDRD.W          R2, R4, [R6,#0x10]; n
12B512:  MOVS            R5, #0
12B514:  LDR             R0, [SP,#0x40+var_1C]
12B516:  MLA.W           R1, R2, R5, R0; src
12B51A:  MOV             R0, R4; dest
12B51C:  BLX             j_memcpy
12B520:  LDR             R2, [R6,#0x10]
12B522:  ADDS            R5, #1
12B524:  LDR             R0, [R6,#8]
12B526:  ADD             R4, R2
12B528:  CMP             R5, R0
12B52A:  BLT             loc_12B514
12B52C:  LDR             R0, =(off_234B54 - 0x12B538)
12B52E:  ADD             R1, SP, #0x40+var_34
12B530:  ADD             R2, SP, #0x40+var_2C
12B532:  ADD             R3, SP, #0x40+var_30
12B534:  ADD             R0, PC; off_234B54
12B536:  LDR             R0, [R0]; off_263748
12B538:  LDR             R5, [R0]
12B53A:  ADD             R0, SP, #0x40+var_38
12B53C:  STRD.W          R1, R0, [SP,#0x40+var_40]
12B540:  MOV             R0, R6
12B542:  MOVS            R1, #4
12B544:  BLX             R5
12B546:  LDR             R0, =(off_234AE8 - 0x12B550)
12B548:  LDRD.W          R3, R2, [SP,#0x40+var_38]
12B54C:  ADD             R0, PC; off_234AE8
12B54E:  LDR             R0, [R0]; off_2636C4
12B550:  LDR             R5, [R0]
12B552:  LDRD.W          R1, R0, [SP,#0x40+var_30]
12B556:  BLX             R5
12B558:  MOV             R4, R0
12B55A:  STR.W           R0, [R8,#0x1C]
12B55E:  CBZ             R0, loc_12B584
12B560:  LDR             R0, =(off_234B50 - 0x12B568)
12B562:  MOV             R1, R6
12B564:  ADD             R0, PC; off_234B50
12B566:  LDR             R0, [R0]; off_26373C
12B568:  LDR             R2, [R0]
12B56A:  MOV             R0, R4
12B56C:  BLX             R2
12B56E:  LDR             R1, =(off_234B48 - 0x12B578)
12B570:  LDR.W           R2, [R9,#0x8C]
12B574:  ADD             R1, PC; off_234B48
12B576:  STR.W           R0, [R8,#0x1C]
12B57A:  LDR             R1, [R1]; off_263710
12B57C:  STR             R0, [R2,#8]
12B57E:  MOV             R0, R6
12B580:  LDR             R1, [R1]
12B582:  BLX             R1
12B584:  CMP             R4, #0
12B586:  IT NE
12B588:  MOVNE           R4, #1
12B58A:  B               loc_12B58E
12B58C:  MOVS            R4, #0
12B58E:  MOV             R0, R4
12B590:  ADD             SP, SP, #0x28 ; '('
12B592:  POP.W           {R8,R9,R11}
12B596:  POP             {R4-R7,PC}
