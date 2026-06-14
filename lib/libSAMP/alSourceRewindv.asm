; =========================================================
; Game Engine Function: alSourceRewindv
; Address            : 0x1CDBA0 - 0x1CDCB0
; =========================================================

1CDBA0:  PUSH            {R4-R11,LR}
1CDBA4:  ADD             R11, SP, #0x1C
1CDBA8:  SUB             SP, SP, #4
1CDBAC:  MOV             R5, R1
1CDBB0:  MOV             R6, R0
1CDBB4:  BL              j_GetContextRef
1CDBB8:  MOV             R8, R0
1CDBBC:  CMP             R8, #0
1CDBC0:  BEQ             loc_1CDBE8
1CDBC4:  CMP             R6, #0
1CDBC8:  BLT             loc_1CDBD8
1CDBCC:  BEQ             loc_1CDBF0
1CDBD0:  CMP             R5, #0
1CDBD4:  BNE             loc_1CDBF0
1CDBD8:  MOV             R0, R8
1CDBDC:  MOVW            R1, #0xA003
1CDBE0:  BL              j_alSetError
1CDBE4:  B               loc_1CDC94
1CDBE8:  SUB             SP, R11, #0x1C
1CDBEC:  POP             {R4-R11,PC}
1CDBF0:  CMP             R6, #1
1CDBF4:  BLT             loc_1CDC20
1CDBF8:  ADD             R7, R8, #0x7C ; '|'
1CDBFC:  MOV             R4, #0
1CDC00:  LDR             R1, [R5,R4,LSL#2]
1CDC04:  MOV             R0, R7
1CDC08:  BL              j_LookupUIntMapKey
1CDC0C:  CMP             R0, #0
1CDC10:  BEQ             loc_1CDCA4
1CDC14:  ADD             R4, R4, #1
1CDC18:  CMP             R4, R6
1CDC1C:  BLT             loc_1CDC00
1CDC20:  LDR             R0, [R8,#0xFC]
1CDC24:  ADD             R0, R0, #8; mutex
1CDC28:  BL              j_EnterCriticalSection
1CDC2C:  CMP             R6, #1
1CDC30:  BLT             loc_1CDC88
1CDC34:  ADD             R7, R8, #0x7C ; '|'
1CDC38:  MOV             R4, #0
1CDC3C:  MOVW            R9, #0x1011
1CDC40:  MOV             R10, #0xFFFFFFFF
1CDC44:  LDR             R1, [R5]
1CDC48:  MOV             R0, R7
1CDC4C:  BL              j_LookupUIntMapKey
1CDC50:  LDR             R1, [R0,#0x5C]
1CDC54:  STR             R4, [R0,#0x60]
1CDC58:  CMP             R1, R9
1CDC5C:  BEQ             loc_1CDC78
1CDC60:  STR             R9, [R0,#0x5C]
1CDC64:  STR             R4, [R0,#0x64]
1CDC68:  STR             R4, [R0,#0x68]
1CDC6C:  STR             R4, [R0,#0x74]
1CDC70:  STRB            R4, [R0,#0xD8]
1CDC74:  STR             R4, [R0,#0xDC]
1CDC78:  SUBS            R6, R6, #1
1CDC7C:  ADD             R5, R5, #4
1CDC80:  STR             R10, [R0,#0xC4]
1CDC84:  BNE             loc_1CDC44
1CDC88:  LDR             R0, [R8,#0xFC]
1CDC8C:  ADD             R0, R0, #8; mutex
1CDC90:  BL              j_LeaveCriticalSection
1CDC94:  MOV             R0, R8
1CDC98:  SUB             SP, R11, #0x1C
1CDC9C:  POP             {R4-R11,LR}
1CDCA0:  B               j_ALCcontext_DecRef
1CDCA4:  MOV             R0, R8
1CDCA8:  MOVW            R1, #0xA001
1CDCAC:  B               loc_1CDBE0
