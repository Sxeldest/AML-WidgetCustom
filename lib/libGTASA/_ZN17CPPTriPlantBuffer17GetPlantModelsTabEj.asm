; =========================================================
; Game Engine Function: _ZN17CPPTriPlantBuffer17GetPlantModelsTabEj
; Address            : 0x2CD24C - 0x2CD25C
; =========================================================

2CD24C:  CMP             R1, #3
2CD24E:  ITEE HI
2CD250:  MOVHI           R0, #0
2CD252:  ADDLS.W         R0, R0, R1,LSL#2
2CD256:  LDRLS.W         R0, [R0,#0xB88]
2CD25A:  BX              LR
