; =========================================================
; Game Engine Function: _ZN17CWidgetRegionGangD0Ev
; Address            : 0x2C0CF8 - 0x2C0D28
; =========================================================

2C0CF8:  PUSH            {R4,R5,R7,LR}
2C0CFA:  ADD             R7, SP, #8
2C0CFC:  MOV             R4, R0
2C0CFE:  LDR             R0, =(_ZTV17CWidgetRegionGang_ptr - 0x2C0D06)
2C0D00:  MOV             R5, R4
2C0D02:  ADD             R0, PC; _ZTV17CWidgetRegionGang_ptr
2C0D04:  LDR             R0, [R0]; `vtable for'CWidgetRegionGang ...
2C0D06:  ADDS            R0, #8
2C0D08:  STR.W           R0, [R5],#0xA0
2C0D0C:  ADD.W           R0, R4, #0xA4; this
2C0D10:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C0D14:  MOV             R0, R5; this
2C0D16:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C0D1A:  MOV             R0, R4; this
2C0D1C:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C0D20:  POP.W           {R4,R5,R7,LR}
2C0D24:  B.W             j__ZdlPv; operator delete(void *)
