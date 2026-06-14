; =========================================================
; Game Engine Function: _Z30RpLightSetFreeListCreateParamsii
; Address            : 0x217054 - 0x217062
; =========================================================

217054:  LDR             R2, =(dword_683BAC - 0x21705C)
217056:  LDR             R3, =(dword_683BA8 - 0x21705E)
217058:  ADD             R2, PC; dword_683BAC
21705A:  ADD             R3, PC; dword_683BA8
21705C:  STR             R1, [R2]
21705E:  STR             R0, [R3]
217060:  BX              LR
