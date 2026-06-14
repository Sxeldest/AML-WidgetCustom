; =========================================================
; Game Engine Function: sub_134402
; Address            : 0x134402 - 0x13441C
; =========================================================

134402:  PUSH            {R7,LR}
134404:  MOV             R7, SP
134406:  MOV             R2, R0
134408:  LDR             R0, [R0]
13440A:  STR             R1, [R2]
13440C:  CBZ             R0, locret_13441A
13440E:  BL              sub_12BCE4
134412:  POP.W           {R7,LR}
134416:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
13441A:  POP             {R7,PC}
