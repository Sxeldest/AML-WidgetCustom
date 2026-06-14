; =========================================================
; Game Engine Function: _ZN19CWidgetRegionSprintD2Ev
; Address            : 0x2C2DD4 - 0x2C2E00
; =========================================================

2C2DD4:  PUSH            {R4,R5,R7,LR}
2C2DD6:  ADD             R7, SP, #8
2C2DD8:  MOV             R4, R0
2C2DDA:  LDR             R0, =(_ZTV19CWidgetRegionSprint_ptr - 0x2C2DE2)
2C2DDC:  MOV             R5, R4
2C2DDE:  ADD             R0, PC; _ZTV19CWidgetRegionSprint_ptr
2C2DE0:  LDR             R0, [R0]; `vtable for'CWidgetRegionSprint ...
2C2DE2:  ADDS            R0, #8
2C2DE4:  STR.W           R0, [R5],#0x9C
2C2DE8:  ADD.W           R0, R4, #0xA0; this
2C2DEC:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C2DF0:  MOV             R0, R5; this
2C2DF2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C2DF6:  MOV             R0, R4; this
2C2DF8:  POP.W           {R4,R5,R7,LR}
2C2DFC:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
