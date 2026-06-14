; =========================================================
; Game Engine Function: ReadUnlock
; Address            : 0x1C0F20 - 0x1C0F68
; =========================================================

1C0F20:  DMB             ISH
1C0F24:  LDREX           R1, [R0]
1C0F28:  SUB             R2, R1, #1
1C0F2C:  STREX           R3, R2, [R0]
1C0F30:  CMP             R3, #0
1C0F34:  BNE             loc_1C0F24
1C0F38:  CMP             R1, #1
1C0F3C:  DMB             ISH
1C0F40:  BXNE            LR
1C0F44:  ADD             R0, R0, #0x10
1C0F48:  MOV             R1, #0
1C0F4C:  DMB             ISH
1C0F50:  LDREX           R2, [R0]
1C0F54:  STREX           R2, R1, [R0]
1C0F58:  CMP             R2, #0
1C0F5C:  BNE             loc_1C0F50
1C0F60:  DMB             ISH
1C0F64:  BX              LR
