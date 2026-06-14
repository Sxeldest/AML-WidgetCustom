; =========================================================
; Game Engine Function: _ZN24CWidgetRegionDriveHybridD0Ev
; Address            : 0x2C0528 - 0x2C0558
; =========================================================

2C0528:  PUSH            {R4,R5,R7,LR}
2C052A:  ADD             R7, SP, #8
2C052C:  MOV             R4, R0
2C052E:  LDR             R0, =(_ZTV24CWidgetRegionDriveHybrid_ptr - 0x2C0536)
2C0530:  MOV             R5, R4
2C0532:  ADD             R0, PC; _ZTV24CWidgetRegionDriveHybrid_ptr
2C0534:  LDR             R0, [R0]; `vtable for'CWidgetRegionDriveHybrid ...
2C0536:  ADDS            R0, #8
2C0538:  STR.W           R0, [R5],#0x94
2C053C:  ADD.W           R0, R4, #0x98; this
2C0540:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C0544:  MOV             R0, R5; this
2C0546:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C054A:  MOV             R0, R4; this
2C054C:  BLX             j__ZN7CWidgetD2Ev; CWidget::~CWidget()
2C0550:  POP.W           {R4,R5,R7,LR}
2C0554:  B.W             j__ZdlPv; operator delete(void *)
