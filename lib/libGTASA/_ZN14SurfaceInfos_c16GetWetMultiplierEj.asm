; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16GetWetMultiplierEj
; Address            : 0x41DE34 - 0x41DE6C
; =========================================================

41DE34:  ADD.W           R1, R1, R1,LSL#1
41DE38:  VLDR            S2, =100.0
41DE3C:  VMOV.F32        S4, #1.0
41DE40:  ADD.W           R0, R0, R1,LSL#2
41DE44:  LDRSB.W         R0, [R0,#0x91]
41DE48:  VMOV            S0, R0
41DE4C:  LDR             R0, =(_ZN8CWeather8WetRoadsE_ptr - 0x41DE56)
41DE4E:  VCVT.F32.S32    S0, S0
41DE52:  ADD             R0, PC; _ZN8CWeather8WetRoadsE_ptr
41DE54:  LDR             R0, [R0]; CWeather::WetRoads ...
41DE56:  VDIV.F32        S0, S0, S2
41DE5A:  VLDR            S2, [R0]
41DE5E:  VMUL.F32        S0, S2, S0
41DE62:  VADD.F32        S0, S0, S4
41DE66:  VMOV            R0, S0
41DE6A:  BX              LR
