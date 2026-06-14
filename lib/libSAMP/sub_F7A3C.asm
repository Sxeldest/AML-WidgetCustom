; =========================================================
; Game Engine Function: sub_F7A3C
; Address            : 0xF7A3C - 0xF7A5E
; =========================================================

F7A3C:  PUSH            {R4,R6,R7,LR}
F7A3E:  ADD             R7, SP, #8
F7A40:  LDR             R4, [R0]
F7A42:  STR             R1, [R0]
F7A44:  CBZ             R4, locret_F7A5C
F7A46:  LDRB            R0, [R0,#8]
F7A48:  CBZ             R0, loc_F7A52
F7A4A:  ADD.W           R0, R4, #0x14
F7A4E:  BL              sub_F7A5E
F7A52:  MOV             R0, R4; void *
F7A54:  POP.W           {R4,R6,R7,LR}
F7A58:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F7A5C:  POP             {R4,R6,R7,PC}
