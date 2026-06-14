; =========================================================
; Game Engine Function: _ZN8CPedType10GetPedFlagEi
; Address            : 0x4C339C - 0x4C33AC
; =========================================================

4C339C:  MOVS            R2, #1
4C339E:  MOVS            R1, #0
4C33A0:  CMP             R0, #0x20 ; ' '
4C33A2:  IT LT
4C33A4:  LSLLT.W         R1, R2, R0
4C33A8:  MOV             R0, R1
4C33AA:  BX              LR
