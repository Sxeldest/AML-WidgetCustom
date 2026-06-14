; =========================================================
; Game Engine Function: sub_17F4C0
; Address            : 0x17F4C0 - 0x17F514
; =========================================================

17F4C0:  PUSH            {R4-R7,LR}
17F4C2:  ADD             R7, SP, #0xC
17F4C4:  PUSH.W          {R11}
17F4C8:  SUB             SP, SP, #8
17F4CA:  MOV             R4, R0
17F4CC:  LDR.W           R0, [R1,#0x340]
17F4D0:  CBZ             R0, loc_17F4F6
17F4D2:  LDRD.W          R2, R3, [R0,#4]
17F4D6:  MOV             R6, SP
17F4D8:  MOV             R0, R6
17F4DA:  MOV             R5, R1
17F4DC:  BL              sub_181C80
17F4E0:  LDR             R1, =(unk_BE920 - 0x17F4E8)
17F4E2:  MOV             R0, R6
17F4E4:  ADD             R1, PC; unk_BE920
17F4E6:  BL              sub_17E580
17F4EA:  CBZ             R0, loc_17F504
17F4EC:  MOV             R0, R4
17F4EE:  MOV             R1, R5
17F4F0:  BL              sub_181C76
17F4F4:  B               loc_17F50C
17F4F6:  MOVW            R0, #0xFFFF
17F4FA:  MOV.W           R1, #0xFFFFFFFF
17F4FE:  STRD.W          R1, R0, [R4]
17F502:  B               loc_17F50C
17F504:  LDRD.W          R0, R1, [SP,#0x18+var_18]
17F508:  STRD.W          R0, R1, [R4]
17F50C:  ADD             SP, SP, #8
17F50E:  POP.W           {R11}
17F512:  POP             {R4-R7,PC}
