; =========================================================
; Game Engine Function: _ZN21CWidgetButtonHelpTextD0Ev
; Address            : 0x2B5388 - 0x2B53B0
; =========================================================

2B5388:  PUSH            {R4,R6,R7,LR}
2B538A:  ADD             R7, SP, #8
2B538C:  MOV             R4, R0
2B538E:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B5394)
2B5390:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B5392:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B5394:  ADD.W           R1, R0, #8
2B5398:  MOV             R0, R4
2B539A:  STR.W           R1, [R0],#0x98; this
2B539E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B53A2:  MOV             R0, R4; this
2B53A4:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B53A8:  POP.W           {R4,R6,R7,LR}
2B53AC:  B.W             j__ZdlPv; operator delete(void *)
