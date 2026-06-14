; =========================================================
; Game Engine Function: sub_12980C
; Address            : 0x12980C - 0x12982C
; =========================================================

12980C:  PUSH            {R4,R6,R7,LR}
12980E:  ADD             R7, SP, #8
129810:  SUB             SP, SP, #0x10
129812:  MOV             R4, R0
129814:  MOVS            R0, #0
129816:  STR             R0, [R4,#0x10]
129818:  STR             R2, [SP,#0x18+var_C]
12981A:  STRD.W          R3, R1, [SP,#0x18+var_14]
12981E:  ADD             R1, SP, #0x18+var_14
129820:  MOV             R0, R4
129822:  BL              sub_129A20
129826:  MOV             R0, R4
129828:  ADD             SP, SP, #0x10
12982A:  POP             {R4,R6,R7,PC}
