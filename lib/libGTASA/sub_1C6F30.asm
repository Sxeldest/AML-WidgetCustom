; =========================================================
; Game Engine Function: sub_1C6F30
; Address            : 0x1C6F30 - 0x1C6F40
; =========================================================

1C6F30:  LDR             R1, =(dword_6B724C - 0x1C6F36)
1C6F32:  ADD             R1, PC; dword_6B724C
1C6F34:  LDR             R1, [R1]
1C6F36:  LDR             R0, [R0,R1]
1C6F38:  CMP             R0, #0
1C6F3A:  IT NE
1C6F3C:  MOVNE           R0, #4
1C6F3E:  BX              LR
