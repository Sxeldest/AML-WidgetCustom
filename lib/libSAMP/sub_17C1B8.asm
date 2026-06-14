; =========================================================
; Game Engine Function: sub_17C1B8
; Address            : 0x17C1B8 - 0x17C1DA
; =========================================================

17C1B8:  SUB             SP, SP, #4
17C1BA:  PUSH            {R7,LR}
17C1BC:  MOV             R7, SP
17C1BE:  SUB             SP, SP, #4
17C1C0:  STR             R3, [R7,#8]
17C1C2:  LDR             R3, [R0]
17C1C4:  LDR.W           R12, [R3,#0xF8]
17C1C8:  ADD.W           R3, R7, #8
17C1CC:  STR             R3, [SP,#0x10+var_10]
17C1CE:  BLX             R12
17C1D0:  ADD             SP, SP, #4
17C1D2:  POP.W           {R7,LR}
17C1D6:  ADD             SP, SP, #4
17C1D8:  BX              LR
