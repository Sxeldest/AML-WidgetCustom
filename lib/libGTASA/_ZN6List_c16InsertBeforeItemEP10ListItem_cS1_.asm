; =========================================================
; Game Engine Function: _ZN6List_c16InsertBeforeItemEP10ListItem_cS1_
; Address            : 0x36CD86 - 0x36CDB6
; =========================================================

36CD86:  MOV             R12, R0
36CD88:  LDR.W           R3, [R12]
36CD8C:  CMP             R3, R2
36CD8E:  ITT NE
36CD90:  ADDNE.W         R12, R3, #4
36CD94:  CMPNE           R3, #0
36CD96:  BNE             loc_36CD88
36CD98:  CBZ             R3, loc_36CDAC
36CD9A:  LDR             R2, [R3]
36CD9C:  STR             R1, [R3]
36CD9E:  STRD.W          R2, R3, [R1]
36CDA2:  CMP             R2, #0
36CDA4:  MOV             R3, R0
36CDA6:  IT NE
36CDA8:  ADDNE           R3, R2, #4
36CDAA:  STR             R1, [R3]
36CDAC:  LDR             R1, [R0,#8]
36CDAE:  ADDS            R2, R1, #1
36CDB0:  STR             R2, [R0,#8]
36CDB2:  MOV             R0, R1
36CDB4:  BX              LR
