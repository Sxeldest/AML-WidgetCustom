; =========================================================
; Game Engine Function: _ZN24CWidgetRegionDriveHybridC2EPKcRK14WidgetPosition
; Address            : 0x2C0010 - 0x2C0070
; =========================================================

2C0010:  PUSH            {R4-R7,LR}; Alternative name is 'CWidgetRegionDriveHybrid::CWidgetRegionDriveHybrid(char const*, WidgetPosition const&)'
2C0012:  ADD             R7, SP, #0xC
2C0014:  PUSH.W          {R8}
2C0018:  SUB             SP, SP, #8
2C001A:  MOV             R4, R0
2C001C:  MOVS            R0, #8
2C001E:  STR             R0, [SP,#0x18+var_18]
2C0020:  MOV             R0, R4
2C0022:  MOVS            R3, #0
2C0024:  MOV.W           R8, #0
2C0028:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C002C:  LDR             R0, =(_ZTV24CWidgetRegionDriveHybrid_ptr - 0x2C0036)
2C002E:  ADD.W           R5, R4, #0x94
2C0032:  ADD             R0, PC; _ZTV24CWidgetRegionDriveHybrid_ptr
2C0034:  LDR             R0, [R0]; `vtable for'CWidgetRegionDriveHybrid ...
2C0036:  ADDS            R0, #8
2C0038:  STR             R0, [R4]
2C003A:  MOV             R0, R5; this
2C003C:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C0040:  ADD.W           R6, R4, #0x98
2C0044:  MOV             R0, R6; this
2C0046:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C004A:  ADR             R2, aCornergradient; "CornerGradient"
2C004C:  MOV             R0, R4; this
2C004E:  MOV             R1, R5; CSprite2d *
2C0050:  MOVS            R3, #1; bool
2C0052:  STR.W           R8, [R4,#0x90]
2C0056:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C005A:  ADR             R2, aAccelerateSolo; "accelerate_solo"
2C005C:  MOV             R0, R4; this
2C005E:  MOV             R1, R6; CSprite2d *
2C0060:  MOVS            R3, #1; bool
2C0062:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C0066:  MOV             R0, R4
2C0068:  ADD             SP, SP, #8
2C006A:  POP.W           {R8}
2C006E:  POP             {R4-R7,PC}
