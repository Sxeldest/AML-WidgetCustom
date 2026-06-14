; =========================================================
; Game Engine Function: _ZN6CTrain21RemoveOneMissionTrainEPS_
; Address            : 0x57FD40 - 0x57FD66
; =========================================================

57FD40:  PUSH            {R4,R5,R7,LR}
57FD42:  ADD             R7, SP, #8
57FD44:  MOV             R4, R0
57FD46:  CMP             R4, #0
57FD48:  IT EQ
57FD4A:  POPEQ           {R4,R5,R7,PC}
57FD4C:  MOV             R0, R4; this
57FD4E:  LDR.W           R5, [R4,#0x5E8]
57FD52:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
57FD56:  LDR             R0, [R4]
57FD58:  LDR             R1, [R0,#4]
57FD5A:  MOV             R0, R4
57FD5C:  BLX             R1
57FD5E:  CMP             R5, #0
57FD60:  MOV             R4, R5
57FD62:  BNE             loc_57FD4C
57FD64:  POP             {R4,R5,R7,PC}
