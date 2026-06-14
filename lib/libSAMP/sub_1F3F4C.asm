; =========================================================
; Game Engine Function: sub_1F3F4C
; Address            : 0x1F3F4C - 0x1F3F5E
; =========================================================

1F3F4C:  PUSH            {R7,LR}
1F3F4E:  MOV             R7, SP
1F3F50:  MOV             R2, R0
1F3F52:  LDR             R0, [R0]; this
1F3F54:  STR             R1, [R2]
1F3F56:  CBZ             R0, locret_1F3F5C
1F3F58:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
1F3F5C:  POP             {R7,PC}
