; =========================================================
; Game Engine Function: _ZN6CCrime27FindImmediateDetectionRangeE10eCrimeType
; Address            : 0x3EAAE8 - 0x3EAB00
; =========================================================

3EAAE8:  SUBS            R0, #0xC
3EAAEA:  CMP             R0, #8
3EAAEC:  ITTT HI
3EAAEE:  MOVHI           R0, #0
3EAAF0:  MOVTHI          R0, #0x4160
3EAAF4:  BXHI            LR
3EAAF6:  LDR             R1, =(unk_617060 - 0x3EAAFC)
3EAAF8:  ADD             R1, PC; unk_617060
3EAAFA:  LDR.W           R0, [R1,R0,LSL#2]
3EAAFE:  BX              LR
