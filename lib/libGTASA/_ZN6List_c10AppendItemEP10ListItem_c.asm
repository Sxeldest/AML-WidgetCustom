; =========================================================
; Game Engine Function: _ZN6List_c10AppendItemEP10ListItem_c
; Address            : 0x36CD3A - 0x36CD58
; =========================================================

36CD3A:  LDR             R2, [R0,#4]
36CD3C:  MOVS            R3, #0
36CD3E:  STR             R1, [R0,#4]
36CD40:  STRD.W          R2, R3, [R1]
36CD44:  CMP             R2, #0
36CD46:  MOV             R3, R0
36CD48:  IT NE
36CD4A:  ADDNE           R3, R2, #4
36CD4C:  STR             R1, [R3]
36CD4E:  LDR             R1, [R0,#8]
36CD50:  ADDS            R2, R1, #1
36CD52:  STR             R2, [R0,#8]
36CD54:  MOV             R0, R1
36CD56:  BX              LR
