; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCar12ComputeRouteEPK4CPed
; Address            : 0x50C6B8 - 0x50C6D0
; =========================================================

50C6B8:  LDR             R2, [R0,#0x1C]
50C6BA:  LDRB.W          R2, [R2,#0x42D]
50C6BE:  LSLS            R2, R2, #0x1D
50C6C0:  IT PL
50C6C2:  BPL             _ZN24CTaskComplexWalkRoundCar25ComputeRouteRoundSmallCarEPK4CPed; CTaskComplexWalkRoundCar::ComputeRouteRoundSmallCar(CPed const*)
50C6C4:  PUSH            {R7,LR}
50C6C6:  MOV             R7, SP
50C6C8:  BLX             j__ZN24CTaskComplexWalkRoundCar23ComputeRouteRoundBigCarEPK4CPed; CTaskComplexWalkRoundCar::ComputeRouteRoundBigCar(CPed const*)
50C6CC:  MOVS            R0, #0
50C6CE:  POP             {R7,PC}
