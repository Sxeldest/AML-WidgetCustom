; =========================================================
; Game Engine Function: sub_1606CA
; Address            : 0x1606CA - 0x1606F2
; =========================================================

1606CA:  PUSH            {R4-R7,LR}
1606CC:  ADD             R7, SP, #0xC
1606CE:  PUSH.W          {R11}
1606D2:  LDRD.W          R5, R6, [R0]
1606D6:  MOV             R4, R0
1606D8:  CMP             R6, R5
1606DA:  BEQ             loc_1606EA
1606DC:  LDR.W           R0, [R6,#-4]; this
1606E0:  CBZ             R0, loc_1606E6
1606E2:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1606E6:  SUBS            R6, #8
1606E8:  B               loc_1606D8
1606EA:  STR             R5, [R4,#4]
1606EC:  POP.W           {R11}
1606F0:  POP             {R4-R7,PC}
