; =========================================================
; Game Engine Function: sub_136036
; Address            : 0x136036 - 0x136052
; =========================================================

136036:  PUSH            {R4,R6,R7,LR}
136038:  ADD             R7, SP, #8
13603A:  MOV             R4, R0
13603C:  LDRB            R0, [R0,#8]
13603E:  LSLS            R0, R0, #0x1F
136040:  ITT NE
136042:  LDRNE           R0, [R4,#0x10]; void *
136044:  BLXNE           j__ZdlPv; operator delete(void *)
136048:  MOV             R0, R4; void *
13604A:  POP.W           {R4,R6,R7,LR}
13604E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
