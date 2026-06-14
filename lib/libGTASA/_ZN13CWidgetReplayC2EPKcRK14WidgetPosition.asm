; =========================================================
; Game Engine Function: _ZN13CWidgetReplayC2EPKcRK14WidgetPosition
; Address            : 0x2C639C - 0x2C6408
; =========================================================

2C639C:  PUSH            {R4,R5,R7,LR}
2C639E:  ADD             R7, SP, #8
2C63A0:  SUB             SP, SP, #8
2C63A2:  MOV             R4, R0
2C63A4:  MOVS            R0, #0x6C ; 'l'
2C63A6:  STR             R0, [SP,#0x10+var_10]
2C63A8:  MOV             R0, R4
2C63AA:  MOVW            R3, #0x402
2C63AE:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2C63B2:  LDR             R0, =(_ZTV13CWidgetReplay_ptr - 0x2C63B8)
2C63B4:  ADD             R0, PC; _ZTV13CWidgetReplay_ptr
2C63B6:  LDR             R0, [R0]; `vtable for'CWidgetReplay ...
2C63B8:  ADDS            R0, #8
2C63BA:  STR             R0, [R4]
2C63BC:  ADD.W           R0, R4, #0x90; this
2C63C0:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C63C4:  ADD             R0, SP, #0x10+var_C; this
2C63C6:  MOVS            R5, #0
2C63C8:  MOVS            R1, #0xFF; unsigned __int8
2C63CA:  MOVS            R2, #0; unsigned __int8
2C63CC:  MOVS            R3, #0; unsigned __int8
2C63CE:  STR             R5, [SP,#0x10+var_10]; unsigned __int8
2C63D0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C63D4:  LDRB.W          R0, [SP,#0x10+var_C]
2C63D8:  STRB.W          R0, [R4,#0x49]
2C63DC:  LDRB.W          R0, [SP,#0x10+var_B]
2C63E0:  STRB.W          R0, [R4,#0x4A]
2C63E4:  LDRB.W          R0, [SP,#0x10+var_A]
2C63E8:  STRB.W          R0, [R4,#0x4B]
2C63EC:  LDRB.W          R0, [SP,#0x10+var_9]
2C63F0:  STRB.W          R0, [R4,#0x4C]
2C63F4:  MOV.W           R0, #0x40800000
2C63F8:  STRB.W          R5, [R4,#0x98]
2C63FC:  STR.W           R5, [R4,#0x94]
2C6400:  STR             R0, [R4,#0x30]
2C6402:  MOV             R0, R4
2C6404:  ADD             SP, SP, #8
2C6406:  POP             {R4,R5,R7,PC}
