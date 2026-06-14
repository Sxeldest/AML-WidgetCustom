; =========================================================
; Game Engine Function: _ZNK18CTaskComplexWander10ValidNodesEv
; Address            : 0x521374 - 0x52139E
; =========================================================

521374:  LDRH            R1, [R0,#0x1C]
521376:  MOVW            R2, #0xFFFF
52137A:  CMP             R1, R2
52137C:  ITT NE
52137E:  LDRHNE          R3, [R0,#0x18]
521380:  CMPNE           R3, R2
521382:  BNE             loc_521388
521384:  MOVS            R0, #0
521386:  BX              LR
521388:  CMP             R1, R3
52138A:  ITT NE
52138C:  MOVNE           R0, #1
52138E:  BXNE            LR
521390:  LDRH            R1, [R0,#0x1A]
521392:  LDRH            R2, [R0,#0x1E]
521394:  MOVS            R0, #0
521396:  CMP             R2, R1
521398:  IT NE
52139A:  MOVNE           R0, #1
52139C:  BX              LR
