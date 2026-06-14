; =========================================================
; Game Engine Function: _ZN17CPPTriPlantBuffer17SetPlantModelsTabEjPP8RpAtomic
; Address            : 0x2CD21C - 0x2CD22E
; =========================================================

2CD21C:  CMP             R1, #3
2CD21E:  ITEEE HI
2CD220:  MOVHI           R0, #0
2CD222:  ADDLS.W         R0, R0, R1,LSL#2
2CD226:  STRLS.W         R2, [R0,#0xB88]
2CD22A:  MOVLS           R0, #1
2CD22C:  BX              LR
