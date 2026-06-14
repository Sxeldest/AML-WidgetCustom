; =========================================================
; Game Engine Function: sub_100D0C
; Address            : 0x100D0C - 0x100D30
; =========================================================

100D0C:  CBZ             R1, locret_100D2E
100D0E:  PUSH            {R4,R5,R7,LR}
100D10:  ADD             R7, SP, #8
100D12:  MOV             R4, R1
100D14:  LDR             R1, [R1]
100D16:  MOV             R5, R0
100D18:  BL              sub_100D0C
100D1C:  LDR             R1, [R4,#4]
100D1E:  MOV             R0, R5
100D20:  BL              sub_100D0C
100D24:  MOV             R0, R4; void *
100D26:  POP.W           {R4,R5,R7,LR}
100D2A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
100D2E:  BX              LR
