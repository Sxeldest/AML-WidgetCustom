; =========================================================
; Game Engine Function: _ZN10Interior_c19Shop_PlaceEdgeUnitsEiiii
; Address            : 0x44E388 - 0x44E422
; =========================================================

44E388:  PUSH            {R4-R7,LR}
44E38A:  ADD             R7, SP, #0xC
44E38C:  PUSH.W          {R8-R11}
44E390:  SUB             SP, SP, #0xC
44E392:  LDR.W           R11, [R7,#arg_0]
44E396:  MOV             R6, R0
44E398:  MOV             R9, R3
44E39A:  MOV             R10, R2
44E39C:  ORR.W           R0, R11, #2
44E3A0:  MOVS            R5, #1
44E3A2:  CMP             R0, #2
44E3A4:  MOV.W           R3, #2
44E3A8:  MOV             R8, R1
44E3AA:  STR             R5, [SP,#0x28+var_28]; int
44E3AC:  IT EQ
44E3AE:  MOVEQ           R3, #1; int
44E3B0:  MOV             R0, R6; this
44E3B2:  MOV             R1, R10; int
44E3B4:  MOV             R2, R9; int
44E3B6:  BLX             j__ZN10Interior_c16GetNumEmptyTilesEiiii; Interior_c::GetNumEmptyTiles(int,int,int,int)
44E3BA:  MOV             R4, R0
44E3BC:  CMP             R4, #2
44E3BE:  BLT             loc_44E418
44E3C0:  BLX             rand
44E3C4:  UXTH            R0, R0
44E3C6:  VLDR            S2, =0.000015259
44E3CA:  VMOV            S0, R0
44E3CE:  CMP             R4, #3
44E3D0:  VMOV.F32        S4, #3.0
44E3D4:  VCVT.F32.S32    S0, S0
44E3D8:  VMUL.F32        S0, S0, S2
44E3DC:  VMUL.F32        S0, S0, S4
44E3E0:  VCVT.S32.F32    S0, S0
44E3E4:  BNE             loc_44E3EA
44E3E6:  MOVS            R4, #3
44E3E8:  B               loc_44E3FE
44E3EA:  VMOV            R1, S0
44E3EE:  ADDS            R0, R1, #2
44E3F0:  SUBS            R2, R4, R0
44E3F2:  CMP             R2, #0
44E3F4:  BLT             loc_44E3FE
44E3F6:  CMP             R2, #1
44E3F8:  IT EQ
44E3FA:  ADDEQ           R0, R1, #1
44E3FC:  MOV             R4, R0
44E3FE:  ADDS.W          R0, R8, #1
44E402:  STRD.W          R11, R4, [SP,#0x28+var_28]; int
44E406:  ITE NE
44E408:  MOVNE           R1, R8
44E40A:  MOVEQ           R1, #9; int
44E40C:  MOV             R0, R6; this
44E40E:  MOV             R2, R10; int
44E410:  MOV             R3, R9; int
44E412:  BLX             j__ZN10Interior_c20Shop_Place3PieceUnitEiiiii; Interior_c::Shop_Place3PieceUnit(int,int,int,int,int)
44E416:  MOV             R5, R4
44E418:  MOV             R0, R5
44E41A:  ADD             SP, SP, #0xC
44E41C:  POP.W           {R8-R11}
44E420:  POP             {R4-R7,PC}
