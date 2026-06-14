; =========================================================
; Game Engine Function: _ZN13CWidgetSliderD2Ev
; Address            : 0x2C76FC - 0x2C7726
; =========================================================

2C76FC:  PUSH            {R4,R6,R7,LR}
2C76FE:  ADD             R7, SP, #8
2C7700:  MOV             R4, R0
2C7702:  LDR             R0, =(_ZTV13CWidgetSlider_ptr - 0x2C7708)
2C7704:  ADD             R0, PC; _ZTV13CWidgetSlider_ptr
2C7706:  LDR             R0, [R0]; `vtable for'CWidgetSlider ...
2C7708:  ADDS            R0, #8
2C770A:  STR             R0, [R4]
2C770C:  ADD.W           R0, R4, #0x234; this
2C7710:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C7714:  ADD.W           R0, R4, #0x230; this
2C7718:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C771C:  MOV             R0, R4; this
2C771E:  POP.W           {R4,R6,R7,LR}
2C7722:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
