; =========================================================
; Game Engine Function: sub_15D7C0
; Address            : 0x15D7C0 - 0x15D7E2
; =========================================================

15D7C0:  PUSH            {R4,R6,R7,LR}
15D7C2:  ADD             R7, SP, #8
15D7C4:  LDR             R4, [R0]
15D7C6:  STR             R1, [R0]
15D7C8:  CBZ             R4, locret_15D7E0
15D7CA:  LDRB            R0, [R0,#8]
15D7CC:  CBZ             R0, loc_15D7D6
15D7CE:  ADD.W           R0, R4, #0xC
15D7D2:  BL              sub_150F66
15D7D6:  MOV             R0, R4; void *
15D7D8:  POP.W           {R4,R6,R7,LR}
15D7DC:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
15D7E0:  POP             {R4,R6,R7,PC}
