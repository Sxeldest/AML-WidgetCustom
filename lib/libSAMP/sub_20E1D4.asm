; =========================================================
; Game Engine Function: sub_20E1D4
; Address            : 0x20E1D4 - 0x20E1EE
; =========================================================

20E1D4:  PUSH            {R4,R6,R7,LR}
20E1D6:  ADD             R7, SP, #8
20E1D8:  LDR             R3, [R0,#4]
20E1DA:  MOVS            R4, #0
20E1DC:  ADD.W           R2, R3, R1,LSL#2
20E1E0:  LSLS            R1, R1, #2
20E1E2:  CBZ             R1, loc_20E1EA
20E1E4:  STM             R3!, {R4}
20E1E6:  SUBS            R1, #4
20E1E8:  B               loc_20E1E2
20E1EA:  STR             R2, [R0,#4]
20E1EC:  POP             {R4,R6,R7,PC}
