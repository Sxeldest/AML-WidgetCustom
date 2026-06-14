; =========================================================
; Game Engine Function: _ZN10CDirectory8FindItemEjRjS0_
; Address            : 0x3EAD2E - 0x3EAD82
; =========================================================

3EAD2E:  PUSH            {R4-R7,LR}
3EAD30:  ADD             R7, SP, #0xC
3EAD32:  PUSH.W          {R8-R10}
3EAD36:  MOV             R6, R0
3EAD38:  MOV             R9, R3
3EAD3A:  LDR             R0, [R6,#8]
3EAD3C:  MOV             R8, R2
3EAD3E:  MOV             R10, R1
3EAD40:  CMP             R0, #1
3EAD42:  BLT             loc_3EAD60
3EAD44:  MOVS            R5, #0
3EAD46:  MOVS            R4, #0
3EAD48:  LDR             R0, [R6]
3EAD4A:  ADD             R0, R5
3EAD4C:  ADDS            R0, #8; this
3EAD4E:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
3EAD52:  CMP             R0, R10
3EAD54:  BEQ             loc_3EAD68
3EAD56:  LDR             R0, [R6,#8]
3EAD58:  ADDS            R4, #1
3EAD5A:  ADDS            R5, #0x20 ; ' '
3EAD5C:  CMP             R4, R0
3EAD5E:  BLT             loc_3EAD48
3EAD60:  MOVS            R0, #0
3EAD62:  POP.W           {R8-R10}
3EAD66:  POP             {R4-R7,PC}
3EAD68:  LDR             R0, [R6]
3EAD6A:  ADD             R0, R5
3EAD6C:  LDRH            R0, [R0,#4]
3EAD6E:  STR.W           R0, [R9]
3EAD72:  LDR             R0, [R6]
3EAD74:  LDR             R0, [R0,R5]
3EAD76:  STR.W           R0, [R8]
3EAD7A:  MOVS            R0, #1
3EAD7C:  POP.W           {R8-R10}
3EAD80:  POP             {R4-R7,PC}
