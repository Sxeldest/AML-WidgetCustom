; =========================================================
; Game Engine Function: _Z29RpGeometryTriangleGetMaterialPK10RpGeometryPK10RpTriangle
; Address            : 0x215F9E - 0x215FB0
; =========================================================

215F9E:  LDRSH.W         R1, [R1,#6]
215FA2:  ADDS            R2, R1, #1
215FA4:  ITEE EQ
215FA6:  MOVEQ           R0, #0
215FA8:  LDRNE           R0, [R0,#dword_20]
215FAA:  LDRNE.W         R0, [R0,R1,LSL#2]
215FAE:  BX              LR
