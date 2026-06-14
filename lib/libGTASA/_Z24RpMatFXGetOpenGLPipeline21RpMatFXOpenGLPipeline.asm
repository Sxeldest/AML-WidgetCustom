; =========================================================
; Game Engine Function: _Z24RpMatFXGetOpenGLPipeline21RpMatFXOpenGLPipeline
; Address            : 0x1C48D8 - 0x1C48F4
; =========================================================

1C48D8:  CMP             R0, #2
1C48DA:  BEQ             loc_1C48EC
1C48DC:  CMP             R0, #1
1C48DE:  ITT NE
1C48E0:  MOVNE           R0, #0
1C48E2:  BXNE            LR
1C48E4:  LDR             R0, =(dword_6B70D8 - 0x1C48EA)
1C48E6:  ADD             R0, PC; dword_6B70D8
1C48E8:  LDR             R0, [R0]
1C48EA:  BX              LR
1C48EC:  LDR             R0, =(dword_6B70DC - 0x1C48F2)
1C48EE:  ADD             R0, PC; dword_6B70DC
1C48F0:  LDR             R0, [R0]
1C48F2:  BX              LR
