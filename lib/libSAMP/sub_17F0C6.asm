; =========================================================
; Game Engine Function: sub_17F0C6
; Address            : 0x17F0C6 - 0x17F0EA
; =========================================================

17F0C6:  PUSH            {R4,R5,R7,LR}
17F0C8:  ADD             R7, SP, #8
17F0CA:  MOV             R4, R0
17F0CC:  MOVW            R5, #0x2F70
17F0D0:  BL              sub_17E2E4
17F0D4:  LDR             R1, [R4,R5]
17F0D6:  MOVW            R2, #0x2F68
17F0DA:  ADD             R2, R4
17F0DC:  MOVW            R3, #0x2F6C
17F0E0:  CMP             R0, R1
17F0E2:  IT HI
17F0E4:  ADDHI           R2, R4, R3
17F0E6:  LDR             R0, [R2]
17F0E8:  POP             {R4,R5,R7,PC}
