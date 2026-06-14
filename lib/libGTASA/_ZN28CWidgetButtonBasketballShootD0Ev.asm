; =========================================================
; Game Engine Function: _ZN28CWidgetButtonBasketballShootD0Ev
; Address            : 0x2B531C - 0x2B5344
; =========================================================

2B531C:  PUSH            {R4,R6,R7,LR}
2B531E:  ADD             R7, SP, #8
2B5320:  MOV             R4, R0
2B5322:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B5328)
2B5324:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B5326:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B5328:  ADD.W           R1, R0, #8
2B532C:  MOV             R0, R4
2B532E:  STR.W           R1, [R0],#0x98; this
2B5332:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B5336:  MOV             R0, R4; this
2B5338:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B533C:  POP.W           {R4,R6,R7,LR}
2B5340:  B.W             j__ZdlPv; operator delete(void *)
