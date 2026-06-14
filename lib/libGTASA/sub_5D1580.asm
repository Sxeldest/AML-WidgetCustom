; =========================================================
; Game Engine Function: sub_5D1580
; Address            : 0x5D1580 - 0x5D15B2
; =========================================================

5D1580:  PUSH            {R4,R5,R7,LR}
5D1582:  ADD             R7, SP, #8
5D1584:  MOV             R4, R0
5D1586:  MOVS            R2, #1
5D1588:  LDR             R0, [R4,#0x18]
5D158A:  MOVT            R2, #0x100
5D158E:  LDR             R5, [R0,#8]
5D1590:  TST             R5, R2
5D1592:  ITTTT NE
5D1594:  MOVNE           R0, #0
5D1596:  STRBNE          R0, [R1]
5D1598:  MOVNE           R0, R4
5D159A:  POPNE           {R4,R5,R7,PC}
5D159C:  MOVW            R1, #0xFFF
5D15A0:  BLX.W           j__Z14RpGeometryLockP10RpGeometryi; RpGeometryLock(RpGeometry *,int)
5D15A4:  ORR.W           R1, R5, #1
5D15A8:  STR             R1, [R0,#8]
5D15AA:  BLX.W           j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
5D15AE:  MOV             R0, R4
5D15B0:  POP             {R4,R5,R7,PC}
