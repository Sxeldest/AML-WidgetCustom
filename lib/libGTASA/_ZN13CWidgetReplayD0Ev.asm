; =========================================================
; Game Engine Function: _ZN13CWidgetReplayD0Ev
; Address            : 0x2C6600 - 0x2C6628
; =========================================================

2C6600:  PUSH            {R4,R6,R7,LR}
2C6602:  ADD             R7, SP, #8
2C6604:  MOV             R4, R0
2C6606:  LDR             R0, =(_ZTV13CWidgetReplay_ptr - 0x2C660C)
2C6608:  ADD             R0, PC; _ZTV13CWidgetReplay_ptr
2C660A:  LDR             R0, [R0]; `vtable for'CWidgetReplay ...
2C660C:  ADD.W           R1, R0, #8
2C6610:  MOV             R0, R4
2C6612:  STR.W           R1, [R0],#0x90; this
2C6616:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C661A:  MOV             R0, R4; this
2C661C:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C6620:  POP.W           {R4,R6,R7,LR}
2C6624:  B.W             j__ZdlPv; operator delete(void *)
