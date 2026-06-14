; =========================================================
; Game Engine Function: _ZN22CTaskComplexGangLeaderD2Ev
; Address            : 0x5152B4 - 0x5152EA
; =========================================================

5152B4:  PUSH            {R4,R6,R7,LR}
5152B6:  ADD             R7, SP, #8
5152B8:  MOV             R4, R0
5152BA:  LDR             R0, =(_ZTV22CTaskComplexGangLeader_ptr - 0x5152C4)
5152BC:  LDRB.W          R1, [R4,#0x34]; char *
5152C0:  ADD             R0, PC; _ZTV22CTaskComplexGangLeader_ptr
5152C2:  CMP             R1, #0
5152C4:  LDR             R0, [R0]; `vtable for'CTaskComplexGangLeader ...
5152C6:  ADD.W           R0, R0, #8
5152CA:  STR             R0, [R4]
5152CC:  BEQ             loc_5152E0
5152CE:  LDR             R0, =(aGangs - 0x5152D4); "gangs"
5152D0:  ADD             R0, PC; "gangs"
5152D2:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
5152D6:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
5152DA:  MOVS            R0, #0
5152DC:  STRB.W          R0, [R4,#0x34]
5152E0:  MOV             R0, R4; this
5152E2:  POP.W           {R4,R6,R7,LR}
5152E6:  B.W             sub_18EDE8
