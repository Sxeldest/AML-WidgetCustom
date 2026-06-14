; =========================================================
; Game Engine Function: sub_11BF74
; Address            : 0x11BF74 - 0x11BF98
; =========================================================

11BF74:  CBZ             R1, locret_11BF96
11BF76:  PUSH            {R4,R5,R7,LR}
11BF78:  ADD             R7, SP, #8
11BF7A:  MOV             R4, R1
11BF7C:  LDR             R1, [R1]
11BF7E:  MOV             R5, R0
11BF80:  BL              sub_11BF74
11BF84:  LDR             R1, [R4,#4]
11BF86:  MOV             R0, R5
11BF88:  BL              sub_11BF74
11BF8C:  MOV             R0, R4; void *
11BF8E:  POP.W           {R4,R5,R7,LR}
11BF92:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
11BF96:  BX              LR
