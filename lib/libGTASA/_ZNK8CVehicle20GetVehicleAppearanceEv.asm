; =========================================================
; Game Engine Function: _ZNK8CVehicle20GetVehicleAppearanceEv
; Address            : 0x582998 - 0x5829CC
; =========================================================

582998:  LDR.W           R0, [R0,#0x388]
58299C:  LDRB.W          R0, [R0,#0xCF]
5829A0:  AND.W           R1, R0, #0xF
5829A4:  CMP             R1, #8; switch 9 cases
5829A6:  BHI             def_5829AA; jumptable 005829AA default case, cases 3,5-7
5829A8:  MOVS            R0, #1
5829AA:  TBB.W           [PC,R1]; switch jump
5829AE:  DCB 0xA; jump table for switch statement
5829AF:  DCB 5
5829B0:  DCB 7
5829B1:  DCB 9
5829B2:  DCB 0xB
5829B3:  DCB 9
5829B4:  DCB 9
5829B5:  DCB 9
5829B6:  DCB 0xD
5829B7:  ALIGN 2
5829B8:  MOVS            R0, #2; jumptable 005829AA case 1
5829BA:  BX              LR
5829BC:  MOVS            R0, #3; jumptable 005829AA case 2
5829BE:  BX              LR
5829C0:  MOVS            R0, #0; jumptable 005829AA default case, cases 3,5-7
5829C2:  BX              LR; jumptable 005829AA case 0
5829C4:  MOVS            R0, #5; jumptable 005829AA case 4
5829C6:  BX              LR
5829C8:  MOVS            R0, #4; jumptable 005829AA case 8
5829CA:  BX              LR
