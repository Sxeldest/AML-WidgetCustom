; =========================================================
; Game Engine Function: sub_11D0BC
; Address            : 0x11D0BC - 0x11D0E2
; =========================================================

11D0BC:  PUSH            {R7,LR}
11D0BE:  MOV             R7, SP
11D0C0:  SUB             SP, SP, #0x10
11D0C2:  LDR             R0, [R0,#0x10]
11D0C4:  STRD.W          R2, R1, [SP,#0x18+var_10]
11D0C8:  STR             R3, [SP,#0x18+var_14]
11D0CA:  CBZ             R0, loc_11D0DE
11D0CC:  LDR             R1, [R0]
11D0CE:  ADD             R2, SP, #0x18+var_10
11D0D0:  ADD             R3, SP, #0x18+var_14
11D0D2:  LDR.W           R12, [R1,#0x18]
11D0D6:  ADD             R1, SP, #0x18+var_C
11D0D8:  BLX             R12
11D0DA:  ADD             SP, SP, #0x10
11D0DC:  POP             {R7,PC}
11D0DE:  BL              sub_DC92C
