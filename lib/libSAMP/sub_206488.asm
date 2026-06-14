; =========================================================
; Game Engine Function: sub_206488
; Address            : 0x206488 - 0x20649E
; =========================================================

206488:  PUSH            {R4,R6,R7,LR}
20648A:  ADD             R7, SP, #8
20648C:  MOV             R4, R0
20648E:  LDR             R0, [R0]; this
206490:  MOVS            R1, #0
206492:  STR             R1, [R4]
206494:  CBZ             R0, loc_20649A
206496:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
20649A:  MOV             R0, R4
20649C:  POP             {R4,R6,R7,PC}
