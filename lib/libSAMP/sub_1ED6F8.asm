; =========================================================
; Game Engine Function: sub_1ED6F8
; Address            : 0x1ED6F8 - 0x1ED704
; =========================================================

1ED6F8:  PUSH            {R7,LR}
1ED6FA:  MOV             R7, SP
1ED6FC:  LDR             R0, [R0]; key
1ED6FE:  BLX             pthread_getspecific
1ED702:  POP             {R7,PC}
