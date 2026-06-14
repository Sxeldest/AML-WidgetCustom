; =========================================================
; Game Engine Function: sub_100CDE
; Address            : 0x100CDE - 0x100D0C
; =========================================================

100CDE:  CBZ             R1, locret_100D0A
100CE0:  PUSH            {R4,R5,R7,LR}
100CE2:  ADD             R7, SP, #8
100CE4:  MOV             R4, R1
100CE6:  LDR             R1, [R1]
100CE8:  MOV             R5, R0
100CEA:  BL              sub_100CDE
100CEE:  LDR             R1, [R4,#4]
100CF0:  MOV             R0, R5
100CF2:  BL              sub_100CDE
100CF6:  LDR             R1, [R4,#0x18]
100CF8:  ADD.W           R0, R4, #0x14
100CFC:  BL              sub_100D0C
100D00:  MOV             R0, R4; void *
100D02:  POP.W           {R4,R5,R7,LR}
100D06:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
100D0A:  BX              LR
