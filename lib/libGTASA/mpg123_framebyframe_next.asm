; =========================================================
; Game Engine Function: mpg123_framebyframe_next
; Address            : 0x23098C - 0x2309D2
; =========================================================

23098C:  PUSH            {R4,R5,R7,LR}
23098E:  ADD             R7, SP, #8
230990:  MOV             R4, R0
230992:  CBZ             R4, loc_2309CA
230994:  MOVW            R5, #0xB2C8
230998:  MOVS            R0, #0
23099A:  MOVW            R1, #0xB2CC
23099E:  STR             R0, [R4,R5]
2309A0:  STR             R0, [R4,R1]
2309A2:  MOVW            R1, #0xB2A8
2309A6:  STR             R0, [R4,R1]
2309A8:  MOV             R0, R4
2309AA:  BL              sub_2309D2
2309AE:  CMP             R0, #0
2309B0:  IT LT
2309B2:  POPLT           {R4,R5,R7,PC}
2309B4:  ADDS            R0, R4, R5
2309B6:  LDR             R0, [R0]
2309B8:  CBZ             R0, loc_2309CE
2309BA:  LDR             R1, [R4,#4]
2309BC:  MOVS            R0, #0
2309BE:  CMP             R1, #0
2309C0:  ITT NE
2309C2:  STRNE           R0, [R4,#4]
2309C4:  MOVNE           R0, #0xFFFFFFF5
2309C8:  POP             {R4,R5,R7,PC}
2309CA:  MOVS            R0, #0xA
2309CC:  POP             {R4,R5,R7,PC}
2309CE:  MOVS            R0, #0
2309D0:  POP             {R4,R5,R7,PC}
