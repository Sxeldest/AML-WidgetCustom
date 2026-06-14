; =========================================================
; Game Engine Function: _ZN19CWidgetButtonRocketD0Ev
; Address            : 0x2B5A2C - 0x2B5A54
; =========================================================

2B5A2C:  PUSH            {R4,R6,R7,LR}
2B5A2E:  ADD             R7, SP, #8
2B5A30:  MOV             R4, R0
2B5A32:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B5A38)
2B5A34:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B5A36:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B5A38:  ADD.W           R1, R0, #8
2B5A3C:  MOV             R0, R4
2B5A3E:  STR.W           R1, [R0],#0x98; this
2B5A42:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B5A46:  MOV             R0, R4; this
2B5A48:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B5A4C:  POP.W           {R4,R6,R7,LR}
2B5A50:  B.W             j__ZdlPv; operator delete(void *)
