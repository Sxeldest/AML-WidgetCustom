; =========================================================
; Game Engine Function: ReleaseALAuxiliaryEffectSlots
; Address            : 0x1DDC04 - 0x1DDC68
; =========================================================

1DDC04:  PUSH            {R4-R8,R10,R11,LR}
1DDC08:  ADD             R11, SP, #0x18
1DDC0C:  MOV             R4, R0
1DDC10:  LDR             R0, [R4,#0xA4]
1DDC14:  CMP             R0, #1
1DDC18:  BLT             locret_1DDC64
1DDC1C:  MOV             R8, #0
1DDC20:  MOVW            R7, #0x40D4
1DDC24:  MOV             R6, #0
1DDC28:  LDR             R0, [R4,#0xA0]
1DDC2C:  ADD             R0, R0, R6,LSL#3
1DDC30:  LDR             R5, [R0,#4]
1DDC34:  STR             R8, [R0,#4]
1DDC38:  LDR             R0, [R5,#0xC4]
1DDC3C:  LDR             R1, [R0]
1DDC40:  BLX             R1
1DDC44:  LDR             R0, [R5,R7]
1DDC48:  BL              j_FreeThunkEntry
1DDC4C:  MOV             R0, R5; ptr
1DDC50:  BL              free
1DDC54:  LDR             R0, [R4,#0xA4]
1DDC58:  ADD             R6, R6, #1
1DDC5C:  CMP             R6, R0
1DDC60:  BLT             loc_1DDC28
1DDC64:  POP             {R4-R8,R10,R11,PC}
