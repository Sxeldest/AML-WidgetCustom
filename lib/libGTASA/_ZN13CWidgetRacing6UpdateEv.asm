; =========================================================
; Game Engine Function: _ZN13CWidgetRacing6UpdateEv
; Address            : 0x2BF224 - 0x2BF24E
; =========================================================

2BF224:  PUSH            {R4,R6,R7,LR}
2BF226:  ADD             R7, SP, #8
2BF228:  MOV             R4, R0
2BF22A:  LDR             R0, =(_ZN4CHud18bDrawingVitalStatsE_ptr - 0x2BF230)
2BF22C:  ADD             R0, PC; _ZN4CHud18bDrawingVitalStatsE_ptr
2BF22E:  LDR             R0, [R0]; CHud::bDrawingVitalStats ...
2BF230:  LDRB            R0, [R0]; CHud::bDrawingVitalStats
2BF232:  CMP             R0, #0
2BF234:  ITTT NE
2BF236:  MOVNE           R0, R4; this
2BF238:  MOVNE           R1, #0; bool
2BF23A:  BLXNE           j__ZN7CWidget10SetEnabledEb; CWidget::SetEnabled(bool)
2BF23E:  MOV             R0, R4; this
2BF240:  BLX             j__ZN7CWidget6UpdateEv; CWidget::Update(void)
2BF244:  MOV             R0, R4; this
2BF246:  POP.W           {R4,R6,R7,LR}
2BF24A:  B.W             j_j__ZN7CWidget11ManageAlphaEv; j_CWidget::ManageAlpha(void)
