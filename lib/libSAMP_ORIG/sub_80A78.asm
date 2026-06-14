; =========================================================
; Game Engine Function: sub_80A78
; Address            : 0x80A78 - 0x80AA4
; =========================================================

80A78:  PUSH            {R4,R5,R7,LR}
80A7A:  ADD             R7, SP, #8
80A7C:  BL              sub_7E534
80A80:  LDR             R4, =(dword_1A49D8 - 0x80A86)
80A82:  ADD             R4, PC; dword_1A49D8
80A84:  MOV             R5, R4
80A86:  MOV             R0, R4
80A88:  LDR.W           R1, [R5,#(dword_1A49DC - 0x1A49D8)]!
80A8C:  BL              sub_821E0
80A90:  MOVS            R0, #0
80A92:  STR             R5, [R4]
80A94:  STR             R0, [R5]
80A96:  STR             R0, [R4,#(dword_1A49E0 - 0x1A49D8)]
80A98:  BL              sub_83120
80A9C:  POP.W           {R4,R5,R7,LR}
80AA0:  B.W             sub_80254
