; =========================================================
; Game Engine Function: _ZN23CWidgetButtonHydraulicsD2Ev
; Address            : 0x2B58B8 - 0x2B58F0
; =========================================================

2B58B8:  PUSH            {R4,R6,R7,LR}
2B58BA:  ADD             R7, SP, #8
2B58BC:  MOV             R4, R0
2B58BE:  LDR             R0, =(_ZTV23CWidgetButtonHydraulics_ptr - 0x2B58C4)
2B58C0:  ADD             R0, PC; _ZTV23CWidgetButtonHydraulics_ptr
2B58C2:  LDR             R0, [R0]; `vtable for'CWidgetButtonHydraulics ...
2B58C4:  ADD.W           R1, R0, #8
2B58C8:  MOV             R0, R4
2B58CA:  STR.W           R1, [R0],#0xC8; this
2B58CE:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B58D2:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B58D8)
2B58D4:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B58D6:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B58D8:  ADD.W           R1, R0, #8
2B58DC:  MOV             R0, R4
2B58DE:  STR.W           R1, [R0],#0x98; this
2B58E2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B58E6:  MOV             R0, R4; this
2B58E8:  POP.W           {R4,R6,R7,LR}
2B58EC:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
