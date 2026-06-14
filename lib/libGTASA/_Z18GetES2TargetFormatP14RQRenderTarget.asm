; =========================================================
; Game Engine Function: _Z18GetES2TargetFormatP14RQRenderTarget
; Address            : 0x1D000C - 0x1D0018
; =========================================================

1D000C:  LDR             R1, [R0,#4]
1D000E:  MOVS            R0, #0
1D0010:  CMP             R1, #0
1D0012:  IT EQ
1D0014:  MOVEQ           R0, #2
1D0016:  BX              LR
