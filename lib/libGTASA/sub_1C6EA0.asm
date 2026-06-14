; =========================================================
; Game Engine Function: sub_1C6EA0
; Address            : 0x1C6EA0 - 0x1C6EAC
; =========================================================

1C6EA0:  LDR             R1, =(dword_6B724C - 0x1C6EA8)
1C6EA2:  MOVS            R2, #0
1C6EA4:  ADD             R1, PC; dword_6B724C
1C6EA6:  LDR             R1, [R1]
1C6EA8:  STR             R2, [R0,R1]
1C6EAA:  BX              LR
