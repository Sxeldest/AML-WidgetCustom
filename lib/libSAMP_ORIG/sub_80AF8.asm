; =========================================================
; Game Engine Function: sub_80AF8
; Address            : 0x80AF8 - 0x80B2E
; =========================================================

80AF8:  PUSH            {R4,R5,R7,LR}
80AFA:  ADD             R7, SP, #8
80AFC:  LDR             R4, =(dword_1A49D8 - 0x80B02)
80AFE:  ADD             R4, PC; dword_1A49D8
80B00:  MOV             R5, R4
80B02:  MOV             R0, R4
80B04:  LDR.W           R1, [R5,#(dword_1A49DC - 0x1A49D8)]!
80B08:  BL              sub_821E0
80B0C:  LDR             R0, =(byte_1A49E5 - 0x80B18)
80B0E:  MOVS            R3, #0
80B10:  LDR             R1, =(byte_1A49E6 - 0x80B1A)
80B12:  LDR             R2, =(byte_1A49E4 - 0x80B1E)
80B14:  ADD             R0, PC; byte_1A49E5
80B16:  ADD             R1, PC; byte_1A49E6
80B18:  STR             R3, [R5]
80B1A:  ADD             R2, PC; byte_1A49E4
80B1C:  STR             R5, [R4]
80B1E:  STR             R3, [R4,#(dword_1A49E0 - 0x1A49D8)]
80B20:  STRB            R3, [R2]
80B22:  STRB            R3, [R0]
80B24:  STRB            R3, [R1]
80B26:  POP.W           {R4,R5,R7,LR}
80B2A:  B.W             sub_83120
