; =========================================================
; Game Engine Function: _ZN12CWidgetRadarC2EPKcRK14WidgetPosition
; Address            : 0x2BF700 - 0x2BF770
; =========================================================

2BF700:  PUSH            {R4-R7,LR}
2BF702:  ADD             R7, SP, #0xC
2BF704:  PUSH.W          {R11}
2BF708:  SUB             SP, SP, #8
2BF70A:  MOV             R4, R0
2BF70C:  MOVS            R0, #0x11
2BF70E:  STR             R0, [SP,#0x18+var_18]
2BF710:  MOV             R0, R4
2BF712:  MOVW            R3, #0x402
2BF716:  BLX             j__ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping; CWidget::CWidget(char const*,WidgetPosition const&,uint,HIDMapping)
2BF71A:  LDR             R0, =(_ZTV12CWidgetRadar_ptr - 0x2BF724)
2BF71C:  ADD.W           R5, R4, #0x90
2BF720:  ADD             R0, PC; _ZTV12CWidgetRadar_ptr
2BF722:  LDR             R0, [R0]; `vtable for'CWidgetRadar ...
2BF724:  ADDS            R0, #8
2BF726:  STR             R0, [R4]
2BF728:  MOV             R0, R5; this
2BF72A:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2BF72E:  ADD             R6, SP, #0x18+var_14
2BF730:  MOVS            R0, #0xFF
2BF732:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
2BF734:  MOVS            R1, #0xFF; unsigned __int8
2BF736:  MOV             R0, R6; this
2BF738:  MOVS            R2, #0xFF; unsigned __int8
2BF73A:  MOVS            R3, #0xFF; unsigned __int8
2BF73C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF740:  MOVS            R0, #1
2BF742:  ADR             R1, aHudTicks_0; "hud_ticks"
2BF744:  STR             R0, [SP,#0x18+var_18]
2BF746:  MOV             R0, R4
2BF748:  MOVS            R2, #0
2BF74A:  MOV             R3, R6
2BF74C:  BLX             j__ZN7CWidget16CreateHoldEffectEPKcb5CRGBAb; CWidget::CreateHoldEffect(char const*,bool,CRGBA,bool)
2BF750:  MOVW            R0, #0xF5C3
2BF754:  ADR             R1, aCrosshair; "crosshair"
2BF756:  MOVT            R0, #0x3F28
2BF75A:  ADR             R2, aCrosshaira; "crosshaira"
2BF75C:  STR.W           R0, [R4,#0x8C]
2BF760:  MOV             R0, R5; this
2BF762:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
2BF766:  MOV             R0, R4
2BF768:  ADD             SP, SP, #8
2BF76A:  POP.W           {R11}
2BF76E:  POP             {R4-R7,PC}
