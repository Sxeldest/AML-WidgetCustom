; =========================================================
; Game Engine Function: _ZN24CWidgetButtonSwapWeaponsD0Ev
; Address            : 0x2B5D70 - 0x2B5D98
; =========================================================

2B5D70:  PUSH            {R4,R6,R7,LR}
2B5D72:  ADD             R7, SP, #8
2B5D74:  MOV             R4, R0
2B5D76:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B5D7C)
2B5D78:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B5D7A:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B5D7C:  ADD.W           R1, R0, #8
2B5D80:  MOV             R0, R4
2B5D82:  STR.W           R1, [R0],#0x98; this
2B5D86:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B5D8A:  MOV             R0, R4; this
2B5D8C:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2B5D90:  POP.W           {R4,R6,R7,LR}
2B5D94:  B.W             j__ZdlPv; operator delete(void *)
