; =========================================================
; Game Engine Function: _ZN18CWidgetRaceResults6UpdateEv
; Address            : 0x2BEAA4 - 0x2BEAB8
; =========================================================

2BEAA4:  PUSH            {R4,R6,R7,LR}
2BEAA6:  ADD             R7, SP, #8
2BEAA8:  MOV             R4, R0
2BEAAA:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2BEAAE:  MOV             R0, R4; this
2BEAB0:  POP.W           {R4,R6,R7,LR}
2BEAB4:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
