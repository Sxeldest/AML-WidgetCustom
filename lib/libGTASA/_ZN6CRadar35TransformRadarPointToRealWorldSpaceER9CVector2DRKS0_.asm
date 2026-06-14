; =========================================================
; Game Engine Function: _ZN6CRadar35TransformRadarPointToRealWorldSpaceER9CVector2DRKS0_
; Address            : 0x442630 - 0x4426A6
; =========================================================

442630:  LDR             R2, =(dword_994EEC - 0x442638)
442632:  LDR             R3, =(dword_994EE8 - 0x44263E)
442634:  ADD             R2, PC; dword_994EEC
442636:  VLDR            S0, [R1]
44263A:  ADD             R3, PC; dword_994EE8
44263C:  VLDR            S2, [R1,#4]
442640:  VLDR            S4, [R2]
442644:  VLDR            S6, [R3]
442648:  VMUL.F32        S2, S4, S2
44264C:  VMUL.F32        S0, S6, S0
442650:  VSUB.F32        S0, S0, S2
442654:  VSTR            S0, [R0]
442658:  VLDR            S2, [R1]
44265C:  VLDR            S8, [R1,#4]
442660:  VMUL.F32        S2, S4, S2
442664:  LDR             R1, =(_ZN6CRadar12m_radarRangeE_ptr - 0x44266E)
442666:  VMUL.F32        S6, S6, S8
44266A:  ADD             R1, PC; _ZN6CRadar12m_radarRangeE_ptr
44266C:  LDR             R1, [R1]; CRadar::m_radarRange ...
44266E:  VLDR            S4, [R1]
442672:  VADD.F32        S2, S2, S6
442676:  LDR             R1, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x442680)
442678:  VMUL.F32        S0, S4, S0
44267C:  ADD             R1, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
44267E:  LDR             R1, [R1]; CRadar::vec2DRadarOrigin ...
442680:  VMUL.F32        S2, S2, S4
442684:  VSTR            S0, [R0]
442688:  VSTR            S2, [R0,#4]
44268C:  VLDR            S4, [R1]
442690:  VADD.F32        S0, S0, S4
442694:  VSTR            S0, [R0]
442698:  VLDR            S0, [R1,#4]
44269C:  VADD.F32        S0, S2, S0
4426A0:  VSTR            S0, [R0,#4]
4426A4:  BX              LR
