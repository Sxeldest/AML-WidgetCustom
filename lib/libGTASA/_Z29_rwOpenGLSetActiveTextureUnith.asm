; =========================================================
; Game Engine Function: _Z29_rwOpenGLSetActiveTextureUnith
; Address            : 0x1AEE58 - 0x1AEE64
; =========================================================

1AEE58:  LDR             R0, =(dword_6B3208 - 0x1AEE60)
1AEE5A:  MOVS            R1, #0
1AEE5C:  ADD             R0, PC; dword_6B3208
1AEE5E:  STRB            R1, [R0,#(byte_6B320C - 0x6B3208)]
1AEE60:  MOVS            R0, #0
1AEE62:  BX              LR
