; =========================================================
; Game Engine Function: _ZN13CWidgetButtonD0Ev
; Address            : 0x2B45E8 - 0x2B4610
; =========================================================

2B45E8:  PUSH            {R4,R6,R7,LR}
2B45EA:  ADD             R7, SP, #8
2B45EC:  MOV             R4, R0
2B45EE:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B45F4)
2B45F0:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B45F2:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B45F4:  ADD.W           R1, R0, #8
2B45F8:  MOV             R0, R4
2B45FA:  STR.W           R1, [R0],#0x98; this
2B45FE:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B4602:  MOV             R0, R4; this
2B4604:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B4608:  POP.W           {R4,R6,R7,LR}
2B460C:  B.W             j__ZdlPv; operator delete(void *)
