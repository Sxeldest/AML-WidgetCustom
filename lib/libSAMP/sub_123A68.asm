; =========================================================
; Game Engine Function: sub_123A68
; Address            : 0x123A68 - 0x123A88
; =========================================================

123A68:  PUSH            {R4,R6,R7,LR}
123A6A:  ADD             R7, SP, #8
123A6C:  SUB             SP, SP, #0x10
123A6E:  MOV             R4, R0
123A70:  MOVS            R0, #0
123A72:  STR             R0, [R4,#0x10]
123A74:  STR             R2, [SP,#0x18+var_C]
123A76:  STRD.W          R3, R1, [SP,#0x18+var_14]
123A7A:  ADD             R1, SP, #0x18+var_14
123A7C:  MOV             R0, R4
123A7E:  BL              sub_123CA8
123A82:  MOV             R0, R4
123A84:  ADD             SP, SP, #0x10
123A86:  POP             {R4,R6,R7,PC}
