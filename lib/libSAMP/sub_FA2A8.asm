; =========================================================
; Game Engine Function: sub_FA2A8
; Address            : 0xFA2A8 - 0xFA2B6
; =========================================================

FA2A8:  LDR             R0, =(off_234A80 - 0xFA2AE)
FA2AA:  ADD             R0, PC; off_234A80
FA2AC:  LDR             R0, [R0]; dword_25C9C8
FA2AE:  LDR             R0, [R0]
FA2B0:  LDR             R0, [R0,#4]
FA2B2:  STR             R1, [R0,#0x30]
FA2B4:  BX              LR
