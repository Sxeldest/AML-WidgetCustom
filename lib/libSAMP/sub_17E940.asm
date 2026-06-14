; =========================================================
; Game Engine Function: sub_17E940
; Address            : 0x17E940 - 0x17E954
; =========================================================

17E940:  PUSH            {R7,LR}
17E942:  MOV             R7, SP
17E944:  SUB.W           R0, R0, #0x9D0
17E948:  BL              sub_17E8E8
17E94C:  POP.W           {R7,LR}
17E950:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
