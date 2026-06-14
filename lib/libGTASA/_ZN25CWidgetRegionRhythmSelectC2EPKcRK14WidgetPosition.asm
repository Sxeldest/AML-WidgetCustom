; =========================================================
; Game Engine Function: _ZN25CWidgetRegionRhythmSelectC2EPKcRK14WidgetPosition
; Address            : 0x2C2030 - 0x2C2120
; =========================================================

2C2030:  PUSH            {R4-R7,LR}; Alternative name is 'CWidgetRegionRhythmSelect::CWidgetRegionRhythmSelect(char const*, WidgetPosition const&)'
2C2032:  ADD             R7, SP, #0xC
2C2034:  PUSH.W          {R8-R10}
2C2038:  SUB             SP, SP, #0x10
2C203A:  MOV             R4, R0
2C203C:  MOV.W           R10, #0
2C2040:  MOVS            R0, #4
2C2042:  MOVS            R3, #0
2C2044:  STRD.W          R0, R10, [SP,#0x28+var_28]
2C2048:  MOV             R0, R4
2C204A:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2C204E:  LDR             R0, =(_ZTV25CWidgetRegionRhythmSelect_ptr - 0x2C2058)
2C2050:  ADD.W           R5, R4, #0xD8
2C2054:  ADD             R0, PC; _ZTV25CWidgetRegionRhythmSelect_ptr
2C2056:  LDR             R0, [R0]; `vtable for'CWidgetRegionRhythmSelect ...
2C2058:  ADDS            R0, #8
2C205A:  STR             R0, [R4]
2C205C:  MOV             R0, R5; this
2C205E:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C2062:  ADD.W           R8, R4, #0xDC
2C2066:  MOV             R0, R8; this
2C2068:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C206C:  ADD.W           R6, R4, #0xE0
2C2070:  MOV             R0, R6; this
2C2072:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C2076:  ADD.W           R0, R4, #8; this
2C207A:  ADR             R1, aCring; "cring"
2C207C:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2C2080:  ADR.W           R9, aUp; "up"
2C2084:  MOV             R0, R5; this
2C2086:  MOV             R1, R9; char *
2C2088:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2C208C:  MOV             R0, R6; this
2C208E:  MOV             R1, R9; char *
2C2090:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2C2094:  MOV             R0, R8; this
2C2096:  MOV             R1, R9; char *
2C2098:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2C209C:  MOVW            R0, #0xFDB
2C20A0:  MOV.W           R1, #0xFFFFFFFF
2C20A4:  MOVT            R0, #0x4049
2C20A8:  STR.W           R1, [R4,#0xA8]
2C20AC:  STRD.W          R0, R0, [R4,#0xB8]
2C20B0:  ADD             R0, SP, #0x28+var_1C; this
2C20B2:  MOVS            R5, #0xFF
2C20B4:  MOVS            R1, #0xFF; unsigned __int8
2C20B6:  MOVS            R2, #0xFF; unsigned __int8
2C20B8:  MOVS            R3, #0xFF; unsigned __int8
2C20BA:  STRB.W          R10, [R4,#0xB4]
2C20BE:  STR             R5, [SP,#0x28+var_28]; unsigned __int8
2C20C0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C20C4:  LDRB.W          R0, [SP,#0x28+var_1C]
2C20C8:  MOVS            R1, #0xFF; unsigned __int8
2C20CA:  STRB.W          R0, [R4,#0xC0]
2C20CE:  MOVS            R2, #0xFF; unsigned __int8
2C20D0:  LDRB.W          R0, [SP,#0x28+var_1B]
2C20D4:  MOVS            R3, #0xFF; unsigned __int8
2C20D6:  STRB.W          R0, [R4,#0xC1]
2C20DA:  LDRB.W          R0, [SP,#0x28+var_1A]
2C20DE:  STRB.W          R0, [R4,#0xC2]
2C20E2:  LDRB.W          R0, [SP,#0x28+var_19]
2C20E6:  STRB.W          R0, [R4,#0xC3]
2C20EA:  ADD             R0, SP, #0x28+var_20; this
2C20EC:  STR             R5, [SP,#0x28+var_28]; unsigned __int8
2C20EE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C20F2:  LDRB.W          R0, [SP,#0x28+var_20]
2C20F6:  STRB.W          R0, [R4,#0xC4]
2C20FA:  LDRB.W          R0, [SP,#0x28+var_1F]
2C20FE:  STRB.W          R0, [R4,#0xC5]
2C2102:  LDRB.W          R0, [SP,#0x28+var_1E]
2C2106:  STRB.W          R0, [R4,#0xC6]
2C210A:  LDRB.W          R0, [SP,#0x28+var_1D]
2C210E:  STRB.W          R0, [R4,#0xC7]
2C2112:  MOV             R0, R4
2C2114:  STR.W           R10, [R4,#0xB0]
2C2118:  ADD             SP, SP, #0x10
2C211A:  POP.W           {R8-R10}
2C211E:  POP             {R4-R7,PC}
