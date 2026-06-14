; =========================================================
; Game Engine Function: _ZN17CWidgetButtonSwimD0Ev
; Address            : 0x2B6BC4 - 0x2B6BEC
; =========================================================

2B6BC4:  PUSH            {R4,R6,R7,LR}
2B6BC6:  ADD             R7, SP, #8
2B6BC8:  MOV             R4, R0
2B6BCA:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B6BD0)
2B6BCC:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B6BCE:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B6BD0:  ADD.W           R1, R0, #8
2B6BD4:  MOV             R0, R4
2B6BD6:  STR.W           R1, [R0],#0x98; this
2B6BDA:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B6BDE:  MOV             R0, R4; this
2B6BE0:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B6BE4:  POP.W           {R4,R6,R7,LR}
2B6BE8:  B.W             j__ZdlPv; operator delete(void *)
