; =========================================================
; Game Engine Function: sub_1D4A74
; Address            : 0x1D4A74 - 0x1D4A9E
; =========================================================

1D4A74:  PUSH            {R4,R5,R7,LR}
1D4A76:  ADD             R7, SP, #8
1D4A78:  MOV             R4, R1
1D4A7A:  MOV             R5, R0
1D4A7C:  B               loc_1D4A96
1D4A7E:  LDR             R0, [R5]
1D4A80:  STR             R4, [R0]
1D4A82:  LDR             R0, [R5]
1D4A84:  ADDS            R0, #4
1D4A86:  STR             R0, [R5]
1D4A88:  LDR.W           R1, [R4,#0x9C]
1D4A8C:  MOV             R0, R5
1D4A8E:  BL              sub_1D4A74
1D4A92:  LDR.W           R4, [R4,#0x98]
1D4A96:  CMP             R4, #0
1D4A98:  IT EQ
1D4A9A:  POPEQ           {R4,R5,R7,PC}
1D4A9C:  B               loc_1D4A7E
