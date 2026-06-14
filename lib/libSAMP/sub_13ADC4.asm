; =========================================================
; Game Engine Function: sub_13ADC4
; Address            : 0x13ADC4 - 0x13ADD4
; =========================================================

13ADC4:  PUSH            {R7,LR}
13ADC6:  MOV             R7, SP
13ADC8:  BL              sub_12BCE4
13ADCC:  POP.W           {R7,LR}
13ADD0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
