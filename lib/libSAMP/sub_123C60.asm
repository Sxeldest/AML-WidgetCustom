; =========================================================
; Game Engine Function: sub_123C60
; Address            : 0x123C60 - 0x123CA8
; =========================================================

123C60:  PUSH            {R4,R5,R7,LR}
123C62:  ADD             R7, SP, #8
123C64:  MOV             R4, R0
123C66:  LDR             R0, [R0,#0x10]
123C68:  MOV             R5, R1
123C6A:  MOVS            R1, #0
123C6C:  CMP             R4, R0
123C6E:  STR             R1, [R4,#0x10]
123C70:  BEQ             loc_123C78
123C72:  CBZ             R0, loc_123C82
123C74:  MOVS            R1, #5
123C76:  B               loc_123C7A
123C78:  MOVS            R1, #4
123C7A:  LDR             R2, [R0]
123C7C:  LDR.W           R1, [R2,R1,LSL#2]
123C80:  BLX             R1
123C82:  LDR             R0, [R5,#0x10]
123C84:  CBZ             R0, loc_123C92
123C86:  CMP             R5, R0
123C88:  BEQ             loc_123C98
123C8A:  STR             R0, [R4,#0x10]
123C8C:  MOVS            R0, #0
123C8E:  STR             R0, [R5,#0x10]
123C90:  B               loc_123CA4
123C92:  MOVS            R0, #0
123C94:  STR             R0, [R4,#0x10]
123C96:  B               loc_123CA4
123C98:  STR             R4, [R4,#0x10]
123C9A:  LDR             R0, [R5,#0x10]
123C9C:  LDR             R1, [R0]
123C9E:  LDR             R2, [R1,#0xC]
123CA0:  MOV             R1, R4
123CA2:  BLX             R2
123CA4:  MOV             R0, R4
123CA6:  POP             {R4,R5,R7,PC}
