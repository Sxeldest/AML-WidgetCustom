; =========================================================
; Game Engine Function: sub_13DD4C
; Address            : 0x13DD4C - 0x13DD5C
; =========================================================

13DD4C:  PUSH            {R7,LR}
13DD4E:  MOV             R7, SP
13DD50:  BL              sub_12BCE4
13DD54:  POP.W           {R7,LR}
13DD58:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
