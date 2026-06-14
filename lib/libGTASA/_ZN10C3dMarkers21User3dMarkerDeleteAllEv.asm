; =========================================================
; Game Engine Function: _ZN10C3dMarkers21User3dMarkerDeleteAllEv
; Address            : 0x5BF188 - 0x5BF1A2
; =========================================================

5BF188:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF190)
5BF18A:  MOVS            R1, #0
5BF18C:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF18E:  LDR             R0, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF190:  STRB            R1, [R0,#(byte_A59F4C - 0xA59F30)]
5BF192:  STRB            R1, [R0]; C3dMarkers::ms_user3dMarkers
5BF194:  STRB.W          R1, [R0,#(byte_A59F68 - 0xA59F30)]
5BF198:  STRB.W          R1, [R0,#(byte_A59F84 - 0xA59F30)]
5BF19C:  STRB.W          R1, [R0,#(byte_A59FA0 - 0xA59F30)]
5BF1A0:  BX              LR
