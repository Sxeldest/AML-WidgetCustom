; =========================================================
; Game Engine Function: sub_21DE38
; Address            : 0x21DE38 - 0x21DE44
; =========================================================

21DE38:  LDR             R1, =(dword_6BD640 - 0x21DE40)
21DE3A:  MOVS            R2, #0
21DE3C:  ADD             R1, PC; dword_6BD640
21DE3E:  LDR             R1, [R1]
21DE40:  STR             R2, [R0,R1]
21DE42:  BX              LR
