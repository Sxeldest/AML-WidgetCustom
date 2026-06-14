; =========================================================
; Game Engine Function: sub_153314
; Address            : 0x153314 - 0x153336
; =========================================================

153314:  PUSH            {R4,R6,R7,LR}
153316:  ADD             R7, SP, #8
153318:  LDRB            R0, [R0,#4]
15331A:  MOV             R4, R1
15331C:  CBZ             R0, loc_153328
15331E:  ADD.W           R0, R4, #0xC
153322:  MOVS            R1, #0
153324:  BL              sub_153336
153328:  CBZ             R4, locret_153334
15332A:  MOV             R0, R4; void *
15332C:  POP.W           {R4,R6,R7,LR}
153330:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
153334:  POP             {R4,R6,R7,PC}
