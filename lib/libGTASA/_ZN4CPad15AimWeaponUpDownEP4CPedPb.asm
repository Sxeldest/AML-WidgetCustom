; =========================================================
; Game Engine Function: _ZN4CPad15AimWeaponUpDownEP4CPedPb
; Address            : 0x3FC730 - 0x3FC8D0
; =========================================================

3FC730:  PUSH            {R4-R7,LR}
3FC732:  ADD             R7, SP, #0xC
3FC734:  PUSH.W          {R11}
3FC738:  SUB             SP, SP, #0x10
3FC73A:  LDRH.W          R0, [R0,#0x110]
3FC73E:  MOV             R5, R2
3FC740:  MOV             R4, R1
3FC742:  CBZ             R0, loc_3FC74E
3FC744:  MOVS            R0, #0
3FC746:  ADD             SP, SP, #0x10
3FC748:  POP.W           {R11}
3FC74C:  POP             {R4-R7,PC}
3FC74E:  MOV.W           R0, #0xFFFFFFFF; int
3FC752:  MOVS            R1, #0; bool
3FC754:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FC758:  MOV             R6, R0
3FC75A:  CBZ             R6, loc_3FC766
3FC75C:  MOV             R0, R6; this
3FC75E:  MOV             R1, R4; CPed *
3FC760:  BLX             j__ZNK8CVehicle11IsPassengerEPK4CPed; CVehicle::IsPassenger(CPed const*)
3FC764:  CBZ             R0, loc_3FC7D6
3FC766:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FC76A:  CMP             R0, #1
3FC76C:  BNE             loc_3FC782
3FC76E:  MOV.W           R0, #0xFFFFFFFF; int
3FC772:  MOVS            R1, #0; bool
3FC774:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3FC778:  CBZ             R0, loc_3FC782
3FC77A:  LDRB.W          R0, [R0,#0x392]
3FC77E:  LSLS            R0, R0, #0x1E
3FC780:  BMI             loc_3FC744
3FC782:  MOVS            R0, #0; this
3FC784:  STRD.W          R0, R0, [SP,#0x20+var_18]
3FC788:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FC78C:  CBZ             R0, loc_3FC796
3FC78E:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FC792:  CMP             R0, #2
3FC794:  BNE             loc_3FC7FA
3FC796:  ADD             R1, SP, #0x20+var_18
3FC798:  MOVS            R0, #0xAF
3FC79A:  MOVS            R2, #1
3FC79C:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC7A0:  CMP             R0, #1
3FC7A2:  BNE             loc_3FC744
3FC7A4:  CBZ             R5, loc_3FC7B6
3FC7A6:  MOVS            R0, #0x1D
3FC7A8:  MOVS            R1, #0
3FC7AA:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FC7AE:  CMP             R0, #0
3FC7B0:  ITT EQ
3FC7B2:  MOVEQ           R0, #1
3FC7B4:  STRBEQ          R0, [R5]
3FC7B6:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3FC7C0)
3FC7B8:  VLDR            S0, [SP,#0x20+var_14]
3FC7BC:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3FC7BE:  VNEG.F32        S2, S0
3FC7C2:  LDR             R0, [R0]; MobileSettings::settings ...
3FC7C4:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3FC7C8:  CMP             R0, #0
3FC7CA:  IT NE
3FC7CC:  VMOVNE.F32      S2, S0
3FC7D0:  VCVT.S32.F32    S0, S2
3FC7D4:  B               loc_3FC8CA
3FC7D6:  LDR.W           R0, [R6,#0x5A4]
3FC7DA:  SUBS            R0, #3
3FC7DC:  CMP             R0, #2
3FC7DE:  BCC             loc_3FC744
3FC7E0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3FC7E6)
3FC7E2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3FC7E4:  LDR             R0, [R0]; CWorld::Players ...
3FC7E6:  LDR.W           R0, [R0,#(dword_96B74C - 0x96B69C)]
3FC7EA:  CMP             R0, #0
3FC7EC:  BEQ             loc_3FC766
3FC7EE:  LDR.W           R0, [R0,#0x5A4]
3FC7F2:  SUBS            R0, #3
3FC7F4:  CMP             R0, #2
3FC7F6:  BCC             loc_3FC744
3FC7F8:  B               loc_3FC766
3FC7FA:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
3FC7FE:  CMP             R0, #1
3FC800:  BNE             loc_3FC744
3FC802:  MOVS            R0, #0x1D
3FC804:  MOVS            R1, #0
3FC806:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FC80A:  CMP             R0, #1
3FC80C:  BNE             loc_3FC818
3FC80E:  ADD             R1, SP, #0x20+var_18
3FC810:  MOVS            R0, #0xAF
3FC812:  MOVS            R2, #1
3FC814:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC818:  MOVS            R0, #0x24 ; '$'
3FC81A:  MOVS            R1, #0
3FC81C:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FC820:  CBNZ            R0, loc_3FC82E
3FC822:  MOVS            R0, #1
3FC824:  MOVS            R1, #0
3FC826:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FC82A:  CMP             R0, #1
3FC82C:  BNE             loc_3FC85C
3FC82E:  MOV             R0, SP; this
3FC830:  MOV             R2, R4
3FC832:  BLX             j__ZN4CPad20GetFreeAimAssistanceEP4CPed; CPad::GetFreeAimAssistance(CPed *)
3FC836:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3FC840)
3FC838:  VLDR            S0, [SP,#0x20+var_1C]
3FC83C:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3FC83E:  VNEG.F32        S2, S0
3FC842:  LDR             R0, [R0]; MobileSettings::settings ...
3FC844:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3FC848:  CMP             R0, #0
3FC84A:  IT NE
3FC84C:  VMOVNE.F32      S0, S2
3FC850:  VLDR            S2, [SP,#0x20+var_14]
3FC854:  VADD.F32        S0, S2, S0
3FC858:  VSTR            S0, [SP,#0x20+var_14]
3FC85C:  LDR             R0, =(TheCamera_ptr - 0x3FC862)
3FC85E:  ADD             R0, PC; TheCamera_ptr
3FC860:  LDR             R0, [R0]; TheCamera
3FC862:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3FC866:  ADD.W           R1, R1, R1,LSL#5
3FC86A:  ADD.W           R0, R0, R1,LSL#4
3FC86E:  LDRH.W          R0, [R0,#0x17E]
3FC872:  CMP             R0, #0x41 ; 'A'
3FC874:  IT NE
3FC876:  CMPNE           R0, #0x37 ; '7'
3FC878:  BNE             loc_3FC890
3FC87A:  MOVS            R0, #0x1F
3FC87C:  MOVS            R1, #0
3FC87E:  BLX             j__ZN4CHID9IsPressedE10HIDMappingPf; CHID::IsPressed(HIDMapping,float *)
3FC882:  CMP             R0, #1
3FC884:  BNE             loc_3FC890
3FC886:  ADD             R1, SP, #0x20+var_18
3FC888:  MOVS            R0, #0xA7
3FC88A:  MOVS            R2, #1
3FC88C:  BLX             j__ZN15CTouchInterface9IsTouchedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsTouched(CTouchInterface::WidgetIDs,CVector2D *,int)
3FC890:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x3FC89A)
3FC892:  VLDR            S2, =100.0
3FC896:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
3FC898:  VLDR            S6, =0.3
3FC89C:  LDR             R0, [R0]; MobileSettings::settings ...
3FC89E:  VLDR            S0, [R0,#0x348]
3FC8A2:  VCVT.F32.S32    S0, S0
3FC8A6:  LDR.W           R0, [R0,#(dword_6E05DC - 0x6E03F4)]
3FC8AA:  CMP             R0, #0
3FC8AC:  VDIV.F32        S0, S0, S2
3FC8B0:  VADD.F32        S0, S0, S6
3FC8B4:  VLDR            S2, [SP,#0x20+var_14]
3FC8B8:  VNEG.F32        S4, S2
3FC8BC:  IT NE
3FC8BE:  VMOVNE.F32      S4, S2
3FC8C2:  VMUL.F32        S0, S4, S0
3FC8C6:  VCVT.S32.F32    S0, S0
3FC8CA:  VMOV            R0, S0
3FC8CE:  B               loc_3FC746
