; =========================================================
; Game Engine Function: _ZN21CWidgetButtonEnterCarD0Ev
; Address            : 0x2B6578 - 0x2B65B4
; =========================================================

2B6578:  PUSH            {R4,R6,R7,LR}
2B657A:  ADD             R7, SP, #8
2B657C:  MOV             R4, R0
2B657E:  LDR             R0, =(_ZTV21CWidgetButtonEnterCar_ptr - 0x2B6584)
2B6580:  ADD             R0, PC; _ZTV21CWidgetButtonEnterCar_ptr
2B6582:  LDR             R0, [R0]; `vtable for'CWidgetButtonEnterCar ...
2B6584:  ADD.W           R1, R0, #8
2B6588:  MOV             R0, R4
2B658A:  STR.W           R1, [R0],#0xBC; this
2B658E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B6592:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B6598)
2B6594:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B6596:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B6598:  ADD.W           R1, R0, #8
2B659C:  MOV             R0, R4
2B659E:  STR.W           R1, [R0],#0x98; this
2B65A2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B65A6:  MOV             R0, R4; this
2B65A8:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B65AC:  POP.W           {R4,R6,R7,LR}
2B65B0:  B.W             j__ZdlPv; operator delete(void *)
