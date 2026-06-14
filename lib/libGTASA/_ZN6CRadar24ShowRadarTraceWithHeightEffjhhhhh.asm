; =========================================================
; Game Engine Function: _ZN6CRadar24ShowRadarTraceWithHeightEffjhhhhh
; Address            : 0x44162C - 0x4419CE
; =========================================================

44162C:  PUSH            {R4-R7,LR}
44162E:  ADD             R7, SP, #0xC
441630:  PUSH.W          {R8-R11}
441634:  SUB             SP, SP, #4
441636:  VPUSH           {D8-D11}
44163A:  SUB             SP, SP, #0x28
44163C:  MOV             R5, R2
44163E:  LDR             R2, =(gMobileMenu_ptr - 0x44164A)
441640:  VMOV            S16, R0
441644:  MOV             R10, R3
441646:  ADD             R2, PC; gMobileMenu_ptr
441648:  VMOV            S18, R1
44164C:  LDR             R2, [R2]; gMobileMenu
44164E:  LDRB.W          R0, [R2,#(byte_6E00D8 - 0x6E006C)]
441652:  CMP             R0, #0
441654:  BEQ             loc_441718
441656:  LDR             R0, =(RsGlobal_ptr - 0x441660)
441658:  VLDR            S22, =448.0
44165C:  ADD             R0, PC; RsGlobal_ptr
44165E:  LDR             R0, [R0]; RsGlobal
441660:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
441662:  VMOV            S0, R0; this
441666:  VCVT.F32.S32    S0, S0
44166A:  VDIV.F32        S0, S0, S22
44166E:  VMUL.F32        S20, S0, S18
441672:  VMUL.F32        S16, S0, S16
441676:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
44167A:  CMP             R0, #1
44167C:  BNE             loc_441684
44167E:  VMOV.F32        S18, S20
441682:  B               loc_441718
441684:  LDR             R0, =(gMobileMenu_ptr - 0x44168A)
441686:  ADD             R0, PC; gMobileMenu_ptr
441688:  LDR             R0, [R0]; gMobileMenu
44168A:  LDR             R1, [R0,#(dword_6E0090 - 0x6E006C)]
44168C:  CMP             R1, #0
44168E:  ITT EQ
441690:  LDREQ           R0, [R0,#(dword_6E0098 - 0x6E006C)]
441692:  CMPEQ           R0, #0
441694:  BNE             loc_44169C
441696:  VLDR            S0, =140.0
44169A:  B               loc_4416AE
44169C:  LDR             R0, =(gMobileMenu_ptr - 0x4416A2)
44169E:  ADD             R0, PC; gMobileMenu_ptr
4416A0:  LDR             R0, [R0]; gMobileMenu
4416A2:  VLDR            S0, [R0,#0x58]
4416A6:  VCVT.S32.F32    S0, S0
4416AA:  VCVT.F32.S32    S0, S0
4416AE:  LDR             R0, =(RsGlobal_ptr - 0x4416B8)
4416B0:  VLDR            S6, =640.0
4416B4:  ADD             R0, PC; RsGlobal_ptr
4416B6:  LDR             R0, [R0]; RsGlobal
4416B8:  VLDR            S4, [R0,#8]
4416BC:  VLDR            S2, [R0,#4]
4416C0:  VCVT.F32.S32    S4, S4
4416C4:  LDR             R0, =(gMobileMenu_ptr - 0x4416CE)
4416C6:  VCVT.F32.S32    S2, S2
4416CA:  ADD             R0, PC; gMobileMenu_ptr
4416CC:  LDR             R0, [R0]; gMobileMenu
4416CE:  VDIV.F32        S4, S4, S22
4416D2:  VDIV.F32        S2, S2, S6
4416D6:  VLDR            S8, [R0,#0x60]
4416DA:  VLDR            S6, [R0,#0x5C]
4416DE:  VADD.F32        S10, S0, S8
4416E2:  VSUB.F32        S8, S8, S0
4416E6:  VSUB.F32        S12, S6, S0
4416EA:  VADD.F32        S0, S0, S6
4416EE:  VMUL.F32        S18, S10, S4
4416F2:  VMUL.F32        S4, S8, S4
4416F6:  VMUL.F32        S6, S12, S2
4416FA:  VMUL.F32        S2, S0, S2
4416FE:  VMAX.F32        D0, D10, D2
441702:  VMAX.F32        D16, D8, D3
441706:  VCMPE.F32       S0, S18
44170A:  VMRS            APSR_nzcv, FPSCR
44170E:  VMIN.F32        D8, D16, D1
441712:  IT LE
441714:  VMOVLE.F32      S18, S0
441718:  MOVS            R0, #1
44171A:  MOVS            R1, #0
44171C:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
441720:  MOVS            R0, #0xC
441722:  MOVS            R1, #1
441724:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
441728:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x44172E)
44172A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
44172C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
44172E:  LDR.W           R1, [R0,#(dword_6F3A18 - 0x6F3794)]
441732:  CMP             R1, #0
441734:  BEQ.W           loc_4419C0
441738:  LDR             R2, =(gMobileMenu_ptr - 0x441742)
44173A:  LDRD.W          R6, R0, [R7,#arg_8]
44173E:  ADD             R2, PC; gMobileMenu_ptr
441740:  LDR             R2, [R2]; gMobileMenu
441742:  LDR             R2, [R2,#(dword_6E0090 - 0x6E006C)]
441744:  CBNZ            R2, loc_44177E
441746:  LDR             R2, =(gMobileMenu_ptr - 0x441750)
441748:  VLDR            S0, =255.0
44174C:  ADD             R2, PC; gMobileMenu_ptr
44174E:  VMOV.F32        S2, S0
441752:  LDR             R2, [R2]; gMobileMenu
441754:  LDR             R2, [R2,#(dword_6E0098 - 0x6E006C)]
441756:  CMP             R2, #0
441758:  ITTT EQ
44175A:  LDRBEQ.W        R2, [R1,#0x4C]
44175E:  VMOVEQ          S2, R2
441762:  VCVTEQ.F32.U32  S2, S2
441766:  VDIV.F32        S0, S2, S0
44176A:  VMOV            S2, R6
44176E:  VCVT.F32.U32    S2, S2
441772:  VMUL.F32        S0, S0, S2
441776:  VCVT.U32.F32    S0, S0
44177A:  VMOV            R6, S0
44177E:  LDRD.W          R9, R8, [R7,#arg_0]
441782:  CMP             R0, #2
441784:  VLDR            S0, [R1,#0x20]
441788:  VLDR            S4, [R1,#0x28]
44178C:  VLDR            S2, [R1,#0x24]
441790:  VLDR            S6, [R1,#0x2C]
441794:  VSUB.F32        S0, S4, S0
441798:  VLDR            S4, =0.01
44179C:  VSUB.F32        S2, S2, S6
4417A0:  VABS.F32        S0, S0
4417A4:  VABS.F32        S2, S2
4417A8:  VMUL.F32        S20, S0, S4
4417AC:  VMUL.F32        S22, S2, S4
4417B0:  BEQ             loc_441872
4417B2:  CMP             R0, #1
4417B4:  BEQ.W           loc_441906
4417B8:  CMP             R0, #0
4417BA:  BNE.W           loc_4419C0
4417BE:  ADD             R4, SP, #0x68+var_50
4417C0:  MOVS            R1, #0; unsigned __int8
4417C2:  MOVS            R2, #0; unsigned __int8
4417C4:  MOVS            R3, #0; unsigned __int8
4417C6:  MOV             R0, R4; this
4417C8:  STR             R6, [SP,#0x68+var_68]; float
4417CA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4417CE:  ADDS            R0, R5, #3
4417D0:  VMOV            S0, R0
4417D4:  ADDS            R0, R5, #2
4417D6:  VMOV            S2, R0
4417DA:  VCVT.F32.U32    S0, S0
4417DE:  VCVT.F32.U32    S2, S2
4417E2:  STR             R4, [SP,#0x68+var_58]; float
4417E4:  VSTR            S16, [SP,#0x68+var_68]
4417E8:  VMUL.F32        S4, S20, S0
4417EC:  VMUL.F32        S2, S22, S2
4417F0:  VMUL.F32        S0, S22, S0
4417F4:  VADD.F32        S6, S16, S4
4417F8:  VADD.F32        S2, S18, S2
4417FC:  VSUB.F32        S4, S16, S4
441800:  VSUB.F32        S0, S18, S0
441804:  VMOV            R0, S6; this
441808:  VMOV            R1, S2; float
44180C:  VMOV            R2, S4; float
441810:  VSTR            S0, [SP,#0x68+var_64]
441814:  VSTR            S16, [SP,#0x68+var_60]
441818:  VSTR            S0, [SP,#0x68+var_5C]
44181C:  MOV             R3, R1; float
44181E:  BLX             j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
441822:  MOV             R0, R4; this
441824:  MOV             R1, R10; unsigned __int8
441826:  MOV             R2, R9; unsigned __int8
441828:  MOV             R3, R8; unsigned __int8
44182A:  STR             R6, [SP,#0x68+var_68]; unsigned __int8
44182C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
441830:  ADDS            R0, R5, #1
441832:  VMOV            S0, R0
441836:  VCVT.F32.U32    S0, S0
44183A:  STR             R4, [SP,#0x68+var_58]
44183C:  VSTR            S16, [SP,#0x68+var_68]
441840:  VMUL.F32        S2, S20, S0
441844:  VMUL.F32        S0, S22, S0
441848:  VADD.F32        S4, S16, S2
44184C:  VADD.F32        S6, S18, S0
441850:  VSUB.F32        S2, S16, S2
441854:  VSUB.F32        S0, S18, S0
441858:  VMOV            R0, S4
44185C:  VMOV            R1, S6
441860:  VMOV            R2, S2
441864:  VSTR            S0, [SP,#0x68+var_64]
441868:  VSTR            S16, [SP,#0x68+var_60]
44186C:  VSTR            S0, [SP,#0x68+var_5C]
441870:  B               loc_4419BA
441872:  ADDS            R0, R5, #1
441874:  ADD             R4, SP, #0x68+var_54
441876:  MOVS            R1, #0; unsigned __int8
441878:  MOVS            R2, #0; unsigned __int8
44187A:  VMOV            S0, R0
44187E:  MOV             R0, R4; this
441880:  MOVS            R3, #0; unsigned __int8
441882:  VCVT.F32.U32    S0, S0
441886:  STR             R6, [SP,#0x68+var_68]; unsigned __int8
441888:  VMUL.F32        S2, S22, S0
44188C:  VMUL.F32        S0, S20, S0
441890:  VSUB.F32        S4, S18, S2
441894:  VSUB.F32        S6, S16, S0
441898:  VADD.F32        S0, S16, S0
44189C:  VADD.F32        S2, S18, S2
4418A0:  VSTR            S4, [SP,#0x68+var_44]
4418A4:  VSTR            S6, [SP,#0x68+var_50]
4418A8:  VSTR            S0, [SP,#0x68+var_48]
4418AC:  VSTR            S2, [SP,#0x68+var_4C]
4418B0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4418B4:  ADD             R0, SP, #0x68+var_50
4418B6:  MOV             R1, R4
4418B8:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
4418BC:  VMOV            S0, R5
4418C0:  ADD             R4, SP, #0x68+var_54
4418C2:  MOV             R1, R10; unsigned __int8
4418C4:  MOV             R2, R9; unsigned __int8
4418C6:  VCVT.F32.U32    S0, S0
4418CA:  MOV             R0, R4; this
4418CC:  MOV             R3, R8; unsigned __int8
4418CE:  STR             R6, [SP,#0x68+var_68]; unsigned __int8
4418D0:  VMUL.F32        S2, S22, S0
4418D4:  VMUL.F32        S0, S20, S0
4418D8:  VSUB.F32        S4, S18, S2
4418DC:  VSUB.F32        S6, S16, S0
4418E0:  VADD.F32        S0, S16, S0
4418E4:  VADD.F32        S2, S18, S2
4418E8:  VSTR            S4, [SP,#0x68+var_44]
4418EC:  VSTR            S6, [SP,#0x68+var_50]
4418F0:  VSTR            S0, [SP,#0x68+var_48]
4418F4:  VSTR            S2, [SP,#0x68+var_4C]
4418F8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4418FC:  ADD             R0, SP, #0x68+var_50
4418FE:  MOV             R1, R4
441900:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
441904:  B               loc_4419C0
441906:  ADD.W           R11, SP, #0x68+var_50
44190A:  MOVS            R1, #0; unsigned __int8
44190C:  MOVS            R2, #0; unsigned __int8
44190E:  MOVS            R3, #0; unsigned __int8
441910:  MOV             R0, R11; this
441912:  STR             R6, [SP,#0x68+var_68]; float
441914:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
441918:  ADDS            R0, R5, #3
44191A:  VMOV            R4, S16
44191E:  VMOV            S0, R0
441922:  ADDS            R0, R5, #2
441924:  VCVT.F32.U32    S0, S0
441928:  VMOV            S4, R0
44192C:  VCVT.F32.U32    S4, S4
441930:  STR.W           R11, [SP,#0x68+var_58]; float
441934:  VMUL.F32        S2, S22, S0
441938:  VMUL.F32        S0, S20, S0
44193C:  VMUL.F32        S4, S22, S4
441940:  VADD.F32        S2, S18, S2
441944:  MOV             R0, R4; this
441946:  MOV             R2, R4; float
441948:  VMOV            R1, S2; float
44194C:  VSUB.F32        S2, S18, S4
441950:  VSUB.F32        S4, S16, S0
441954:  VADD.F32        S0, S16, S0
441958:  VSTR            S0, [SP,#0x68+var_68]
44195C:  VSTR            S2, [SP,#0x68+var_64]
441960:  VSTR            S4, [SP,#0x68+var_60]
441964:  VSTR            S2, [SP,#0x68+var_5C]
441968:  MOV             R3, R1; float
44196A:  BLX             j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
44196E:  MOV             R0, R11; this
441970:  MOV             R1, R10; unsigned __int8
441972:  MOV             R2, R9; unsigned __int8
441974:  MOV             R3, R8; unsigned __int8
441976:  STR             R6, [SP,#0x68+var_68]; float
441978:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
44197C:  ADDS            R0, R5, #1
44197E:  MOV             R2, R4; float
441980:  VMOV            S0, R0
441984:  MOV             R0, R4; this
441986:  VCVT.F32.U32    S0, S0
44198A:  STR.W           R11, [SP,#0x68+var_58]; float
44198E:  VMUL.F32        S2, S22, S0
441992:  VMUL.F32        S0, S20, S0
441996:  VADD.F32        S4, S18, S2
44199A:  VSUB.F32        S2, S18, S2
44199E:  VMOV            R1, S4; float
4419A2:  VSUB.F32        S4, S16, S0
4419A6:  VADD.F32        S0, S16, S0
4419AA:  VSTR            S0, [SP,#0x68+var_68]
4419AE:  VSTR            S2, [SP,#0x68+var_64]
4419B2:  VSTR            S4, [SP,#0x68+var_60]
4419B6:  VSTR            S2, [SP,#0x68+var_5C]
4419BA:  MOV             R3, R1; float
4419BC:  BLX             j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
4419C0:  ADD             SP, SP, #0x28 ; '('
4419C2:  VPOP            {D8-D11}
4419C6:  ADD             SP, SP, #4
4419C8:  POP.W           {R8-R11}
4419CC:  POP             {R4-R7,PC}
