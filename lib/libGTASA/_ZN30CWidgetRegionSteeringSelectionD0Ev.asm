; =========================================================
; Game Engine Function: _ZN30CWidgetRegionSteeringSelectionD0Ev
; Address            : 0x2C5190 - 0x2C51E0
; =========================================================

2C5190:  PUSH            {R4,R5,R7,LR}
2C5192:  ADD             R7, SP, #8
2C5194:  MOV             R4, R0
2C5196:  LDR             R0, =(_ZTV30CWidgetRegionSteeringSelection_ptr - 0x2C519E)
2C5198:  MOV             R5, R4
2C519A:  ADD             R0, PC; _ZTV30CWidgetRegionSteeringSelection_ptr
2C519C:  LDR             R0, [R0]; `vtable for'CWidgetRegionSteeringSelection ...
2C519E:  ADDS            R0, #8
2C51A0:  STR.W           R0, [R5],#0xA8
2C51A4:  ADD.W           R0, R4, #0xFC; this
2C51A8:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C51AC:  ADD.W           R0, R4, #0xE8; this
2C51B0:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C51B4:  ADD.W           R0, R4, #0xE4; this
2C51B8:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C51BC:  ADD.W           R0, R4, #0xD0; this
2C51C0:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C51C4:  ADD.W           R0, R4, #0xCC; this
2C51C8:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C51CC:  MOV             R0, R5; this
2C51CE:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C51D2:  MOV             R0, R4; this
2C51D4:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C51D8:  POP.W           {R4,R5,R7,LR}
2C51DC:  B.W             j__ZdlPv; operator delete(void *)
