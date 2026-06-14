; =========================================================
; Game Engine Function: _ZN23CWidgetRegionHydraulicsD2Ev
; Address            : 0x2C3BE8 - 0x2C3C0C
; =========================================================

2C3BE8:  PUSH            {R4,R6,R7,LR}
2C3BEA:  ADD             R7, SP, #8
2C3BEC:  MOV             R4, R0
2C3BEE:  LDR             R0, =(_ZTV23CWidgetRegionHydraulics_ptr - 0x2C3BF4)
2C3BF0:  ADD             R0, PC; _ZTV23CWidgetRegionHydraulics_ptr
2C3BF2:  LDR             R0, [R0]; `vtable for'CWidgetRegionHydraulics ...
2C3BF4:  ADD.W           R1, R0, #8
2C3BF8:  MOV             R0, R4
2C3BFA:  STR.W           R1, [R0],#0xC0; this
2C3BFE:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C3C02:  MOV             R0, R4; this
2C3C04:  POP.W           {R4,R6,R7,LR}
2C3C08:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
