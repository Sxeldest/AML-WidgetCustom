; =========================================================
; Game Engine Function: sub_15614C
; Address            : 0x15614C - 0x156178
; =========================================================

15614C:  CBZ             R1, locret_156176
15614E:  PUSH            {R4,R6,R7,LR}
156150:  ADD             R7, SP, #8
156152:  LDRB            R0, [R1,#0x10]
156154:  MOV             R4, R1
156156:  LSLS            R0, R0, #0x1F
156158:  ITT NE
15615A:  LDRNE           R0, [R4,#0x18]; void *
15615C:  BLXNE           j__ZdlPv; operator delete(void *)
156160:  LDRB            R0, [R4,#4]
156162:  LSLS            R0, R0, #0x1F
156164:  ITT NE
156166:  LDRNE           R0, [R4,#0xC]; void *
156168:  BLXNE           j__ZdlPv; operator delete(void *)
15616C:  MOV             R0, R4; void *
15616E:  POP.W           {R4,R6,R7,LR}
156172:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
156176:  BX              LR
