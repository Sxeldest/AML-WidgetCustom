; =========================================================
; Game Engine Function: sub_17E930
; Address            : 0x17E930 - 0x17E940
; =========================================================

17E930:  PUSH            {R7,LR}
17E932:  MOV             R7, SP
17E934:  BL              sub_17E8E8
17E938:  POP.W           {R7,LR}
17E93C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
