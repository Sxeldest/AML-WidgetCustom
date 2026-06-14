; =========================================================
; Game Engine Function: _ZN10CDirectory8FindItemEPKc
; Address            : 0x3EACAC - 0x3EACDE
; =========================================================

3EACAC:  PUSH            {R4-R7,LR}
3EACAE:  ADD             R7, SP, #0xC
3EACB0:  PUSH.W          {R8}
3EACB4:  LDR             R6, [R0,#8]
3EACB6:  MOV             R8, R1
3EACB8:  CMP             R6, #1
3EACBA:  BLT             loc_3EACD4
3EACBC:  LDR             R4, [R0]
3EACBE:  MOVS            R5, #0
3EACC0:  ADD.W           R0, R4, #8; char *
3EACC4:  MOV             R1, R8; char *
3EACC6:  BLX             strcasecmp
3EACCA:  CBZ             R0, loc_3EACD6
3EACCC:  ADDS            R5, #1
3EACCE:  ADDS            R4, #0x20 ; ' '
3EACD0:  CMP             R5, R6
3EACD2:  BLT             loc_3EACC0
3EACD4:  MOVS            R4, #0
3EACD6:  MOV             R0, R4
3EACD8:  POP.W           {R8}
3EACDC:  POP             {R4-R7,PC}
