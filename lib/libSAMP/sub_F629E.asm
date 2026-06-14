; =========================================================
; Game Engine Function: sub_F629E
; Address            : 0xF629E - 0xF62C0
; =========================================================

F629E:  PUSH            {R4,R6,R7,LR}
F62A0:  ADD             R7, SP, #8
F62A2:  LDR             R4, [R0]
F62A4:  STR             R1, [R0]
F62A6:  CBZ             R4, locret_F62BE
F62A8:  ADD.W           R0, R4, #0x14
F62AC:  BL              sub_F62C0
F62B0:  MOV             R0, R4
F62B2:  BL              sub_F62E6
F62B6:  POP.W           {R4,R6,R7,LR}
F62BA:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F62BE:  POP             {R4,R6,R7,PC}
