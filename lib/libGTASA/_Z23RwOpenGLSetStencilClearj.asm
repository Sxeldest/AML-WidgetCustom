; =========================================================
; Game Engine Function: _Z23RwOpenGLSetStencilClearj
; Address            : 0x1AFED4 - 0x1AFEEA
; =========================================================

1AFED4:  LDR             R1, =(dword_6B3208 - 0x1AFEDA)
1AFED6:  ADD             R1, PC; dword_6B3208
1AFED8:  LDR             R1, [R1,#(dword_6B3270 - 0x6B3208)]
1AFEDA:  CMP             R1, R0
1AFEDC:  IT EQ
1AFEDE:  BXEQ            LR
1AFEE0:  LDR             R1, =(dword_6B3208 - 0x1AFEE6)
1AFEE2:  ADD             R1, PC; dword_6B3208
1AFEE4:  STR             R0, [R1,#(dword_6B3270 - 0x6B3208)]
1AFEE6:  B.W             j_j__Z18emu_glClearStencili; j_emu_glClearStencil(int)
