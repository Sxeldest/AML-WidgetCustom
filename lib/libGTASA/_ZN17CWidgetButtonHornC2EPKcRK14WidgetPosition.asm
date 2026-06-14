; =========================================================
; Game Engine Function: _ZN17CWidgetButtonHornC2EPKcRK14WidgetPosition
; Address            : 0x2B65C8 - 0x2B6622
; =========================================================

2B65C8:  PUSH            {R4,R5,R7,LR}
2B65CA:  ADD             R7, SP, #8
2B65CC:  SUB             SP, SP, #0x18
2B65CE:  MOV             R4, R0
2B65D0:  MOVS            R0, #0xB
2B65D2:  MOVS            R5, #0
2B65D4:  MOVS            R3, #1
2B65D6:  STRD.W          R5, R0, [SP,#0x20+var_20]
2B65DA:  MOV             R0, R4
2B65DC:  BLX             j__ZN13CWidgetButtonC2EPKcRK14WidgetPositionjj10HIDMapping_0; CWidgetButton::CWidgetButton(char const*,WidgetPosition const&,uint,uint,HIDMapping)
2B65E0:  LDR             R0, =(_ZTV17CWidgetButtonHorn_ptr - 0x2B65EC)
2B65E2:  ADD             R2, SP, #0x20+var_10
2B65E4:  LDR             R1, =(byte_6FA300 - 0x2B65EE)
2B65E6:  ADD             R3, SP, #0x20+var_14
2B65E8:  ADD             R0, PC; _ZTV17CWidgetButtonHorn_ptr
2B65EA:  ADD             R1, PC; byte_6FA300
2B65EC:  LDR             R0, [R0]; `vtable for'CWidgetButtonHorn ...
2B65EE:  ADDS            R0, #8
2B65F0:  STR             R0, [R4]
2B65F2:  STR             R5, [SP,#0x20+var_C]
2B65F4:  ADD             R0, SP, #0x20+var_18
2B65F6:  STRD.W          R5, R5, [SP,#0x20+var_14]
2B65FA:  LDRB            R1, [R1]
2B65FC:  STR             R0, [SP,#0x20+var_20]
2B65FE:  MOVS            R0, #7
2B6600:  CMP             R1, #0
2B6602:  ADD             R1, SP, #0x20+var_C
2B6604:  STR             R5, [SP,#0x20+var_18]
2B6606:  IT NE
2B6608:  MOVNE           R0, #8
2B660A:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B660E:  ADD             R3, SP, #0x20+var_18
2B6610:  LDR             R2, [SP,#0x20+var_C]
2B6612:  LDM             R3, {R0,R1,R3}
2B6614:  STRD.W          R2, R3, [R4,#0xC]
2B6618:  STRD.W          R1, R0, [R4,#0x14]
2B661C:  MOV             R0, R4
2B661E:  ADD             SP, SP, #0x18
2B6620:  POP             {R4,R5,R7,PC}
