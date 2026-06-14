; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence19ComputeDefaultTasksEP4CPed
; Address            : 0x4B32D8 - 0x4B3302
; =========================================================

4B32D8:  PUSH            {R4,R5,R7,LR}
4B32DA:  ADD             R7, SP, #8
4B32DC:  MOV             R4, R1
4B32DE:  MOV             R5, R0
4B32E0:  ADD.W           R1, R5, #0x1EC; CPedTaskPair *
4B32E4:  MOV             R2, R4; CPed *
4B32E6:  BLX             j__ZN21CPedGroupIntelligence10FlushTasksEP12CPedTaskPairP4CPed; CPedGroupIntelligence::FlushTasks(CPedTaskPair *,CPed *)
4B32EA:  LDR.W           R0, [R5,#0x28C]
4B32EE:  CMP             R0, #0
4B32F0:  IT EQ
4B32F2:  POPEQ           {R4,R5,R7,PC}
4B32F4:  LDR             R2, [R0]
4B32F6:  LDR             R1, [R5]
4B32F8:  LDR             R3, [R2]
4B32FA:  MOV             R2, R4
4B32FC:  POP.W           {R4,R5,R7,LR}
4B3300:  BX              R3
