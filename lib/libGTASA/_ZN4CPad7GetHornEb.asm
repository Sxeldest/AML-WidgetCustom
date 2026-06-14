; =========================================================
; Game Engine Function: _ZN4CPad7GetHornEb
; Address            : 0x3FA5C8 - 0x3FA648
; =========================================================

3FA5C8:  PUSH            {R4,R6,R7,LR}
3FA5CA:  ADD             R7, SP, #8
3FA5CC:  LDRH.W          R1, [R0,#0x110]
3FA5D0:  CMP             R1, #0
3FA5D2:  ITT EQ
3FA5D4:  LDRBEQ.W        R0, [R0,#0x118]
3FA5D8:  CMPEQ           R0, #0
3FA5DA:  BEQ             loc_3FA5E0
3FA5DC:  MOVS            R0, #0
3FA5DE:  POP             {R4,R6,R7,PC}
3FA5E0:  MOV.W           R0, #0xFFFFFFFF; int
3FA5E4:  MOVS            R1, #0; bool
3FA5E6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FA5EA:  MOV             R4, R0
3FA5EC:  CBZ             R4, loc_3FA63A
3FA5EE:  MOV.W           R0, #0xFFFFFFFF; int
3FA5F2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA5F6:  LDR.W           R0, [R0,#0x590]
3FA5FA:  CBZ             R0, loc_3FA618
3FA5FC:  LDR.W           R0, [R4,#0x5A4]
3FA600:  CMP             R0, #6
3FA602:  BHI             loc_3FA60E
3FA604:  MOVS            R1, #1
3FA606:  LSLS            R1, R0
3FA608:  TST.W           R1, #0x58
3FA60C:  BNE             loc_3FA5DC
3FA60E:  CMP             R0, #5
3FA610:  BEQ             loc_3FA5DC
3FA612:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3FA618)
3FA614:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3FA616:  B               loc_3FA61C
3FA618:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3FA61E)
3FA61A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3FA61C:  LDR             R0, [R0]; CWorld::Players ...
3FA61E:  LDR.W           R0, [R0,#(dword_96B74C - 0x96B69C)]
3FA622:  CMP             R0, #0
3FA624:  BNE             loc_3FA5DC
3FA626:  MOV.W           R0, #0xFFFFFFFF; int
3FA62A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA62E:  MOV             R1, R0; CPed *
3FA630:  MOV             R0, R4; this
3FA632:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
3FA636:  CMP             R0, #1
3FA638:  BNE             loc_3FA5DC
3FA63A:  MOVS            R0, #7
3FA63C:  MOVS            R1, #0
3FA63E:  MOVS            R2, #2
3FA640:  POP.W           {R4,R6,R7,LR}
3FA644:  B.W             sub_19C34C
