; =========================================================
; Game Engine Function: sub_F6246
; Address            : 0xF6246 - 0xF6260
; =========================================================

F6246:  PUSH            {R7,LR}
F6248:  MOV             R7, SP
F624A:  MOV             R2, R0
F624C:  LDR             R0, [R0]
F624E:  STR             R1, [R2]
F6250:  CBZ             R0, locret_F625E
F6252:  BL              sub_F6260
F6256:  POP.W           {R7,LR}
F625A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F625E:  POP             {R7,PC}
