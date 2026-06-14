; =========================================================
; Game Engine Function: sub_135744
; Address            : 0x135744 - 0x135754
; =========================================================

135744:  PUSH            {R7,LR}
135746:  MOV             R7, SP
135748:  BL              sub_12BCE4
13574C:  POP.W           {R7,LR}
135750:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
