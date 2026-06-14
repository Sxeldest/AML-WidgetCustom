; =========================================================
; Game Engine Function: sub_EE5D0
; Address            : 0xEE5D0 - 0xEE5E6
; =========================================================

EE5D0:  PUSH            {R4,R6,R7,LR}
EE5D2:  ADD             R7, SP, #8
EE5D4:  MOV             R4, R0
EE5D6:  LDR             R0, [R0]; this
EE5D8:  MOVS            R1, #0
EE5DA:  STR             R1, [R4]
EE5DC:  CBZ             R0, loc_EE5E2
EE5DE:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
EE5E2:  MOV             R0, R4
EE5E4:  POP             {R4,R6,R7,PC}
