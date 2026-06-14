; =========================================================
; Game Engine Function: sub_20DDDA
; Address            : 0x20DDDA - 0x20DDEA
; =========================================================

20DDDA:  PUSH            {R7,LR}
20DDDC:  MOV             R7, SP
20DDDE:  BL              sub_20DDC4
20DDE2:  POP.W           {R7,LR}
20DDE6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
