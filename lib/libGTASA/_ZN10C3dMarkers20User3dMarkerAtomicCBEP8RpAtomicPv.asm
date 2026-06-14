; =========================================================
; Game Engine Function: _ZN10C3dMarkers20User3dMarkerAtomicCBEP8RpAtomicPv
; Address            : 0x5BF324 - 0x5BF338
; =========================================================

5BF324:  LDR             R0, [R0,#0x18]
5BF326:  LDR             R1, =(_ZN10C3dMarkers19m_user3dMarkerColorE_ptr - 0x5BF32C)
5BF328:  ADD             R1, PC; _ZN10C3dMarkers19m_user3dMarkerColorE_ptr
5BF32A:  LDR             R0, [R0,#0x20]
5BF32C:  LDR             R1, [R1]; C3dMarkers::m_user3dMarkerColor ...
5BF32E:  LDR             R0, [R0]
5BF330:  LDR             R1, [R1]; C3dMarkers::m_user3dMarkerColor
5BF332:  STR             R1, [R0,#4]
5BF334:  MOVS            R0, #0
5BF336:  BX              LR
