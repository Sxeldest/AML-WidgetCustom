; =========================================================
; Game Engine Function: _ZN6List_c15InsertAfterItemEP10ListItem_cS1_
; Address            : 0x36CD58 - 0x36CD86
; =========================================================

36CD58:  MOV             R12, R0
36CD5A:  LDR.W           R3, [R12]
36CD5E:  CMP             R3, R2
36CD60:  ITT NE
36CD62:  ADDNE.W         R12, R3, #4
36CD66:  CMPNE           R3, #0
36CD68:  BNE             loc_36CD5A
36CD6A:  CBZ             R3, loc_36CD7C
36CD6C:  LDR             R2, [R3,#4]
36CD6E:  STR             R1, [R3,#4]
36CD70:  CMP             R2, #0
36CD72:  STRD.W          R3, R2, [R1]
36CD76:  IT EQ
36CD78:  ADDEQ           R2, R0, #4
36CD7A:  STR             R1, [R2]
36CD7C:  LDR             R1, [R0,#8]
36CD7E:  ADDS            R2, R1, #1
36CD80:  STR             R2, [R0,#8]
36CD82:  MOV             R0, R1
36CD84:  BX              LR
