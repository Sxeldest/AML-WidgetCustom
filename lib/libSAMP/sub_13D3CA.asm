; =========================================================
; Game Engine Function: sub_13D3CA
; Address            : 0x13D3CA - 0x13D3DA
; =========================================================

13D3CA:  PUSH            {R7,LR}
13D3CC:  MOV             R7, SP
13D3CE:  BL              sub_12BCE4
13D3D2:  POP.W           {R7,LR}
13D3D6:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
