; =========================================================
; Game Engine Function: _ZN6List_c7AddItemEP10ListItem_c
; Address            : 0x36CCBA - 0x36CCD6
; =========================================================

36CCBA:  LDR             R2, [R0]
36CCBC:  MOVS            R3, #0
36CCBE:  STR             R1, [R0]
36CCC0:  CMP             R2, #0
36CCC2:  STRD.W          R3, R2, [R1]
36CCC6:  IT EQ
36CCC8:  ADDEQ           R2, R0, #4
36CCCA:  STR             R1, [R2]
36CCCC:  LDR             R1, [R0,#8]
36CCCE:  ADDS            R2, R1, #1
36CCD0:  STR             R2, [R0,#8]
36CCD2:  MOV             R0, R1
36CCD4:  BX              LR
