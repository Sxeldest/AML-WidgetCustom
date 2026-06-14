; =========================================================
; Game Engine Function: sub_1EE918
; Address            : 0x1EE918 - 0x1EE92A
; =========================================================

1EE918:  PUSH            {R4,R6,R7,LR}
1EE91A:  ADD             R7, SP, #8
1EE91C:  MOV             R4, R0
1EE91E:  LDR             R0, [R0,#4]; this
1EE920:  CBZ             R0, loc_1EE926
1EE922:  BLX             j__ZNSt6__ndk119__shared_weak_count16__release_sharedEv; std::__shared_weak_count::__release_shared(void)
1EE926:  MOV             R0, R4
1EE928:  POP             {R4,R6,R7,PC}
