; =========================================================
; Game Engine Function: sub_10A770
; Address            : 0x10A770 - 0x10A782
; =========================================================

10A770:  PUSH            {R4,R6,R7,LR}
10A772:  ADD             R7, SP, #8
10A774:  MOV             R4, R0
10A776:  LDR             R0, [R0,#4]; this
10A778:  CBZ             R0, loc_10A77E
10A77A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A77E:  MOV             R0, R4
10A780:  POP             {R4,R6,R7,PC}
