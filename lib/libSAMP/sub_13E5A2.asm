; =========================================================
; Game Engine Function: sub_13E5A2
; Address            : 0x13E5A2 - 0x13E5CA
; =========================================================

13E5A2:  PUSH            {R4-R7,LR}
13E5A4:  ADD             R7, SP, #0xC
13E5A6:  PUSH.W          {R8}
13E5AA:  MOV             R4, R0
13E5AC:  MOVS            R6, #0
13E5AE:  MOVW            R8, #0x3E7
13E5B2:  UXTH            R5, R6
13E5B4:  MOV             R0, R4
13E5B6:  MOV             R1, R5
13E5B8:  BL              sub_13E5CE
13E5BC:  ADDS            R6, #1
13E5BE:  CMP             R5, R8
13E5C0:  BCC             loc_13E5B2
13E5C2:  MOV             R0, R4
13E5C4:  POP.W           {R8}
13E5C8:  POP             {R4-R7,PC}
