; =========================================================
; Game Engine Function: _Z17_rwCameraValClosev
; Address            : 0x1D7114 - 0x1D7136
; =========================================================

1D7114:  LDR             R0, =(dword_6BCD30 - 0x1D711A)
1D7116:  ADD             R0, PC; dword_6BCD30
1D7118:  LDR             R0, [R0]
1D711A:  CMP             R0, #0
1D711C:  IT EQ
1D711E:  BXEQ            LR
1D7120:  PUSH            {R7,LR}
1D7122:  MOV             R7, SP
1D7124:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1D7128:  LDR             R0, =(dword_6BCD30 - 0x1D7130)
1D712A:  MOVS            R1, #0
1D712C:  ADD             R0, PC; dword_6BCD30
1D712E:  STR             R1, [R0]
1D7130:  POP.W           {R7,LR}
1D7134:  BX              LR
