; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMoveC2EPKcRK14WidgetPosition
; Address            : 0x2C14A4 - 0x2C14F8
; =========================================================

2C14A4:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CWidgetRegionMove::CWidgetRegionMove(char const*, WidgetPosition const&)'
2C14A6:  ADD             R7, SP, #8
2C14A8:  SUB             SP, SP, #8
2C14AA:  MOV             R4, R0
2C14AC:  MOVS            R0, #0x1E
2C14AE:  STR             R0, [SP,#0x10+var_10]
2C14B0:  MOV             R0, R4
2C14B2:  MOVS            R3, #0x20 ; ' '
2C14B4:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C14B8:  LDR             R0, =(_ZTV17CWidgetRegionMove_ptr - 0x2C14C2)
2C14BA:  ADD.W           R5, R4, #0x98
2C14BE:  ADD             R0, PC; _ZTV17CWidgetRegionMove_ptr
2C14C0:  LDR             R0, [R0]; `vtable for'CWidgetRegionMove ...
2C14C2:  ADDS            R0, #8
2C14C4:  STR             R0, [R4]
2C14C6:  MOV             R0, R5; this
2C14C8:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C14CC:  VMOV.I32        Q8, #0
2C14D0:  ADD.W           R0, R4, #0x9C
2C14D4:  MOVS            R1, #0
2C14D6:  ADR             R2, aHudAnalognub; "hud_analognub"
2C14D8:  MOVS            R3, #1; bool
2C14DA:  VST1.32         {D16-D17}, [R0]
2C14DE:  MOV             R0, #0x3EE66666
2C14E6:  STRD.W          R1, R0, [R4,#0x90]
2C14EA:  MOV             R0, R4; this
2C14EC:  MOV             R1, R5; CSprite2d *
2C14EE:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C14F2:  MOV             R0, R4
2C14F4:  ADD             SP, SP, #8
2C14F6:  POP             {R4,R5,R7,PC}
