; =========================================================
; Game Engine Function: _ZN19CWidgetButtonSprintD0Ev
; Address            : 0x2B6AD4 - 0x2B6AFC
; =========================================================

2B6AD4:  PUSH            {R4,R6,R7,LR}
2B6AD6:  ADD             R7, SP, #8
2B6AD8:  MOV             R4, R0
2B6ADA:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B6AE0)
2B6ADC:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B6ADE:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B6AE0:  ADD.W           R1, R0, #8
2B6AE4:  MOV             R0, R4
2B6AE6:  STR.W           R1, [R0],#0x98; this
2B6AEA:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B6AEE:  MOV             R0, R4; this
2B6AF0:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B6AF4:  POP.W           {R4,R6,R7,LR}
2B6AF8:  B.W             j__ZdlPv; operator delete(void *)
