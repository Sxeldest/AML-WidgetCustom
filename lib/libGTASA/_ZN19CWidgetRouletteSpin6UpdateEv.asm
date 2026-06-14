; =========================================================
; Game Engine Function: _ZN19CWidgetRouletteSpin6UpdateEv
; Address            : 0x2C66C8 - 0x2C66DC
; =========================================================

2C66C8:  PUSH            {R4,R6,R7,LR}
2C66CA:  ADD             R7, SP, #8
2C66CC:  MOV             R4, R0
2C66CE:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2C66D2:  MOV             R0, R4; this
2C66D4:  POP.W           {R4,R6,R7,LR}
2C66D8:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
