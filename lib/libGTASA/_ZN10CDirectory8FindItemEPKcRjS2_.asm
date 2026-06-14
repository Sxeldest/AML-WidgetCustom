; =========================================================
; Game Engine Function: _ZN10CDirectory8FindItemEPKcRjS2_
; Address            : 0x3EACDE - 0x3EAD2E
; =========================================================

3EACDE:  PUSH            {R4-R7,LR}
3EACE0:  ADD             R7, SP, #0xC
3EACE2:  PUSH.W          {R8-R10}
3EACE6:  LDR             R5, [R0,#8]
3EACE8:  MOV             R9, R3
3EACEA:  MOV             R8, R2
3EACEC:  MOV             R10, R1
3EACEE:  CMP             R5, #1
3EACF0:  BLT             loc_3EAD26
3EACF2:  LDR             R0, [R0]
3EACF4:  MOVS            R6, #0
3EACF6:  ADDS            R4, R0, #4
3EACF8:  ADDS            R0, R4, #4; char *
3EACFA:  MOV             R1, R10; char *
3EACFC:  BLX             strcasecmp
3EAD00:  CBZ             R0, loc_3EAD0C
3EAD02:  ADDS            R6, #1
3EAD04:  ADDS            R4, #0x20 ; ' '
3EAD06:  CMP             R6, R5
3EAD08:  BLT             loc_3EACF8
3EAD0A:  B               loc_3EAD26
3EAD0C:  CMP             R4, #4
3EAD0E:  BEQ             loc_3EAD26
3EAD10:  LDRH            R0, [R4]
3EAD12:  STR.W           R0, [R9]
3EAD16:  LDR.W           R0, [R4,#-4]
3EAD1A:  STR.W           R0, [R8]
3EAD1E:  MOVS            R0, #1
3EAD20:  POP.W           {R8-R10}
3EAD24:  POP             {R4-R7,PC}
3EAD26:  MOVS            R0, #0
3EAD28:  POP.W           {R8-R10}
3EAD2C:  POP             {R4-R7,PC}
