; =========================================================
; Game Engine Function: _Z13UpdateMapAreab
; Address            : 0x2A9728 - 0x2A97D4
; =========================================================

2A9728:  PUSH            {R4,R6,R7,LR}
2A972A:  ADD             R7, SP, #8
2A972C:  SUB             SP, SP, #0x20
2A972E:  MOV             R4, R0
2A9730:  MOVS            R0, #0; this
2A9732:  STRD.W          R0, R0, [SP,#0x28+var_10]
2A9736:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2A973A:  CMP             R0, #1
2A973C:  IT EQ
2A973E:  CMPEQ           R4, #0
2A9740:  BNE             loc_2A975E
2A9742:  LDR             R0, =(RsGlobal_ptr - 0x2A9748)
2A9744:  ADD             R0, PC; RsGlobal_ptr
2A9746:  LDR             R0, [R0]; RsGlobal
2A9748:  LDRD.W          R1, R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
2A974C:  ADD.W           R2, R0, R0,LSR#31
2A9750:  ADD.W           R1, R1, R1,LSR#31
2A9754:  ASRS            R2, R2, #1
2A9756:  STR             R2, [SP,#0x28+var_10]
2A9758:  ASRS            R1, R1, #1
2A975A:  STR             R1, [SP,#0x28+var_C]
2A975C:  B               loc_2A977C
2A975E:  LDR             R0, =(lastDevice_ptr - 0x2A976A)
2A9760:  ADD             R1, SP, #0x28+var_C; int *
2A9762:  ADD             R2, SP, #0x28+var_10; int *
2A9764:  MOVS            R3, #0; float *
2A9766:  ADD             R0, PC; lastDevice_ptr
2A9768:  LDR             R0, [R0]; lastDevice
2A976A:  LDR             R0, [R0]; int
2A976C:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
2A9770:  LDR             R0, =(RsGlobal_ptr - 0x2A9776)
2A9772:  ADD             R0, PC; RsGlobal_ptr
2A9774:  LDR             R0, [R0]; RsGlobal
2A9776:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
2A9778:  LDRD.W          R2, R1, [SP,#0x28+var_10]
2A977C:  VMOV            S0, R2
2A9780:  VLDR            S2, =448.0
2A9784:  VMOV            S4, R1
2A9788:  ADD             R4, SP, #0x28+var_20
2A978A:  VCVT.F32.S32    S0, S0
2A978E:  VCVT.F32.S32    S4, S4
2A9792:  MOV             R1, R4
2A9794:  VMOV            S6, R0
2A9798:  ADD             R0, SP, #0x28+var_18
2A979A:  VCVT.F32.S32    S6, S6
2A979E:  VMUL.F32        S0, S0, S2
2A97A2:  VMUL.F32        S2, S4, S2
2A97A6:  VDIV.F32        S0, S0, S6
2A97AA:  VDIV.F32        S2, S2, S6
2A97AE:  VSTR            S0, [SP,#0x28+var_14]
2A97B2:  VSTR            S2, [SP,#0x28+var_18]
2A97B6:  BLX             j__ZN6CRadar32TransformScreenSpaceToRadarPointER9CVector2DS1_; CRadar::TransformScreenSpaceToRadarPoint(CVector2D &,CVector2D &)
2A97BA:  MOV             R0, SP
2A97BC:  MOV             R1, R4
2A97BE:  BLX             j__ZN6CRadar35TransformRadarPointToRealWorldSpaceER9CVector2DRKS0_; CRadar::TransformRadarPointToRealWorldSpace(CVector2D &,CVector2D const&)
2A97C2:  LDR             R0, =(gMobileMenu_ptr - 0x2A97CC)
2A97C4:  LDRD.W          R1, R2, [SP,#0x28+var_28]
2A97C8:  ADD             R0, PC; gMobileMenu_ptr
2A97CA:  LDR             R0, [R0]; gMobileMenu
2A97CC:  STRD.W          R1, R2, [R0,#(dword_6E00D0 - 0x6E006C)]
2A97D0:  ADD             SP, SP, #0x20 ; ' '
2A97D2:  POP             {R4,R6,R7,PC}
