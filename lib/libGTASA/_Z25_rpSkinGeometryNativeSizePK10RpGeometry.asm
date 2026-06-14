; =========================================================
; Game Engine Function: _Z25_rpSkinGeometryNativeSizePK10RpGeometry
; Address            : 0x1C7C80 - 0x1C7C94
; =========================================================

1C7C80:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C7C86)
1C7C82:  ADD             R1, PC; _rpSkinGlobals_ptr
1C7C84:  LDR             R1, [R1]; _rpSkinGlobals
1C7C86:  LDR             R1, [R1,#(dword_6B727C - 0x6B7274)]
1C7C88:  LDR             R0, [R0,R1]
1C7C8A:  MOVS            R1, #0x14
1C7C8C:  LDR             R0, [R0]
1C7C8E:  ORR.W           R0, R1, R0,LSL#6
1C7C92:  BX              LR
