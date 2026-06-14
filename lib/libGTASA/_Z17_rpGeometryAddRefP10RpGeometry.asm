; =========================================================
; Game Engine Function: _Z17_rpGeometryAddRefP10RpGeometry
; Address            : 0x215FFE - 0x216006
; =========================================================

215FFE:  LDRH            R1, [R0,#0xE]
216000:  ADDS            R1, #1
216002:  STRH            R1, [R0,#0xE]
216004:  BX              LR
