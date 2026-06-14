; =========================================================
; Game Engine Function: sub_1A3730
; Address            : 0x1A3730 - 0x1A374C
; =========================================================

1A3730:  PUSH            {R4,R5,R7,LR}
1A3732:  ADD             R7, SP, #8
1A3734:  LDR             R0, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x1A373E)
1A3736:  MOV.W           R4, #0x1FC
1A373A:  ADD             R0, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
1A373C:  LDR             R5, [R0]; CTheScripts::ScriptSprites ...
1A373E:  ADDS            R0, R5, R4; this
1A3740:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
1A3744:  SUBS            R4, #4
1A3746:  ADDS            R0, R4, #4
1A3748:  BNE             loc_1A373E
1A374A:  POP             {R4,R5,R7,PC}
