; =========================================================
; Game Engine Function: sub_11340C
; Address            : 0x11340C - 0x11342E
; =========================================================

11340C:  PUSH            {R4,R6,R7,LR}
11340E:  ADD             R7, SP, #8
113410:  LDR             R4, [R0]
113412:  STR             R1, [R0]
113414:  CBZ             R4, locret_11342C
113416:  LDRB            R0, [R0,#8]
113418:  CBZ             R0, loc_113422
11341A:  ADD.W           R0, R4, #0x14
11341E:  BL              sub_113328
113422:  MOV             R0, R4; void *
113424:  POP.W           {R4,R6,R7,LR}
113428:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
11342C:  POP             {R4,R6,R7,PC}
