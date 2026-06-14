; =========================================================
; Game Engine Function: alSourceStopv
; Address            : 0x1CDA3C - 0x1CDB4C
; =========================================================

1CDA3C:  PUSH            {R4-R11,LR}
1CDA40:  ADD             R11, SP, #0x1C
1CDA44:  SUB             SP, SP, #4
1CDA48:  MOV             R5, R1
1CDA4C:  MOV             R6, R0
1CDA50:  BL              j_GetContextRef
1CDA54:  MOV             R8, R0
1CDA58:  CMP             R8, #0
1CDA5C:  BEQ             loc_1CDA84
1CDA60:  CMP             R6, #0
1CDA64:  BLT             loc_1CDA74
1CDA68:  BEQ             loc_1CDA8C
1CDA6C:  CMP             R5, #0
1CDA70:  BNE             loc_1CDA8C
1CDA74:  MOV             R0, R8
1CDA78:  MOVW            R1, #0xA003
1CDA7C:  BL              j_alSetError
1CDA80:  B               loc_1CDB30
1CDA84:  SUB             SP, R11, #0x1C
1CDA88:  POP             {R4-R11,PC}
1CDA8C:  CMP             R6, #1
1CDA90:  BLT             loc_1CDABC
1CDA94:  ADD             R7, R8, #0x7C ; '|'
1CDA98:  MOV             R4, #0
1CDA9C:  LDR             R1, [R5,R4,LSL#2]
1CDAA0:  MOV             R0, R7
1CDAA4:  BL              j_LookupUIntMapKey
1CDAA8:  CMP             R0, #0
1CDAAC:  BEQ             loc_1CDB40
1CDAB0:  ADD             R4, R4, #1
1CDAB4:  CMP             R4, R6
1CDAB8:  BLT             loc_1CDA9C
1CDABC:  LDR             R0, [R8,#0xFC]
1CDAC0:  ADD             R0, R0, #8; mutex
1CDAC4:  BL              j_EnterCriticalSection
1CDAC8:  CMP             R6, #1
1CDACC:  BLT             loc_1CDB24
1CDAD0:  ADD             R7, R8, #0x7C ; '|'
1CDAD4:  MOV             R4, #0
1CDAD8:  MOVW            R9, #0x1011
1CDADC:  MOV             R10, #0xFFFFFFFF
1CDAE0:  LDR             R1, [R5]
1CDAE4:  MOV             R0, R7
1CDAE8:  BL              j_LookupUIntMapKey
1CDAEC:  LDR             R1, [R0,#0x5C]
1CDAF0:  STR             R4, [R0,#0x60]
1CDAF4:  CMP             R1, R9
1CDAF8:  BEQ             loc_1CDB14
1CDAFC:  MOVW            R1, #0x1014
1CDB00:  STR             R1, [R0,#0x5C]
1CDB04:  LDR             R1, [R0,#0x70]
1CDB08:  STRB            R4, [R0,#0xD8]
1CDB0C:  STR             R4, [R0,#0xDC]
1CDB10:  STR             R1, [R0,#0x74]
1CDB14:  SUBS            R6, R6, #1
1CDB18:  ADD             R5, R5, #4
1CDB1C:  STR             R10, [R0,#0xC4]
1CDB20:  BNE             loc_1CDAE0
1CDB24:  LDR             R0, [R8,#0xFC]
1CDB28:  ADD             R0, R0, #8; mutex
1CDB2C:  BL              j_LeaveCriticalSection
1CDB30:  MOV             R0, R8
1CDB34:  SUB             SP, R11, #0x1C
1CDB38:  POP             {R4-R11,LR}
1CDB3C:  B               j_ALCcontext_DecRef
1CDB40:  MOV             R0, R8
1CDB44:  MOVW            R1, #0xA001
1CDB48:  B               loc_1CDA7C
