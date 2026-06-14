; =========================================================
; Game Engine Function: _Z27RpAtomicConvertGeometryToTSP8RpAtomic
; Address            : 0x5D14D6 - 0x5D1502
; =========================================================

5D14D6:  PUSH            {R4,R6,R7,LR}
5D14D8:  ADD             R7, SP, #8
5D14DA:  LDR             R0, [R0,#0x18]
5D14DC:  MOVS            R1, #0x1000001
5D14E2:  LDR             R4, [R0,#8]
5D14E4:  TST             R4, R1
5D14E6:  ITT NE
5D14E8:  MOVNE           R0, #0
5D14EA:  POPNE           {R4,R6,R7,PC}
5D14EC:  MOVW            R1, #0xFFF
5D14F0:  BLX.W           j__Z14RpGeometryLockP10RpGeometryi; RpGeometryLock(RpGeometry *,int)
5D14F4:  ORR.W           R1, R4, #1
5D14F8:  STR             R1, [R0,#8]
5D14FA:  BLX.W           j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
5D14FE:  MOVS            R0, #1
5D1500:  POP             {R4,R6,R7,PC}
