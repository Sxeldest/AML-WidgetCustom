; =========================================================
; Game Engine Function: sub_DE980
; Address            : 0xDE980 - 0xDE9DA
; =========================================================

DE980:  PUSH            {R4-R7,LR}
DE982:  ADD             R7, SP, #0xC
DE984:  PUSH.W          {R11}
DE988:  MOV             R2, R0
DE98A:  LDR             R0, =(unk_91CE0 - 0xDE996)
DE98C:  MOV             R5, R1
DE98E:  LDRH.W          R1, [R1,#9]
DE992:  ADD             R0, PC; unk_91CE0
DE994:  LDR.W           R4, [R5],#0xB
DE998:  AND.W           R1, R1, #0xF
DE99C:  LDR             R6, [R7,#arg_0]
DE99E:  SUBS            R3, R4, R3
DE9A0:  LDRB            R0, [R0,R1]
DE9A2:  IT CC
DE9A4:  MOVCC           R3, #0
DE9A6:  LSRS.W          R1, R3, R0
DE9AA:  SUB.W           R4, R3, R1
DE9AE:  BEQ             loc_DE9BA
DE9B0:  MOV             R0, R2
DE9B2:  MOV             R2, R5
DE9B4:  BL              sub_DD992
DE9B8:  MOV             R2, R0
DE9BA:  MOV             R0, R6
DE9BC:  MOV             R1, R2
DE9BE:  BL              sub_DE9E0
DE9C2:  CBZ             R4, loc_DE9D4
DE9C4:  MOV             R1, R4
DE9C6:  MOV             R2, R5
DE9C8:  POP.W           {R11}
DE9CC:  POP.W           {R4-R7,LR}
DE9D0:  B.W             sub_DD992
DE9D4:  POP.W           {R11}
DE9D8:  POP             {R4-R7,PC}
