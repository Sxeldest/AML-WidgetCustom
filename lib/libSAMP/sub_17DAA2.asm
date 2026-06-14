; =========================================================
; Game Engine Function: sub_17DAA2
; Address            : 0x17DAA2 - 0x17DAD8
; =========================================================

17DAA2:  PUSH            {R4-R7,LR}
17DAA4:  ADD             R7, SP, #0xC
17DAA6:  PUSH.W          {R11}
17DAAA:  CBZ             R2, loc_17DAD2
17DAAC:  LDRH.W          R12, [R0,#4]
17DAB0:  LDRH.W          LR, [R0,#2]
17DAB4:  LDR             R3, [R0,#8]
17DAB6:  LDRH            R4, [R0]
17DAB8:  LDRB.W          R5, [R1],#1
17DABC:  UXTH            R6, R4
17DABE:  SUBS            R2, #1
17DAC0:  EOR.W           R5, R5, R6,LSR#8
17DAC4:  ADD             R4, R5
17DAC6:  ADD             R3, R5
17DAC8:  STR             R3, [R0,#8]
17DACA:  MLA.W           R4, R4, LR, R12
17DACE:  STRH            R4, [R0]
17DAD0:  BNE             loc_17DAB8
17DAD2:  POP.W           {R11}
17DAD6:  POP             {R4-R7,PC}
