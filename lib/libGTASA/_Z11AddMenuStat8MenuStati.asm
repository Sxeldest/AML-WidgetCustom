; =========================================================
; Game Engine Function: _Z11AddMenuStat8MenuStati
; Address            : 0x2ACFEC - 0x2AD00C
; =========================================================

2ACFEC:  LDR             R2, =(isDirty_ptr - 0x2ACFF4)
2ACFEE:  LDR             R3, =(MenuCounts_ptr - 0x2ACFF6)
2ACFF0:  ADD             R2, PC; isDirty_ptr
2ACFF2:  ADD             R3, PC; MenuCounts_ptr
2ACFF4:  LDR.W           R12, [R2]; isDirty
2ACFF8:  MOVS            R2, #1
2ACFFA:  LDR             R3, [R3]; MenuCounts
2ACFFC:  STRB.W          R2, [R12]
2AD000:  LDR.W           R2, [R3,R0,LSL#2]
2AD004:  ADD             R1, R2
2AD006:  STR.W           R1, [R3,R0,LSL#2]
2AD00A:  BX              LR
