; =========================================================
; Game Engine Function: _ZN24CWidgetRegionDriveHybridD2Ev
; Address            : 0x2C04F8 - 0x2C0524
; =========================================================

2C04F8:  PUSH            {R4,R5,R7,LR}
2C04FA:  ADD             R7, SP, #8
2C04FC:  MOV             R4, R0
2C04FE:  LDR             R0, =(_ZTV24CWidgetRegionDriveHybrid_ptr - 0x2C0506)
2C0500:  MOV             R5, R4
2C0502:  ADD             R0, PC; _ZTV24CWidgetRegionDriveHybrid_ptr
2C0504:  LDR             R0, [R0]; `vtable for'CWidgetRegionDriveHybrid ...
2C0506:  ADDS            R0, #8
2C0508:  STR.W           R0, [R5],#0x94
2C050C:  ADD.W           R0, R4, #0x98; this
2C0510:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C0514:  MOV             R0, R5; this
2C0516:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C051A:  MOV             R0, R4; this
2C051C:  POP.W           {R4,R5,R7,LR}
2C0520:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
