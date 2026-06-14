; =========================================================
; Game Engine Function: _ZN30CWidgetRegionSteeringSelectionD2Ev
; Address            : 0x2C5140 - 0x2C518C
; =========================================================

2C5140:  PUSH            {R4,R5,R7,LR}
2C5142:  ADD             R7, SP, #8
2C5144:  MOV             R4, R0
2C5146:  LDR             R0, =(_ZTV30CWidgetRegionSteeringSelection_ptr - 0x2C514E)
2C5148:  MOV             R5, R4
2C514A:  ADD             R0, PC; _ZTV30CWidgetRegionSteeringSelection_ptr
2C514C:  LDR             R0, [R0]; `vtable for'CWidgetRegionSteeringSelection ...
2C514E:  ADDS            R0, #8
2C5150:  STR.W           R0, [R5],#0xA8
2C5154:  ADD.W           R0, R4, #0xFC; this
2C5158:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C515C:  ADD.W           R0, R4, #0xE8; this
2C5160:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C5164:  ADD.W           R0, R4, #0xE4; this
2C5168:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C516C:  ADD.W           R0, R4, #0xD0; this
2C5170:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C5174:  ADD.W           R0, R4, #0xCC; this
2C5178:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C517C:  MOV             R0, R5; this
2C517E:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2C5182:  MOV             R0, R4; this
2C5184:  POP.W           {R4,R5,R7,LR}
2C5188:  B.W             j_j__ZN7CWidgetD2Ev; j_CWidget::~CWidget()
