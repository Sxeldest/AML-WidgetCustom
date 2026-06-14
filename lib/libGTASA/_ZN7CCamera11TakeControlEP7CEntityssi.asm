; =========================================================
; Game Engine Function: _ZN7CCamera11TakeControlEP7CEntityssi
; Address            : 0x3E16C4 - 0x3E179C
; =========================================================

3E16C4:  PUSH            {R4-R7,LR}
3E16C6:  ADD             R7, SP, #0xC
3E16C8:  PUSH.W          {R8-R10}
3E16CC:  MOV             R4, R0
3E16CE:  LDR             R0, [R7,#arg_0]
3E16D0:  MOV             R5, R1
3E16D2:  MOV             R8, R3
3E16D4:  CMP             R0, #2
3E16D6:  MOV             R9, R2
3E16D8:  ITT EQ
3E16DA:  LDREQ.W         R1, [R4,#0xAC]
3E16DE:  CMPEQ           R1, #1
3E16E0:  BNE             loc_3E16F0
3E16E2:  LDRB.W          R1, [R4,#0xC78]
3E16E6:  CMP             R1, #0
3E16E8:  ITT EQ
3E16EA:  POPEQ.W         {R8-R10}
3E16EE:  POPEQ           {R4-R7,PC}
3E16F0:  CMP             R5, #0
3E16F2:  STR.W           R0, [R4,#0xAC]
3E16F6:  BEQ             loc_3E1714
3E16F8:  CMP.W           R9, #0
3E16FC:  BNE             loc_3E1754
3E16FE:  LDR.W           R0, [R4,#0x8DC]
3E1702:  LDRB.W          R0, [R0,#0x3A]
3E1706:  AND.W           R0, R0, #7
3E170A:  CMP             R0, #3
3E170C:  BNE             loc_3E1748
3E170E:  MOV.W           R9, #4
3E1712:  B               loc_3E1754
3E1714:  MOV.W           R0, #0xFFFFFFFF; int
3E1718:  MOVS            R1, #0; bool
3E171A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3E171E:  CBZ             R0, loc_3E172E
3E1720:  MOV.W           R0, #0xFFFFFFFF; int
3E1724:  MOVS            R1, #0; bool
3E1726:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3E172A:  MOV             R5, R0
3E172C:  B               loc_3E1754
3E172E:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3E173A)
3E1730:  MOV.W           R2, #0x194
3E1734:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3E173C)
3E1736:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3E1738:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3E173A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3E173C:  LDR             R1, [R1]; CWorld::Players ...
3E173E:  LDR             R0, [R0]; CWorld::PlayerInFocus
3E1740:  SMULBB.W        R0, R0, R2
3E1744:  LDR             R5, [R1,R0]
3E1746:  B               loc_3E1754
3E1748:  MOV.W           R9, #0
3E174C:  CMP             R0, #2
3E174E:  IT EQ
3E1750:  MOVEQ.W         R9, #0x12
3E1754:  MOV.W           R10, #0
3E1758:  ADDW            R6, R4, #0x8DC
3E175C:  STRB.W          R10, [R4,#0x2A]
3E1760:  LDR.W           R0, [R4,#0x8DC]; this
3E1764:  CMP             R0, #0
3E1766:  ITT NE
3E1768:  MOVNE           R1, R6; CEntity **
3E176A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3E176E:  MOV             R0, R5; this
3E1770:  MOV             R1, R6; CEntity **
3E1772:  STR.W           R5, [R4,#0x8DC]
3E1776:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3E177A:  MOVS            R0, #1
3E177C:  STRH.W          R8, [R4,#0xBC4]
3E1780:  STRH.W          R9, [R4,#0xBC0]
3E1784:  STRB.W          R10, [R4,#0x29]
3E1788:  STRB.W          R0, [R4,#0x30]
3E178C:  MOV.W           R0, #0xFFFFFFFF; int
3E1790:  POP.W           {R8-R10}
3E1794:  POP.W           {R4-R7,LR}
3E1798:  B.W             j_j__Z13FindPlayerPedi; j_FindPlayerPed(int)
