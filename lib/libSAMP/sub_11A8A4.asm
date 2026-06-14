; =========================================================
; Game Engine Function: sub_11A8A4
; Address            : 0x11A8A4 - 0x11A8E6
; =========================================================

11A8A4:  CBZ             R1, locret_11A8E4
11A8A6:  PUSH            {R4-R7,LR}
11A8A8:  ADD             R7, SP, #0xC
11A8AA:  PUSH.W          {R11}
11A8AE:  ADD.W           R0, R1, #0x4D000
11A8B2:  MOVW            R6, #0x2E70
11A8B6:  ADD.W           R5, R0, #0x18C
11A8BA:  MOV             R4, R1
11A8BC:  MOVT            R6, #0xFFFB
11A8C0:  LDRB.W          R0, [R5,#-8]
11A8C4:  LSLS            R0, R0, #0x1F
11A8C6:  ITT NE
11A8C8:  LDRNE           R0, [R5]; void *
11A8CA:  BLXNE           j__ZdlPv; operator delete(void *)
11A8CE:  ADDS            R6, #0xC
11A8D0:  SUB.W           R5, R5, #0xC
11A8D4:  BNE             loc_11A8C0
11A8D6:  MOV             R0, R4; void *
11A8D8:  POP.W           {R11}
11A8DC:  POP.W           {R4-R7,LR}
11A8E0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
11A8E4:  BX              LR
