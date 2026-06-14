; =========================================================
; Game Engine Function: sub_160946
; Address            : 0x160946 - 0x16096A
; =========================================================

160946:  PUSH            {R4,R5,R7,LR}
160948:  ADD             R7, SP, #8
16094A:  LDRD.W          R5, R1, [R0,#4]
16094E:  CMP             R1, R5
160950:  BEQ             locret_160968
160952:  MOV             R4, R0
160954:  LDR.W           R0, [R1,#-4]; this
160958:  SUBS            R1, #8
16095A:  STR             R1, [R4,#8]
16095C:  CBZ             R0, loc_160964
16095E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
160962:  LDR             R1, [R4,#8]
160964:  CMP             R1, R5
160966:  BNE             loc_160954
160968:  POP             {R4,R5,R7,PC}
