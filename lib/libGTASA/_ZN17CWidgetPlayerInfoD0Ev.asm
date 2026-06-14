; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfoD0Ev
; Address            : 0x2BE478 - 0x2BE4A0
; =========================================================

2BE478:  PUSH            {R4,R6,R7,LR}
2BE47A:  ADD             R7, SP, #8
2BE47C:  MOV             R4, R0
2BE47E:  LDR             R0, =(_ZTV17CWidgetPlayerInfo_ptr - 0x2BE484)
2BE480:  ADD             R0, PC; _ZTV17CWidgetPlayerInfo_ptr
2BE482:  LDR             R0, [R0]; `vtable for'CWidgetPlayerInfo ...
2BE484:  ADD.W           R1, R0, #8
2BE488:  MOV             R0, R4
2BE48A:  STR.W           R1, [R0],#0xB0; this
2BE48E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2BE492:  MOV             R0, R4; this
2BE494:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2BE498:  POP.W           {R4,R6,R7,LR}
2BE49C:  B.W             j__ZdlPv; operator delete(void *)
