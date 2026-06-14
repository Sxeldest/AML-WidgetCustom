; =========================================================
; Game Engine Function: _ZN18CWidgetThumbCircle14OnInitialTouchEv
; Address            : 0x2C8484 - 0x2C84AA
; =========================================================

2C8484:  PUSH            {R4,R6,R7,LR}
2C8486:  ADD             R7, SP, #8
2C8488:  MOV             R4, R0
2C848A:  BLX             j__ZN7CWidget14OnInitialTouchEv; CWidget::OnInitialTouch(void)
2C848E:  LDR             R0, =(_ZN7CWidget16m_vecTouchAnchorE_ptr - 0x2C8496)
2C8490:  LDR             R1, [R4,#0x78]
2C8492:  ADD             R0, PC; _ZN7CWidget16m_vecTouchAnchorE_ptr
2C8494:  LDR             R0, [R0]; CWidget::m_vecTouchAnchor ...
2C8496:  LDR.W           R2, [R0,R1,LSL#3]
2C849A:  ADD.W           R0, R0, R1,LSL#3
2C849E:  STR.W           R2, [R4,#0x94]
2C84A2:  LDR             R0, [R0,#4]
2C84A4:  STR.W           R0, [R4,#0x98]
2C84A8:  POP             {R4,R6,R7,PC}
