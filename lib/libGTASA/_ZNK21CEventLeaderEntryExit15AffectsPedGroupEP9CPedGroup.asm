; =========================================================
; Game Engine Function: _ZNK21CEventLeaderEntryExit15AffectsPedGroupEP9CPedGroup
; Address            : 0x377BEA - 0x377C0A
; =========================================================

377BEA:  PUSH            {R4,R5,R7,LR}
377BEC:  ADD             R7, SP, #8
377BEE:  MOV             R5, R0
377BF0:  MOVS            R4, #0
377BF2:  LDR             R0, [R5,#0xC]
377BF4:  CBZ             R0, loc_377C06
377BF6:  ADD.W           R0, R1, #8; this
377BFA:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
377BFE:  LDR             R1, [R5,#0xC]
377C00:  CMP             R0, R1
377C02:  IT EQ
377C04:  MOVEQ           R4, #1
377C06:  MOV             R0, R4
377C08:  POP             {R4,R5,R7,PC}
