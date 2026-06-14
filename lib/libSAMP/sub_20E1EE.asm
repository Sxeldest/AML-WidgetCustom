; =========================================================
; Game Engine Function: sub_20E1EE
; Address            : 0x20E1EE - 0x20E20C
; =========================================================

20E1EE:  PUSH            {R4,R6,R7,LR}
20E1F0:  ADD             R7, SP, #8
20E1F2:  LDR             R1, [R0]
20E1F4:  MOV             R4, R0
20E1F6:  CBZ             R1, loc_20E208
20E1F8:  LDR             R0, [R4,#8]
20E1FA:  STR             R1, [R4,#4]
20E1FC:  SUBS            R0, R0, R1
20E1FE:  ASRS            R2, R0, #2
20E200:  ADD.W           R0, R4, #0x10
20E204:  BL              sub_20E22A
20E208:  MOV             R0, R4
20E20A:  POP             {R4,R6,R7,PC}
