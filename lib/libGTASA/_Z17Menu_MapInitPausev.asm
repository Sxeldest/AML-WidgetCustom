; =========================================================
; Game Engine Function: _Z17Menu_MapInitPausev
; Address            : 0x2A994C - 0x2A9A22
; =========================================================

2A994C:  LDR             R0, =(RsGlobal_ptr - 0x2A9956)
2A994E:  VLDR            S14, =1.8
2A9952:  ADD             R0, PC; RsGlobal_ptr
2A9954:  LDR             R0, [R0]; RsGlobal
2A9956:  VLDR            S0, [R0,#4]
2A995A:  VLDR            S2, [R0,#8]
2A995E:  LDR             R0, =(gMobileMenu_ptr - 0x2A996C)
2A9960:  VCVT.F32.S32    S6, S2
2A9964:  VCVT.F32.S32    S10, S0
2A9968:  ADD             R0, PC; gMobileMenu_ptr
2A996A:  LDR             R0, [R0]; gMobileMenu
2A996C:  VLDR            S2, [R0,#0x58]
2A9970:  VLDR            S4, [R0,#0x5C]
2A9974:  VDIV.F32        S12, S10, S6
2A9978:  VCMPE.F32       S12, S14
2A997C:  VLDR            S0, [R0,#0x60]
2A9980:  VSUB.F32        S8, S4, S2
2A9984:  VMRS            APSR_nzcv, FPSCR
2A9988:  VMOV.F32        S12, S2
2A998C:  BGT             loc_2A9996
2A998E:  VMUL.F32        S10, S2, S10
2A9992:  VDIV.F32        S12, S10, S6
2A9996:  VADD.F32        S6, S4, S12
2A999A:  VCMPE.F32       S8, #0.0
2A999E:  VMRS            APSR_nzcv, FPSCR
2A99A2:  BLE             loc_2A99B2
2A99A4:  LDR             R0, =(gMobileMenu_ptr - 0x2A99AE)
2A99A6:  VSUB.F32        S4, S4, S8
2A99AA:  ADD             R0, PC; gMobileMenu_ptr
2A99AC:  LDR             R0, [R0]; gMobileMenu
2A99AE:  VSTR            S4, [R0,#0x5C]
2A99B2:  VSUB.F32        S8, S0, S2
2A99B6:  VLDR            S10, =640.0
2A99BA:  VCMPE.F32       S6, S10
2A99BE:  VMRS            APSR_nzcv, FPSCR
2A99C2:  BGE             loc_2A99D6
2A99C4:  VSUB.F32        S6, S10, S6
2A99C8:  LDR             R0, =(gMobileMenu_ptr - 0x2A99CE)
2A99CA:  ADD             R0, PC; gMobileMenu_ptr
2A99CC:  LDR             R0, [R0]; gMobileMenu
2A99CE:  VADD.F32        S4, S6, S4
2A99D2:  VSTR            S4, [R0,#0x5C]
2A99D6:  VADD.F32        S2, S0, S2
2A99DA:  VCMPE.F32       S8, #0.0
2A99DE:  VMRS            APSR_nzcv, FPSCR
2A99E2:  BLE             loc_2A99F2
2A99E4:  LDR             R0, =(gMobileMenu_ptr - 0x2A99EE)
2A99E6:  VSUB.F32        S0, S0, S8
2A99EA:  ADD             R0, PC; gMobileMenu_ptr
2A99EC:  LDR             R0, [R0]; gMobileMenu
2A99EE:  VSTR            S0, [R0,#0x60]
2A99F2:  VLDR            S4, =448.0
2A99F6:  VCMPE.F32       S2, S4
2A99FA:  VMRS            APSR_nzcv, FPSCR
2A99FE:  BGE             loc_2A9A12
2A9A00:  VSUB.F32        S2, S4, S2
2A9A04:  LDR             R0, =(gMobileMenu_ptr - 0x2A9A0A)
2A9A06:  ADD             R0, PC; gMobileMenu_ptr
2A9A08:  LDR             R0, [R0]; gMobileMenu ; this
2A9A0A:  VADD.F32        S0, S2, S0
2A9A0E:  VSTR            S0, [R0,#0x60]
2A9A12:  PUSH            {R7,LR}
2A9A14:  MOV             R7, SP
2A9A16:  BLX             j__ZN6CRadar26SetMapCentreToPlayerCoordsEv; CRadar::SetMapCentreToPlayerCoords(void)
2A9A1A:  MOVS            R0, #0; float
2A9A1C:  POP.W           {R7,LR}
2A9A20:  B               _Z14Menu_MapUpdatef; Menu_MapUpdate(float)
