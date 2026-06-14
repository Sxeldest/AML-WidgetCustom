; =========================================================
; Game Engine Function: sub_1A903C
; Address            : 0x1A903C - 0x1A905E
; =========================================================

1A903C:  PUSH            {R4,R6,R7,LR}
1A903E:  ADD             R7, SP, #8
1A9040:  LDR             R0, =(_ZN5CFont6SpriteE_ptr - 0x1A9046)
1A9042:  ADD             R0, PC; _ZN5CFont6SpriteE_ptr
1A9044:  LDR             R4, [R0]; CFont::Sprite ...
1A9046:  ADD.W           R0, R4, #8; this
1A904A:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A904E:  ADDS            R0, R4, #4; this
1A9050:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A9054:  MOV             R0, R4; this
1A9056:  POP.W           {R4,R6,R7,LR}
1A905A:  B.W             j_j__ZN9CSprite2dD2Ev; j_CSprite2d::~CSprite2d()
