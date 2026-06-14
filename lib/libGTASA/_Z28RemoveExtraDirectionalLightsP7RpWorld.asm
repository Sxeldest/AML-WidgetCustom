; =========================================================
; Game Engine Function: _Z28RemoveExtraDirectionalLightsP7RpWorld
; Address            : 0x5D1BE4 - 0x5D1C02
; =========================================================

5D1BE4:  LDR             R0, =(pExtraDirectionals_ptr - 0x5D1BEE)
5D1BE6:  MOVS            R2, #0
5D1BE8:  LDR             R3, =(NumExtraDirLightsInWorld_ptr - 0x5D1BF0)
5D1BEA:  ADD             R0, PC; pExtraDirectionals_ptr
5D1BEC:  ADD             R3, PC; NumExtraDirLightsInWorld_ptr
5D1BEE:  LDR             R0, [R0]; pExtraDirectionals
5D1BF0:  LDR             R1, [R0]
5D1BF2:  STRB            R2, [R1,#2]
5D1BF4:  LDR             R1, [R0,#(dword_A83CD8 - 0xA83CD4)]
5D1BF6:  STRB            R2, [R1,#2]
5D1BF8:  LDR             R0, [R0,#(dword_A83CDC - 0xA83CD4)]
5D1BFA:  LDR             R1, [R3]; NumExtraDirLightsInWorld
5D1BFC:  STRB            R2, [R0,#2]
5D1BFE:  STR             R2, [R1]
5D1C00:  BX              LR
