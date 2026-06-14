; =========================================================
; Game Engine Function: sub_214CB0
; Address            : 0x214CB0 - 0x214CBC
; =========================================================

214CB0:  PUSH            {R7,LR}
214CB2:  MOV             R7, SP
214CB4:  LDR             R0, [R0]; th
214CB6:  BLX             pthread_detach
214CBA:  POP             {R7,PC}
