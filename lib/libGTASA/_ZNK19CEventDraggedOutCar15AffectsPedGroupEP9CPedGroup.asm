; =========================================================
; Game Engine Function: _ZNK19CEventDraggedOutCar15AffectsPedGroupEP9CPedGroup
; Address            : 0x371AB2 - 0x371AD4
; =========================================================

371AB2:  PUSH            {R4,R6,R7,LR}
371AB4:  ADD             R7, SP, #8
371AB6:  ADD.W           R0, R1, #8; this
371ABA:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
371ABE:  MOV             R4, R0
371AC0:  MOV.W           R0, #0xFFFFFFFF; int
371AC4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
371AC8:  MOVS            R1, #0
371ACA:  CMP             R4, R0
371ACC:  IT EQ
371ACE:  MOVEQ           R1, #1
371AD0:  MOV             R0, R1
371AD2:  POP             {R4,R6,R7,PC}
