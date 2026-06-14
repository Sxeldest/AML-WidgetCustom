; =========================================================
; Game Engine Function: _ZN17CWidgetRegionLookC2EPKcRK14WidgetPosition
; Address            : 0x2C0D38 - 0x2C0D92
; =========================================================

2C0D38:  PUSH            {R4-R7,LR}
2C0D3A:  ADD             R7, SP, #0xC
2C0D3C:  PUSH.W          {R11}
2C0D40:  SUB             SP, SP, #8
2C0D42:  MOV             R4, R0
2C0D44:  MOVS            R0, #0x12
2C0D46:  STR             R0, [SP,#0x18+var_18]
2C0D48:  MOV             R0, R4
2C0D4A:  MOVS            R3, #0
2C0D4C:  MOVS            R6, #0
2C0D4E:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C0D52:  LDR             R0, =(_ZTV17CWidgetRegionLook_ptr - 0x2C0D60)
2C0D54:  ADD             R5, SP, #0x18+var_14
2C0D56:  STRH.W          R6, [R4,#0x90]
2C0D5A:  MOVS            R1, #0xFF; unsigned __int8
2C0D5C:  ADD             R0, PC; _ZTV17CWidgetRegionLook_ptr
2C0D5E:  MOVS            R2, #0xFF; unsigned __int8
2C0D60:  MOVS            R3, #0xFF; unsigned __int8
2C0D62:  LDR             R0, [R0]; `vtable for'CWidgetRegionLook ...
2C0D64:  ADDS            R0, #8
2C0D66:  STR             R0, [R4]
2C0D68:  MOVS            R0, #0x40 ; '@'
2C0D6A:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
2C0D6C:  MOV             R0, R5; this
2C0D6E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C0D72:  ADR             R1, aHudTicks_1; "hud_ticks"
2C0D74:  MOV             R0, R4
2C0D76:  MOVS            R2, #0
2C0D78:  MOV             R3, R5
2C0D7A:  STR             R6, [SP,#0x18+var_18]
2C0D7C:  BLX             j__ZN7CWidget16CreateHoldEffectEPKcb5CRGBAb; CWidget::CreateHoldEffect(char const*,bool,CRGBA,bool)
2C0D80:  MOV.W           R0, #0x3F000000
2C0D84:  STR.W           R0, [R4,#0x8C]
2C0D88:  MOV             R0, R4
2C0D8A:  ADD             SP, SP, #8
2C0D8C:  POP.W           {R11}
2C0D90:  POP             {R4-R7,PC}
