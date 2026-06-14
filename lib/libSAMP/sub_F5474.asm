; =========================================================
; Game Engine Function: sub_F5474
; Address            : 0xF5474 - 0xF5498
; =========================================================

F5474:  CBZ             R1, locret_F5496
F5476:  PUSH            {R4,R5,R7,LR}
F5478:  ADD             R7, SP, #8
F547A:  MOV             R4, R1
F547C:  LDR             R1, [R1]
F547E:  MOV             R5, R0
F5480:  BL              sub_F5474
F5484:  LDR             R1, [R4,#4]
F5486:  MOV             R0, R5
F5488:  BL              sub_F5474
F548C:  MOV             R0, R4; void *
F548E:  POP.W           {R4,R5,R7,LR}
F5492:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
F5496:  BX              LR
