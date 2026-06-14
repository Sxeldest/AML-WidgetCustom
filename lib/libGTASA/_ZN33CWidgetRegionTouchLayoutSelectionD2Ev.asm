; =========================================================
; Game Engine Function: _ZN33CWidgetRegionTouchLayoutSelectionD2Ev
; Address            : 0x2C62CC - 0x2C6320
; =========================================================

2C62CC:  PUSH            {R4,R5,R7,LR}
2C62CE:  ADD             R7, SP, #8
2C62D0:  MOV             R4, R0
2C62D2:  LDR             R0, =(_ZTV33CWidgetRegionTouchLayoutSelection_ptr - 0x2C62DA)
2C62D4:  MOV             R5, R4
2C62D6:  ADD             R0, PC; _ZTV33CWidgetRegionTouchLayoutSelection_ptr
2C62D8:  LDR             R0, [R0]; `vtable for'CWidgetRegionTouchLayoutSelection ...
2C62DA:  ADDS            R0, #8
2C62DC:  STR.W           R0, [R5],#0xA8
2C62E0:  ADD.W           R0, R4, #0xE0; this
2C62E4:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C62E8:  ADD.W           R0, R4, #0xDC; this
2C62EC:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C62F0:  ADD.W           R0, R4, #0xD8; this
2C62F4:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C62F8:  ADD.W           R0, R4, #0xC4; this
2C62FC:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6300:  ADD.W           R0, R4, #0xC0; this
2C6304:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6308:  ADD.W           R0, R4, #0xBC; this
2C630C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6310:  MOV             R0, R5; this
2C6312:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6316:  MOV             R0, R4; this
2C6318:  POP.W           {R4,R5,R7,LR}
2C631C:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
