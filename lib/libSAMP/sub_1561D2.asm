; =========================================================
; Game Engine Function: sub_1561D2
; Address            : 0x1561D2 - 0x1561FE
; =========================================================

1561D2:  CBZ             R1, locret_1561FC
1561D4:  PUSH            {R4,R6,R7,LR}
1561D6:  ADD             R7, SP, #8
1561D8:  ADD.W           R0, R1, #0x34 ; '4'
1561DC:  MOV             R4, R1
1561DE:  BL              sub_15E2C8
1561E2:  ADD.W           R0, R4, #0x20 ; ' '
1561E6:  BL              sub_152F10
1561EA:  ADD.W           R0, R4, #0xC
1561EE:  BL              sub_152EC6
1561F2:  MOV             R0, R4; void *
1561F4:  POP.W           {R4,R6,R7,LR}
1561F8:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1561FC:  BX              LR
