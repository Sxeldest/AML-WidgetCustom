; =========================================================
; Game Engine Function: _ZN16CWidgetInfoFrame6UpdateEv
; Address            : 0x2B9184 - 0x2B91AE
; =========================================================

2B9184:  PUSH            {R4,R6,R7,LR}
2B9186:  ADD             R7, SP, #8
2B9188:  MOV             R4, R0
2B918A:  LDR             R0, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x2B9190)
2B918C:  ADD             R0, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
2B918E:  LDR             R0, [R0]; CHud::bDrawingVitalStats ...
2B9190:  LDRB            R0, [R0]; CHud::bDrawingVitalStats
2B9192:  CMP             R0, #0
2B9194:  ITTT NE
2B9196:  MOVNE           R0, R4; this
2B9198:  MOVNE           R1, #0; bool
2B919A:  BLXNE           j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2B919E:  MOV             R0, R4; this
2B91A0:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2B91A4:  MOV             R0, R4; this
2B91A6:  POP.W           {R4,R6,R7,LR}
2B91AA:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
