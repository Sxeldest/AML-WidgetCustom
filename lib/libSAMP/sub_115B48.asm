; =========================================================
; Game Engine Function: sub_115B48
; Address            : 0x115B48 - 0x115B90
; =========================================================

115B48:  PUSH            {R4,R5,R7,LR}
115B4A:  ADD             R7, SP, #8
115B4C:  MOV             R4, R0
115B4E:  LDR             R0, [R0,#0x10]
115B50:  MOV             R5, R1
115B52:  MOVS            R1, #0
115B54:  CMP             R4, R0
115B56:  STR             R1, [R4,#0x10]
115B58:  BEQ             loc_115B60
115B5A:  CBZ             R0, loc_115B6A
115B5C:  MOVS            R1, #5
115B5E:  B               loc_115B62
115B60:  MOVS            R1, #4
115B62:  LDR             R2, [R0]
115B64:  LDR.W           R1, [R2,R1,LSL#2]
115B68:  BLX             R1
115B6A:  LDR             R0, [R5,#0x10]
115B6C:  CBZ             R0, loc_115B7A
115B6E:  CMP             R5, R0
115B70:  BEQ             loc_115B80
115B72:  STR             R0, [R4,#0x10]
115B74:  MOVS            R0, #0
115B76:  STR             R0, [R5,#0x10]
115B78:  B               loc_115B8C
115B7A:  MOVS            R0, #0
115B7C:  STR             R0, [R4,#0x10]
115B7E:  B               loc_115B8C
115B80:  STR             R4, [R4,#0x10]
115B82:  LDR             R0, [R5,#0x10]
115B84:  LDR             R1, [R0]
115B86:  LDR             R2, [R1,#0xC]
115B88:  MOV             R1, R4
115B8A:  BLX             R2
115B8C:  MOV             R0, R4
115B8E:  POP             {R4,R5,R7,PC}
