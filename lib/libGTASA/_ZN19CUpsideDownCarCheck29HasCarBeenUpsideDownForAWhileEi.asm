; =========================================================
; Game Engine Function: _ZN19CUpsideDownCarCheck29HasCarBeenUpsideDownForAWhileEi
; Address            : 0x32860E - 0x328660
; =========================================================

32860E:  MOV             R2, R0
328610:  MOVS            R0, #0
328612:  LDR             R3, [R2]
328614:  CMP             R3, R1
328616:  MOV.W           R3, #0
32861A:  BEQ             loc_328650
32861C:  LDR             R3, [R2,#8]
32861E:  CMP             R3, R1
328620:  BNE             loc_328626
328622:  MOVS            R3, #1
328624:  B               loc_328650
328626:  LDR             R3, [R2,#0x10]
328628:  CMP             R3, R1
32862A:  BNE             loc_328630
32862C:  MOVS            R3, #2
32862E:  B               loc_328650
328630:  LDR             R3, [R2,#0x18]
328632:  CMP             R3, R1
328634:  BNE             loc_32863A
328636:  MOVS            R3, #3
328638:  B               loc_328650
32863A:  LDR             R3, [R2,#0x20]
32863C:  CMP             R3, R1
32863E:  BNE             loc_328644
328640:  MOVS            R3, #4
328642:  B               loc_328650
328644:  LDR             R3, [R2,#0x28]
328646:  CMP             R3, R1
328648:  ITT NE
32864A:  MOVNE           R0, #0
32864C:  BXNE            LR
32864E:  MOVS            R3, #5
328650:  ADD.W           R1, R2, R3,LSL#3
328654:  LDR             R1, [R1,#4]
328656:  CMP.W           R1, #0x7D0
32865A:  IT HI
32865C:  MOVHI           R0, #1
32865E:  BX              LR
