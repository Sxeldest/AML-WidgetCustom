; =========================================================
; Game Engine Function: _ZN9CTheZones30GetCurrentZoneLockedOrUnlockedEff
; Address            : 0x42D274 - 0x42D2D8
; =========================================================

42D274:  VLDR            S2, =2999.0
42D278:  VMOV            S4, R0
42D27C:  VLDR            S6, =-2999.0
42D280:  VMOV            S8, R1
42D284:  VMIN.F32        D16, D2, D1
42D288:  VLDR            S0, =3000.0
42D28C:  LDR             R0, =(_ZN9CTheZones12ZonesVisitedE_ptr - 0x42D292)
42D28E:  ADD             R0, PC; _ZN9CTheZones12ZonesVisitedE_ptr
42D290:  VMAX.F32        D2, D16, D3
42D294:  VMIN.F32        D16, D4, D1
42D298:  VLDR            S2, =600.0
42D29C:  LDR             R0, [R0]; CTheZones::ZonesVisited ...
42D29E:  VADD.F32        S4, S4, S0
42D2A2:  VMAX.F32        D3, D16, D3
42D2A6:  VADD.F32        S0, S6, S0
42D2AA:  VDIV.F32        S4, S4, S2
42D2AE:  VDIV.F32        S0, S0, S2
42D2B2:  VCVT.U32.F32    S2, S4
42D2B6:  VCVT.U32.F32    S0, S0
42D2BA:  VMOV            R1, S2
42D2BE:  ADD.W           R1, R1, R1,LSL#2
42D2C2:  ADD.W           R0, R0, R1,LSL#1
42D2C6:  VMOV            R1, S0
42D2CA:  RSB.W           R1, R1, #9
42D2CE:  LDRB            R0, [R0,R1]
42D2D0:  CMP             R0, #0
42D2D2:  IT NE
42D2D4:  MOVNE           R0, #1
42D2D6:  BX              LR
