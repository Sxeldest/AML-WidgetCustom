; =========================================================
; Game Engine Function: _ZN6List_c10RemoveTailEv
; Address            : 0x36CDB6 - 0x36CDD2
; =========================================================

36CDB6:  MOV             R1, R0
36CDB8:  MOVS            R0, #0
36CDBA:  LDR             R2, [R1,#4]
36CDBC:  CMP             R2, #0
36CDBE:  IT EQ
36CDC0:  BXEQ            LR
36CDC2:  LDR             R3, [R2]
36CDC4:  STR             R3, [R1,#4]
36CDC6:  STR             R0, [R3,#4]
36CDC8:  LDR             R0, [R1,#8]
36CDCA:  SUBS            R0, #1
36CDCC:  STR             R0, [R1,#8]
36CDCE:  MOV             R0, R2
36CDD0:  BX              LR
