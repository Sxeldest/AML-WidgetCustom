; =========================================================
; Game Engine Function: _ZSt18uncaught_exceptionv
; Address            : 0xE3004 - 0xE3018
; =========================================================

E3004:  PUSH            {R7,LR}
E3006:  MOV             R7, SP
E3008:  BLX             j___cxa_uncaught_exceptions
E300C:  MOVS            R1, #0
E300E:  CMP             R0, #0
E3010:  IT GT
E3012:  MOVGT           R1, #1
E3014:  MOV             R0, R1
E3016:  POP             {R7,PC}
