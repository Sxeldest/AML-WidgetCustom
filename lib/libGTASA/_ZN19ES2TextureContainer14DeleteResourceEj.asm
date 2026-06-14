; =========================================================
; Game Engine Function: _ZN19ES2TextureContainer14DeleteResourceEj
; Address            : 0x1D131C - 0x1D1330
; =========================================================

1D131C:  PUSH            {R7,LR}
1D131E:  MOV             R7, SP
1D1320:  SUB             SP, SP, #8
1D1322:  STR             R1, [SP,#0x10+textures]
1D1324:  ADD             R1, SP, #0x10+textures; textures
1D1326:  MOVS            R0, #1; n
1D1328:  BLX             glDeleteTextures
1D132C:  ADD             SP, SP, #8
1D132E:  POP             {R7,PC}
