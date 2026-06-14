; =========================================================
; Game Engine Function: _ZN22CWidgetButtonTargetingD0Ev
; Address            : 0x2B5DD4 - 0x2B5DFC
; =========================================================

2B5DD4:  PUSH            {R4,R6,R7,LR}
2B5DD6:  ADD             R7, SP, #8
2B5DD8:  MOV             R4, R0
2B5DDA:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B5DE0)
2B5DDC:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B5DDE:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B5DE0:  ADD.W           R1, R0, #8
2B5DE4:  MOV             R0, R4
2B5DE6:  STR.W           R1, [R0],#0x98; this
2B5DEA:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B5DEE:  MOV             R0, R4; this
2B5DF0:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B5DF4:  POP.W           {R4,R6,R7,LR}
2B5DF8:  B.W             j__ZdlPv; operator delete(void *)
