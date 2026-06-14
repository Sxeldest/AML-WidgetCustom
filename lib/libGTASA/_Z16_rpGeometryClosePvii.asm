; =========================================================
; Game Engine Function: _Z16_rpGeometryClosePvii
; Address            : 0x2157AC - 0x2157B8
; =========================================================

2157AC:  LDR             R1, =(dword_6BD5A0 - 0x2157B2)
2157AE:  ADD             R1, PC; dword_6BD5A0
2157B0:  LDR             R2, [R1]
2157B2:  SUBS            R2, #1
2157B4:  STR             R2, [R1]
2157B6:  BX              LR
