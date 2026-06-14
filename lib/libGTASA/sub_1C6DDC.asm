; =========================================================
; Game Engine Function: sub_1C6DDC
; Address            : 0x1C6DDC - 0x1C6DE8
; =========================================================

1C6DDC:  LDR             R1, =(dword_6B7248 - 0x1C6DE4)
1C6DDE:  MOVS            R2, #0
1C6DE0:  ADD             R1, PC; dword_6B7248
1C6DE2:  LDR             R1, [R1]
1C6DE4:  STR             R2, [R0,R1]
1C6DE6:  BX              LR
