; =========================================================
; Game Engine Function: sub_7C3FC
; Address            : 0x7C3FC - 0x7C446
; =========================================================

7C3FC:  PUSH            {R4-R7,LR}
7C3FE:  ADD             R7, SP, #0xC
7C400:  PUSH.W          {R11}
7C404:  MOV             R4, R0
7C406:  LDR             R0, =(_ZTV6Widget - 0x7C410); `vtable for'Widget ...
7C408:  LDRD.W          R5, R6, [R4,#0x48]
7C40C:  ADD             R0, PC; `vtable for'Widget
7C40E:  CMP             R5, R6
7C410:  ADD.W           R0, R0, #8
7C414:  STR             R0, [R4]
7C416:  BEQ             loc_7C42C
7C418:  LDR             R0, [R5]
7C41A:  CMP             R0, #0
7C41C:  ITTT NE
7C41E:  LDRNE           R1, [R0]
7C420:  LDRNE           R1, [R1,#0x28]
7C422:  BLXNE           R1
7C424:  ADDS            R5, #4
7C426:  CMP             R5, R6
7C428:  BNE             loc_7C418
7C42A:  LDR             R5, [R4,#0x48]
7C42C:  CMP             R5, #0
7C42E:  ITTT NE
7C430:  STRNE           R5, [R4,#0x4C]
7C432:  MOVNE           R0, R5; void *
7C434:  BLXNE           j__ZdlPv; operator delete(void *)
7C438:  MOV             R0, R4; void *
7C43A:  POP.W           {R11}
7C43E:  POP.W           {R4-R7,LR}
7C442:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
