; =========================================================
; Game Engine Function: sub_135764
; Address            : 0x135764 - 0x135774
; =========================================================

135764:  PUSH            {R7,LR}
135766:  MOV             R7, SP
135768:  BL              sub_12BCE4
13576C:  POP.W           {R7,LR}
135770:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
