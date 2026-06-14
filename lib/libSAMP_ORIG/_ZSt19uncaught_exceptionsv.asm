; =========================================================
; Game Engine Function: _ZSt19uncaught_exceptionsv
; Address            : 0xE3018 - 0xE3022
; =========================================================

E3018:  PUSH            {R7,LR}
E301A:  MOV             R7, SP
E301C:  BLX             j___cxa_uncaught_exceptions
E3020:  POP             {R7,PC}
