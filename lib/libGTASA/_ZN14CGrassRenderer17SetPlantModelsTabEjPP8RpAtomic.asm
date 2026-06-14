; =========================================================
; Game Engine Function: _ZN14CGrassRenderer17SetPlantModelsTabEjPP8RpAtomic
; Address            : 0x2CD200 - 0x2CD218
; =========================================================

2CD200:  CMP             R0, #3
2CD202:  ITT HI
2CD204:  MOVHI           R0, #0
2CD206:  BXHI            LR
2CD208:  LDR             R2, =(dword_70BF84 - 0x2CD20E)
2CD20A:  ADD             R2, PC; dword_70BF84
2CD20C:  ADD.W           R0, R2, R0,LSL#2
2CD210:  STR.W           R1, [R0,#0xB88]
2CD214:  MOVS            R0, #1
2CD216:  BX              LR
