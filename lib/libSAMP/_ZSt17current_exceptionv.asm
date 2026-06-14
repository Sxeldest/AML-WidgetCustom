; =========================================================
; Game Engine Function: _ZSt17current_exceptionv
; Address            : 0x1ED7A0 - 0x1ED7AE
; =========================================================

1ED7A0:  PUSH            {R4,R6,R7,LR}
1ED7A2:  ADD             R7, SP, #8
1ED7A4:  MOV             R4, R0
1ED7A6:  BLX             j___cxa_current_primary_exception
1ED7AA:  STR             R0, [R4]
1ED7AC:  POP             {R4,R6,R7,PC}
