; =========================================================
; Game Engine Function: _ZN12FxSystemBP_cC2Ev
; Address            : 0x36DF22 - 0x36DF30
; =========================================================

36DF22:  PUSH            {R7,LR}
36DF24:  MOV             R7, SP
36DF26:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
36DF2A:  MOVS            R1, #0
36DF2C:  STR             R1, [R0,#0x20]
36DF2E:  POP             {R7,PC}
