; =========================================================
; Game Engine Function: _Z27RpAtomicConvertGeometryToTLP8RpAtomic
; Address            : 0x5D14A8 - 0x5D14D6
; =========================================================

5D14A8:  PUSH            {R4,R6,R7,LR}
5D14AA:  ADD             R7, SP, #8
5D14AC:  LDR             R0, [R0,#0x18]
5D14AE:  MOVS            R1, #0x1000001
5D14B4:  LDR             R4, [R0,#8]
5D14B6:  ANDS            R1, R4
5D14B8:  CMP             R1, #1
5D14BA:  ITT NE
5D14BC:  MOVNE           R0, #0
5D14BE:  POPNE           {R4,R6,R7,PC}
5D14C0:  MOVW            R1, #0xFFF
5D14C4:  BLX.W           j__Z14RpGeometryLockP10RpGeometryi; RpGeometryLock(RpGeometry *,int)
5D14C8:  BIC.W           R1, R4, #1
5D14CC:  STR             R1, [R0,#8]
5D14CE:  BLX.W           j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
5D14D2:  MOVS            R0, #1
5D14D4:  POP             {R4,R6,R7,PC}
