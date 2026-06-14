; =========================================================
; Game Engine Function: _ZN25CWidgetButtonVehicleShoot6UpdateEv
; Address            : 0x2B5E30 - 0x2B5E8E
; =========================================================

2B5E30:  PUSH            {R4,R6,R7,LR}
2B5E32:  ADD             R7, SP, #8
2B5E34:  SUB             SP, SP, #0x18
2B5E36:  MOV             R4, R0
2B5E38:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B5E3C:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2B5E46)
2B5E3E:  MOVS            R2, #0
2B5E40:  STR             R2, [SP,#0x20+var_C]
2B5E42:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2B5E44:  STRD.W          R2, R2, [SP,#0x20+var_14]
2B5E48:  STR             R2, [SP,#0x20+var_18]
2B5E4A:  LDR             R0, [R0]; MobileSettings::settings ...
2B5E4C:  LDR             R1, [R0,#(dword_6E045C - 0x6E03F4)]
2B5E4E:  LDR             R0, [R4,#4]
2B5E50:  CMP             R0, #0x14
2B5E52:  BEQ             loc_2B5E66
2B5E54:  CMP             R0, #0x13
2B5E56:  BNE             loc_2B5E7C
2B5E58:  ADD             R0, SP, #0x20+var_18
2B5E5A:  STR             R0, [SP,#0x20+var_20]
2B5E5C:  MOVS            R0, #0xA
2B5E5E:  CMP             R1, #1
2B5E60:  IT NE
2B5E62:  MOVNE           R0, #5
2B5E64:  B               loc_2B5E72
2B5E66:  ADD             R0, SP, #0x20+var_18
2B5E68:  STR             R0, [SP,#0x20+var_20]
2B5E6A:  MOVS            R0, #0xB
2B5E6C:  CMP             R1, #1
2B5E6E:  IT NE
2B5E70:  MOVNE           R0, #6
2B5E72:  ADD             R1, SP, #0x20+var_C
2B5E74:  ADD             R2, SP, #0x20+var_10
2B5E76:  ADD             R3, SP, #0x20+var_14
2B5E78:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B5E7C:  ADD             R3, SP, #0x20+var_18
2B5E7E:  LDR             R2, [SP,#0x20+var_C]
2B5E80:  LDM             R3, {R0,R1,R3}
2B5E82:  STRD.W          R2, R3, [R4,#0xC]
2B5E86:  STRD.W          R1, R0, [R4,#0x14]
2B5E8A:  ADD             SP, SP, #0x18
2B5E8C:  POP             {R4,R6,R7,PC}
