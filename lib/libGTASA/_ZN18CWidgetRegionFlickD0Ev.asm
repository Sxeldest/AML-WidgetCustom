; =========================================================
; Game Engine Function: _ZN18CWidgetRegionFlickD0Ev
; Address            : 0x2C08C4 - 0x2C08EC
; =========================================================

2C08C4:  PUSH            {R4,R6,R7,LR}
2C08C6:  ADD             R7, SP, #8
2C08C8:  MOV             R4, R0
2C08CA:  LDR             R0, =(_ZTV18CWidgetRegionFlick_ptr - 0x2C08D0)
2C08CC:  ADD             R0, PC; _ZTV18CWidgetRegionFlick_ptr
2C08CE:  LDR             R0, [R0]; `vtable for'CWidgetRegionFlick ...
2C08D0:  ADD.W           R1, R0, #8
2C08D4:  MOV             R0, R4
2C08D6:  STR.W           R1, [R0],#0x94; this
2C08DA:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C08DE:  MOV             R0, R4; this
2C08E0:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C08E4:  POP.W           {R4,R6,R7,LR}
2C08E8:  B.W             j__ZdlPv; operator delete(void *)
