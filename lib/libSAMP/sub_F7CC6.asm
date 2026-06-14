; =========================================================
; Game Engine Function: sub_F7CC6
; Address            : 0xF7CC6 - 0xF7CF2
; =========================================================

F7CC6:  CBZ             R1, locret_F7CF0
F7CC8:  PUSH            {R4,R5,R7,LR}
F7CCA:  ADD             R7, SP, #8
F7CCC:  MOV             R4, R1
F7CCE:  LDR             R1, [R1]
F7CD0:  MOV             R5, R0
F7CD2:  BL              sub_F7CC6
F7CD6:  LDR             R1, [R4,#4]
F7CD8:  MOV             R0, R5
F7CDA:  BL              sub_F7CC6
F7CDE:  ADD.W           R0, R4, #0x14
F7CE2:  BL              sub_F7A5E
F7CE6:  MOV             R0, R4; void *
F7CE8:  POP.W           {R4,R5,R7,LR}
F7CEC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F7CF0:  BX              LR
