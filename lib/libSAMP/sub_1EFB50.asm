; =========================================================
; Game Engine Function: sub_1EFB50
; Address            : 0x1EFB50 - 0x1EFB66
; =========================================================

1EFB50:  PUSH            {R4,R5,R7,LR}
1EFB52:  ADD             R7, SP, #8
1EFB54:  MOV             R4, R0
1EFB56:  BLX             __errno
1EFB5A:  LDR             R5, [R0]
1EFB5C:  BLX             j__ZNSt6__ndk116generic_categoryEv; std::generic_category(void)
1EFB60:  STRD.W          R5, R0, [R4]
1EFB64:  POP             {R4,R5,R7,PC}
