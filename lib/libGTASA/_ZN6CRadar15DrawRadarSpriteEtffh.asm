; =========================================================
; Game Engine Function: _ZN6CRadar15DrawRadarSpriteEtffh
; Address            : 0x43F764 - 0x43F962
; =========================================================

43F764:  PUSH            {R4-R7,LR}
43F766:  ADD             R7, SP, #0xC
43F768:  PUSH.W          {R11}
43F76C:  VPUSH           {D8-D11}
43F770:  SUB             SP, SP, #0x18
43F772:  MOV             R4, R0
43F774:  LDR             R0, =(gMobileMenu_ptr - 0x43F780)
43F776:  VMOV            S18, R2
43F77A:  MOV             R5, R3
43F77C:  ADD             R0, PC; gMobileMenu_ptr
43F77E:  VMOV            S16, R1
43F782:  LDR             R0, [R0]; gMobileMenu
43F784:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
43F788:  CMP             R0, #0
43F78A:  BEQ             loc_43F84E
43F78C:  LDR             R0, =(RsGlobal_ptr - 0x43F796)
43F78E:  VLDR            S22, =448.0
43F792:  ADD             R0, PC; RsGlobal_ptr
43F794:  LDR             R0, [R0]; RsGlobal
43F796:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
43F798:  VMOV            S0, R0; this
43F79C:  VCVT.F32.S32    S0, S0
43F7A0:  VDIV.F32        S0, S0, S22
43F7A4:  VMUL.F32        S20, S0, S18
43F7A8:  VMUL.F32        S16, S0, S16
43F7AC:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
43F7B0:  CMP             R0, #1
43F7B2:  BNE             loc_43F7BA
43F7B4:  VMOV.F32        S18, S20
43F7B8:  B               loc_43F84E
43F7BA:  LDR             R0, =(gMobileMenu_ptr - 0x43F7C0)
43F7BC:  ADD             R0, PC; gMobileMenu_ptr
43F7BE:  LDR             R0, [R0]; gMobileMenu
43F7C0:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
43F7C2:  CMP             R1, #0
43F7C4:  ITT EQ
43F7C6:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
43F7C8:  CMPEQ           R0, #0
43F7CA:  BNE             loc_43F7D2
43F7CC:  VLDR            S0, =140.0
43F7D0:  B               loc_43F7E4
43F7D2:  LDR             R0, =(gMobileMenu_ptr - 0x43F7D8)
43F7D4:  ADD             R0, PC; gMobileMenu_ptr
43F7D6:  LDR             R0, [R0]; gMobileMenu
43F7D8:  VLDR            S0, [R0,#0x58]
43F7DC:  VCVT.S32.F32    S0, S0
43F7E0:  VCVT.F32.S32    S0, S0
43F7E4:  LDR             R0, =(RsGlobal_ptr - 0x43F7EE)
43F7E6:  VLDR            S6, =640.0
43F7EA:  ADD             R0, PC; RsGlobal_ptr
43F7EC:  LDR             R0, [R0]; RsGlobal
43F7EE:  VLDR            S4, [R0,#8]
43F7F2:  VLDR            S2, [R0,#4]
43F7F6:  VCVT.F32.S32    S4, S4
43F7FA:  LDR             R0, =(gMobileMenu_ptr - 0x43F804)
43F7FC:  VCVT.F32.S32    S2, S2
43F800:  ADD             R0, PC; gMobileMenu_ptr
43F802:  LDR             R0, [R0]; gMobileMenu
43F804:  VDIV.F32        S4, S4, S22
43F808:  VDIV.F32        S2, S2, S6
43F80C:  VLDR            S8, [R0,#0x60]
43F810:  VLDR            S6, [R0,#0x5C]
43F814:  VADD.F32        S10, S0, S8
43F818:  VSUB.F32        S8, S8, S0
43F81C:  VSUB.F32        S12, S6, S0
43F820:  VADD.F32        S0, S0, S6
43F824:  VMUL.F32        S18, S10, S4
43F828:  VMUL.F32        S4, S8, S4
43F82C:  VMUL.F32        S6, S12, S2
43F830:  VMUL.F32        S2, S0, S2
43F834:  VMAX.F32        D0, D10, D2
43F838:  VMAX.F32        D16, D8, D3
43F83C:  VCMPE.F32       S0, S18
43F840:  VMRS            APSR_nzcv, FPSCR
43F844:  VMIN.F32        D8, D16, D1
43F848:  IT LE
43F84A:  VMOVLE.F32      S18, S0
43F84E:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43F854)
43F850:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43F852:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
43F854:  LDR.W           R6, [R0,#(dword_6F3A18 - 0x6F3794)]
43F858:  CMP             R6, #0
43F85A:  BEQ.W           def_43F87E; jumptable 0043F87E default case, cases 5-24,26-35,37-40,42,43,45-51
43F85E:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x43F864)
43F860:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
43F862:  LDR             R0, [R0]; CGame::currArea ...
43F864:  LDR             R0, [R0]; CGame::currArea
43F866:  CBNZ            R0, loc_43F878
43F868:  MOV.W           R0, #0xFFFFFFFF; int
43F86C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
43F870:  LDRB.W          R0, [R0,#0x33]
43F874:  CMP             R0, #0
43F876:  BEQ             loc_43F8B8; jumptable 0043F87E cases 0-4,25,36,41,44,52
43F878:  CMP             R4, #0x34 ; '4'; switch 53 cases
43F87A:  BHI.W           def_43F87E; jumptable 0043F87E default case, cases 5-24,26-35,37-40,42,43,45-51
43F87E:  TBB.W           [PC,R4]; switch jump
43F882:  DCB 0x1B; jump table for switch statement
43F883:  DCB 0x1B
43F884:  DCB 0x1B
43F885:  DCB 0x1B
43F886:  DCB 0x1B
43F887:  DCB 0x6A
43F888:  DCB 0x6A
43F889:  DCB 0x6A
43F88A:  DCB 0x6A
43F88B:  DCB 0x6A
43F88C:  DCB 0x6A
43F88D:  DCB 0x6A
43F88E:  DCB 0x6A
43F88F:  DCB 0x6A
43F890:  DCB 0x6A
43F891:  DCB 0x6A
43F892:  DCB 0x6A
43F893:  DCB 0x6A
43F894:  DCB 0x6A
43F895:  DCB 0x6A
43F896:  DCB 0x6A
43F897:  DCB 0x6A
43F898:  DCB 0x6A
43F899:  DCB 0x6A
43F89A:  DCB 0x6A
43F89B:  DCB 0x1B
43F89C:  DCB 0x6A
43F89D:  DCB 0x6A
43F89E:  DCB 0x6A
43F89F:  DCB 0x6A
43F8A0:  DCB 0x6A
43F8A1:  DCB 0x6A
43F8A2:  DCB 0x6A
43F8A3:  DCB 0x6A
43F8A4:  DCB 0x6A
43F8A5:  DCB 0x6A
43F8A6:  DCB 0x1B
43F8A7:  DCB 0x6A
43F8A8:  DCB 0x6A
43F8A9:  DCB 0x6A
43F8AA:  DCB 0x6A
43F8AB:  DCB 0x1B
43F8AC:  DCB 0x6A
43F8AD:  DCB 0x6A
43F8AE:  DCB 0x1B
43F8AF:  DCB 0x6A
43F8B0:  DCB 0x6A
43F8B1:  DCB 0x6A
43F8B2:  DCB 0x6A
43F8B3:  DCB 0x6A
43F8B4:  DCB 0x6A
43F8B5:  DCB 0x6A
43F8B6:  DCB 0x1B
43F8B7:  ALIGN 2
43F8B8:  VLDR            S0, [R6,#0x20]; jumptable 0043F87E cases 0-4,25,36,41,44,52
43F8BC:  MOVS            R1, #0xFF; unsigned __int8
43F8BE:  VLDR            S2, [R6,#0x28]
43F8C2:  MOVS            R2, #0xFF; unsigned __int8
43F8C4:  STR             R5, [SP,#0x48+var_48]; unsigned __int8
43F8C6:  ADD             R5, SP, #0x48+var_44
43F8C8:  VSUB.F32        S0, S2, S0
43F8CC:  VLDR            S2, =0.1
43F8D0:  MOV             R0, R5; this
43F8D2:  MOVS            R3, #0xFF; unsigned __int8
43F8D4:  VABS.F32        S0, S0
43F8D8:  VMUL.F32        S0, S0, S2
43F8DC:  VSUB.F32        S2, S18, S0
43F8E0:  VSUB.F32        S4, S16, S0
43F8E4:  VADD.F32        S6, S16, S0
43F8E8:  VADD.F32        S0, S18, S0
43F8EC:  VSTR            S2, [SP,#0x48+var_34]
43F8F0:  VSTR            S4, [SP,#0x48+var_40]
43F8F4:  VSTR            S6, [SP,#0x48+var_38]
43F8F8:  VSTR            S0, [SP,#0x48+var_3C]
43F8FC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43F900:  LDR             R0, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x43F90A)
43F902:  ADD             R1, SP, #0x48+var_40
43F904:  MOV             R2, R5
43F906:  ADD             R0, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
43F908:  LDR             R0, [R0]; CRadar::RadarBlipSprites ...
43F90A:  ADD.W           R0, R0, R4,LSL#2
43F90E:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
43F912:  LDR             R0, =(gMobileMenu_ptr - 0x43F918)
43F914:  ADD             R0, PC; gMobileMenu_ptr
43F916:  LDR             R0, [R0]; gMobileMenu
43F918:  LDRB.W          R0, [R0,#(byte_6E00D8 - 0x6E006C)]
43F91C:  CMP             R0, #0
43F91E:  BEQ             def_43F87E; jumptable 0043F87E default case, cases 5-24,26-35,37-40,42,43,45-51
43F920:  LDR             R2, =(_ZN6CRadar13MapLegendListE_ptr - 0x43F92C)
43F922:  SXTB            R0, R4
43F924:  MOVS            R1, #0
43F926:  MOVS            R3, #0
43F928:  ADD             R2, PC; _ZN6CRadar13MapLegendListE_ptr
43F92A:  LDR             R2, [R2]; CRadar::MapLegendList ...
43F92C:  LDRSH.W         R6, [R2,R1,LSL#1]
43F930:  ADDS            R1, #1
43F932:  CMP             R0, R6
43F934:  IT EQ
43F936:  MOVEQ           R3, #1
43F938:  CMP             R1, #0xFA
43F93A:  BNE             loc_43F92C
43F93C:  LSLS            R1, R3, #0x18
43F93E:  BNE             def_43F87E; jumptable 0043F87E default case, cases 5-24,26-35,37-40,42,43,45-51
43F940:  LDR             R1, =(_ZN6CRadar16MapLegendCounterE_ptr - 0x43F948)
43F942:  LDR             R2, =(_ZN6CRadar13MapLegendListE_ptr - 0x43F94A)
43F944:  ADD             R1, PC; _ZN6CRadar16MapLegendCounterE_ptr
43F946:  ADD             R2, PC; _ZN6CRadar13MapLegendListE_ptr
43F948:  LDR             R1, [R1]; CRadar::MapLegendCounter ...
43F94A:  LDR             R2, [R2]; CRadar::MapLegendList ...
43F94C:  LDRH            R3, [R1]; CRadar::MapLegendCounter
43F94E:  STRH.W          R0, [R2,R3,LSL#1]
43F952:  ADDS            R0, R3, #1
43F954:  STRH            R0, [R1]; CRadar::MapLegendCounter
43F956:  ADD             SP, SP, #0x18; jumptable 0043F87E default case, cases 5-24,26-35,37-40,42,43,45-51
43F958:  VPOP            {D8-D11}
43F95C:  POP.W           {R11}
43F960:  POP             {R4-R7,PC}
