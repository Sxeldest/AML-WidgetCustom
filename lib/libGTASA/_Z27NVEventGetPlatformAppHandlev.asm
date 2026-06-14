; =========================================================
; Game Engine Function: _Z27NVEventGetPlatformAppHandlev
; Address            : 0x2707E4 - 0x2707EC
; =========================================================

2707E4:  LDR             R0, =(dword_6D81DC - 0x2707EA)
2707E6:  ADD             R0, PC; dword_6D81DC
2707E8:  LDR             R0, [R0]
2707EA:  BX              LR
