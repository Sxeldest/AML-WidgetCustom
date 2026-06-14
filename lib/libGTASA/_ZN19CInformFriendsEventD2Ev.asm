; =========================================================
; Game Engine Function: _ZN19CInformFriendsEventD2Ev
; Address            : 0x36FD86 - 0x36FDB2
; =========================================================

36FD86:  PUSH            {R4,R6,R7,LR}
36FD88:  ADD             R7, SP, #8
36FD8A:  MOV             R4, R0
36FD8C:  LDR             R0, [R4]; this
36FD8E:  CBZ             R0, loc_36FD9A
36FD90:  MOV             R1, R4; CEntity **
36FD92:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
36FD96:  MOVS            R0, #0
36FD98:  STR             R0, [R4]
36FD9A:  LDR             R0, [R4,#4]
36FD9C:  CBZ             R0, loc_36FDA8
36FD9E:  LDR             R1, [R0]
36FDA0:  LDR             R1, [R1,#4]
36FDA2:  BLX             R1
36FDA4:  MOVS            R0, #0
36FDA6:  STR             R0, [R4,#4]
36FDA8:  MOV.W           R0, #0xFFFFFFFF
36FDAC:  STR             R0, [R4,#8]
36FDAE:  MOV             R0, R4
36FDB0:  POP             {R4,R6,R7,PC}
