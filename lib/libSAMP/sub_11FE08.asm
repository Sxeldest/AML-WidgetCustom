; =========================================================
; Game Engine Function: sub_11FE08
; Address            : 0x11FE08 - 0x11FE3A
; =========================================================

11FE08:  PUSH            {R4-R7,LR}
11FE0A:  ADD             R7, SP, #0xC
11FE0C:  PUSH.W          {R8}
11FE10:  SUB             SP, SP, #8
11FE12:  MOV             R4, R3
11FE14:  MOV             R8, R2
11FE16:  MOV             R6, R1
11FE18:  MOV             R5, R0
11FE1A:  BL              sub_11FE40
11FE1E:  LDR             R0, =(unk_2638B0 - 0x11FE2A)
11FE20:  MOV             R2, R6
11FE22:  LDR             R1, [R7,#arg_0]
11FE24:  MOV             R3, R8
11FE26:  ADD             R0, PC; unk_2638B0
11FE28:  STRD.W          R4, R1, [SP,#0x18+var_18]
11FE2C:  MOV             R1, R5
11FE2E:  BL              sub_11FF0C
11FE32:  ADD             SP, SP, #8
11FE34:  POP.W           {R8}
11FE38:  POP             {R4-R7,PC}
