; =========================================================
; Game Engine Function: _ZN17CWidgetRegionMove9IsTouchedEP9CVector2D
; Address            : 0x2C1870 - 0x2C194A
; =========================================================

2C1870:  PUSH            {R4,R5,R7,LR}
2C1872:  ADD             R7, SP, #8
2C1874:  MOV             R5, R0
2C1876:  MOVS            R0, #0x1E
2C1878:  MOV             R4, R1
2C187A:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C187E:  CMP             R0, #1
2C1880:  BNE             loc_2C18DA
2C1882:  MOVS            R0, #0x1F
2C1884:  BLX             j__ZN4CHID10ImplementsE10HIDMapping; CHID::Implements(HIDMapping)
2C1888:  CMP             R0, #1
2C188A:  BNE             loc_2C18DA
2C188C:  MOVS            R0, #0x1E
2C188E:  MOV             R1, R4
2C1890:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C1894:  CMP             R4, #0
2C1896:  MOV             R1, R4
2C1898:  IT NE
2C189A:  ADDNE           R1, #4
2C189C:  MOVS            R0, #0x1F
2C189E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C18A2:  MOVS            R0, #0x1E
2C18A4:  MOVS            R1, #0
2C18A6:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C18AA:  CBNZ            R0, loc_2C18B8
2C18AC:  MOVS            R0, #0x1F
2C18AE:  MOVS            R1, #0
2C18B0:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
2C18B4:  CMP             R0, #1
2C18B6:  BNE             loc_2C18DA
2C18B8:  CBZ             R4, loc_2C18D6
2C18BA:  VLDR            S0, =128.0
2C18BE:  VLDR            S2, [R4]
2C18C2:  VLDR            S4, [R4,#4]
2C18C6:  VMUL.F32        S2, S2, S0
2C18CA:  VMUL.F32        S0, S4, S0
2C18CE:  VSTR            S2, [R4]
2C18D2:  VSTR            S0, [R4,#4]
2C18D6:  MOVS            R0, #1
2C18D8:  POP             {R4,R5,R7,PC}
2C18DA:  CBZ             R4, loc_2C193E
2C18DC:  LDR             R0, =(RsGlobal_ptr - 0x2C18E6)
2C18DE:  VLDR            S2, =640.0
2C18E2:  ADD             R0, PC; RsGlobal_ptr
2C18E4:  LDR             R0, [R0]; RsGlobal
2C18E6:  VLDR            S0, [R0,#4]
2C18EA:  VCVT.F32.S32    S0, S0
2C18EE:  VLDR            S4, [R5,#0x94]
2C18F2:  VLDR            S6, [R5,#0x9C]
2C18F6:  VLDR            S8, [R5,#0xA0]
2C18FA:  VLDR            S10, [R5,#0xA4]
2C18FE:  VLDR            S12, [R5,#0xA8]
2C1902:  VDIV.F32        S0, S0, S2
2C1906:  VLDR            S2, [R5,#0x14]
2C190A:  VMUL.F32        S0, S2, S0
2C190E:  VMOV.F32        S2, #1.0
2C1912:  VMUL.F32        S0, S4, S0
2C1916:  VSUB.F32        S4, S6, S10
2C191A:  VDIV.F32        S0, S2, S0
2C191E:  VSUB.F32        S2, S8, S12
2C1922:  VMUL.F32        S2, S2, S0
2C1926:  VMUL.F32        S0, S4, S0
2C192A:  VLDR            S4, =128.0
2C192E:  VMUL.F32        S2, S2, S4
2C1932:  VMUL.F32        S0, S0, S4
2C1936:  VSTR            S0, [R4]
2C193A:  VSTR            S2, [R4,#4]
2C193E:  MOV             R0, R5
2C1940:  MOV             R1, R4
2C1942:  POP.W           {R4,R5,R7,LR}
2C1946:  B.W             j_j__ZN7CWidget9IsTouchedEP9CVector2D; j_CWidget::IsTouched(CVector2D *)
