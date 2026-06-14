; =========================================================
; Game Engine Function: sub_181D0C
; Address            : 0x181D0C - 0x181D36
; =========================================================

181D0C:  PUSH            {R4,R6,R7,LR}
181D0E:  ADD             R7, SP, #8
181D10:  SUB             SP, SP, #8
181D12:  MOV             R4, R1
181D14:  MOVS            R1, #1
181D16:  STR             R1, [SP,#0x10+var_10]
181D18:  MOV             R1, R2
181D1A:  MOV             R2, R3
181D1C:  MOVS            R3, #0
181D1E:  BL              sub_181978
181D22:  CBZ             R0, loc_181D32
181D24:  ADDS            R0, #0x18
181D26:  MOV             R1, R4
181D28:  ADD             SP, SP, #8
181D2A:  POP.W           {R4,R6,R7,LR}
181D2E:  B.W             sub_1876D6
181D32:  ADD             SP, SP, #8
181D34:  POP             {R4,R6,R7,PC}
