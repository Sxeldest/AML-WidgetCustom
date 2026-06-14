; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfoD2Ev
; Address            : 0x2BE450 - 0x2BE474
; =========================================================

2BE450:  PUSH            {R4,R6,R7,LR}
2BE452:  ADD             R7, SP, #8
2BE454:  MOV             R4, R0
2BE456:  LDR             R0, =(_ZTV17CWidgetPlayerInfo_ptr - 0x2BE45C)
2BE458:  ADD             R0, PC; _ZTV17CWidgetPlayerInfo_ptr
2BE45A:  LDR             R0, [R0]; `vtable for'CWidgetPlayerInfo ...
2BE45C:  ADD.W           R1, R0, #8
2BE460:  MOV             R0, R4
2BE462:  STR.W           R1, [R0],#0xB0; this
2BE466:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2BE46A:  MOV             R0, R4; this
2BE46C:  POP.W           {R4,R6,R7,LR}
2BE470:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
