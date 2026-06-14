; =========================================================
; Game Engine Function: _Z15_rpGeometryOpenPvii
; Address            : 0x21579C - 0x2157A8
; =========================================================

21579C:  LDR             R1, =(dword_6BD5A0 - 0x2157A2)
21579E:  ADD             R1, PC; dword_6BD5A0
2157A0:  LDR             R2, [R1]
2157A2:  ADDS            R2, #1
2157A4:  STR             R2, [R1]
2157A6:  BX              LR
