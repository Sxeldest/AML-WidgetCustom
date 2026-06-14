; =========================================================
; Game Engine Function: INT123_reset_icy
; Address            : 0x226CDC - 0x226CF2
; =========================================================

226CDC:  PUSH            {R4,R6,R7,LR}
226CDE:  ADD             R7, SP, #8
226CE0:  MOV             R4, R0
226CE2:  LDR             R0, [R4]; p
226CE4:  CMP             R0, #0
226CE6:  IT NE
226CE8:  BLXNE           free
226CEC:  MOVS            R0, #0
226CEE:  STR             R0, [R4]
226CF0:  POP             {R4,R6,R7,PC}
