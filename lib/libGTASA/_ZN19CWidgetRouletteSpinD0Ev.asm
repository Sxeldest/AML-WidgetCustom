; =========================================================
; Game Engine Function: _ZN19CWidgetRouletteSpinD0Ev
; Address            : 0x2C68AC - 0x2C68D4
; =========================================================

2C68AC:  PUSH            {R4,R6,R7,LR}
2C68AE:  ADD             R7, SP, #8
2C68B0:  MOV             R4, R0
2C68B2:  LDR             R0, =(_ZTV19CWidgetRouletteSpin_ptr - 0x2C68B8)
2C68B4:  ADD             R0, PC; _ZTV19CWidgetRouletteSpin_ptr
2C68B6:  LDR             R0, [R0]; `vtable for'CWidgetRouletteSpin ...
2C68B8:  ADD.W           R1, R0, #8
2C68BC:  MOV             R0, R4
2C68BE:  STR.W           R1, [R0],#0x90; this
2C68C2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C68C6:  MOV             R0, R4; this
2C68C8:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C68CC:  POP.W           {R4,R6,R7,LR}
2C68D0:  B.W             j__ZdlPv; operator delete(void *)
