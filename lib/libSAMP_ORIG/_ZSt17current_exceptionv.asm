; =========================================================
; Game Engine Function: _ZSt17current_exceptionv
; Address            : 0xE3088 - 0xE3096
; =========================================================

E3088:  PUSH            {R4,R6,R7,LR}
E308A:  ADD             R7, SP, #8
E308C:  MOV             R4, R0
E308E:  BLX             j___cxa_current_primary_exception
E3092:  STR             R0, [R4]
E3094:  POP             {R4,R6,R7,PC}
