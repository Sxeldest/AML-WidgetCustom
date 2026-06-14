; =========================================================
; Game Engine Function: _ZN8CVehicle22SetupUpgradesAfterLoadEv
; Address            : 0x58D43C - 0x58D46E
; =========================================================

58D43C:  PUSH            {R4-R7,LR}
58D43E:  ADD             R7, SP, #0xC
58D440:  PUSH.W          {R11}
58D444:  MOV             R4, R0
58D446:  MOV             R5, #0xFFFFFFE2
58D44A:  MOVW            R6, #0xFFFF
58D44E:  ADDS            R0, R4, R5
58D450:  LDRH.W          R1, [R0,#0x45C]
58D454:  CMP             R1, R6
58D456:  BEQ             loc_58D464
58D458:  STRH.W          R6, [R0,#0x45C]
58D45C:  SXTH            R1, R1; int
58D45E:  MOV             R0, R4; this
58D460:  BLX             j__ZN8CVehicle17AddVehicleUpgradeEi; CVehicle::AddVehicleUpgrade(int)
58D464:  ADDS            R5, #2
58D466:  BNE             loc_58D44E
58D468:  POP.W           {R11}
58D46C:  POP             {R4-R7,PC}
