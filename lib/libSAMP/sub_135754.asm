; =========================================================
; Game Engine Function: sub_135754
; Address            : 0x135754 - 0x135764
; =========================================================

135754:  PUSH            {R7,LR}
135756:  MOV             R7, SP
135758:  BL              sub_12BCE4
13575C:  POP.W           {R7,LR}
135760:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
