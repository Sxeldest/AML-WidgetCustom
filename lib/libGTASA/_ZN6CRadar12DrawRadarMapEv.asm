; =========================================================
; Game Engine Function: _ZN6CRadar12DrawRadarMapEv
; Address            : 0x43E5A0 - 0x43E850
; =========================================================

43E5A0:  PUSH            {R4-R7,LR}
43E5A2:  ADD             R7, SP, #0xC
43E5A4:  PUSH.W          {R8-R10}
43E5A8:  VPUSH           {D8-D9}
43E5AC:  SUB             SP, SP, #0x28
43E5AE:  BLX             j__ZN6CRadar13DrawRadarMaskEv; CRadar::DrawRadarMask(void)
43E5B2:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43E5BC)
43E5B4:  VLDR            S0, =3000.0
43E5B8:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43E5BA:  VLDR            S16, =500.0
43E5BE:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
43E5C0:  VLDR            S2, [R0]
43E5C4:  VLDR            S4, [R0,#4]
43E5C8:  VADD.F32        S2, S2, S0
43E5CC:  VADD.F32        S18, S4, S0
43E5D0:  VDIV.F32        S2, S2, S16
43E5D4:  VMOV            R0, S2; x
43E5D8:  BLX             floorf
43E5DC:  VDIV.F32        S0, S18, S16
43E5E0:  VMOV.F32        S2, #11.0
43E5E4:  VSUB.F32        S0, S2, S0
43E5E8:  VMOV            R1, S0
43E5EC:  VMOV            S0, R0
43E5F0:  VCVT.S32.F32    S16, S0
43E5F4:  MOV             R0, R1; x
43E5F6:  BLX             ceilf
43E5FA:  VMOV            S0, R0
43E5FE:  MOV.W           R0, #0x1F4
43E602:  VMOV            R8, S16
43E606:  VCVT.S32.F32    S0, S0
43E60A:  VMOV            R9, S0
43E60E:  MUL.W           R1, R8, R0
43E612:  VMOV.32         D16[0], R1
43E616:  RSB.W           R2, R9, #0xB; int
43E61A:  MOV             R1, R9; int
43E61C:  MULS            R0, R2
43E61E:  VMOV.32         D16[1], R0
43E622:  ADR             R0, dword_43E850
43E624:  VMOV            D17, D16
43E628:  VLD1.64         {D18-D19}, [R0@128]
43E62C:  VADD.I32        Q8, Q8, Q9
43E630:  LDR             R0, =(_ZN6CRadar11m_radarRectE_ptr - 0x43E63A)
43E632:  VCVT.F32.S32    Q8, Q8
43E636:  ADD             R0, PC; _ZN6CRadar11m_radarRectE_ptr
43E638:  LDR             R0, [R0]; CRadar::m_radarRect ...
43E63A:  VST1.32         {D16-D17}, [R0]
43E63E:  MOV             R0, R8; this
43E640:  BLX             j__ZN6CRadar19StreamRadarSectionsEii; CRadar::StreamRadarSections(int,int)
43E644:  MOVS            R0, #0xE
43E646:  MOVS            R1, #0
43E648:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E64C:  MOVS            R0, #0xA
43E64E:  MOVS            R1, #5
43E650:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E654:  MOVS            R0, #0xB
43E656:  MOVS            R1, #6
43E658:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E65C:  MOVS            R0, #9
43E65E:  MOVS            R1, #2
43E660:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E664:  MOVS            R0, #7
43E666:  MOVS            R1, #1
43E668:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E66C:  MOVS            R0, #6
43E66E:  MOVS            R1, #1
43E670:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E674:  MOVS            R0, #8
43E676:  MOVS            R1, #0
43E678:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E67C:  MOVS            R0, #0xC
43E67E:  MOVS            R1, #0
43E680:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E684:  MOVS            R0, #2
43E686:  MOVS            R1, #3
43E688:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E68C:  MOVS            R0, #5
43E68E:  MOVS            R1, #0
43E690:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E694:  MOVS            R0, #0xC
43E696:  MOVS            R1, #1
43E698:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E69C:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43E6A2)
43E69E:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43E6A0:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43E6A2:  LDR.W           R0, [R0,#(dword_6F3A18 - 0x6F3794)]
43E6A6:  CMP             R0, #0
43E6A8:  BEQ.W           loc_43E83C
43E6AC:  LDR             R1, =(gMobileMenu_ptr - 0x43E6B6)
43E6AE:  MOV.W           R10, #0xFF
43E6B2:  ADD             R1, PC; gMobileMenu_ptr
43E6B4:  LDR             R1, [R1]; gMobileMenu
43E6B6:  LDR             R2, [R1,#(dword_6E0090 - 0x6E006C)]
43E6B8:  CBNZ            R2, loc_43E6C4
43E6BA:  LDR             R1, [R1,#(dword_6E0098 - 0x6E006C)]
43E6BC:  CMP             R1, #0
43E6BE:  IT EQ
43E6C0:  LDRBEQ.W        R10, [R0,#0x4C]
43E6C4:  SUB.W           R4, R8, #1
43E6C8:  SUB.W           R5, R9, #1
43E6CC:  MOV             R2, R10; int
43E6CE:  MOV             R0, R4; this
43E6D0:  MOV             R1, R5; int
43E6D2:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E6D6:  MOV             R0, R8; this
43E6D8:  MOV             R1, R5; int
43E6DA:  MOV             R2, R10; int
43E6DC:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E6E0:  ADD.W           R6, R8, #1
43E6E4:  MOV             R1, R5; int
43E6E6:  MOV             R2, R10; int
43E6E8:  MOV             R0, R6; this
43E6EA:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E6EE:  MOV             R0, R4; this
43E6F0:  MOV             R1, R9; int
43E6F2:  MOV             R2, R10; int
43E6F4:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E6F8:  MOV             R0, R8; this
43E6FA:  MOV             R1, R9; int
43E6FC:  MOV             R2, R10; int
43E6FE:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E702:  MOV             R0, R6; this
43E704:  MOV             R1, R9; int
43E706:  MOV             R2, R10; int
43E708:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E70C:  ADD.W           R5, R9, #1
43E710:  MOV             R0, R4; this
43E712:  MOV             R2, R10; int
43E714:  MOV             R1, R5; int
43E716:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E71A:  MOV             R0, R8; this
43E71C:  MOV             R1, R5; int
43E71E:  MOV             R2, R10; int
43E720:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E724:  MOV             R0, R6; this
43E726:  MOV             R1, R5; int
43E728:  MOV             R2, R10; int
43E72A:  BLX             j__ZN6CRadar16DrawRadarSectionEiii; CRadar::DrawRadarSection(int,int,int)
43E72E:  MOVS            R0, #0; this
43E730:  BLX             j__ZN6CRadar20DrawRadarGangOverlayEb; CRadar::DrawRadarGangOverlay(bool)
43E734:  MOV.W           R0, #0xFFFFFFFF; int
43E738:  MOVS            R1, #0; bool
43E73A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E73E:  CMP             R0, #0
43E740:  BEQ             loc_43E83C
43E742:  MOV.W           R0, #0xFFFFFFFF; int
43E746:  MOVS            R1, #0; bool
43E748:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E74C:  LDR.W           R0, [R0,#0x5A4]
43E750:  CMP             R0, #4
43E752:  BNE             loc_43E83C
43E754:  MOV.W           R0, #0xFFFFFFFF; int
43E758:  MOVS            R1, #0; bool
43E75A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E75E:  LDRH            R0, [R0,#0x26]
43E760:  MOVW            R1, #0x21B
43E764:  CMP             R0, R1
43E766:  BEQ             loc_43E83C
43E768:  ADD             R0, SP, #0x50+var_34; int
43E76A:  MOVS            R1, #0
43E76C:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43E770:  LDR.W           R8, =(dword_994EEC - 0x43E782)
43E774:  MOVW            R0, #0xBD2E
43E778:  LDR             R6, =(dword_994EE8 - 0x43E786)
43E77A:  MOVT            R0, #0xB3BB
43E77E:  ADD             R8, PC; dword_994EEC
43E780:  MOVS            R1, #0; bool
43E782:  ADD             R6, PC; dword_994EE8
43E784:  LDR.W           R9, [R8]
43E788:  STR.W           R0, [R8]
43E78C:  MOVS            R0, #0xBF800000
43E792:  LDR             R5, [R6]
43E794:  STR             R0, [R6]
43E796:  MOV.W           R0, #0xFFFFFFFF; int
43E79A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E79E:  LDR             R0, [R0,#0x14]
43E7A0:  MOVS            R1, #0; bool
43E7A2:  LDR             R4, [R0,#0x18]
43E7A4:  MOV.W           R0, #0xFFFFFFFF; int
43E7A8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E7AC:  LDR             R0, [R0,#0x14]
43E7AE:  LDR             R1, [R0,#0x28]; x
43E7B0:  EOR.W           R0, R4, #0x80000000; y
43E7B4:  BLX             atan2f
43E7B8:  VLDR            S0, =-180.0
43E7BC:  VMOV            S2, R0
43E7C0:  VLDR            S6, =0.8
43E7C4:  ADD             R4, SP, #0x50+var_48
43E7C6:  VMUL.F32        S0, S2, S0
43E7CA:  VLDR            S2, =3.1416
43E7CE:  VLDR            S4, =-1000.0
43E7D2:  MOVS            R1, #0x14; unsigned __int8
43E7D4:  VLDR            S12, =1000.0
43E7D8:  MOVS            R2, #0xAF; unsigned __int8
43E7DA:  MOVS            R3, #0x14; unsigned __int8
43E7DC:  VDIV.F32        S0, S0, S2
43E7E0:  VMOV            S2, R10
43E7E4:  VADD.F32        S0, S0, S0
43E7E8:  VCVT.F32.S32    S2, S2
43E7EC:  VLDR            S8, [SP,#0x50+var_34]
43E7F0:  VLDR            S10, [SP,#0x50+var_30]
43E7F4:  VADD.F32        S4, S8, S4
43E7F8:  VADD.F32        S8, S8, S12
43E7FC:  VADD.F32        S0, S10, S0
43E800:  VMUL.F32        S2, S2, S6
43E804:  VLDR            S6, =2000.0
43E808:  VADD.F32        S6, S10, S6
43E80C:  VCVT.U32.F32    S2, S2
43E810:  VSTR            S4, [SP,#0x50+var_44]
43E814:  VSTR            S8, [SP,#0x50+var_3C]
43E818:  VSTR            S6, [SP,#0x50+var_40]
43E81C:  VSTR            S0, [SP,#0x50+var_38]
43E820:  VMOV            R0, S2
43E824:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
43E826:  MOV             R0, R4; this
43E828:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43E82C:  ADD             R0, SP, #0x50+var_44
43E82E:  MOV             R1, R4
43E830:  MOVS            R2, #0
43E832:  BLX             j__ZN6CRadar15DrawAreaOnRadarERK5CRectRK5CRGBAb; CRadar::DrawAreaOnRadar(CRect const&,CRGBA const&,bool)
43E836:  STR             R5, [R6]
43E838:  STR.W           R9, [R8]
43E83C:  MOVS            R0, #6
43E83E:  MOVS            R1, #0
43E840:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
43E844:  ADD             SP, SP, #0x28 ; '('
43E846:  VPOP            {D8-D9}
43E84A:  POP.W           {R8-R10}
43E84E:  POP             {R4-R7,PC}
