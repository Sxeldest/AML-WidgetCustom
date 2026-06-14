; =========================================================
; Game Engine Function: _ZN12CWidgetRadarD2Ev
; Address            : 0x2BF850 - 0x2BF874
; =========================================================

2BF850:  PUSH            {R4,R6,R7,LR}
2BF852:  ADD             R7, SP, #8
2BF854:  MOV             R4, R0
2BF856:  LDR             R0, =(_ZTV12CWidgetRadar_ptr - 0x2BF85C)
2BF858:  ADD             R0, PC; _ZTV12CWidgetRadar_ptr
2BF85A:  LDR             R0, [R0]; `vtable for'CWidgetRadar ...
2BF85C:  ADD.W           R1, R0, #8
2BF860:  MOV             R0, R4
2BF862:  STR.W           R1, [R0],#0x90; this
2BF866:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2BF86A:  MOV             R0, R4; this
2BF86C:  POP.W           {R4,R6,R7,LR}
2BF870:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
