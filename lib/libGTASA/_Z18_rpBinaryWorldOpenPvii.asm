; =========================================================
; Game Engine Function: _Z18_rpBinaryWorldOpenPvii
; Address            : 0x2138C8 - 0x2138D4
; =========================================================

2138C8:  LDR             R1, =(dword_6BD53C - 0x2138CE)
2138CA:  ADD             R1, PC; dword_6BD53C
2138CC:  LDR             R2, [R1]
2138CE:  ADDS            R2, #1
2138D0:  STR             R2, [R1]
2138D2:  BX              LR
