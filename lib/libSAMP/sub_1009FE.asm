; =========================================================
; Game Engine Function: sub_1009FE
; Address            : 0x1009FE - 0x100A1C
; =========================================================

1009FE:  PUSH            {R4,R6,R7,LR}
100A00:  ADD             R7, SP, #8
100A02:  LDR             R4, [R0]
100A04:  STR             R1, [R0]
100A06:  CBZ             R4, locret_100A1A
100A08:  MOV             R0, R4
100A0A:  MOVS            R1, #0
100A0C:  BL              sub_100A1C
100A10:  MOV             R0, R4; void *
100A12:  POP.W           {R4,R6,R7,LR}
100A16:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
100A1A:  POP             {R4,R6,R7,PC}
