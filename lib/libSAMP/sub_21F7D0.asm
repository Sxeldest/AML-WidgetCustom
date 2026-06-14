; =========================================================
; Game Engine Function: sub_21F7D0
; Address            : 0x21F7D0 - 0x21F806
; =========================================================

21F7D0:  PUSH            {R4-R7,LR}
21F7D2:  ADD             R7, SP, #0xC
21F7D4:  PUSH.W          {R11}
21F7D8:  SUB             SP, SP, #8
21F7DA:  LDR             R4, [R0,#4]
21F7DC:  LDR.W           R12, [R7,#arg_0]
21F7E0:  ASRS            R5, R4, #8
21F7E2:  LSLS            R6, R4, #0x1F
21F7E4:  ITT NE
21F7E6:  LDRNE           R6, [R2]
21F7E8:  LDRNE           R5, [R6,R5]
21F7EA:  LDR             R0, [R0]
21F7EC:  ADD             R2, R5
21F7EE:  LSLS            R4, R4, #0x1E
21F7F0:  LDR             R6, [R0]
21F7F2:  LDR             R6, [R6,#0x18]
21F7F4:  STR.W           R12, [SP,#0x18+var_18]
21F7F8:  IT PL
21F7FA:  MOVPL           R3, #2
21F7FC:  BLX             R6
21F7FE:  ADD             SP, SP, #8
21F800:  POP.W           {R11}
21F804:  POP             {R4-R7,PC}
