; =========================================================
; Game Engine Function: sub_15F264
; Address            : 0x15F264 - 0x15F286
; =========================================================

15F264:  PUSH            {R4,R6,R7,LR}
15F266:  ADD             R7, SP, #8
15F268:  LDRB            R0, [R0,#4]
15F26A:  MOV             R4, R1
15F26C:  CBZ             R0, loc_15F278
15F26E:  ADD.W           R0, R4, #0xC
15F272:  MOVS            R1, #0
15F274:  BL              sub_F629E
15F278:  CBZ             R4, locret_15F284
15F27A:  MOV             R0, R4; void *
15F27C:  POP.W           {R4,R6,R7,LR}
15F280:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
15F284:  POP             {R4,R6,R7,PC}
