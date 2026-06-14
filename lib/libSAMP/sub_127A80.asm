; =========================================================
; Game Engine Function: sub_127A80
; Address            : 0x127A80 - 0x127AA0
; =========================================================

127A80:  PUSH            {R4,R6,R7,LR}
127A82:  ADD             R7, SP, #8
127A84:  SUB             SP, SP, #0x10
127A86:  MOV             R4, R0
127A88:  MOVS            R0, #0
127A8A:  STR             R0, [R4,#0x10]
127A8C:  STR             R2, [SP,#0x18+var_C]
127A8E:  STRD.W          R3, R1, [SP,#0x18+var_14]
127A92:  ADD             R1, SP, #0x18+var_14
127A94:  MOV             R0, R4
127A96:  BL              sub_12817C
127A9A:  MOV             R0, R4
127A9C:  ADD             SP, SP, #0x10
127A9E:  POP             {R4,R6,R7,PC}
