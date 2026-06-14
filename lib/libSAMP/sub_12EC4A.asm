; =========================================================
; Game Engine Function: sub_12EC4A
; Address            : 0x12EC4A - 0x12EC64
; =========================================================

12EC4A:  PUSH            {R7,LR}
12EC4C:  MOV             R7, SP
12EC4E:  MOV             R2, R0
12EC50:  LDR             R0, [R0]
12EC52:  STR             R1, [R2]
12EC54:  CBZ             R0, locret_12EC62
12EC56:  BL              sub_12EA84
12EC5A:  POP.W           {R7,LR}
12EC5E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
12EC62:  POP             {R7,PC}
