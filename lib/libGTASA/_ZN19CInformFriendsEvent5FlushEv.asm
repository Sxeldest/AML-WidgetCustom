; =========================================================
; Game Engine Function: _ZN19CInformFriendsEvent5FlushEv
; Address            : 0x36FDB2 - 0x36FDDC
; =========================================================

36FDB2:  PUSH            {R4,R6,R7,LR}
36FDB4:  ADD             R7, SP, #8
36FDB6:  MOV             R4, R0
36FDB8:  LDR             R0, [R4]; this
36FDBA:  CBZ             R0, loc_36FDC6
36FDBC:  MOV             R1, R4; CEntity **
36FDBE:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
36FDC2:  MOVS            R0, #0
36FDC4:  STR             R0, [R4]
36FDC6:  LDR             R0, [R4,#4]
36FDC8:  CBZ             R0, loc_36FDD4
36FDCA:  LDR             R1, [R0]
36FDCC:  LDR             R1, [R1,#4]
36FDCE:  BLX             R1
36FDD0:  MOVS            R0, #0
36FDD2:  STR             R0, [R4,#4]
36FDD4:  MOV.W           R0, #0xFFFFFFFF
36FDD8:  STR             R0, [R4,#8]
36FDDA:  POP             {R4,R6,R7,PC}
