; =========================================================
; Game Engine Function: sub_133872
; Address            : 0x133872 - 0x133882
; =========================================================

133872:  PUSH            {R7,LR}
133874:  MOV             R7, SP
133876:  BL              sub_133824
13387A:  POP.W           {R7,LR}
13387E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
