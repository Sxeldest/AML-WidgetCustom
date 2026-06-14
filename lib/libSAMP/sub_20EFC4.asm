; =========================================================
; Game Engine Function: sub_20EFC4
; Address            : 0x20EFC4 - 0x20EFDA
; =========================================================

20EFC4:  PUSH            {R4,R5,R7,LR}
20EFC6:  ADD             R7, SP, #8
20EFC8:  MOV             R4, R1
20EFCA:  MOV             R5, R0
20EFCC:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20EFD0:  MOV             R0, R5; nptr
20EFD2:  MOV             R1, R4; endptr
20EFD4:  BLX             strtod
20EFD8:  POP             {R4,R5,R7,PC}
