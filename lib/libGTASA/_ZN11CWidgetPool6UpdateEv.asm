; =========================================================
; Game Engine Function: _ZN11CWidgetPool6UpdateEv
; Address            : 0x2BE4FC - 0x2BE510
; =========================================================

2BE4FC:  PUSH            {R4,R6,R7,LR}
2BE4FE:  ADD             R7, SP, #8
2BE500:  MOV             R4, R0
2BE502:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2BE506:  MOV             R0, R4; this
2BE508:  POP.W           {R4,R6,R7,LR}
2BE50C:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
