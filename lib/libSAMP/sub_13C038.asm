; =========================================================
; Game Engine Function: sub_13C038
; Address            : 0x13C038 - 0x13C048
; =========================================================

13C038:  PUSH            {R7,LR}
13C03A:  MOV             R7, SP
13C03C:  BL              sub_12BCE4
13C040:  POP.W           {R7,LR}
13C044:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
