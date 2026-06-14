; =========================================================
; Game Engine Function: sub_13724C
; Address            : 0x13724C - 0x13725C
; =========================================================

13724C:  PUSH            {R7,LR}
13724E:  MOV             R7, SP
137250:  BL              sub_12BCE4
137254:  POP.W           {R7,LR}
137258:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
