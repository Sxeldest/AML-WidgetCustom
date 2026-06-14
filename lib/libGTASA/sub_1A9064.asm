; =========================================================
; Game Engine Function: sub_1A9064
; Address            : 0x1A9064 - 0x1A90E6
; =========================================================

1A9064:  PUSH            {R4,R6,R7,LR}
1A9066:  ADD             R7, SP, #8
1A9068:  LDR             R0, =(_ZN5CFont9PS2SpriteE_ptr - 0x1A906E)
1A906A:  ADD             R0, PC; _ZN5CFont9PS2SpriteE_ptr
1A906C:  LDR             R4, [R0]; CFont::PS2Sprite ...
1A906E:  ADD.W           R0, R4, #0x38 ; '8'; this
1A9072:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A9076:  ADD.W           R0, R4, #0x34 ; '4'; this
1A907A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A907E:  ADD.W           R0, R4, #0x30 ; '0'; this
1A9082:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A9086:  ADD.W           R0, R4, #0x2C ; ','; this
1A908A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A908E:  ADD.W           R0, R4, #0x28 ; '('; this
1A9092:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A9096:  ADD.W           R0, R4, #0x24 ; '$'; this
1A909A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A909E:  ADD.W           R0, R4, #0x20 ; ' '; this
1A90A2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90A6:  ADD.W           R0, R4, #0x1C; this
1A90AA:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90AE:  ADD.W           R0, R4, #0x18; this
1A90B2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90B6:  ADD.W           R0, R4, #0x14; this
1A90BA:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90BE:  ADD.W           R0, R4, #0x10; this
1A90C2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90C6:  ADD.W           R0, R4, #0xC; this
1A90CA:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90CE:  ADD.W           R0, R4, #8; this
1A90D2:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90D6:  ADDS            R0, R4, #4; this
1A90D8:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A90DC:  MOV             R0, R4; this
1A90DE:  POP.W           {R4,R6,R7,LR}
1A90E2:  B.W             j_j__ZN9CSprite2dD2Ev; j_CSprite2d::~CSprite2d()
