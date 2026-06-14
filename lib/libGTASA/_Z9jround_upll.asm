; =========================================================
; Game Engine Function: _Z9jround_upll
; Address            : 0x482280 - 0x482292
; =========================================================

482280:  PUSH            {R4,R6,R7,LR}
482282:  ADD             R7, SP, #8
482284:  ADD             R0, R1
482286:  SUBS            R4, R0, #1
482288:  MOV             R0, R4
48228A:  BLX             __aeabi_idivmod
48228E:  SUBS            R0, R4, R1
482290:  POP             {R4,R6,R7,PC}
