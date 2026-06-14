; =========================================================
; Game Engine Function: _ZN26CWidgetButtonMissionCancel6UpdateEv
; Address            : 0x2B6878 - 0x2B692A
; =========================================================

2B6878:  PUSH            {R4-R7,LR}
2B687A:  ADD             R7, SP, #0xC
2B687C:  PUSH.W          {R8-R11}
2B6880:  SUB             SP, SP, #0xC
2B6882:  MOV             R4, R0
2B6884:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B6888:  ADD.W           R8, R4, #0xC
2B688C:  ADD.W           R9, R4, #0x10
2B6890:  ADD.W           R10, R4, #0x14
2B6894:  ADD.W           R0, R4, #0x18
2B6898:  STR             R0, [SP,#0x28+var_20]
2B689A:  MOV             R1, R8
2B689C:  STR             R0, [SP,#0x28+var_28]
2B689E:  MOVS            R0, #0x26 ; '&'
2B68A0:  MOV             R2, R9
2B68A2:  MOV             R3, R10
2B68A4:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B68A8:  ADD.W           R5, R4, #8
2B68AC:  ADR             R2, aHudX; "hud_x"
2B68AE:  MOV             R0, R4; this
2B68B0:  MOVS            R3, #0; bool
2B68B2:  MOV             R1, R5; CSprite2d *
2B68B4:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2B68B8:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x2B68BE)
2B68BA:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
2B68BC:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
2B68BE:  LDR.W           R11, [R0]; CTheScripts::pActiveScripts
2B68C2:  CMP.W           R11, #0
2B68C6:  BEQ             loc_2B6922
2B68C8:  ADD.W           R6, R11, #8
2B68CC:  ADR             R1, aBball; "bball"
2B68CE:  MOV             R0, R6; char *
2B68D0:  BLX             strcmp
2B68D4:  CBZ             R0, loc_2B68EA
2B68D6:  ADR             R1, aBbchal; "bbchal"
2B68D8:  MOV             R0, R6; char *
2B68DA:  BLX             strcmp
2B68DE:  CBZ             R0, loc_2B68EA
2B68E0:  ADR             R1, aShrange; "shrange"
2B68E2:  MOV             R0, R6; char *
2B68E4:  BLX             strcmp
2B68E8:  CBNZ            R0, loc_2B6906
2B68EA:  ADR             R2, aHudDropJetpack_0; "hud_drop_jetpack"
2B68EC:  MOV             R0, R4; this
2B68EE:  MOV             R1, R5; CSprite2d *
2B68F0:  MOVS            R3, #0; bool
2B68F2:  BLX             j__ZN7CWidget10SetTextureER9CSprite2dPcb; CWidget::SetTexture(CSprite2d &,char *,bool)
2B68F6:  LDR             R0, =(_ZN11CTheScripts14pActiveScriptsE_ptr - 0x2B68FC)
2B68F8:  ADD             R0, PC; _ZN11CTheScripts14pActiveScriptsE_ptr
2B68FA:  LDR             R0, [R0]; CTheScripts::pActiveScripts ...
2B68FC:  LDR.W           R11, [R0]; CTheScripts::pActiveScripts
2B6900:  CMP.W           R11, #0
2B6904:  BEQ             loc_2B6922
2B6906:  ADD.W           R0, R11, #8; char *
2B690A:  ADR             R1, aShrange; "shrange"
2B690C:  BLX             strcmp
2B6910:  CBNZ            R0, loc_2B6922
2B6912:  LDR             R0, [SP,#0x28+var_20]
2B6914:  MOV             R1, R8
2B6916:  STR             R0, [SP,#0x28+var_28]
2B6918:  MOVS            R0, #0
2B691A:  MOV             R2, R9
2B691C:  MOV             R3, R10
2B691E:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B6922:  ADD             SP, SP, #0xC
2B6924:  POP.W           {R8-R11}
2B6928:  POP             {R4-R7,PC}
