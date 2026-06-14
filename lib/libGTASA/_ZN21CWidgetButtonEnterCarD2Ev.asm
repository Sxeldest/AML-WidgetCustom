; =========================================================
; Game Engine Function: _ZN21CWidgetButtonEnterCarD2Ev
; Address            : 0x2B6538 - 0x2B6570
; =========================================================

2B6538:  PUSH            {R4,R6,R7,LR}
2B653A:  ADD             R7, SP, #8
2B653C:  MOV             R4, R0
2B653E:  LDR             R0, =(_ZTV21CWidgetButtonEnterCar_ptr - 0x2B6544)
2B6540:  ADD             R0, PC; _ZTV21CWidgetButtonEnterCar_ptr
2B6542:  LDR             R0, [R0]; `vtable for'CWidgetButtonEnterCar ...
2B6544:  ADD.W           R1, R0, #8
2B6548:  MOV             R0, R4
2B654A:  STR.W           R1, [R0],#0xBC; this
2B654E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B6552:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B6558)
2B6554:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B6556:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B6558:  ADD.W           R1, R0, #8
2B655C:  MOV             R0, R4
2B655E:  STR.W           R1, [R0],#0x98; this
2B6562:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B6566:  MOV             R0, R4; this
2B6568:  POP.W           {R4,R6,R7,LR}
2B656C:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
