; =========================================================
; Game Engine Function: sub_1EE4A0
; Address            : 0x1EE4A0 - 0x1EE4D8
; =========================================================

1EE4A0:  PUSH            {R4-R7,LR}
1EE4A2:  ADD             R7, SP, #0xC
1EE4A4:  PUSH.W          {R11}
1EE4A8:  MOV             R4, R3
1EE4AA:  MOV             R5, R2
1EE4AC:  MOV             R6, R0
1EE4AE:  BL              sub_1EE4FE
1EE4B2:  LDR             R0, [R7,#arg_14]
1EE4B4:  STR             R0, [R6,#0x2C]
1EE4B6:  LDR             R0, [R7,#arg_10]
1EE4B8:  STR             R0, [R6,#0x28]
1EE4BA:  LDR             R0, [R7,#arg_C]
1EE4BC:  STR             R0, [R6,#0x24]
1EE4BE:  LDR             R0, [R7,#arg_8]
1EE4C0:  STR             R0, [R6,#0x20]
1EE4C2:  LDR             R0, [R7,#arg_4]
1EE4C4:  STR             R0, [R6,#0x1C]
1EE4C6:  LDR             R0, [R7,#arg_0]
1EE4C8:  STR             R0, [R6,#0x18]
1EE4CA:  LDR             R0, [R7,#arg_18]
1EE4CC:  STRD.W          R5, R4, [R6,#0x10]
1EE4D0:  STRH            R0, [R6,#0x30]
1EE4D2:  POP.W           {R11}
1EE4D6:  POP             {R4-R7,PC}
