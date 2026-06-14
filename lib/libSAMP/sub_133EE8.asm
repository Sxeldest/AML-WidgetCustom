; =========================================================
; Game Engine Function: sub_133EE8
; Address            : 0x133EE8 - 0x133EF8
; =========================================================

133EE8:  PUSH            {R7,LR}
133EEA:  MOV             R7, SP
133EEC:  BL              sub_133E94
133EF0:  POP.W           {R7,LR}
133EF4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
