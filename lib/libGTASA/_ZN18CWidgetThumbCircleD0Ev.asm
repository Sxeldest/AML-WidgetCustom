; =========================================================
; Game Engine Function: _ZN18CWidgetThumbCircleD0Ev
; Address            : 0x2C844C - 0x2C8474
; =========================================================

2C844C:  PUSH            {R4,R6,R7,LR}
2C844E:  ADD             R7, SP, #8
2C8450:  MOV             R4, R0
2C8452:  LDR             R0, =(_ZTV18CWidgetThumbCircle_ptr - 0x2C8458)
2C8454:  ADD             R0, PC; _ZTV18CWidgetThumbCircle_ptr
2C8456:  LDR             R0, [R0]; `vtable for'CWidgetThumbCircle ...
2C8458:  ADD.W           R1, R0, #8
2C845C:  MOV             R0, R4
2C845E:  STR.W           R1, [R0],#0x90; this
2C8462:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C8466:  MOV             R0, R4; this
2C8468:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C846C:  POP.W           {R4,R6,R7,LR}
2C8470:  B.W             j__ZdlPv; operator delete(void *)
