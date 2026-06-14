; =========================================================
; Game Engine Function: sub_6351C
; Address            : 0x6351C - 0x63578
; =========================================================

6351C:  PUSH            {R4,R6,R7,LR}
6351E:  ADD             R7, SP, #8
63520:  LDR             R0, =(off_114AB0 - 0x63526)
63522:  ADD             R0, PC; off_114AB0
63524:  LDR             R0, [R0]; dword_1A4408
63526:  LDR             R1, [R0]
63528:  MOV             R0, #0x23DEF4
63530:  LDR             R0, [R1,R0]
63532:  LDR.W           R0, [R0,#0x3B0]
63536:  LDR             R0, [R0,#0x18]
63538:  CBZ             R0, loc_6354A
6353A:  MOV             R2, #0x14F47D
63542:  ADDS            R3, R1, R2
63544:  MOVS            R1, #0
63546:  MOVS            R2, #0
63548:  BLX             R3
6354A:  BL              sub_6C808
6354E:  CBZ             R0, locret_63576
63550:  LDR             R0, =(off_114B4C - 0x63556)
63552:  ADD             R0, PC; off_114B4C
63554:  LDR             R4, [R0]; dword_1A44CC
63556:  LDR             R0, [R4]
63558:  CBZ             R0, locret_63576
6355A:  LDR             R0, =(off_114B44 - 0x63560)
6355C:  ADD             R0, PC; off_114B44
6355E:  LDR             R0, [R0]; byte_1A4480
63560:  LDRB            R0, [R0]
63562:  CBZ             R0, loc_63572
63564:  LDR             R0, =(off_114B48 - 0x6356C)
63566:  MOVS            R1, #0
63568:  ADD             R0, PC; off_114B48
6356A:  LDR             R0, [R0]; dword_1A41D8
6356C:  LDR             R0, [R0]
6356E:  BL              sub_6937C
63572:  MOVS            R0, #0
63574:  STR             R0, [R4]
63576:  POP             {R4,R6,R7,PC}
