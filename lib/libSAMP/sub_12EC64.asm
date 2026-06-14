; =========================================================
; Game Engine Function: sub_12EC64
; Address            : 0x12EC64 - 0x12EC7E
; =========================================================

12EC64:  PUSH            {R7,LR}
12EC66:  MOV             R7, SP
12EC68:  MOV             R2, R0
12EC6A:  LDR             R0, [R0]
12EC6C:  STR             R1, [R2]
12EC6E:  CBZ             R0, locret_12EC7C
12EC70:  BL              sub_12EBA4
12EC74:  POP.W           {R7,LR}
12EC78:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
12EC7C:  POP             {R7,PC}
