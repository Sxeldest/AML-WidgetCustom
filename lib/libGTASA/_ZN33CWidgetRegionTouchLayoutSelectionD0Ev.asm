; =========================================================
; Game Engine Function: _ZN33CWidgetRegionTouchLayoutSelectionD0Ev
; Address            : 0x2C6324 - 0x2C637C
; =========================================================

2C6324:  PUSH            {R4,R5,R7,LR}
2C6326:  ADD             R7, SP, #8
2C6328:  MOV             R4, R0
2C632A:  LDR             R0, =(_ZTV33CWidgetRegionTouchLayoutSelection_ptr - 0x2C6332)
2C632C:  MOV             R5, R4
2C632E:  ADD             R0, PC; _ZTV33CWidgetRegionTouchLayoutSelection_ptr
2C6330:  LDR             R0, [R0]; `vtable for'CWidgetRegionTouchLayoutSelection ...
2C6332:  ADDS            R0, #8
2C6334:  STR.W           R0, [R5],#0xA8
2C6338:  ADD.W           R0, R4, #0xE0; this
2C633C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6340:  ADD.W           R0, R4, #0xDC; this
2C6344:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6348:  ADD.W           R0, R4, #0xD8; this
2C634C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6350:  ADD.W           R0, R4, #0xC4; this
2C6354:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6358:  ADD.W           R0, R4, #0xC0; this
2C635C:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6360:  ADD.W           R0, R4, #0xBC; this
2C6364:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C6368:  MOV             R0, R5; this
2C636A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C636E:  MOV             R0, R4; this
2C6370:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C6374:  POP.W           {R4,R5,R7,LR}
2C6378:  B.W             j__ZdlPv; operator delete(void *)
