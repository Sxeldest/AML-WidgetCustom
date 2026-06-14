; =========================================================
; Game Engine Function: _ZN8CShadows19RenderStoredShadowsEb
; Address            : 0x5BA720 - 0x5BAD2A
; =========================================================

5BA720:  PUSH            {R4-R7,LR}
5BA722:  ADD             R7, SP, #0xC
5BA724:  PUSH.W          {R8-R11}
5BA728:  SUB             SP, SP, #4
5BA72A:  VPUSH           {D8-D15}
5BA72E:  SUB             SP, SP, #0xF0; float
5BA730:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x5BA740)
5BA734:  MOVS            R4, #0
5BA736:  STR             R0, [SP,#0x150+var_10C]
5BA738:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5BA742)
5BA73C:  ADD             R1, PC; TempBufferIndicesStored_ptr
5BA73E:  ADD             R0, PC; TempBufferVerticesStored_ptr
5BA740:  LDR             R1, [R1]; TempBufferIndicesStored
5BA742:  LDR             R0, [R0]; TempBufferVerticesStored
5BA744:  STR             R4, [R1]
5BA746:  MOVS            R1, #0
5BA748:  STR             R4, [R0]
5BA74A:  MOVS            R0, #8
5BA74C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA750:  MOVS            R0, #6
5BA752:  MOVS            R1, #1
5BA754:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA758:  MOVS            R0, #0xC
5BA75A:  MOVS            R1, #1
5BA75C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA760:  MOVS            R0, #0xE
5BA762:  MOVS            R1, #0
5BA764:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA768:  MOVS            R0, #2
5BA76A:  MOVS            R1, #3
5BA76C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA770:  MOVS            R0, #0x14
5BA772:  MOVS            R1, #1
5BA774:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA778:  MOVS            R0, #0x1E
5BA77A:  MOVS            R1, #0
5BA77C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA780:  MOVS            R0, #9
5BA782:  MOVS            R1, #2
5BA784:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA788:  LDR.W           R0, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BA790)
5BA78C:  ADD             R0, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BA78E:  LDR             R0, [R0]; CShadows::ShadowsStoredToBeRendered ...
5BA790:  LDRH            R0, [R0]; CShadows::ShadowsStoredToBeRendered
5BA792:  CBZ             R0, loc_5BA7B0
5BA794:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA79E)
5BA798:  MOVS            R2, #0
5BA79A:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA79C:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5BA79E:  ADDS            R1, #0x32 ; '2'
5BA7A0:  LDRB            R3, [R1]
5BA7A2:  ADDS            R2, #1
5BA7A4:  CMP             R2, R0
5BA7A6:  AND.W           R3, R3, #0xFD
5BA7AA:  STRB.W          R3, [R1],#0x34
5BA7AE:  BLT             loc_5BA7A0
5BA7B0:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x5BA7BC)
5BA7B4:  LDR.W           R2, =(_ZN5CGame8currAreaE_ptr - 0x5BA7BE)
5BA7B8:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
5BA7BA:  ADD             R2, PC; _ZN5CGame8currAreaE_ptr
5BA7BC:  LDR             R1, [R1]; MobileSettings::settings ...
5BA7BE:  LDR             R2, [R2]; CGame::currArea ...
5BA7C0:  LDR.W           R1, [R1,#(dword_6E049C - 0x6E03F4)]
5BA7C4:  LDR             R2, [R2]; CGame::currArea
5BA7C6:  EOR.W           R1, R1, #2
5BA7CA:  ORRS            R1, R2
5BA7CC:  IT EQ
5BA7CE:  MOVEQ           R4, #1
5BA7D0:  CMP             R0, #0
5BA7D2:  BEQ.W           loc_5BACE6
5BA7D6:  LDR             R1, [SP,#0x150+var_10C]
5BA7D8:  MOVS            R5, #0x34 ; '4'
5BA7DA:  LDR.W           R2, =(gpShadowHeadLightsTex2_ptr - 0x5BA7F4)
5BA7DE:  MOVS            R6, #0
5BA7E0:  EOR.W           R1, R1, #1
5BA7E4:  LDR.W           R3, =(gpShadowHeadLightsTex_ptr - 0x5BA7F6)
5BA7E8:  ANDS            R1, R4
5BA7EA:  STR             R1, [SP,#0x150+var_D4]
5BA7EC:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA7FC)
5BA7F0:  ADD             R2, PC; gpShadowHeadLightsTex2_ptr
5BA7F2:  ADD             R3, PC; gpShadowHeadLightsTex_ptr
5BA7F4:  VLDR            S16, =50.0
5BA7F8:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA7FA:  LDR             R2, [R2]; gpShadowHeadLightsTex2
5BA7FC:  VLDR            S18, =60.0
5BA800:  LDR             R4, [R1]; CShadows::asShadowsStored ...
5BA802:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA80C)
5BA806:  STR             R2, [SP,#0x150+var_100]
5BA808:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA80A:  LDR             R2, [R3]; gpShadowHeadLightsTex
5BA80C:  STR             R2, [SP,#0x150+var_FC]
5BA80E:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5BA810:  STR             R1, [SP,#0x150+var_EC]
5BA812:  LDR.W           R1, =(gpBloodPoolTex_ptr - 0x5BA81C)
5BA816:  STR             R4, [SP,#0x150+var_E8]
5BA818:  ADD             R1, PC; gpBloodPoolTex_ptr
5BA81A:  LDR             R1, [R1]; gpBloodPoolTex
5BA81C:  STR             R1, [SP,#0x150+var_F8]
5BA81E:  LDR.W           R1, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BA826)
5BA822:  ADD             R1, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BA824:  LDR             R1, [R1]; CShadows::ShadowsStoredToBeRendered ...
5BA826:  STR             R1, [SP,#0x150+var_F0]
5BA828:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA830)
5BA82C:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA82E:  LDR.W           R9, [R1]; CShadows::asShadowsStored ...
5BA832:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA83A)
5BA836:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA838:  LDR.W           R8, [R1]; CShadows::asShadowsStored ...
5BA83C:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA844)
5BA840:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA842:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5BA844:  STR             R1, [SP,#0x150+var_CC]
5BA846:  LDR.W           R1, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BA84E)
5BA84A:  ADD             R1, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BA84C:  LDR             R1, [R1]; CShadows::ShadowsStoredToBeRendered ...
5BA84E:  STR             R1, [SP,#0x150+var_D0]
5BA850:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA858)
5BA854:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA856:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5BA858:  STR             R1, [SP,#0x150+var_D8]
5BA85A:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5BA862)
5BA85E:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5BA860:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
5BA862:  STR             R1, [SP,#0x150+var_DC]
5BA864:  LDR.W           R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x5BA86C)
5BA868:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
5BA86A:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
5BA86C:  STR             R1, [SP,#0x150+var_E0]
5BA86E:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x5BA876)
5BA872:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
5BA874:  LDR             R1, [R1]; MobileSettings::settings ...
5BA876:  STR             R1, [SP,#0x150+var_E4]
5BA878:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA880)
5BA87C:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA87E:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5BA880:  STR             R1, [SP,#0x150+var_104]
5BA882:  LDR.W           R1, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x5BA88A)
5BA886:  ADD             R1, PC; _ZN6CWorld11ms_aSectorsE_ptr
5BA888:  LDR             R1, [R1]; CWorld::ms_aSectors ...
5BA88A:  STR             R1, [SP,#0x150+var_9C]
5BA88C:  LDR.W           R1, =(_ZN8CShadows15asShadowsStoredE_ptr - 0x5BA894)
5BA890:  ADD             R1, PC; _ZN8CShadows15asShadowsStoredE_ptr
5BA892:  LDR             R1, [R1]; CShadows::asShadowsStored ...
5BA894:  STR             R1, [SP,#0x150+var_108]
5BA896:  LDR.W           R1, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BA89E)
5BA89A:  ADD             R1, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BA89C:  LDR             R1, [R1]; CShadows::ShadowsStoredToBeRendered ...
5BA89E:  STR             R1, [SP,#0x150+var_F4]
5BA8A0:  LDR.W           R1, =(gpShadowExplosionTex_ptr - 0x5BA8A8)
5BA8A4:  ADD             R1, PC; gpShadowExplosionTex_ptr
5BA8A6:  LDR             R1, [R1]; gpShadowExplosionTex
5BA8A8:  STR             R1, [SP,#0x150+var_110]
5BA8AA:  STRD.W          R8, R9, [SP,#0x150+var_C8]
5BA8AE:  MLA.W           R1, R6, R5, R4
5BA8B2:  LDRB.W          R1, [R1,#0x32]
5BA8B6:  LSLS            R1, R1, #0x1E
5BA8B8:  BMI.W           loc_5BACDC
5BA8BC:  LDR             R0, [SP,#0x150+var_EC]
5BA8BE:  MLA.W           R10, R6, R5, R0
5BA8C2:  MOVS            R4, #1
5BA8C4:  LDR.W           R1, [R10,#0x24]!; unsigned __int8
5BA8C8:  MOV             R2, R10
5BA8CA:  LDRB.W          R0, [R2,#0xA]!; this
5BA8CE:  STR             R2, [SP,#0x150+var_A0]
5BA8D0:  CMP             R0, #2
5BA8D2:  ITTT NE
5BA8D4:  LDRNE           R2, [SP,#0x150+var_F8]
5BA8D6:  LDRNE           R2, [R2]
5BA8D8:  CMPNE           R1, R2
5BA8DA:  BEQ             loc_5BA8F8
5BA8DC:  LDR             R2, [SP,#0x150+var_FC]
5BA8DE:  LDR             R2, [R2]
5BA8E0:  CMP             R1, R2
5BA8E2:  ITTT NE
5BA8E4:  LDRNE           R2, [SP,#0x150+var_100]
5BA8E6:  LDRNE           R2, [R2]
5BA8E8:  CMPNE           R1, R2
5BA8EA:  BEQ             loc_5BA8F8
5BA8EC:  LDR             R2, [SP,#0x150+var_110]
5BA8EE:  MOVS            R4, #0
5BA8F0:  LDR             R2, [R2]
5BA8F2:  CMP             R1, R2
5BA8F4:  IT EQ
5BA8F6:  MOVEQ           R4, #1
5BA8F8:  BLX.W           j__ZN8CShadows26SetRenderModeForShadowTypeEh; CShadows::SetRenderModeForShadowType(uchar)
5BA8FC:  LDR.W           R0, [R10]
5BA900:  LDR             R1, [R0]
5BA902:  MOVS            R0, #1
5BA904:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA908:  MOVS            R0, #2
5BA90A:  MOVS            R1, #3
5BA90C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BA910:  LDR             R0, [SP,#0x150+var_F0]
5BA912:  LDRH            R0, [R0]
5BA914:  CMP             R6, R0
5BA916:  BGE.W           loc_5BACD2
5BA91A:  LDR             R1, [SP,#0x150+var_10C]
5BA91C:  MOV             R3, R6
5BA91E:  EORS            R1, R4
5BA920:  STR             R1, [SP,#0x150+var_C0]
5BA922:  STRD.W          R10, R6, [SP,#0x150+var_BC]
5BA926:  MLA.W           R4, R3, R5, R9
5BA92A:  LDR             R1, [SP,#0x150+var_A0]
5BA92C:  LDRB            R1, [R1]
5BA92E:  LDRB.W          R2, [R4,#0x2E]
5BA932:  CMP             R1, R2
5BA934:  BNE.W           loc_5BACC8
5BA938:  MLA.W           R1, R3, R5, R8
5BA93C:  LDR.W           R2, [R10]
5BA940:  LDR             R1, [R1,#0x24]
5BA942:  CMP             R2, R1
5BA944:  BNE.W           loc_5BACC8
5BA948:  LDR             R0, [SP,#0x150+var_C0]
5BA94A:  STR             R3, [SP,#0x150+var_B4]
5BA94C:  CMP             R0, #0
5BA94E:  BNE.W           loc_5BACA6
5BA952:  LDR.W           R9, [SP,#0x150+var_B4]
5BA956:  MOV.W           R8, #0x34 ; '4'
5BA95A:  LDR             R0, [SP,#0x150+var_D8]
5BA95C:  MLA.W           R1, R9, R8, R0
5BA960:  LDR.W           R0, [R1,#0x28]!
5BA964:  STR             R1, [SP,#0x150+var_7C]
5BA966:  VLDR            S0, [R1,#-0x1C]
5BA96A:  CMP             R0, #0
5BA96C:  VLDR            S4, [R1,#-0x14]
5BA970:  VLDR            S2, [R1,#-0x18]
5BA974:  VABS.F32        S0, S0
5BA978:  VLDR            S6, [R1,#-0x10]
5BA97C:  VABS.F32        S4, S4
5BA980:  VABS.F32        S2, S2
5BA984:  VABS.F32        S6, S6
5BA988:  VADD.F32        S0, S0, S4
5BA98C:  VADD.F32        S26, S2, S6
5BA990:  ITTT NE
5BA992:  VLDRNE          S2, [R0,#0x3C]
5BA996:  VADDNE.F32      S26, S26, S2
5BA99A:  VADDNE.F32      S0, S0, S2
5BA99E:  VLDR            D16, [R4]
5BA9A2:  VSTR            D16, [SP,#0x150+var_70]
5BA9A6:  VLDR            S2, [SP,#0x150+var_70]
5BA9AA:  VLDR            S28, [SP,#0x150+var_70+4]
5BA9AE:  VSUB.F32        S20, S2, S0
5BA9B2:  VSUB.F32        S22, S28, S26
5BA9B6:  VADD.F32        S24, S0, S2
5BA9BA:  VDIV.F32        S4, S20, S16
5BA9BE:  VADD.F32        S4, S4, S18
5BA9C2:  VMOV            R0, S4; x
5BA9C6:  BLX.W           floorf
5BA9CA:  VDIV.F32        S0, S22, S16
5BA9CE:  MOV             R5, R0
5BA9D0:  VDIV.F32        S2, S24, S16
5BA9D4:  VADD.F32        S0, S0, S18
5BA9D8:  VADD.F32        S2, S2, S18
5BA9DC:  VADD.F32        S26, S26, S28
5BA9E0:  VMOV            R0, S0; x
5BA9E4:  VMOV            R6, S2
5BA9E8:  BLX.W           floorf
5BA9EC:  VMOV            S28, R0
5BA9F0:  MOV             R0, R6; x
5BA9F2:  VMOV            S30, R5
5BA9F6:  BLX.W           floorf
5BA9FA:  VDIV.F32        S0, S26, S16
5BA9FE:  MOV             R5, R0
5BAA00:  VADD.F32        S0, S0, S18
5BAA04:  VMOV            R0, S0; x
5BAA08:  BLX.W           floorf
5BAA0C:  VMOV            S2, R0
5BAA10:  LDR             R1, [R4,#8]
5BAA12:  STR             R1, [SP,#0x150+var_68]
5BAA14:  VCVT.S32.F32    S4, S30
5BAA18:  VCVT.S32.F32    S2, S2
5BAA1C:  LDR             R0, [SP,#0x150+var_DC]
5BAA1E:  VMOV            S0, R5
5BAA22:  MOVS            R1, #0x77 ; 'w'
5BAA24:  LDRH            R0, [R0]; this
5BAA26:  VCVT.S32.F32    S0, S0
5BAA2A:  VCVT.S32.F32    S6, S28
5BAA2E:  VMOV            R2, S2
5BAA32:  CMP             R2, #0x77 ; 'w'
5BAA34:  IT GE
5BAA36:  MOVGE           R2, R1
5BAA38:  STR             R2, [SP,#0x150+var_B0]
5BAA3A:  VMOV            R2, S0
5BAA3E:  CMP             R2, #0x77 ; 'w'
5BAA40:  IT GE
5BAA42:  MOVGE           R2, R1
5BAA44:  MOVS            R1, #0
5BAA46:  STR             R2, [SP,#0x150+var_78]
5BAA48:  VMOV            R2, S6
5BAA4C:  CMP             R2, #0
5BAA4E:  IT LE
5BAA50:  MOVLE           R2, R1
5BAA52:  STR             R2, [SP,#0x150+var_A8]
5BAA54:  VMOV            R2, S4
5BAA58:  CMP             R2, #0
5BAA5A:  IT LE
5BAA5C:  MOVLE           R2, R1
5BAA5E:  MOVW            R1, #0xFFFF
5BAA62:  CMP             R0, R1
5BAA64:  STR             R2, [SP,#0x150+var_AC]
5BAA66:  BEQ             loc_5BAA6C
5BAA68:  ADDS            R0, #1
5BAA6A:  B               loc_5BAA72
5BAA6C:  BLX.W           j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
5BAA70:  MOVS            R0, #1
5BAA72:  LDR             R1, [SP,#0x150+var_E0]
5BAA74:  STRH            R0, [R1]
5BAA76:  LDR             R0, [SP,#0x150+var_D4]
5BAA78:  CBZ             R0, loc_5BAA8E
5BAA7A:  MOVS            R0, #0xFF
5BAA7C:  MOVS            R1, #0xFF
5BAA7E:  STR             R0, [SP,#0x150+var_84]
5BAA80:  MOVS            R0, #0xFF
5BAA82:  STR             R1, [SP,#0x150+var_8C]
5BAA84:  MOVS            R1, #0xFF
5BAA86:  STR             R0, [SP,#0x150+var_80]
5BAA88:  MOVS            R0, #0xFF
5BAA8A:  STR             R1, [SP,#0x150+var_88]
5BAA8C:  B               loc_5BAAAE
5BAA8E:  LDR             R0, [SP,#0x150+var_108]
5BAA90:  MLA.W           R1, R9, R8, R0
5BAA94:  LDRSH.W         R0, [R1,#0x2C]
5BAA98:  LDRB.W          R2, [R1,#0x31]
5BAA9C:  STR             R2, [SP,#0x150+var_88]
5BAA9E:  LDRB.W          R2, [R1,#0x30]
5BAAA2:  LDRB.W          R1, [R1,#0x2F]
5BAAA6:  STR             R1, [SP,#0x150+var_8C]
5BAAA8:  UXTH            R1, R0
5BAAAA:  STR             R2, [SP,#0x150+var_84]
5BAAAC:  STR             R1, [SP,#0x150+var_80]
5BAAAE:  LDR             R1, [SP,#0x150+var_7C]
5BAAB0:  MOVS            R3, #0x34 ; '4'
5BAAB2:  LDR             R1, [R1]
5BAAB4:  CBZ             R1, loc_5BAADC
5BAAB6:  LDR             R2, [SP,#0x150+var_E4]
5BAAB8:  LDR.W           R2, [R2,#0xA8]
5BAABC:  CMP             R2, #2
5BAABE:  BNE             loc_5BAADC
5BAAC0:  LDRSB.W         R1, [R1,#5]
5BAAC4:  UXTH            R0, R0
5BAAC6:  MULS            R0, R1
5BAAC8:  MOV             R1, #0x51EB851F
5BAAD0:  SMMUL.W         R0, R0, R1
5BAAD4:  ASRS            R1, R0, #5
5BAAD6:  ADD.W           R0, R1, R0,LSR#31
5BAADA:  STR             R0, [SP,#0x150+var_80]
5BAADC:  LDR             R0, [SP,#0x150+var_B0]
5BAADE:  LDR             R1, [SP,#0x150+var_A8]
5BAAE0:  CMP             R1, R0
5BAAE2:  BGT.W           loc_5BACA6
5BAAE6:  LDR             R0, [SP,#0x150+var_7C]
5BAAE8:  SUB.W           R1, R0, #0x10
5BAAEC:  STR             R1, [SP,#0x150+var_90]
5BAAEE:  SUB.W           R1, R0, #0x18
5BAAF2:  STR             R1, [SP,#0x150+var_94]
5BAAF4:  SUB.W           R1, R0, #0x14
5BAAF8:  STR             R1, [SP,#0x150+var_98]
5BAAFA:  LDR             R1, [SP,#0x150+var_B4]
5BAAFC:  SUB.W           R5, R0, #0x1C
5BAB00:  LDR             R0, [SP,#0x150+var_104]
5BAB02:  MLA.W           R0, R1, R3, R0
5BAB06:  ADD.W           R9, R0, #0x20 ; ' '
5BAB0A:  ADD.W           R10, R0, #0x1C
5BAB0E:  ADDS            R0, #0x32 ; '2'
5BAB10:  STR             R0, [SP,#0x150+var_A4]
5BAB12:  LDR             R0, [SP,#0x150+var_78]
5BAB14:  LDR             R1, [SP,#0x150+var_AC]
5BAB16:  CMP             R1, R0
5BAB18:  BGT.W           loc_5BAC98
5BAB1C:  LDR             R1, [SP,#0x150+var_A8]
5BAB1E:  MOVS            R0, #0x77 ; 'w'
5BAB20:  CMP             R1, #0x77 ; 'w'
5BAB22:  IT LT
5BAB24:  MOVLT           R0, R1
5BAB26:  RSB.W           R0, R0, R0,LSL#4
5BAB2A:  MOV.W           R8, R0,LSL#3
5BAB2E:  LDR             R0, [SP,#0x150+var_AC]
5BAB30:  MOV             R11, R0
5BAB32:  CMP.W           R11, #0x77 ; 'w'
5BAB36:  MOV.W           R0, #0x77 ; 'w'
5BAB3A:  IT LT
5BAB3C:  MOVLT           R0, R11
5BAB3E:  LDR             R1, [SP,#0x150+var_7C]
5BAB40:  ADD             R0, R8
5BAB42:  LDR             R6, [R1]
5BAB44:  LDR             R1, [SP,#0x150+var_9C]
5BAB46:  CMP             R6, #0
5BAB48:  ADD.W           R0, R1, R0,LSL#3; int
5BAB4C:  BEQ             loc_5BABC4
5BAB4E:  LDR             R1, [SP,#0x150+var_94]
5BAB50:  VMOV            R2, S22; int
5BAB54:  VMOV            R3, S24; int
5BAB58:  MOVS            R4, #0
5BAB5A:  VLDR            S0, [R5]
5BAB5E:  VLDR            S2, [R1]
5BAB62:  LDR             R1, [SP,#0x150+var_98]
5BAB64:  VLDR            S8, [R10]
5BAB68:  VLDR            S10, [R9]
5BAB6C:  VLDR            S4, [R1]
5BAB70:  LDR             R1, [SP,#0x150+var_90]
5BAB72:  VLDR            S6, [R1]
5BAB76:  VMOV            R1, S20; int
5BAB7A:  STRD.W          R4, R6, [SP,#0x150+var_120]; int
5BAB7E:  SUB.W           R6, R7, #-var_71
5BAB82:  STR             R6, [SP,#0x150+var_118]; int
5BAB84:  LDR             R6, [SP,#0x150+var_80]
5BAB86:  VSTR            S8, [SP,#0x150+var_128]
5BAB8A:  VSTR            S10, [SP,#0x150+var_124]
5BAB8E:  SXTH            R6, R6
5BAB90:  STR             R6, [SP,#0x150+var_138]; int
5BAB92:  LDR             R6, [SP,#0x150+var_8C]
5BAB94:  STR             R6, [SP,#0x150+var_134]; int
5BAB96:  LDR             R6, [SP,#0x150+var_84]
5BAB98:  STR             R6, [SP,#0x150+var_130]; int
5BAB9A:  LDR             R6, [SP,#0x150+var_88]
5BAB9C:  STR             R6, [SP,#0x150+var_12C]; int
5BAB9E:  ADD             R6, SP, #0x150+var_70
5BABA0:  VSTR            S0, [SP,#0x150+var_148]
5BABA4:  VSTR            S2, [SP,#0x150+var_144]
5BABA8:  VSTR            S4, [SP,#0x150+var_140]
5BABAC:  VSTR            S6, [SP,#0x150+var_13C]
5BABB0:  STR             R6, [SP,#0x150+var_14C]; int
5BABB2:  VSTR            S26, [SP,#0x150+var_150]
5BABB6:  BLX.W           j__ZN8CShadows28CastRealTimeShadowSectorListER8CPtrListffffP7CVectorffffshhhffPP10CPolyBunchP15CRealTimeShadowPh; CShadows::CastRealTimeShadowSectorList(CPtrList &,float,float,float,float,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,CPolyBunch **,CRealTimeShadow *,uchar *)
5BABBA:  B               loc_5BAC8C
5BABBC:  DCFS 50.0
5BABC0:  DCFS 60.0
5BABC4:  LDR             R1, [SP,#0x150+var_A0]
5BABC6:  LDR             R2, [SP,#0x150+var_94]
5BABC8:  VLDR            S8, [R9]
5BABCC:  LDRB            R6, [R1]
5BABCE:  LDR             R1, [SP,#0x150+var_90]
5BABD0:  VLDR            S10, [R10]
5BABD4:  VLDR            S4, [R2]
5BABD8:  VLDR            S0, [R1]
5BABDC:  LDR             R1, [SP,#0x150+var_98]
5BABDE:  VLDR            S6, [R5]
5BABE2:  VLDR            S2, [R1]
5BABE6:  LDR             R1, [SP,#0x150+var_A4]
5BABE8:  LDRB            R1, [R1]
5BABEA:  LSLS            R1, R1, #0x1D
5BABEC:  BMI             loc_5BAC3E
5BABEE:  VMOV            R1, S20; int
5BABF2:  MOVS            R4, #0
5BABF4:  VMOV            R2, S22; int
5BABF8:  STR             R4, [SP,#0x150+var_120]; int
5BABFA:  VMOV            R3, S24; int
5BABFE:  SUB.W           R4, R7, #-var_71
5BAC02:  STRD.W          R4, R6, [SP,#0x150+var_11C]; int
5BAC06:  LDR             R6, [SP,#0x150+var_80]
5BAC08:  VSTR            S10, [SP,#0x150+var_128]
5BAC0C:  VSTR            S8, [SP,#0x150+var_124]
5BAC10:  SXTH            R6, R6
5BAC12:  STR             R6, [SP,#0x150+var_138]; int
5BAC14:  LDR             R6, [SP,#0x150+var_8C]
5BAC16:  STR             R6, [SP,#0x150+var_134]; int
5BAC18:  LDR             R6, [SP,#0x150+var_84]
5BAC1A:  STR             R6, [SP,#0x150+var_130]; int
5BAC1C:  LDR             R6, [SP,#0x150+var_88]
5BAC1E:  STR             R6, [SP,#0x150+var_12C]; int
5BAC20:  ADD             R6, SP, #0x150+var_70
5BAC22:  VSTR            S6, [SP,#0x150+var_148]
5BAC26:  VSTR            S4, [SP,#0x150+var_144]
5BAC2A:  VSTR            S2, [SP,#0x150+var_140]
5BAC2E:  VSTR            S0, [SP,#0x150+var_13C]
5BAC32:  STR             R6, [SP,#0x150+var_14C]; int
5BAC34:  VSTR            S26, [SP,#0x150+var_150]
5BAC38:  BLX.W           j__ZN8CShadows20CastShadowSectorListER8CPtrListffffP7CVectorffffshhhffPP10CPolyBunchPhi; CShadows::CastShadowSectorList(CPtrList &,float,float,float,float,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,CPolyBunch **,uchar *,int)
5BAC3C:  B               loc_5BAC8C
5BAC3E:  VMOV            R1, S20; int
5BAC42:  MOVS            R4, #0
5BAC44:  VMOV            R2, S22; int
5BAC48:  STR             R4, [SP,#0x150+var_120]; int
5BAC4A:  VMOV            R3, S24; int
5BAC4E:  SUB.W           R4, R7, #-var_71
5BAC52:  STRD.W          R4, R6, [SP,#0x150+var_11C]; int
5BAC56:  LDR             R6, [SP,#0x150+var_80]
5BAC58:  VSTR            S10, [SP,#0x150+var_128]
5BAC5C:  VSTR            S8, [SP,#0x150+var_124]
5BAC60:  SXTH            R6, R6
5BAC62:  STR             R6, [SP,#0x150+var_138]; int
5BAC64:  LDR             R6, [SP,#0x150+var_8C]
5BAC66:  STR             R6, [SP,#0x150+var_134]; int
5BAC68:  LDR             R6, [SP,#0x150+var_84]
5BAC6A:  STR             R6, [SP,#0x150+var_130]; int
5BAC6C:  LDR             R6, [SP,#0x150+var_88]
5BAC6E:  STR             R6, [SP,#0x150+var_12C]; int
5BAC70:  ADD             R6, SP, #0x150+var_70
5BAC72:  VSTR            S6, [SP,#0x150+var_148]
5BAC76:  VSTR            S4, [SP,#0x150+var_144]
5BAC7A:  VSTR            S2, [SP,#0x150+var_140]
5BAC7E:  VSTR            S0, [SP,#0x150+var_13C]
5BAC82:  STR             R6, [SP,#0x150+var_14C]; int
5BAC84:  VSTR            S26, [SP,#0x150+var_150]
5BAC88:  BLX.W           j__ZN8CShadows26CastPlayerShadowSectorListER8CPtrListffffP7CVectorffffshhhffPP10CPolyBunchPhi; CShadows::CastPlayerShadowSectorList(CPtrList &,float,float,float,float,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,CPolyBunch **,uchar *,int)
5BAC8C:  LDR             R1, [SP,#0x150+var_78]
5BAC8E:  ADD.W           R0, R11, #1
5BAC92:  CMP             R11, R1
5BAC94:  BLT.W           loc_5BAB30
5BAC98:  LDR             R2, [SP,#0x150+var_A8]
5BAC9A:  LDR             R1, [SP,#0x150+var_B0]
5BAC9C:  ADDS            R0, R2, #1
5BAC9E:  STR             R0, [SP,#0x150+var_A8]
5BACA0:  CMP             R2, R1
5BACA2:  BLT.W           loc_5BAB12
5BACA6:  LDR             R3, [SP,#0x150+var_B4]
5BACA8:  MOVS            R5, #0x34 ; '4'
5BACAA:  LDR             R0, [SP,#0x150+var_CC]
5BACAC:  MLA.W           R0, R3, R5, R0
5BACB0:  LDRB.W          R1, [R0,#0x32]
5BACB4:  ORR.W           R1, R1, #2
5BACB8:  STRB.W          R1, [R0,#0x32]
5BACBC:  LDR             R0, [SP,#0x150+var_D0]
5BACBE:  LDRH            R0, [R0]; this
5BACC0:  LDRD.W          R8, R9, [SP,#0x150+var_C8]
5BACC4:  LDRD.W          R10, R6, [SP,#0x150+var_BC]
5BACC8:  ADDS            R3, #1
5BACCA:  UXTH            R1, R0
5BACCC:  CMP             R3, R1
5BACCE:  BLT.W           loc_5BA926
5BACD2:  BLX.W           j__ZN12RenderBuffer19RenderStuffInBufferEv; RenderBuffer::RenderStuffInBuffer(void)
5BACD6:  LDR             R0, [SP,#0x150+var_F4]
5BACD8:  LDR             R4, [SP,#0x150+var_E8]
5BACDA:  LDRH            R0, [R0]
5BACDC:  ADDS            R6, #1
5BACDE:  UXTH            R1, R0
5BACE0:  CMP             R6, R1
5BACE2:  BLT.W           loc_5BA8AE
5BACE6:  MOVS            R0, #0xC
5BACE8:  MOVS            R1, #0
5BACEA:  MOVS            R4, #0
5BACEC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BACF0:  MOVS            R0, #8
5BACF2:  MOVS            R1, #1
5BACF4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BACF8:  MOVS            R0, #6
5BACFA:  MOVS            R1, #1
5BACFC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BAD00:  MOVS            R0, #2
5BAD02:  MOVS            R1, #1
5BAD04:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BAD08:  MOVS            R0, #0x14
5BAD0A:  MOVS            R1, #2
5BAD0C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BAD10:  LDR             R0, [SP,#0x150+var_10C]
5BAD12:  CBZ             R0, loc_5BAD1C
5BAD14:  LDR             R0, =(_ZN8CShadows25ShadowsStoredToBeRenderedE_ptr - 0x5BAD1A)
5BAD16:  ADD             R0, PC; _ZN8CShadows25ShadowsStoredToBeRenderedE_ptr
5BAD18:  LDR             R0, [R0]; CShadows::ShadowsStoredToBeRendered ...
5BAD1A:  STRH            R4, [R0]; CShadows::ShadowsStoredToBeRendered
5BAD1C:  ADD             SP, SP, #0xF0
5BAD1E:  VPOP            {D8-D15}
5BAD22:  ADD             SP, SP, #4
5BAD24:  POP.W           {R8-R11}
5BAD28:  POP             {R4-R7,PC}
