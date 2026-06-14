; =========================================================
; Game Engine Function: _ZN18CWidgetRegionFlickC2EPKcRK14WidgetPosition
; Address            : 0x2C0570 - 0x2C05B4
; =========================================================

2C0570:  PUSH            {R4-R7,LR}
2C0572:  ADD             R7, SP, #0xC
2C0574:  PUSH.W          {R11}
2C0578:  SUB             SP, SP, #8
2C057A:  MOVS            R6, #0
2C057C:  MOVS            R3, #0
2C057E:  MOV             R4, R0
2C0580:  STR             R6, [SP,#0x18+var_18]
2C0582:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C0586:  LDR             R0, =(_ZTV18CWidgetRegionFlick_ptr - 0x2C0590)
2C0588:  ADD.W           R5, R4, #0x94
2C058C:  ADD             R0, PC; _ZTV18CWidgetRegionFlick_ptr
2C058E:  LDR             R0, [R0]; `vtable for'CWidgetRegionFlick ...
2C0590:  ADDS            R0, #8
2C0592:  STR             R0, [R4]
2C0594:  MOV             R0, R5; this
2C0596:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C059A:  ADR             R2, aArrow; "Arrow"
2C059C:  MOV             R0, R4; this
2C059E:  MOV             R1, R5; CSprite2d *
2C05A0:  MOVS            R3, #1; bool
2C05A2:  STR.W           R6, [R4,#0x90]
2C05A6:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C05AA:  MOV             R0, R4
2C05AC:  ADD             SP, SP, #8
2C05AE:  POP.W           {R11}
2C05B2:  POP             {R4-R7,PC}
