; =========================================================
; Game Engine Function: sub_12CEA8
; Address            : 0x12CEA8 - 0x12CEBC
; =========================================================

12CEA8:  PUSH            {R7,LR}
12CEAA:  MOV             R7, SP
12CEAC:  BL              sub_E4F88
12CEB0:  EOR.W           R0, R0, #1
12CEB4:  POP.W           {R7,LR}
12CEB8:  B.W             sub_E4F94
