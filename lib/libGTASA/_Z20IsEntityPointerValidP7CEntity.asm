; =========================================================
; Game Engine Function: _Z20IsEntityPointerValidP7CEntity
; Address            : 0x3EE330 - 0x3EE366
; =========================================================

3EE330:  CBZ             R0, def_3EE340; jumptable 003EE340 default case
3EE332:  LDRB.W          R1, [R0,#0x3A]
3EE336:  AND.W           R1, R1, #7
3EE33A:  SUBS            R1, #1; switch 6 cases
3EE33C:  CMP             R1, #5
3EE33E:  BHI             def_3EE340; jumptable 003EE340 default case
3EE340:  TBB.W           [PC,R1]; switch jump
3EE344:  DCB 3; jump table for switch statement
3EE345:  DCB 7
3EE346:  DCB 9
3EE347:  DCB 0xB
3EE348:  DCB 0xD
3EE349:  DCB 0xF
3EE34A:  B.W             sub_193D70; jumptable 003EE340 case 1
3EE34E:  MOVS            R0, #0; jumptable 003EE340 default case
3EE350:  BX              LR
3EE352:  B.W             j_j__Z21IsVehiclePointerValidP8CVehicle; jumptable 003EE340 case 2
3EE356:  B.W             j_j__Z17IsPedPointerValidP4CPed; jumptable 003EE340 case 3
3EE35A:  B.W             j_j__Z20IsObjectPointerValidP7CObject; jumptable 003EE340 case 4
3EE35E:  B.W             sub_199F4C; jumptable 003EE340 case 5
3EE362:  MOVS            R0, #1; jumptable 003EE340 case 6
3EE364:  BX              LR
