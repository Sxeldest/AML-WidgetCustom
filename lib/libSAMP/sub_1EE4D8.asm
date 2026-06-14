; =========================================================
; Game Engine Function: sub_1EE4D8
; Address            : 0x1EE4D8 - 0x1EE4EE
; =========================================================

1EE4D8:  PUSH            {R4,R5,R7,LR}
1EE4DA:  ADD             R7, SP, #8
1EE4DC:  MOV             R4, R0
1EE4DE:  BLX             __errno
1EE4E2:  LDR             R5, [R0]
1EE4E4:  BLX             j__ZNSt6__ndk116generic_categoryEv; std::generic_category(void)
1EE4E8:  STRD.W          R5, R0, [R4]
1EE4EC:  POP             {R4,R5,R7,PC}
