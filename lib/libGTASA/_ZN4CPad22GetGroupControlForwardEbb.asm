; =========================================================
; Game Engine Function: _ZN4CPad22GetGroupControlForwardEbb
; Address            : 0x3FC978 - 0x3FC9E0
; =========================================================

3FC978:  PUSH            {R4,R6,R7,LR}
3FC97A:  ADD             R7, SP, #8
3FC97C:  LDRH.W          R0, [R0,#0x110]
3FC980:  CBZ             R0, loc_3FC988
3FC982:  MOVS            R4, #0
3FC984:  MOV             R0, R4
3FC986:  POP             {R4,R6,R7,PC}
3FC988:  LDR             R0, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x3FC98E)
3FC98A:  ADD             R0, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
3FC98C:  LDR             R0, [R0]; CHud::bDrawingVitalStats ...
3FC98E:  LDRB            R0, [R0]; CHud::bDrawingVitalStats
3FC990:  CMP             R0, #0
3FC992:  BNE             loc_3FC982
3FC994:  CMP             R1, #0
3FC996:  BEQ             loc_3FC982
3FC998:  CMP             R2, #1
3FC99A:  BNE             loc_3FC9B0
3FC99C:  MOVS            R0, #0x6C ; 'l'
3FC99E:  MOVS            R1, #0
3FC9A0:  MOVS            R2, #1
3FC9A2:  MOVS            R4, #1
3FC9A4:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC9A8:  CMP             R0, #0
3FC9AA:  BEQ             loc_3FC982
3FC9AC:  MOV             R0, R4
3FC9AE:  POP             {R4,R6,R7,PC}
3FC9B0:  MOVS            R0, #0x6A ; 'j'
3FC9B2:  MOVS            R1, #0
3FC9B4:  MOVS            R2, #1
3FC9B6:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC9BA:  CMP             R0, #1
3FC9BC:  BNE             loc_3FC982
3FC9BE:  MOVS            R0, #word_10; this
3FC9C0:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3FC9C4:  MOV.W           R0, #0xFFFFFFFF; int
3FC9C8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FC9CC:  CBZ             R0, loc_3FC9DA
3FC9CE:  MOV.W           R0, #0xFFFFFFFF; int
3FC9D2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3FC9D6:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
3FC9DA:  MOVS            R4, #1
3FC9DC:  MOV             R0, R4
3FC9DE:  POP             {R4,R6,R7,PC}
