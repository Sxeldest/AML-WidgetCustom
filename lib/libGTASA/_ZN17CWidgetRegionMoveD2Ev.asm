; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMoveD2Ev
; Address            : 0x2C1BBC - 0x2C1BE0
; =========================================================

2C1BBC:  PUSH            {R4,R6,R7,LR}
2C1BBE:  ADD             R7, SP, #8
2C1BC0:  MOV             R4, R0
2C1BC2:  LDR             R0, =(_ZTV17CWidgetRegionMove_ptr - 0x2C1BC8)
2C1BC4:  ADD             R0, PC; _ZTV17CWidgetRegionMove_ptr
2C1BC6:  LDR             R0, [R0]; `vtable for'CWidgetRegionMove ...
2C1BC8:  ADD.W           R1, R0, #8
2C1BCC:  MOV             R0, R4
2C1BCE:  STR.W           R1, [R0],#0x98; this
2C1BD2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C1BD6:  MOV             R0, R4; this
2C1BD8:  POP.W           {R4,R6,R7,LR}
2C1BDC:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
