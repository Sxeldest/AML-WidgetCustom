; =========================================================
; Game Engine Function: _ZN13CWidgetButtonD2Ev
; Address            : 0x2B45C0 - 0x2B45E4
; =========================================================

2B45C0:  PUSH            {R4,R6,R7,LR}
2B45C2:  ADD             R7, SP, #8
2B45C4:  MOV             R4, R0
2B45C6:  LDR             R0, =(_ZTV13CWidgetButton_ptr - 0x2B45CC)
2B45C8:  ADD             R0, PC; _ZTV13CWidgetButton_ptr
2B45CA:  LDR             R0, [R0]; `vtable for'CWidgetButton ...
2B45CC:  ADD.W           R1, R0, #8
2B45D0:  MOV             R0, R4
2B45D2:  STR.W           R1, [R0],#0x98; this
2B45D6:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2B45DA:  MOV             R0, R4; this
2B45DC:  POP.W           {R4,R6,R7,LR}
2B45E0:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
