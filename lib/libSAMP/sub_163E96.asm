; =========================================================
; Game Engine Function: sub_163E96
; Address            : 0x163E96 - 0x163EBA
; =========================================================

163E96:  PUSH            {R4-R7,LR}
163E98:  ADD             R7, SP, #0xC
163E9A:  PUSH.W          {R11}
163E9E:  MOV             R5, R0
163EA0:  MOVS            R0, #0xC
163EA2:  MOV             R4, R1
163EA4:  BL              sub_163ECC
163EA8:  MOV             R1, R5
163EAA:  MOV             R6, R0
163EAC:  STR             R4, [R0]
163EAE:  BL              sub_163EBA
163EB2:  MOV             R0, R6
163EB4:  POP.W           {R11}
163EB8:  POP             {R4-R7,PC}
