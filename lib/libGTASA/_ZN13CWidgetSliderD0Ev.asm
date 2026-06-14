; =========================================================
; Game Engine Function: _ZN13CWidgetSliderD0Ev
; Address            : 0x2C772C - 0x2C775A
; =========================================================

2C772C:  PUSH            {R4,R6,R7,LR}
2C772E:  ADD             R7, SP, #8
2C7730:  MOV             R4, R0
2C7732:  LDR             R0, =(_ZTV13CWidgetSlider_ptr - 0x2C7738)
2C7734:  ADD             R0, PC; _ZTV13CWidgetSlider_ptr
2C7736:  LDR             R0, [R0]; `vtable for'CWidgetSlider ...
2C7738:  ADDS            R0, #8
2C773A:  STR             R0, [R4]
2C773C:  ADD.W           R0, R4, #0x234; this
2C7740:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C7744:  ADD.W           R0, R4, #0x230; this
2C7748:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C774C:  MOV             R0, R4; this
2C774E:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C7752:  POP.W           {R4,R6,R7,LR}
2C7756:  B.W             j__ZdlPv; operator delete(void *)
