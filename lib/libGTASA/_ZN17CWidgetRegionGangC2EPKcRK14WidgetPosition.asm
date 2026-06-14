; =========================================================
; Game Engine Function: _ZN17CWidgetRegionGangC2EPKcRK14WidgetPosition
; Address            : 0x2C0900 - 0x2C096E
; =========================================================

2C0900:  PUSH            {R4-R7,LR}; Alternative name is 'CWidgetRegionGang::CWidgetRegionGang(char const*, WidgetPosition const&)'
2C0902:  ADD             R7, SP, #0xC
2C0904:  PUSH.W          {R11}
2C0908:  SUB             SP, SP, #8
2C090A:  MOV             R4, R0
2C090C:  MOVS            R0, #0x2A ; '*'
2C090E:  STR             R0, [SP,#0x18+var_18]
2C0910:  MOV             R0, R4
2C0912:  MOVW            R3, #0xC0C
2C0916:  BLX             j__ZN13CWidgetRegionC2EPKcRK14WidgetPositioni10HIDMapping; CWidgetRegion::CWidgetRegion(char const*,WidgetPosition const&,int,HIDMapping)
2C091A:  LDR             R0, =(_ZTV17CWidgetRegionGang_ptr - 0x2C092A)
2C091C:  ADR             R1, dword_2C0970
2C091E:  VLD1.64         {D16-D17}, [R1@128]
2C0922:  ADD.W           R1, R4, #0x90
2C0926:  ADD             R0, PC; _ZTV17CWidgetRegionGang_ptr
2C0928:  ADD.W           R6, R4, #0xA0
2C092C:  MOV             R5, R4
2C092E:  VST1.32         {D16-D17}, [R1]
2C0932:  LDR             R0, [R0]; `vtable for'CWidgetRegionGang ...
2C0934:  ADDS            R0, #8
2C0936:  STR.W           R0, [R5],#0xA4
2C093A:  MOV             R0, R6; this
2C093C:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C0940:  MOV             R0, R5; this
2C0942:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2C0946:  ADR             R2, aWhite; "white"
2C0948:  MOV             R0, R4; this
2C094A:  MOV             R1, R5; CSprite2d *
2C094C:  MOVS            R3, #1; bool
2C094E:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C0952:  ADR             R2, aGangbackground; "GangBackground"
2C0954:  MOV             R0, R4; this
2C0956:  MOV             R1, R6; CSprite2d *
2C0958:  MOVS            R3, #1; bool
2C095A:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2C095E:  MOV             R0, R4; this
2C0960:  BLX             j__ZN17CWidgetRegionGang10BuildRectsEv; CWidgetRegionGang::BuildRects(void)
2C0964:  MOV             R0, R4
2C0966:  ADD             SP, SP, #8
2C0968:  POP.W           {R11}
2C096C:  POP             {R4-R7,PC}
