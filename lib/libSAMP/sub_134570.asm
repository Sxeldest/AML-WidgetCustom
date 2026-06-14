; =========================================================
; Game Engine Function: sub_134570
; Address            : 0x134570 - 0x13458A
; =========================================================

134570:  PUSH            {R7,LR}
134572:  MOV             R7, SP
134574:  MOV             R2, R0
134576:  LDR             R0, [R0]
134578:  STR             R1, [R2]
13457A:  CBZ             R0, locret_134588
13457C:  BL              sub_133FF0
134580:  POP.W           {R7,LR}
134584:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
134588:  POP             {R7,PC}
