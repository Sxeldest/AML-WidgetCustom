; =========================================================
; Game Engine Function: _ZN10C3dMarkers18User3dMarkerDeleteEi
; Address            : 0x5BF16C - 0x5BF184
; =========================================================

5BF16C:  CMP             R0, #4
5BF16E:  IT HI
5BF170:  BXHI            LR
5BF172:  LDR             R1, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF17E)
5BF174:  RSB.W           R0, R0, R0,LSL#3
5BF178:  MOVS            R2, #0
5BF17A:  ADD             R1, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF17C:  LDR             R1, [R1]; C3dMarkers::ms_user3dMarkers ...
5BF17E:  STRB.W          R2, [R1,R0,LSL#2]
5BF182:  BX              LR
