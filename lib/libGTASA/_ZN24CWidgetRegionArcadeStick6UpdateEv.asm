; =========================================================
; Game Engine Function: _ZN24CWidgetRegionArcadeStick6UpdateEv
; Address            : 0x2BFBC8 - 0x2BFBDC
; =========================================================

2BFBC8:  PUSH            {R4,R6,R7,LR}
2BFBCA:  ADD             R7, SP, #8
2BFBCC:  MOV             R4, R0
2BFBCE:  BLX             j__ZN13CWidgetRegion6UpdateEv; CWidgetRegion::Update(void)
2BFBD2:  MOV             R0, R4; this
2BFBD4:  POP.W           {R4,R6,R7,LR}
2BFBD8:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
