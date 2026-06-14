; =========================================================
; Game Engine Function: sub_120C34
; Address            : 0x120C34 - 0x120C7C
; =========================================================

120C34:  PUSH            {R4,R5,R7,LR}
120C36:  ADD             R7, SP, #8
120C38:  MOV             R4, R0
120C3A:  LDR             R0, [R0,#0x10]
120C3C:  MOV             R5, R1
120C3E:  MOVS            R1, #0
120C40:  CMP             R4, R0
120C42:  STR             R1, [R4,#0x10]
120C44:  BEQ             loc_120C4C
120C46:  CBZ             R0, loc_120C56
120C48:  MOVS            R1, #5
120C4A:  B               loc_120C4E
120C4C:  MOVS            R1, #4
120C4E:  LDR             R2, [R0]
120C50:  LDR.W           R1, [R2,R1,LSL#2]
120C54:  BLX             R1
120C56:  LDR             R0, [R5,#0x10]
120C58:  CBZ             R0, loc_120C66
120C5A:  CMP             R5, R0
120C5C:  BEQ             loc_120C6C
120C5E:  STR             R0, [R4,#0x10]
120C60:  MOVS            R0, #0
120C62:  STR             R0, [R5,#0x10]
120C64:  B               loc_120C78
120C66:  MOVS            R0, #0
120C68:  STR             R0, [R4,#0x10]
120C6A:  B               loc_120C78
120C6C:  STR             R4, [R4,#0x10]
120C6E:  LDR             R0, [R5,#0x10]
120C70:  LDR             R1, [R0]
120C72:  LDR             R2, [R1,#0xC]
120C74:  MOV             R1, R4
120C76:  BLX             R2
120C78:  MOV             R0, R4
120C7A:  POP             {R4,R5,R7,PC}
