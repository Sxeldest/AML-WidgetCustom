; =========================================================
; Game Engine Function: _ZN15CWidgetHelpText6UpdateEv
; Address            : 0x2B872C - 0x2B8764
; =========================================================

2B872C:  PUSH            {R4,R6,R7,LR}
2B872E:  ADD             R7, SP, #8
2B8730:  SUB             SP, SP, #8
2B8732:  MOV             R4, R0
2B8734:  BLX             j__ZN15CWidgetHelpText11UseTopStyleEv; CWidgetHelpText::UseTopStyle(void)
2B8738:  CMP             R0, #1
2B873A:  ADD.W           R12, R4, #0x18
2B873E:  STR.W           R12, [SP,#0x10+var_10]
2B8742:  ADD.W           R3, R4, #0x14
2B8746:  ADD.W           R2, R4, #0x10
2B874A:  ADD.W           R1, R4, #0xC
2B874E:  ITE NE
2B8750:  MOVNE           R0, #0x73 ; 's'
2B8752:  MOVEQ           R0, #0x72 ; 'r'
2B8754:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2B8758:  MOV             R0, R4; this
2B875A:  ADD             SP, SP, #8
2B875C:  POP.W           {R4,R6,R7,LR}
2B8760:  B.W             j_j__ZN7CWidget6UpdateEv; j_CWidget::Update(void)
