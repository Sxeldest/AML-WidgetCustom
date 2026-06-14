; =========================================================
; Game Engine Function: sub_104F5C
; Address            : 0x104F5C - 0x104F8C
; =========================================================

104F5C:  PUSH            {R4,R5,R7,LR}
104F5E:  ADD             R7, SP, #8
104F60:  MOV             R5, R0
104F62:  LDR             R0, [R0,#8]
104F64:  MOV             R4, R1
104F66:  CBZ             R0, loc_104F6E
104F68:  MOV             R1, R4
104F6A:  BL              sub_FE074
104F6E:  MOV             R0, R4
104F70:  MOVS            R1, #0x7B ; '{'
104F72:  BL              sub_FE09A
104F76:  ADD.W           R0, R5, #0xC
104F7A:  MOV             R1, R4
104F7C:  BL              sub_1037E0
104F80:  MOV             R0, R4
104F82:  MOVS            R1, #0x7D ; '}'
104F84:  POP.W           {R4,R5,R7,LR}
104F88:  B.W             sub_FE09A
