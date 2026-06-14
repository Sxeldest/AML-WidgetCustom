; =========================================================
; Game Engine Function: _ZN25CWidgetButtonVehicleShoot14UpdatePositionEv
; Address            : 0x2B5E94 - 0x2B5EEE
; =========================================================

2B5E94:  PUSH            {R4,R6,R7,LR}
2B5E96:  ADD             R7, SP, #8
2B5E98:  SUB             SP, SP, #0x18
2B5E9A:  MOV             R4, R0
2B5E9C:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2B5EA4)
2B5E9E:  MOVS            R1, #0
2B5EA0:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2B5EA2:  STRD.W          R1, R1, [SP,#0x20+var_10]
2B5EA6:  STRD.W          R1, R1, [SP,#0x20+var_18]
2B5EAA:  LDR             R0, [R0]; MobileSettings::settings ...
2B5EAC:  LDR             R1, [R0,#(dword_6E045C - 0x6E03F4)]
2B5EAE:  LDR             R0, [R4,#4]
2B5EB0:  CMP             R0, #0x14
2B5EB2:  BEQ             loc_2B5EC6
2B5EB4:  CMP             R0, #0x13
2B5EB6:  BNE             loc_2B5EDC
2B5EB8:  ADD             R0, SP, #0x20+var_18
2B5EBA:  STR             R0, [SP,#0x20+var_20]
2B5EBC:  MOVS            R0, #0xA
2B5EBE:  CMP             R1, #1
2B5EC0:  IT NE
2B5EC2:  MOVNE           R0, #5
2B5EC4:  B               loc_2B5ED2
2B5EC6:  ADD             R0, SP, #0x20+var_18
2B5EC8:  STR             R0, [SP,#0x20+var_20]
2B5ECA:  MOVS            R0, #0xB
2B5ECC:  CMP             R1, #1
2B5ECE:  IT NE
2B5ED0:  MOVNE           R0, #6
2B5ED2:  ADD             R1, SP, #0x20+var_C
2B5ED4:  ADD             R2, SP, #0x20+var_10
2B5ED6:  ADD             R3, SP, #0x20+var_14
2B5ED8:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B5EDC:  ADD             R3, SP, #0x20+var_18
2B5EDE:  LDR             R2, [SP,#0x20+var_C]
2B5EE0:  LDM             R3, {R0,R1,R3}
2B5EE2:  STRD.W          R2, R3, [R4,#0xC]
2B5EE6:  STRD.W          R1, R0, [R4,#0x14]
2B5EEA:  ADD             SP, SP, #0x18
2B5EEC:  POP             {R4,R6,R7,PC}
