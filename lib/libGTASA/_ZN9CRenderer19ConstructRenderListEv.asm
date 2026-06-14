; =========================================================
; Game Engine Function: _ZN9CRenderer19ConstructRenderListEv
; Address            : 0x40F6AC - 0x40F8D0
; =========================================================

40F6AC:  PUSH            {R4-R7,LR}
40F6AE:  ADD             R7, SP, #0xC
40F6B0:  PUSH.W          {R8-R10}
40F6B4:  LDR             R0, =(TheCamera_ptr - 0x40F6BA)
40F6B6:  ADD             R0, PC; TheCamera_ptr
40F6B8:  LDR             R0, [R0]; TheCamera
40F6BA:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
40F6BC:  ADD.W           R2, R1, #0x30 ; '0'
40F6C0:  CMP             R1, #0
40F6C2:  IT EQ
40F6C4:  ADDEQ           R2, R0, #4
40F6C6:  LDM             R2, {R0-R2}
40F6C8:  BLX             j__ZN10CCullZones28FindTunnelAttributesForCoorsE7CVector; CCullZones::FindTunnelAttributesForCoors(CVector)
40F6CC:  LDR             R1, =(_ZN9CRenderer17ms_bRenderTunnelsE_ptr - 0x40F6DE)
40F6CE:  ANDS.W          R2, R0, #0x880
40F6D2:  IT NE
40F6D4:  MOVNE           R2, #1
40F6D6:  TST.W           R0, #0x80
40F6DA:  ADD             R1, PC; _ZN9CRenderer17ms_bRenderTunnelsE_ptr
40F6DC:  LDR             R3, =(_ZN9CRenderer12ms_bInTheSkyE_ptr - 0x40F6E8)
40F6DE:  MOV.W           R6, #0x3F800000
40F6E2:  LDR             R1, [R1]; CRenderer::ms_bRenderTunnels ...
40F6E4:  ADD             R3, PC; _ZN9CRenderer12ms_bInTheSkyE_ptr
40F6E6:  LDR             R3, [R3]; CRenderer::ms_bInTheSky ...
40F6E8:  STRB            R2, [R1]; CRenderer::ms_bRenderTunnels
40F6EA:  MOV.W           R1, #1
40F6EE:  IT EQ
40F6F0:  BICEQ.W         R1, R1, R0,LSR#11
40F6F4:  LDR             R0, =(_ZN9CRenderer18ms_lowLodDistScaleE_ptr - 0x40F6FC)
40F6F6:  LDR             R2, =(_ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr - 0x40F6FE)
40F6F8:  ADD             R0, PC; _ZN9CRenderer18ms_lowLodDistScaleE_ptr
40F6FA:  ADD             R2, PC; _ZN9CRenderer24ms_bRenderOutsideTunnelsE_ptr
40F6FC:  LDR             R0, [R0]; CRenderer::ms_lowLodDistScale ...
40F6FE:  LDR             R2, [R2]; CRenderer::ms_bRenderOutsideTunnels ...
40F700:  STR             R6, [R0]; CRenderer::ms_lowLodDistScale
40F702:  MOVS            R6, #0
40F704:  MOV.W           R0, #0xFFFFFFFF; int
40F708:  STRB            R1, [R2]; CRenderer::ms_bRenderOutsideTunnels
40F70A:  STRB            R6, [R3]; CRenderer::ms_bInTheSky
40F70C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
40F710:  MOV             R5, R0
40F712:  CMP             R5, #0
40F714:  BEQ             loc_40F7FE
40F716:  LDRB.W          R0, [R5,#0x33]
40F71A:  CMP             R0, #0
40F71C:  BNE             loc_40F7FE
40F71E:  LDR             R0, =(TheCamera_ptr - 0x40F72A)
40F720:  MOVS            R1, #0; unsigned int
40F722:  MOV.W           R10, #0
40F726:  ADD             R0, PC; TheCamera_ptr
40F728:  LDR             R4, [R0]; TheCamera
40F72A:  MOV             R0, R4; this
40F72C:  BLX             j__ZN7CCamera21CalculateGroundHeightEj; CCamera::CalculateGroundHeight(uint)
40F730:  MOV             R9, R0
40F732:  MOV             R0, R4; this
40F734:  MOVS            R1, #2; unsigned int
40F736:  BLX             j__ZN7CCamera21CalculateGroundHeightEj; CCamera::CalculateGroundHeight(uint)
40F73A:  MOV             R4, R0
40F73C:  BLX             j__Z19IsPlayerRemotePlanev; IsPlayerRemotePlane(void)
40F740:  MOV             R8, R0
40F742:  LDR             R0, [R5,#0x14]
40F744:  VMOV            S2, R9
40F748:  VLDR            S4, =50.0
40F74C:  ADD.W           R1, R0, #0x30 ; '0'
40F750:  CMP             R0, #0
40F752:  IT EQ
40F754:  ADDEQ           R1, R5, #4
40F756:  VLDR            S0, [R1,#8]
40F75A:  VSUB.F32        S2, S0, S2
40F75E:  VCMPE.F32       S2, S4
40F762:  VMRS            APSR_nzcv, FPSCR
40F766:  ITTTT GT
40F768:  VMOVGT          S2, R4
40F76C:  VSUBGT.F32      S0, S0, S2
40F770:  VMOVGT.F32      S2, #10.0
40F774:  VCMPEGT.F32     S0, S2
40F778:  IT GT
40F77A:  VMRSGT          APSR_nzcv, FPSCR
40F77E:  BLE             loc_40F7A2
40F780:  MOV.W           R0, #0xFFFFFFFF; int
40F784:  MOVS            R1, #0; bool
40F786:  MOVS            R4, #0
40F788:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
40F78C:  CMP             R0, #0
40F78E:  IT EQ
40F790:  MOVEQ           R4, #1
40F792:  ORRS.W          R0, R8, R4
40F796:  BNE             loc_40F7A2
40F798:  LDR             R0, =(_ZN9CRenderer12ms_bInTheSkyE_ptr - 0x40F7A0)
40F79A:  MOVS            R1, #1
40F79C:  ADD             R0, PC; _ZN9CRenderer12ms_bInTheSkyE_ptr
40F79E:  LDR             R0, [R0]; CRenderer::ms_bInTheSky ...
40F7A0:  STRB            R1, [R0]; CRenderer::ms_bInTheSky
40F7A2:  LDR             R0, =(TheCamera_ptr - 0x40F7AC)
40F7A4:  VLDR            S2, =80.0
40F7A8:  ADD             R0, PC; TheCamera_ptr
40F7AA:  LDR             R0, [R0]; TheCamera
40F7AC:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
40F7AE:  ADD.W           R2, R1, #0x30 ; '0'
40F7B2:  CMP             R1, #0
40F7B4:  IT EQ
40F7B6:  ADDEQ           R2, R0, #4
40F7B8:  VLDR            S0, [R2,#8]
40F7BC:  VCMPE.F32       S0, S2
40F7C0:  VMRS            APSR_nzcv, FPSCR
40F7C4:  IT LE
40F7C6:  MOVLE.W         R10, #1
40F7CA:  ORRS.W          R0, R8, R10
40F7CE:  BNE             loc_40F7FE
40F7D0:  VLDR            S2, =-80.0
40F7D4:  VMOV.F32        S4, #1.0
40F7D8:  LDR             R0, =(_ZN9CRenderer18ms_lowLodDistScaleE_ptr - 0x40F7E6)
40F7DA:  VADD.F32        S0, S0, S2
40F7DE:  VLDR            S2, =170.0
40F7E2:  ADD             R0, PC; _ZN9CRenderer18ms_lowLodDistScaleE_ptr
40F7E4:  LDR             R0, [R0]; CRenderer::ms_lowLodDistScale ...
40F7E6:  VDIV.F32        S0, S0, S2
40F7EA:  VMIN.F32        D0, D0, D2
40F7EE:  VLDR            S2, =1.2
40F7F2:  VMUL.F32        S0, S0, S2
40F7F6:  VADD.F32        S0, S0, S4
40F7FA:  VSTR            S0, [R0]
40F7FE:  LDR             R0, =(_ZN9CRenderer18ms_lowLodDistScaleE_ptr - 0x40F806)
40F800:  LDR             R1, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x40F808)
40F802:  ADD             R0, PC; _ZN9CRenderer18ms_lowLodDistScaleE_ptr
40F804:  ADD             R1, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
40F806:  LDR             R0, [R0]; this
40F808:  LDR             R1, [R1]; CTimeCycle::m_CurrentColours ...
40F80A:  VLDR            S0, [R0]
40F80E:  VLDR            S2, [R1,#0xA8]
40F812:  VMUL.F32        S0, S2, S0
40F816:  VSTR            S0, [R0]
40F81A:  BLX             j__ZN8CMirrors25BeforeConstructRenderListEv; CMirrors::BeforeConstructRenderList(void)
40F81E:  BLX             j__ZN10COcclusion22ProcessBeforeRenderingEv; COcclusion::ProcessBeforeRendering(void)
40F822:  LDR             R0, =(TheCamera_ptr - 0x40F82A)
40F824:  LDR             R1, =(_ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr - 0x40F830)
40F826:  ADD             R0, PC; TheCamera_ptr
40F828:  LDR             R2, =(_ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr - 0x40F834)
40F82A:  LDR             R5, =(_ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr - 0x40F836)
40F82C:  ADD             R1, PC; _ZN9CRenderer25ms_nNoOfInVisibleEntitiesE_ptr
40F82E:  LDR             R4, [R0]; TheCamera
40F830:  ADD             R2, PC; _ZN9CRenderer23ms_nNoOfVisibleEntitiesE_ptr
40F832:  ADD             R5, PC; _ZN9CRenderer19ms_nNoOfVisibleLodsE_ptr
40F834:  LDR             R3, =(_ZN9CRenderer20ms_vecCameraPositionE_ptr - 0x40F83E)
40F836:  LDR             R1, [R1]; CRenderer::ms_nNoOfInVisibleEntities ...
40F838:  LDR             R2, [R2]; CRenderer::ms_nNoOfVisibleEntities ...
40F83A:  ADD             R3, PC; _ZN9CRenderer20ms_vecCameraPositionE_ptr
40F83C:  LDR             R5, [R5]; CRenderer::ms_nNoOfVisibleLods ...
40F83E:  LDR             R0, [R4,#(dword_951FBC - 0x951FA8)]
40F840:  STR             R6, [R1]; CRenderer::ms_nNoOfInVisibleEntities
40F842:  ADD.W           R1, R0, #0x30 ; '0'
40F846:  CMP             R0, #0
40F848:  LDR             R3, [R3]; CRenderer::ms_vecCameraPosition ...
40F84A:  STR             R6, [R5]; CRenderer::ms_nNoOfVisibleLods
40F84C:  STR             R6, [R2]; CRenderer::ms_nNoOfVisibleEntities
40F84E:  IT EQ
40F850:  ADDEQ           R1, R4, #4
40F852:  VLDR            D16, [R1]
40F856:  CMP             R0, #0
40F858:  LDR             R1, [R1,#(dword_951FB4 - 0x951FAC)]
40F85A:  STR             R1, [R3,#(dword_960B58 - 0x960B50)]
40F85C:  VSTR            D16, [R3]
40F860:  BEQ             loc_40F874
40F862:  LDRD.W          R2, R1, [R0,#0x10]; x
40F866:  EOR.W           R0, R2, #0x80000000; y
40F86A:  BLX             atan2f
40F86E:  VMOV            S0, R0
40F872:  B               loc_40F87E
40F874:  LDR             R0, =(TheCamera_ptr - 0x40F87A)
40F876:  ADD             R0, PC; TheCamera_ptr
40F878:  LDR             R0, [R0]; TheCamera
40F87A:  VLDR            S0, [R0,#0x10]
40F87E:  LDR             R0, =(TheCamera_ptr - 0x40F886)
40F880:  LDR             R1, =(_ZN9CRenderer17ms_fCameraHeadingE_ptr - 0x40F88A)
40F882:  ADD             R0, PC; TheCamera_ptr
40F884:  LDR             R2, =(_ZN9CRenderer16ms_fFarClipPlaneE_ptr - 0x40F890)
40F886:  ADD             R1, PC; _ZN9CRenderer17ms_fCameraHeadingE_ptr
40F888:  LDR             R3, =(_ZN9CRenderer17ms_pLodRenderListE_ptr - 0x40F894)
40F88A:  LDR             R0, [R0]; TheCamera
40F88C:  ADD             R2, PC; _ZN9CRenderer16ms_fFarClipPlaneE_ptr
40F88E:  LDR             R6, =(_ZN9CRenderer21ms_pLodDontRenderListE_ptr - 0x40F89A)
40F890:  ADD             R3, PC; _ZN9CRenderer17ms_pLodRenderListE_ptr
40F892:  LDR             R5, =(PC_Scratch_ptr - 0x40F89C)
40F894:  LDR             R1, [R1]; CRenderer::ms_fCameraHeading ...
40F896:  ADD             R6, PC; _ZN9CRenderer21ms_pLodDontRenderListE_ptr
40F898:  ADD             R5, PC; PC_Scratch_ptr
40F89A:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
40F89E:  LDR             R2, [R2]; CRenderer::ms_fFarClipPlane ...
40F8A0:  VSTR            S0, [R1]
40F8A4:  LDR             R3, [R3]; CRenderer::ms_pLodRenderList ...
40F8A6:  LDR             R6, [R6]; CRenderer::ms_pLodDontRenderList ...
40F8A8:  LDR             R5, [R5]; PC_Scratch
40F8AA:  LDR.W           R0, [R0,#0x84]
40F8AE:  STR             R0, [R2]; CRenderer::ms_fFarClipPlane
40F8B0:  ADD.W           R0, R5, #0x60 ; '`'
40F8B4:  STR             R0, [R3]; CRenderer::ms_pLodRenderList
40F8B6:  ADD.W           R0, R5, #0x8000; this
40F8BA:  STR             R0, [R6]; CRenderer::ms_pLodDontRenderList
40F8BC:  BLX             j__ZN9CRenderer9ScanWorldEv; CRenderer::ScanWorld(void)
40F8C0:  BLX             j__ZN9CRenderer21ProcessLodRenderListsEv; CRenderer::ProcessLodRenderLists(void)
40F8C4:  POP.W           {R8-R10}
40F8C8:  POP.W           {R4-R7,LR}
40F8CC:  B.W             sub_19FB4C
