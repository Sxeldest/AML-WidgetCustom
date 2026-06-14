; =========================================================
; Game Engine Function: _Z27RwEngineSetMatrixTolerancesPK17RwMatrixTolerance
; Address            : 0x1E3248 - 0x1E3268
; =========================================================

1E3248:  LDR             R1, =(RwEngineInstance_ptr - 0x1E3250)
1E324A:  LDR             R2, =(dword_6BD044 - 0x1E3256)
1E324C:  ADD             R1, PC; RwEngineInstance_ptr
1E324E:  VLDR            D16, [R0]
1E3252:  ADD             R2, PC; dword_6BD044
1E3254:  LDR             R0, [R0,#8]
1E3256:  LDR             R1, [R1]; RwEngineInstance
1E3258:  LDR             R2, [R2]
1E325A:  LDR             R1, [R1]
1E325C:  ADD             R1, R2
1E325E:  STR             R0, [R1,#0x14]
1E3260:  MOVS            R0, #1
1E3262:  VSTR            D16, [R1,#0xC]
1E3266:  BX              LR
