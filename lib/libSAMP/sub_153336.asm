; =========================================================
; Game Engine Function: sub_153336
; Address            : 0x153336 - 0x153352
; =========================================================

153336:  PUSH            {R4,R6,R7,LR}
153338:  ADD             R7, SP, #8
15333A:  LDR             R4, [R0]
15333C:  STR             R1, [R0]
15333E:  CBZ             R4, locret_153350
153340:  ADDS            R0, R4, #4
153342:  BL              sub_15E0E8
153346:  MOV             R0, R4; void *
153348:  POP.W           {R4,R6,R7,LR}
15334C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
153350:  POP             {R4,R6,R7,PC}
