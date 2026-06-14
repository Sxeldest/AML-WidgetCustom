; =========================================================
; Game Engine Function: _ZN24CWidgetButtonSwapWeapons6UpdateEv
; Address            : 0x2B5D2C - 0x2B5D70
; =========================================================

2B5D2C:  PUSH            {R4,R6,R7,LR}
2B5D2E:  ADD             R7, SP, #8
2B5D30:  SUB             SP, SP, #0x18
2B5D32:  MOV             R4, R0
2B5D34:  MOVS            R0, #0; this
2B5D36:  STRD.W          R0, R0, [SP,#0x20+var_10]
2B5D3A:  STRD.W          R0, R0, [SP,#0x20+var_18]
2B5D3E:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
2B5D42:  CMP             R0, #1
2B5D44:  ADD             R0, SP, #0x20+var_18
2B5D46:  STR             R0, [SP,#0x20+var_20]
2B5D48:  ADD             R1, SP, #0x20+var_C
2B5D4A:  ADD             R2, SP, #0x20+var_10
2B5D4C:  ADD             R3, SP, #0x20+var_14
2B5D4E:  ITE NE
2B5D50:  MOVNE           R0, #0x11
2B5D52:  MOVEQ           R0, #0xE
2B5D54:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B5D58:  ADD             R3, SP, #0x20+var_18
2B5D5A:  LDR             R2, [SP,#0x20+var_C]
2B5D5C:  LDM             R3, {R0,R1,R3}
2B5D5E:  STRD.W          R2, R3, [R4,#0xC]
2B5D62:  STRD.W          R1, R0, [R4,#0x14]
2B5D66:  MOV             R0, R4; this
2B5D68:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B5D6C:  ADD             SP, SP, #0x18
2B5D6E:  POP             {R4,R6,R7,PC}
