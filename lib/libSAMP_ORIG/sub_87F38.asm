; =========================================================
; Game Engine Function: sub_87F38
; Address            : 0x87F38 - 0x87F8C
; =========================================================

87F38:  PUSH            {R4,R5,R7,LR}
87F3A:  ADD             R7, SP, #8
87F3C:  LDR             R1, =(word_1ABF68 - 0x87F46)
87F3E:  MOVS            R2, #0
87F40:  LDR             R5, =(unk_52B88 - 0x87F48)
87F42:  ADD             R1, PC; word_1ABF68
87F44:  ADD             R5, PC; unk_52B88
87F46:  ADDS            R4, R0, #1
87F48:  LDRB.W          R3, [R4,#-1]
87F4C:  CBZ             R3, loc_87F82
87F4E:  MOV             R0, R4
87F50:  LSLS            R4, R3, #0x18
87F52:  BPL             loc_87F72
87F54:  AND.W           R3, R3, #0x7F
87F58:  ADDS            R4, R0, #1
87F5A:  CMP             R3, #0x18
87F5C:  BEQ             loc_87F48
87F5E:  LDR.W           R4, [R5,R3,LSL#2]
87F62:  MOV             R3, R1
87F64:  STRH.W          R4, [R3],#2
87F68:  LSRS            R4, R4, #0x10
87F6A:  BEQ             loc_87F78
87F6C:  STRB            R4, [R1,#2]
87F6E:  ADDS            R1, #3
87F70:  B               loc_87F7A
87F72:  STRB.W          R3, [R1],#1
87F76:  B               loc_87F7A
87F78:  MOV             R1, R3
87F7A:  ADDS            R2, #1
87F7C:  CMP.W           R2, #0x1000
87F80:  BNE             loc_87F46
87F82:  LDR             R0, =(word_1ABF68 - 0x87F8C)
87F84:  MOVS            R2, #0
87F86:  STRB            R2, [R1]
87F88:  ADD             R0, PC; word_1ABF68
87F8A:  POP             {R4,R5,R7,PC}
