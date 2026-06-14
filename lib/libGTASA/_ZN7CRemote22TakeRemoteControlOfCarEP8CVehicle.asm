; =========================================================
; Game Engine Function: _ZN7CRemote22TakeRemoteControlOfCarEP8CVehicle
; Address            : 0x3246D8 - 0x3247FE
; =========================================================

3246D8:  PUSH            {R4-R7,LR}
3246DA:  ADD             R7, SP, #0xC
3246DC:  PUSH.W          {R11}
3246E0:  SUB             SP, SP, #8
3246E2:  MOV             R4, R0
3246E4:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3246F0)
3246E6:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3246F2)
3246E8:  MOV.W           R2, #0x194
3246EC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3246EE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3246F0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3246F2:  LDR             R1, [R1]; CWorld::Players ...
3246F4:  LDR             R0, [R0]; CWorld::PlayerInFocus
3246F6:  SMLABB.W        R1, R0, R2, R1
3246FA:  MOVS            R0, #0
3246FC:  LDR.W           R2, [R1,#0xB0]!
324700:  CBZ             R2, loc_32471C
324702:  LDRB.W          R3, [R2,#0x3A]
324706:  MOVS            R6, #3
324708:  MOVS            R5, #0
32470A:  BFI.W           R3, R6, #3, #0x1D
32470E:  STRB.W          R3, [R2,#0x3A]
324712:  LDR             R1, [R1]
324714:  CMP             R1, R4
324716:  IT NE
324718:  MOVNE           R5, #1
32471A:  B               loc_32471E
32471C:  MOVS            R5, #0
32471E:  MOVS            R1, #0
324720:  MOVS            R6, #9
324722:  MOVT            R1, #0x4110
324726:  STRB.W          R0, [R4,#0x3BF]
32472A:  STR.W           R1, [R4,#0x3CC]
32472E:  MOVS            R1, #8
324730:  STRB.W          R6, [R4,#0x3D4]
324734:  STR.W           R0, [R4,#0x3BB]
324738:  LDRB.W          R0, [R4,#0x3A]
32473C:  LDR.W           R2, [R4,#0x42C]
324740:  LDR.W           R3, [R4,#0x430]
324744:  BFI.W           R0, R1, #3, #0x1D
324748:  STRB.W          R0, [R4,#0x3A]
32474C:  MOVS            R0, #1
32474E:  MOV             R1, R2
324750:  TST.W           R3, #0x200
324754:  BFI.W           R1, R0, #3, #2
324758:  MOV.W           R0, #0xFFFFFFFF; int
32475C:  IT EQ
32475E:  ORREQ.W         R1, R2, #0x18
324762:  STR.W           R1, [R4,#0x42C]
324766:  MOVS            R1, #0; bool
324768:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
32476C:  CBZ             R0, loc_324784
32476E:  MOV.W           R0, #0xFFFFFFFF; int
324772:  MOVS            R1, #0; bool
324774:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
324778:  LDRB.W          R1, [R0,#0x3A]
32477C:  BFI.W           R1, R6, #3, #0x1D
324780:  STRB.W          R1, [R0,#0x3A]
324784:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x324790)
324786:  MOV.W           R6, #0x194
32478A:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x324792)
32478C:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
32478E:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
324790:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
324792:  LDR             R2, [R0]; CWorld::PlayerInFocus
324794:  LDR             R0, [R1]; CWorld::Players ...
324796:  SMLABB.W        R1, R2, R6, R0
32479A:  LDR.W           R0, [R1,#0xB0]!; CEntity **
32479E:  CBZ             R0, loc_3247AC
3247A0:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3247A4:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3247AA)
3247A6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3247A8:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3247AA:  LDR             R2, [R0]; CWorld::PlayerInFocus
3247AC:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3247B2)
3247AE:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3247B0:  LDR             R0, [R0]; CWorld::Players ...
3247B2:  SMLABB.W        R1, R2, R6, R0
3247B6:  MOV             R0, R4; this
3247B8:  STR.W           R4, [R1,#0xB0]!; CEntity **
3247BC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3247C0:  CMP             R5, #1
3247C2:  BNE             loc_3247D4
3247C4:  LDR             R0, =(TheCamera_ptr - 0x3247D0)
3247C6:  MOVS            R1, #1
3247C8:  STR             R1, [SP,#0x18+var_18]
3247CA:  MOV             R1, R4
3247CC:  ADD             R0, PC; TheCamera_ptr
3247CE:  MOVS            R2, #0x12
3247D0:  MOVS            R3, #2
3247D2:  B               loc_3247E2
3247D4:  LDR             R0, =(TheCamera_ptr - 0x3247E0)
3247D6:  MOVS            R1, #1
3247D8:  STR             R1, [SP,#0x18+var_18]; int
3247DA:  MOV             R1, R4; CEntity *
3247DC:  ADD             R0, PC; TheCamera_ptr
3247DE:  MOVS            R2, #0x12; __int16
3247E0:  MOVS            R3, #1; __int16
3247E2:  LDR             R0, [R0]; TheCamera ; this
3247E4:  BLX             j__ZN7CCamera11TakeControlEP7CEntityssi; CCamera::TakeControl(CEntity *,short,short,int)
3247E8:  LDR             R0, =(TheCamera_ptr - 0x3247F0)
3247EA:  MOVS            R1, #1; __int16
3247EC:  ADD             R0, PC; TheCamera_ptr
3247EE:  LDR             R0, [R0]; TheCamera ; this
3247F0:  ADD             SP, SP, #8
3247F2:  POP.W           {R11}
3247F6:  POP.W           {R4-R7,LR}
3247FA:  B.W             j_j__ZN7CCamera27SetZoomValueCamStringScriptEs; j_CCamera::SetZoomValueCamStringScript(short)
