; =========================================================
; Game Engine Function: sub_13ADB4
; Address            : 0x13ADB4 - 0x13ADC4
; =========================================================

13ADB4:  PUSH            {R7,LR}
13ADB6:  MOV             R7, SP
13ADB8:  BL              sub_12BCE4
13ADBC:  POP.W           {R7,LR}
13ADC0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
