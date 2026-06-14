; =========================================================
; Game Engine Function: sub_13E2A0
; Address            : 0x13E2A0 - 0x13E2C6
; =========================================================

13E2A0:  PUSH            {R4-R7,LR}
13E2A2:  ADD             R7, SP, #0xC
13E2A4:  PUSH.W          {R11}
13E2A8:  MOV             R4, R0
13E2AA:  LDRD.W          R5, R6, [R0]
13E2AE:  CMP             R6, R5
13E2B0:  BEQ             loc_13E2BE
13E2B2:  SUBS            R0, R6, #4
13E2B4:  MOVS            R1, #0
13E2B6:  BL              sub_13E4F0
13E2BA:  SUBS            R6, #0x3C ; '<'
13E2BC:  B               loc_13E2AE
13E2BE:  STR             R5, [R4,#4]
13E2C0:  POP.W           {R11}
13E2C4:  POP             {R4-R7,PC}
