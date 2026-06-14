; =========================================================
; Game Engine Function: sub_1EDFC8
; Address            : 0x1EDFC8 - 0x1EDFDA
; =========================================================

1EDFC8:  PUSH            {R4,R6,R7,LR}
1EDFCA:  ADD             R7, SP, #8
1EDFCC:  MOV             R4, R0
1EDFCE:  LDR             R0, [R0,#4]; this
1EDFD0:  CBZ             R0, loc_1EDFD6
1EDFD2:  BLX             j__ZNSt6__ndk119__shared_weak_count16__release_sharedEv; std::__shared_weak_count::__release_shared(void)
1EDFD6:  MOV             R0, R4
1EDFD8:  POP             {R4,R6,R7,PC}
