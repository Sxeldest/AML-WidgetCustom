; =========================================================
; Game Engine Function: sub_1388F4
; Address            : 0x1388F4 - 0x138904
; =========================================================

1388F4:  PUSH            {R7,LR}
1388F6:  MOV             R7, SP
1388F8:  BL              sub_13887C
1388FC:  POP.W           {R7,LR}
138900:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
