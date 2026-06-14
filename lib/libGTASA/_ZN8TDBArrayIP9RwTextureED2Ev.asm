; =========================================================
; Game Engine Function: _ZN8TDBArrayIP9RwTextureED2Ev
; Address            : 0x1EADF2 - 0x1EAE0C
; =========================================================

1EADF2:  PUSH            {R4,R5,R7,LR}
1EADF4:  ADD             R7, SP, #8
1EADF6:  MOV             R4, R0
1EADF8:  MOVS            R5, #0
1EADFA:  LDR             R0, [R4,#8]; p
1EADFC:  STR             R5, [R4,#4]
1EADFE:  CBZ             R0, loc_1EAE06
1EAE00:  BLX             free
1EAE04:  STR             R5, [R4,#8]
1EAE06:  MOV             R0, R4
1EAE08:  STR             R5, [R4]
1EAE0A:  POP             {R4,R5,R7,PC}
