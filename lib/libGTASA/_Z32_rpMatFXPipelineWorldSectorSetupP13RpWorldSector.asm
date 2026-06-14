; =========================================================
; Game Engine Function: _Z32_rpMatFXPipelineWorldSectorSetupP13RpWorldSector
; Address            : 0x1C48C0 - 0x1C48CC
; =========================================================

1C48C0:  LDR             R1, =(dword_6B70DC - 0x1C48C6)
1C48C2:  ADD             R1, PC; dword_6B70DC
1C48C4:  LDR             R1, [R1]
1C48C6:  STR.W           R1, [R0,#0x84]
1C48CA:  BX              LR
