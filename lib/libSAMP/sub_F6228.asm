; =========================================================
; Game Engine Function: sub_F6228
; Address            : 0xF6228 - 0xF6246
; =========================================================

F6228:  PUSH            {R4,R6,R7,LR}
F622A:  ADD             R7, SP, #8
F622C:  LDR             R4, [R0]
F622E:  STR             R1, [R0]
F6230:  CBZ             R4, locret_F6244
F6232:  MOV             R0, R4
F6234:  MOVS            R1, #0
F6236:  BL              sub_F6246
F623A:  MOV             R0, R4; void *
F623C:  POP.W           {R4,R6,R7,LR}
F6240:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F6244:  POP             {R4,R6,R7,PC}
