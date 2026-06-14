; =========================================================
; Game Engine Function: _ZN17CWidgetVitalStats6UpdateEv
; Address            : 0x2C84D8 - 0x2C84EC
; =========================================================

2C84D8:  PUSH            {R4,R6,R7,LR}
2C84DA:  ADD             R7, SP, #8
2C84DC:  MOV             R4, R0
2C84DE:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2C84E2:  MOV             R0, R4; this
2C84E4:  POP.W           {R4,R6,R7,LR}
2C84E8:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
