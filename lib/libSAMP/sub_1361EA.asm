; =========================================================
; Game Engine Function: sub_1361EA
; Address            : 0x1361EA - 0x136206
; =========================================================

1361EA:  PUSH            {R4,R6,R7,LR}
1361EC:  ADD             R7, SP, #8
1361EE:  MOV             R4, R0
1361F0:  LDRB            R0, [R0,#8]
1361F2:  LSLS            R0, R0, #0x1F
1361F4:  ITT NE
1361F6:  LDRNE           R0, [R4,#0x10]; void *
1361F8:  BLXNE           j__ZdlPv; operator delete(void *)
1361FC:  MOV             R0, R4; void *
1361FE:  POP.W           {R4,R6,R7,LR}
136202:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
