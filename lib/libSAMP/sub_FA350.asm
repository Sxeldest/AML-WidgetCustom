; =========================================================
; Game Engine Function: sub_FA350
; Address            : 0xFA350 - 0xFA35E
; =========================================================

FA350:  LDR             R0, =(off_234A80 - 0xFA356)
FA352:  ADD             R0, PC; off_234A80
FA354:  LDR             R0, [R0]; dword_25C9C8
FA356:  LDR             R0, [R0]
FA358:  LDR.W           R0, [R0,#0xB8]
FA35C:  BX              LR
