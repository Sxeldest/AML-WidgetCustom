; =========================================================
; Game Engine Function: _Z27RwEngineGetMatrixTolerancesP17RwMatrixTolerance
; Address            : 0x1E3270 - 0x1E3290
; =========================================================

1E3270:  LDR             R1, =(RwEngineInstance_ptr - 0x1E3278)
1E3272:  LDR             R2, =(dword_6BD044 - 0x1E327A)
1E3274:  ADD             R1, PC; RwEngineInstance_ptr
1E3276:  ADD             R2, PC; dword_6BD044
1E3278:  LDR             R1, [R1]; RwEngineInstance
1E327A:  LDR             R2, [R2]
1E327C:  LDR             R1, [R1]
1E327E:  ADD             R1, R2
1E3280:  VLDR            D16, [R1,#0xC]
1E3284:  LDR             R1, [R1,#0x14]
1E3286:  STR             R1, [R0,#8]
1E3288:  VSTR            D16, [R0]
1E328C:  MOVS            R0, #1
1E328E:  BX              LR
