; =========================================================
; Game Engine Function: INT123_clear_icy
; Address            : 0x225F50 - 0x225F66
; =========================================================

225F50:  PUSH            {R4,R6,R7,LR}
225F52:  ADD             R7, SP, #8
225F54:  MOV             R4, R0
225F56:  LDR             R0, [R4]; p
225F58:  CMP             R0, #0
225F5A:  IT NE
225F5C:  BLXNE           free
225F60:  MOVS            R0, #0
225F62:  STR             R0, [R4]
225F64:  POP             {R4,R6,R7,PC}
