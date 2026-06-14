; =========================================================
; Game Engine Function: _ZN8TDBArrayIP22TextureDatabaseRuntimeED2Ev
; Address            : 0x1EADD8 - 0x1EADF2
; =========================================================

1EADD8:  PUSH            {R4,R5,R7,LR}
1EADDA:  ADD             R7, SP, #8
1EADDC:  MOV             R4, R0
1EADDE:  MOVS            R5, #0
1EADE0:  LDR             R0, [R4,#8]; p
1EADE2:  STR             R5, [R4,#4]
1EADE4:  CBZ             R0, loc_1EADEC
1EADE6:  BLX             free
1EADEA:  STR             R5, [R4,#8]
1EADEC:  MOV             R0, R4
1EADEE:  STR             R5, [R4]
1EADF0:  POP             {R4,R5,R7,PC}
