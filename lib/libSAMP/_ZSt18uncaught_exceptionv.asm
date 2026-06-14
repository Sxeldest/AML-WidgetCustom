; =========================================================
; Game Engine Function: _ZSt18uncaught_exceptionv
; Address            : 0x1ED71C - 0x1ED730
; =========================================================

1ED71C:  PUSH            {R7,LR}
1ED71E:  MOV             R7, SP
1ED720:  BLX             j___cxa_uncaught_exceptions
1ED724:  MOVS            R1, #0
1ED726:  CMP             R0, #0
1ED728:  IT GT
1ED72A:  MOVGT           R1, #1
1ED72C:  MOV             R0, R1
1ED72E:  POP             {R7,PC}
