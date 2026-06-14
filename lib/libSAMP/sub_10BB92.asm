; =========================================================
; Game Engine Function: sub_10BB92
; Address            : 0x10BB92 - 0x10BBAA
; =========================================================

10BB92:  PUSH            {R4,R6,R7,LR}
10BB94:  ADD             R7, SP, #8
10BB96:  MOV             R4, R0
10BB98:  ADDS            R0, #0x48 ; 'H'
10BB9A:  BL              sub_10BDE6
10BB9E:  LDR             R0, [R4,#4]; this
10BBA0:  CBZ             R0, loc_10BBA6
10BBA2:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10BBA6:  MOV             R0, R4
10BBA8:  POP             {R4,R6,R7,PC}
