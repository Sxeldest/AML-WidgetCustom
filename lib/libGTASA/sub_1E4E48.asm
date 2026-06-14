; =========================================================
; Game Engine Function: sub_1E4E48
; Address            : 0x1E4E48 - 0x1E4E68
; =========================================================

1E4E48:  PUSH            {R4,R5,R7,LR}
1E4E4A:  ADD             R7, SP, #8
1E4E4C:  MUL.W           R4, R1, R0
1E4E50:  MOV             R0, R4; byte_count
1E4E52:  BLX             malloc
1E4E56:  MOV             R5, R0
1E4E58:  CMP             R5, #0
1E4E5A:  ITTT NE
1E4E5C:  MOVNE           R0, R5
1E4E5E:  MOVNE           R1, R4
1E4E60:  BLXNE           j___aeabi_memclr8_1
1E4E64:  MOV             R0, R5
1E4E66:  POP             {R4,R5,R7,PC}
