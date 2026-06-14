; =========================================================
; Game Engine Function: sub_1A6334
; Address            : 0x1A6334 - 0x1A636E
; =========================================================

1A6334:  PUSH            {R4,R6,R7,LR}
1A6336:  ADD             R7, SP, #8
1A6338:  LDR             R0, =(_ZN4CHud7SpritesE_ptr - 0x1A633E)
1A633A:  ADD             R0, PC; _ZN4CHud7SpritesE_ptr
1A633C:  LDR             R4, [R0]; CHud::Sprites ...
1A633E:  ADD.W           R0, R4, #0x14; this
1A6342:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A6346:  ADD.W           R0, R4, #0x10; this
1A634A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A634E:  ADD.W           R0, R4, #0xC; this
1A6352:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A6356:  ADD.W           R0, R4, #8; this
1A635A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A635E:  ADDS            R0, R4, #4; this
1A6360:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A6364:  MOV             R0, R4; this
1A6366:  POP.W           {R4,R6,R7,LR}
1A636A:  B.W             j_j__ZN9CSprite2dD2Ev; j_CSprite2d::~CSprite2d()
