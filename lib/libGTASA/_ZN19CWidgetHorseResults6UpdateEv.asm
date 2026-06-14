; =========================================================
; Game Engine Function: _ZN19CWidgetHorseResults6UpdateEv
; Address            : 0x2B8818 - 0x2B882C
; =========================================================

2B8818:  PUSH            {R4,R6,R7,LR}
2B881A:  ADD             R7, SP, #8
2B881C:  MOV             R4, R0
2B881E:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2B8822:  MOV             R0, R4; this
2B8824:  POP.W           {R4,R6,R7,LR}
2B8828:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
