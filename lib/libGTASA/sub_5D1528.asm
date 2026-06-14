; =========================================================
; Game Engine Function: sub_5D1528
; Address            : 0x5D1528 - 0x5D155C
; =========================================================

5D1528:  PUSH            {R4,R5,R7,LR}
5D152A:  ADD             R7, SP, #8
5D152C:  MOV             R4, R0
5D152E:  MOVS            R2, #1
5D1530:  LDR             R0, [R4,#0x18]
5D1532:  MOVT            R2, #0x100
5D1536:  LDR             R5, [R0,#8]
5D1538:  ANDS            R2, R5
5D153A:  CMP             R2, #1
5D153C:  BNE             loc_5D1554
5D153E:  MOVW            R1, #0xFFF
5D1542:  BLX.W           j__Z14RpGeometryLockP10RpGeometryi; RpGeometryLock(RpGeometry *,int)
5D1546:  BIC.W           R1, R5, #1
5D154A:  STR             R1, [R0,#8]
5D154C:  BLX.W           j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
5D1550:  MOV             R0, R4
5D1552:  POP             {R4,R5,R7,PC}
5D1554:  MOVS            R0, #0
5D1556:  STRB            R0, [R1]
5D1558:  MOV             R0, R4
5D155A:  POP             {R4,R5,R7,PC}
