; =========================================================
; Game Engine Function: sub_121CFC
; Address            : 0x121CFC - 0x121D1C
; =========================================================

121CFC:  PUSH            {R4,R6,R7,LR}
121CFE:  ADD             R7, SP, #8
121D00:  SUB             SP, SP, #0x10
121D02:  MOV             R4, R0
121D04:  MOVS            R0, #0
121D06:  STR             R0, [R4,#0x10]
121D08:  STR             R2, [SP,#0x18+var_C]
121D0A:  STRD.W          R3, R1, [SP,#0x18+var_14]
121D0E:  ADD             R1, SP, #0x18+var_14
121D10:  MOV             R0, R4
121D12:  BL              sub_123518
121D16:  MOV             R0, R4
121D18:  ADD             SP, SP, #0x10
121D1A:  POP             {R4,R6,R7,PC}
