; =========================================================
; Game Engine Function: _Z34RpGeometryTriangleGetVertexIndicesPK10RpGeometryPK10RpTrianglePtS5_S5_
; Address            : 0x215F78 - 0x215F9E
; =========================================================

215F78:  CMP             R2, #0
215F7A:  ITT NE
215F7C:  LDRHNE.W        R12, [R1]
215F80:  STRHNE.W        R12, [R2]
215F84:  CMP             R3, #0
215F86:  LDR.W           R12, [SP,#arg_0]
215F8A:  ITT NE
215F8C:  LDRHNE          R2, [R1,#2]
215F8E:  STRHNE          R2, [R3]
215F90:  CMP.W           R12, #0
215F94:  ITT NE
215F96:  LDRHNE          R1, [R1,#4]
215F98:  STRHNE.W        R1, [R12]
215F9C:  BX              LR
