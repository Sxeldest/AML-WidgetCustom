; =========================================================
; Game Engine Function: alDeleteFilters
; Address            : 0x1D9D34 - 0x1D9DFC
; =========================================================

1D9D34:  PUSH            {R4-R8,R10,R11,LR}
1D9D38:  ADD             R11, SP, #0x18
1D9D3C:  MOV             R5, R1
1D9D40:  MOV             R6, R0
1D9D44:  BL              j_GetContextRef
1D9D48:  MOV             R8, R0
1D9D4C:  CMP             R8, #0
1D9D50:  BEQ             locret_1D9DD4
1D9D54:  CMP             R6, #0
1D9D58:  BLT             loc_1D9DD8
1D9D5C:  BEQ             loc_1D9DF0
1D9D60:  LDR             R0, [R8,#0xFC]
1D9D64:  MOV             R4, #0
1D9D68:  ADD             R7, R0, #0x84
1D9D6C:  LDR             R1, [R5,R4,LSL#2]
1D9D70:  CMP             R1, #0
1D9D74:  BEQ             loc_1D9D88
1D9D78:  MOV             R0, R7
1D9D7C:  BL              j_LookupUIntMapKey
1D9D80:  CMP             R0, #0
1D9D84:  BEQ             loc_1D9DE4
1D9D88:  ADD             R4, R4, #1
1D9D8C:  CMP             R4, R6
1D9D90:  BLT             loc_1D9D6C
1D9D94:  CMP             R6, #1
1D9D98:  BLT             loc_1D9DF0
1D9D9C:  LDR             R1, [R5]
1D9DA0:  MOV             R0, R7
1D9DA4:  BL              j_RemoveUIntMapKey
1D9DA8:  MOV             R4, R0
1D9DAC:  CMP             R4, #0
1D9DB0:  BEQ             loc_1D9DC4
1D9DB4:  LDR             R0, [R4,#0x2C]
1D9DB8:  BL              j_FreeThunkEntry
1D9DBC:  MOV             R0, R4; ptr
1D9DC0:  BL              free
1D9DC4:  SUBS            R6, R6, #1
1D9DC8:  ADD             R5, R5, #4
1D9DCC:  BNE             loc_1D9D9C
1D9DD0:  B               loc_1D9DF0
1D9DD4:  POP             {R4-R8,R10,R11,PC}
1D9DD8:  MOV             R0, R8
1D9DDC:  MOVW            R1, #0xA003
1D9DE0:  B               loc_1D9DEC
1D9DE4:  MOV             R0, R8
1D9DE8:  MOVW            R1, #0xA001
1D9DEC:  BL              j_alSetError
1D9DF0:  MOV             R0, R8
1D9DF4:  POP             {R4-R8,R10,R11,LR}
1D9DF8:  B               j_ALCcontext_DecRef
