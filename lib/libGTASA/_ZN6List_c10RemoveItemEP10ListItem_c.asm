; =========================================================
; Game Engine Function: _ZN6List_c10RemoveItemEP10ListItem_c
; Address            : 0x36CCD6 - 0x36CCFE
; =========================================================

36CCD6:  LDRD.W          R12, R2, [R1]
36CCDA:  CMP             R2, #0
36CCDC:  MOV             R3, R2
36CCDE:  IT EQ
36CCE0:  ADDEQ           R3, R0, #4
36CCE2:  CMP.W           R12, #0
36CCE6:  STR.W           R12, [R3]
36CCEA:  ITTE EQ
36CCEC:  LDREQ           R1, [R1,#4]
36CCEE:  STREQ           R1, [R0]
36CCF0:  STRNE.W         R2, [R12,#4]
36CCF4:  LDR             R1, [R0,#8]
36CCF6:  SUBS            R2, R1, #1
36CCF8:  STR             R2, [R0,#8]
36CCFA:  MOV             R0, R1
36CCFC:  BX              LR
