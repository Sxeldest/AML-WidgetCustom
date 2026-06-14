; =========================================================
; Game Engine Function: _Z14OS_FileFromApkPPv
; Address            : 0x266AC4 - 0x266AD2
; =========================================================

266AC4:  LDR             R0, [R0]
266AC6:  LDR             R1, [R0]
266AC8:  MOVS            R0, #0
266ACA:  CMP             R1, #1
266ACC:  IT NE
266ACE:  MOVNE           R0, #1
266AD0:  BX              LR
