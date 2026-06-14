; =========================================================
; Game Engine Function: _ZN10C3dMarkers29User3dMarkerFindFirstFreeSlotEv
; Address            : 0x5BF010 - 0x5BF068
; =========================================================

5BF010:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF016)
5BF012:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF014:  LDR             R0, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF016:  LDRB            R0, [R0]; C3dMarkers::ms_user3dMarkers
5BF018:  CMP             R0, #0
5BF01A:  ITT EQ
5BF01C:  MOVEQ           R0, #0
5BF01E:  BXEQ            LR
5BF020:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF026)
5BF022:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF024:  LDR             R0, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF026:  LDRB            R0, [R0,#(byte_A59F4C - 0xA59F30)]
5BF028:  CMP             R0, #0
5BF02A:  ITT EQ
5BF02C:  MOVEQ           R0, #1
5BF02E:  BXEQ            LR
5BF030:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF036)
5BF032:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF034:  LDR             R0, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF036:  LDRB.W          R0, [R0,#(byte_A59F68 - 0xA59F30)]
5BF03A:  CBZ             R0, loc_5BF064
5BF03C:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF042)
5BF03E:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF040:  LDR             R0, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF042:  LDRB.W          R0, [R0,#(byte_A59F84 - 0xA59F30)]
5BF046:  CMP             R0, #0
5BF048:  ITT EQ
5BF04A:  MOVEQ           R0, #3
5BF04C:  BXEQ            LR
5BF04E:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF054)
5BF050:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF052:  LDR             R0, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF054:  LDRB.W          R1, [R0,#(byte_A59FA0 - 0xA59F30)]
5BF058:  MOV.W           R0, #0xFFFFFFFF
5BF05C:  CMP             R1, #0
5BF05E:  IT EQ
5BF060:  MOVEQ           R0, #4
5BF062:  BX              LR
5BF064:  MOVS            R0, #2
5BF066:  BX              LR
