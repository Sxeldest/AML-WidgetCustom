; =========================================================
; Game Engine Function: _Z11DisableHornv
; Address            : 0x3FA558 - 0x3FA5C0
; =========================================================

3FA558:  PUSH            {R4,R5,R7,LR}
3FA55A:  ADD             R7, SP, #8
3FA55C:  MOV.W           R0, #0xFFFFFFFF; int
3FA560:  MOVS            R1, #0; bool
3FA562:  MOVS            R5, #0
3FA564:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FA568:  MOV             R4, R0
3FA56A:  CBZ             R4, loc_3FA5BC
3FA56C:  MOV.W           R0, #0xFFFFFFFF; int
3FA570:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA574:  LDR.W           R0, [R0,#0x590]
3FA578:  CBZ             R0, loc_3FA596
3FA57A:  LDR.W           R0, [R4,#0x5A4]
3FA57E:  CMP             R0, #6
3FA580:  BHI             loc_3FA58C
3FA582:  MOVS            R1, #1
3FA584:  LSLS            R1, R0
3FA586:  TST.W           R1, #0x58
3FA58A:  BNE             loc_3FA5BA
3FA58C:  CMP             R0, #5
3FA58E:  BEQ             loc_3FA5BA
3FA590:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3FA596)
3FA592:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3FA594:  B               loc_3FA59A
3FA596:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3FA59C)
3FA598:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3FA59A:  LDR             R0, [R0]; CWorld::Players ...
3FA59C:  LDR.W           R0, [R0,#(dword_96B74C - 0x96B69C)]
3FA5A0:  CBNZ            R0, loc_3FA5BA
3FA5A2:  MOV.W           R0, #0xFFFFFFFF; int
3FA5A6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FA5AA:  MOV             R1, R0; CPed *
3FA5AC:  MOV             R0, R4; this
3FA5AE:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
3FA5B2:  CBZ             R0, loc_3FA5BA
3FA5B4:  MOVS            R5, #0
3FA5B6:  MOV             R0, R5
3FA5B8:  POP             {R4,R5,R7,PC}
3FA5BA:  MOVS            R5, #1
3FA5BC:  MOV             R0, R5
3FA5BE:  POP             {R4,R5,R7,PC}
