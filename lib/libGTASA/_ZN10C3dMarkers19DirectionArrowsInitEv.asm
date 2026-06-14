; =========================================================
; Game Engine Function: _ZN10C3dMarkers19DirectionArrowsInitEv
; Address            : 0x5BF33C - 0x5BF358
; =========================================================

5BF33C:  LDR             R0, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF344)
5BF33E:  MOVS            R1, #0
5BF340:  ADD             R0, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF342:  LDR             R0, [R0]; C3dMarkers::ms_directionArrows ...
5BF344:  STRB.W          R1, [R0,#(byte_A59FF0 - 0xA59FC0)]
5BF348:  STRB            R1, [R0]; C3dMarkers::ms_directionArrows
5BF34A:  STRB.W          R1, [R0,#(byte_A5A020 - 0xA59FC0)]
5BF34E:  STRB.W          R1, [R0,#(byte_A5A050 - 0xA59FC0)]
5BF352:  STRB.W          R1, [R0,#(dword_A5A080 - 0xA59FC0)]
5BF356:  BX              LR
