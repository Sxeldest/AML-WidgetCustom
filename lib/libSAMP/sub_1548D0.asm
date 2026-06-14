; =========================================================
; Game Engine Function: sub_1548D0
; Address            : 0x1548D0 - 0x1548E2
; =========================================================

1548D0:  PUSH            {R4,R6,R7,LR}
1548D2:  ADD             R7, SP, #8
1548D4:  MOV             R4, R0
1548D6:  LDR             R0, [R0,#4]; this
1548D8:  CBZ             R0, loc_1548DE
1548DA:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1548DE:  MOV             R0, R4
1548E0:  POP             {R4,R6,R7,PC}
