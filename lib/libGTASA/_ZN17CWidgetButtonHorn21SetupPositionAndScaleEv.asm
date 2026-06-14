; =========================================================
; Game Engine Function: _ZN17CWidgetButtonHorn21SetupPositionAndScaleEv
; Address            : 0x2B662C - 0x2B666E
; =========================================================

2B662C:  PUSH            {R4,R6,R7,LR}
2B662E:  ADD             R7, SP, #8
2B6630:  SUB             SP, SP, #0x18
2B6632:  MOV             R4, R0
2B6634:  LDR             R0, =(byte_6FA300 - 0x2B663E)
2B6636:  MOVS            R1, #0
2B6638:  ADD             R3, SP, #0x20+var_14
2B663A:  ADD             R0, PC; byte_6FA300
2B663C:  STR             R1, [SP,#0x20+var_C]
2B663E:  STRD.W          R1, R1, [SP,#0x20+var_14]
2B6642:  LDRB            R2, [R0]
2B6644:  ADD             R0, SP, #0x20+var_18
2B6646:  STR             R1, [SP,#0x20+var_18]
2B6648:  ADD             R1, SP, #0x20+var_C
2B664A:  STR             R0, [SP,#0x20+var_20]
2B664C:  CMP             R2, #0
2B664E:  MOV.W           R0, #7
2B6652:  ADD             R2, SP, #0x20+var_10
2B6654:  IT NE
2B6656:  MOVNE           R0, #8
2B6658:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B665C:  ADD             R3, SP, #0x20+var_18
2B665E:  LDR             R2, [SP,#0x20+var_C]
2B6660:  LDM             R3, {R0,R1,R3}
2B6662:  STRD.W          R2, R3, [R4,#0xC]
2B6666:  STRD.W          R1, R0, [R4,#0x14]
2B666A:  ADD             SP, SP, #0x18
2B666C:  POP             {R4,R6,R7,PC}
