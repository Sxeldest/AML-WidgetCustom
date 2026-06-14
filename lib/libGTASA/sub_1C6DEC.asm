; =========================================================
; Game Engine Function: sub_1C6DEC
; Address            : 0x1C6DEC - 0x1C6DF8
; =========================================================

1C6DEC:  LDR             R1, =(dword_6B7248 - 0x1C6DF4)
1C6DEE:  MOVS            R2, #0
1C6DF0:  ADD             R1, PC; dword_6B7248
1C6DF2:  LDR             R1, [R1]
1C6DF4:  STR             R2, [R0,R1]
1C6DF6:  BX              LR
