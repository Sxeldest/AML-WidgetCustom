; =========================================================
; Game Engine Function: _ZN8CVehicle17SelectPlaneWeaponEb13eOrdnanceType
; Address            : 0x58E40C - 0x58E48E
; =========================================================

58E40C:  LDRSH.W         R12, [R0,#0x26]
58E410:  CMP.W           R12, #0x1DC
58E414:  BGE             loc_58E432
58E416:  MOVW            R3, #0x1A9
58E41A:  CMP             R12, R3
58E41C:  BEQ             loc_58E440
58E41E:  MOVW            R2, #0x1BF
58E422:  CMP             R12, R2
58E424:  BEQ             loc_58E42C
58E426:  CMP.W           R12, #0x1D0
58E42A:  BNE             locret_58E48C
58E42C:  CBZ             R1, loc_58E464
58E42E:  MOVS            R1, #1
58E430:  B               loc_58E488
58E432:  BEQ             loc_58E446
58E434:  CMP.W           R12, #0x208
58E438:  BEQ             loc_58E46A
58E43A:  CMP.W           R12, #0x240
58E43E:  BNE             locret_58E48C
58E440:  CBZ             R1, loc_58E458
58E442:  MOVS            R1, #1
58E444:  B               loc_58E45C
58E446:  CMP             R1, #0
58E448:  ITE EQ
58E44A:  LDRBEQ.W        R1, [R0,#0x523]
58E44E:  MOVNE           R1, #1
58E450:  CMP             R2, #1
58E452:  IT EQ
58E454:  MOVEQ           R1, #2
58E456:  B               loc_58E488
58E458:  LDRB.W          R1, [R0,#0x523]
58E45C:  CMP             R2, #1
58E45E:  IT EQ
58E460:  MOVEQ           R1, #4
58E462:  B               loc_58E488
58E464:  LDRB.W          R1, [R0,#0x523]
58E468:  B               loc_58E488
58E46A:  CMP             R1, #0
58E46C:  ITE EQ
58E46E:  LDRBEQ.W        R1, [R0,#0x523]
58E472:  MOVNE           R1, #1
58E474:  CMP             R2, #2
58E476:  STRB.W          R1, [R0,#0x523]
58E47A:  BEQ             loc_58E486
58E47C:  CMP             R2, #1
58E47E:  IT NE
58E480:  BXNE            LR
58E482:  MOVS            R1, #4
58E484:  B               loc_58E488
58E486:  MOVS            R1, #3
58E488:  STRB.W          R1, [R0,#0x523]
58E48C:  BX              LR
