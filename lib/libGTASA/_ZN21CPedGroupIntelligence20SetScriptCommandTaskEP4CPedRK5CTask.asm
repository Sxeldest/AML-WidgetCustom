; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence20SetScriptCommandTaskEP4CPedRK5CTask
; Address            : 0x4B351E - 0x4B35B0
; =========================================================

4B351E:  PUSH            {R4,R5,R7,LR}
4B3520:  ADD             R7, SP, #8
4B3522:  LDR.W           R3, [R0,#0x14C]
4B3526:  CMP             R3, R1
4B3528:  BEQ             loc_4B3568
4B352A:  LDR.W           R3, [R0,#0x160]
4B352E:  CMP             R3, R1
4B3530:  BEQ             loc_4B356C
4B3532:  LDR.W           R3, [R0,#0x174]
4B3536:  CMP             R3, R1
4B3538:  BEQ             loc_4B3570
4B353A:  LDR.W           R3, [R0,#0x188]
4B353E:  CMP             R3, R1
4B3540:  BEQ             loc_4B3574
4B3542:  LDR.W           R3, [R0,#0x19C]
4B3546:  CMP             R3, R1
4B3548:  BEQ             loc_4B3578
4B354A:  LDR.W           R3, [R0,#0x1B0]
4B354E:  CMP             R3, R1
4B3550:  BEQ             loc_4B357C
4B3552:  LDR.W           R3, [R0,#0x1C4]
4B3556:  CMP             R3, R1
4B3558:  BEQ             loc_4B3580
4B355A:  LDR.W           R3, [R0,#0x1D8]
4B355E:  CMP             R3, R1
4B3560:  IT NE
4B3562:  POPNE           {R4,R5,R7,PC}
4B3564:  MOVS            R1, #7
4B3566:  B               loc_4B3582
4B3568:  MOVS            R1, #0
4B356A:  B               loc_4B3582
4B356C:  MOVS            R1, #1
4B356E:  B               loc_4B3582
4B3570:  MOVS            R1, #2
4B3572:  B               loc_4B3582
4B3574:  MOVS            R1, #3
4B3576:  B               loc_4B3582
4B3578:  MOVS            R1, #4
4B357A:  B               loc_4B3582
4B357C:  MOVS            R1, #5
4B357E:  B               loc_4B3582
4B3580:  MOVS            R1, #6
4B3582:  LDR             R3, [R2]
4B3584:  ADD.W           R1, R1, R1,LSL#2
4B3588:  ADD.W           R5, R0, R1,LSL#2
4B358C:  MOV             R0, R2
4B358E:  LDR             R3, [R3,#8]
4B3590:  LDR.W           R4, [R5,#0x150]
4B3594:  BLX             R3
4B3596:  MOV.W           R1, #0xFFFFFFFF
4B359A:  CMP             R4, #0
4B359C:  STRD.W          R0, R1, [R5,#0x150]
4B35A0:  BEQ             locret_4B35AE
4B35A2:  LDR             R0, [R4]
4B35A4:  LDR             R1, [R0,#4]
4B35A6:  MOV             R0, R4
4B35A8:  POP.W           {R4,R5,R7,LR}
4B35AC:  BX              R1
4B35AE:  POP             {R4,R5,R7,PC}
