; =========================================================
; Game Engine Function: _ZN17CWidgetButtonDropD0Ev
; Address            : 0x2B5FC8 - 0x2B5FF0
; =========================================================

2B5FC8:  PUSH            {R4,R6,R7,LR}
2B5FCA:  ADD             R7, SP, #8
2B5FCC:  MOV             R4, R0
2B5FCE:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B5FD4)
2B5FD0:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B5FD2:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B5FD4:  ADD.W           R1, R0, #8
2B5FD8:  MOV             R0, R4
2B5FDA:  STR.W           R1, [R0],#0x98; this
2B5FDE:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B5FE2:  MOV             R0, R4; this
2B5FE4:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B5FE8:  POP.W           {R4,R6,R7,LR}
2B5FEC:  B.W             j__ZdlPv; operator delete(void *)
