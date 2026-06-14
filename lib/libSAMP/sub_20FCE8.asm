; =========================================================
; Game Engine Function: sub_20FCE8
; Address            : 0x20FCE8 - 0x20FCF8
; =========================================================

20FCE8:  PUSH            {R7,LR}
20FCEA:  MOV             R7, SP
20FCEC:  BLX             pthread_equal
20FCF0:  CMP             R0, #0
20FCF2:  IT NE
20FCF4:  MOVNE           R0, #1
20FCF6:  POP             {R7,PC}
