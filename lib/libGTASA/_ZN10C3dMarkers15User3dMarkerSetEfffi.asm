; =========================================================
; Game Engine Function: _ZN10C3dMarkers15User3dMarkerSetEfffi
; Address            : 0x5BF07C - 0x5BF150
; =========================================================

5BF07C:  PUSH            {R4-R7,LR}
5BF07E:  ADD             R7, SP, #0xC
5BF080:  PUSH.W          {R8-R10}
5BF084:  SUB             SP, SP, #0x10
5BF086:  LDR             R6, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF08C)
5BF088:  ADD             R6, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF08A:  LDR             R6, [R6]; C3dMarkers::ms_user3dMarkers ...
5BF08C:  LDRB            R6, [R6]; C3dMarkers::ms_user3dMarkers
5BF08E:  CBZ             R6, loc_5BF0C4
5BF090:  LDR             R6, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF096)
5BF092:  ADD             R6, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF094:  LDR             R6, [R6]; C3dMarkers::ms_user3dMarkers ...
5BF096:  LDRB            R6, [R6,#(byte_A59F4C - 0xA59F30)]
5BF098:  CBZ             R6, loc_5BF0CA
5BF09A:  LDR             R6, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF0A0)
5BF09C:  ADD             R6, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF09E:  LDR             R6, [R6]; C3dMarkers::ms_user3dMarkers ...
5BF0A0:  LDRB.W          R6, [R6,#(byte_A59F68 - 0xA59F30)]
5BF0A4:  CBZ             R6, loc_5BF0D0
5BF0A6:  LDR             R6, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF0AC)
5BF0A8:  ADD             R6, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF0AA:  LDR             R6, [R6]; C3dMarkers::ms_user3dMarkers ...
5BF0AC:  LDRB.W          R6, [R6,#(byte_A59F84 - 0xA59F30)]
5BF0B0:  CBZ             R6, loc_5BF0D6
5BF0B2:  LDR             R6, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF0B8)
5BF0B4:  ADD             R6, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF0B6:  LDR             R6, [R6]; C3dMarkers::ms_user3dMarkers ...
5BF0B8:  LDRB.W          R6, [R6,#(byte_A59FA0 - 0xA59F30)]
5BF0BC:  CBZ             R6, loc_5BF0DC
5BF0BE:  MOV.W           R8, #0xFFFFFFFF
5BF0C2:  B               loc_5BF146
5BF0C4:  MOV.W           R8, #0
5BF0C8:  B               loc_5BF0E0
5BF0CA:  MOV.W           R8, #1
5BF0CE:  B               loc_5BF0E0
5BF0D0:  MOV.W           R8, #2
5BF0D4:  B               loc_5BF0E0
5BF0D6:  MOV.W           R8, #3
5BF0DA:  B               loc_5BF0E0
5BF0DC:  MOV.W           R8, #4
5BF0E0:  VMOV            S2, R1
5BF0E4:  LDR             R1, =(HudColour_ptr - 0x5BF0F0)
5BF0E6:  VMOV            S4, R0
5BF0EA:  LDR             R0, =(_ZN10C3dMarkers16ms_user3dMarkersE_ptr - 0x5BF0F6)
5BF0EC:  ADD             R1, PC; HudColour_ptr
5BF0EE:  RSB.W           R10, R8, R8,LSL#3
5BF0F2:  ADD             R0, PC; _ZN10C3dMarkers16ms_user3dMarkersE_ptr
5BF0F4:  VMOV            S0, R2
5BF0F8:  LDR             R5, [R1]; HudColour
5BF0FA:  UXTB            R6, R3
5BF0FC:  LDR.W           R9, [R0]; C3dMarkers::ms_user3dMarkers ...
5BF100:  ADD             R0, SP, #0x28+var_1C; this
5BF102:  MOV             R2, R6
5BF104:  ADD.W           R4, R9, R10,LSL#2
5BF108:  MOV             R1, R5; unsigned __int8
5BF10A:  VSTR            S4, [R4,#4]
5BF10E:  VSTR            S2, [R4,#8]
5BF112:  VSTR            S0, [R4,#0xC]
5BF116:  BLX.W           j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
5BF11A:  LDRB.W          R0, [SP,#0x28+var_1C]
5BF11E:  MOV             R1, R5; unsigned __int8
5BF120:  STR             R0, [R4,#0x10]; C3dMarkers::m_user3dMarkerColor
5BF122:  ADD             R0, SP, #0x28+var_20; this
5BF124:  MOV             R2, R6
5BF126:  BLX.W           j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
5BF12A:  LDRB.W          R0, [SP,#0x28+var_1F]
5BF12E:  MOV             R1, R5; unsigned __int8
5BF130:  STR             R0, [R4,#0x14]; C3dMarkers::m_user3dMarkerColor
5BF132:  ADD             R0, SP, #0x28+var_24; this
5BF134:  MOV             R2, R6
5BF136:  BLX.W           j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
5BF13A:  LDRB.W          R0, [SP,#0x28+var_22]
5BF13E:  STR             R0, [R4,#0x18]; C3dMarkers::m_user3dMarkerColor
5BF140:  MOVS            R0, #1
5BF142:  STRB.W          R0, [R9,R10,LSL#2]
5BF146:  MOV             R0, R8
5BF148:  ADD             SP, SP, #0x10
5BF14A:  POP.W           {R8-R10}
5BF14E:  POP             {R4-R7,PC}
