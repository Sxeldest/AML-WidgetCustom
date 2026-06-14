; =========================================================
; Game Engine Function: _ZN18CWidgetRegionSteerC2EPKcRK14WidgetPosition
; Address            : 0x2C2E44 - 0x2C2E96
; =========================================================

2C2E44:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CWidgetRegionSteer::CWidgetRegionSteer(char const*, WidgetPosition const&)'
2C2E46:  ADD             R7, SP, #8
2C2E48:  SUB             SP, SP, #8
2C2E4A:  MOV             R4, R0
2C2E4C:  MOVS            R0, #0
2C2E4E:  STR             R0, [SP,#0x10+var_10]
2C2E50:  MOV             R0, R4
2C2E52:  MOVS            R3, #0x20 ; ' '
2C2E54:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C2E58:  LDR             R0, =(_ZTV18CWidgetRegionSteer_ptr - 0x2C2E62)
2C2E5A:  ADD.W           R5, R4, #0x94
2C2E5E:  ADD             R0, PC; _ZTV18CWidgetRegionSteer_ptr
2C2E60:  LDR             R0, [R0]; `vtable for'CWidgetRegionSteer ...
2C2E62:  ADDS            R0, #8
2C2E64:  STR             R0, [R4]
2C2E66:  MOV             R0, R5; this
2C2E68:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C2E6C:  VMOV.I32        Q8, #0
2C2E70:  ADD.W           R0, R4, #0x98
2C2E74:  ADR             R2, aHudAnalognub_0; "hud_analognub"
2C2E76:  MOV             R1, R5; CSprite2d *
2C2E78:  MOVS            R3, #1; bool
2C2E7A:  VST1.32         {D16-D17}, [R0]
2C2E7E:  MOV             R0, #0x3E8CCCCD
2C2E86:  STR.W           R0, [R4,#0x90]
2C2E8A:  MOV             R0, R4; this
2C2E8C:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C2E90:  MOV             R0, R4
2C2E92:  ADD             SP, SP, #8
2C2E94:  POP             {R4,R5,R7,PC}
