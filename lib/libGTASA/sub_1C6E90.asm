; =========================================================
; Game Engine Function: sub_1C6E90
; Address            : 0x1C6E90 - 0x1C6E9C
; =========================================================

1C6E90:  LDR             R1, =(dword_6B724C - 0x1C6E98)
1C6E92:  MOVS            R2, #0
1C6E94:  ADD             R1, PC; dword_6B724C
1C6E96:  LDR             R1, [R1]
1C6E98:  STR             R2, [R0,R1]
1C6E9A:  BX              LR
