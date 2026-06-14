; =========================================================
; Game Engine Function: sub_F7F20
; Address            : 0xF7F20 - 0xF7F30
; =========================================================

F7F20:  PUSH            {R7,LR}
F7F22:  MOV             R7, SP
F7F24:  BLX             pthread_equal
F7F28:  CMP             R0, #0
F7F2A:  IT NE
F7F2C:  MOVNE           R0, #1
F7F2E:  POP             {R7,PC}
