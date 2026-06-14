; =========================================================
; Game Engine Function: sub_1C6E7C
; Address            : 0x1C6E7C - 0x1C6E8C
; =========================================================

1C6E7C:  LDR             R1, =(dword_6B7248 - 0x1C6E82)
1C6E7E:  ADD             R1, PC; dword_6B7248
1C6E80:  LDR             R1, [R1]
1C6E82:  LDR             R0, [R0,R1]
1C6E84:  CMP             R0, #0
1C6E86:  IT NE
1C6E88:  MOVNE           R0, #4
1C6E8A:  BX              LR
