; =========================================================
; Game Engine Function: _ZN18CWidgetRegionSteerD2Ev
; Address            : 0x2C3324 - 0x2C3348
; =========================================================

2C3324:  PUSH            {R4,R6,R7,LR}
2C3326:  ADD             R7, SP, #8
2C3328:  MOV             R4, R0
2C332A:  LDR             R0, =(_ZTV18CWidgetRegionSteer_ptr - 0x2C3330)
2C332C:  ADD             R0, PC; _ZTV18CWidgetRegionSteer_ptr
2C332E:  LDR             R0, [R0]; `vtable for'CWidgetRegionSteer ...
2C3330:  ADD.W           R1, R0, #8
2C3334:  MOV             R0, R4
2C3336:  STR.W           R1, [R0],#0x94; this
2C333A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C333E:  MOV             R0, R4; this
2C3340:  POP.W           {R4,R6,R7,LR}
2C3344:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
