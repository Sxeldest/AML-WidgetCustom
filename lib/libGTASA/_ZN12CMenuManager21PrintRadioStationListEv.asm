; =========================================================
; Game Engine Function: _ZN12CMenuManager21PrintRadioStationListEv
; Address            : 0x43172C - 0x4318EA
; =========================================================

43172C:  PUSH            {R4-R7,LR}
43172E:  ADD             R7, SP, #0xC
431730:  PUSH.W          {R8-R11}
431734:  SUB             SP, SP, #4
431736:  VPUSH           {D8-D15}
43173A:  SUB             SP, SP, #0x18
43173C:  LDR             R2, =(RsGlobal_ptr - 0x43174E)
43173E:  ADD.W           R5, R0, #0xC0
431742:  LDRSB.W         R3, [R0,#0x35]
431746:  ADD.W           R9, SP, #0x78+var_64
43174A:  ADD             R2, PC; RsGlobal_ptr
43174C:  STR             R0, [SP,#0x78+var_6C]
43174E:  VLDR            S18, =0.054688
431752:  MOVS            R4, #1
431754:  LDR             R0, [R2]; RsGlobal
431756:  UXTB            R1, R3
431758:  LDR             R2, =(RsGlobal_ptr - 0x431764)
43175A:  MOVS            R6, #0x2C ; ','
43175C:  VLDR            S20, =0.66964
431760:  ADD             R2, PC; RsGlobal_ptr
431762:  VLDR            S22, =300.0
431766:  VLDR            S24, =35.0
43176A:  LDR.W           R11, [R2]; RsGlobal
43176E:  VLDR            S26, =0.078125
431772:  VLDR            S16, =640.0
431776:  STR             R0, [SP,#0x78+var_70]
431778:  CMP             R4, R3
43177A:  BEQ             loc_431810
43177C:  VMOV            S0, R6
431780:  VCVT.F32.S32    S28, S0
431784:  LDR             R0, [SP,#0x78+var_70]
431786:  LDR.W           R8, [R0,#4]
43178A:  CMP.W           R8, #0x280
43178E:  BNE             loc_43179A
431790:  VMOV            S0, R8
431794:  VCVT.F32.S32    S30, S0
431798:  B               loc_4317AA
43179A:  VDIV.F32        S0, S28, S16
43179E:  VMOV            S2, R8
4317A2:  VCVT.F32.S32    S30, S2
4317A6:  VMUL.F32        S28, S0, S30
4317AA:  MOVS            R0, #0x1E
4317AC:  MOVS            R1, #0xFF; unsigned __int8
4317AE:  STR             R0, [SP,#0x78+var_78]; float
4317B0:  MOV             R0, R9; this
4317B2:  MOVS            R2, #0xFF; unsigned __int8
4317B4:  MOVS            R3, #0xFF; unsigned __int8
4317B6:  LDR.W           R10, [R11,#(dword_9FC904 - 0x9FC8FC)]
4317BA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4317BE:  VMOV            S0, R10
4317C2:  CMP.W           R8, #0x280
4317C6:  VMUL.F32        S2, S30, S18
4317CA:  MOV             R0, R5; this
4317CC:  VCVT.F32.S32    S0, S0
4317D0:  IT EQ
4317D2:  VMOVEQ.F32      S2, S24
4317D6:  CMP.W           R10, #0x1C0
4317DA:  VMOV            R1, S28; float
4317DE:  VMOV            R3, S2; float
4317E2:  VMUL.F32        S4, S0, S20
4317E6:  IT EQ
4317E8:  VMOVEQ.F32      S4, S22
4317EC:  VMUL.F32        S0, S0, S26
4317F0:  VMOV            R2, S4; float
4317F4:  CMP.W           R10, #0x1C0
4317F8:  IT EQ
4317FA:  VMOVEQ.F32      S0, S24
4317FE:  STR.W           R9, [SP,#0x78+var_74]; CRGBA *
431802:  VSTR            S0, [SP,#0x78+var_78]
431806:  BLX             j__ZN9CSprite2d4DrawEffffRK5CRGBA; CSprite2d::Draw(float,float,float,float,CRGBA const&)
43180A:  LDR             R0, [SP,#0x78+var_6C]
43180C:  LDRB.W          R1, [R0,#0x35]
431810:  ADDS            R4, #1
431812:  ADDS            R5, #4
431814:  ADDS            R6, #0x2F ; '/'
431816:  SXTB            R3, R1
431818:  CMP             R4, #0xD
43181A:  BNE             loc_431778
43181C:  SUBS            R1, #1
43181E:  UXTB            R1, R1
431820:  CMP             R1, #0xC
431822:  BCS             loc_4318DC
431824:  MOVS            R2, #0x2F ; '/'
431826:  LDR             R1, =(RsGlobal_ptr - 0x431830)
431828:  SMULBB.W        R2, R3, R2
43182C:  ADD             R1, PC; RsGlobal_ptr
43182E:  LDR             R1, [R1]; RsGlobal
431830:  SUBS            R2, #0xF
431832:  VMOV            S0, R2
431836:  VCVT.F32.S32    S18, S0
43183A:  LDR             R0, [SP,#0x78+var_6C]
43183C:  LDR             R5, [R1,#(dword_9FC900 - 0x9FC8FC)]
43183E:  ADD.W           R0, R0, R3,LSL#2
431842:  ADD.W           R4, R0, #0xBC
431846:  CMP.W           R5, #0x280
43184A:  BNE             loc_431856
43184C:  VMOV            S0, R5
431850:  VCVT.F32.S32    S16, S0
431854:  B               loc_431866
431856:  VDIV.F32        S0, S18, S16
43185A:  VMOV            S2, R5
43185E:  VCVT.F32.S32    S16, S2
431862:  VMUL.F32        S18, S0, S16
431866:  LDR             R0, =(RsGlobal_ptr - 0x431872)
431868:  MOVS            R1, #0xFF; unsigned __int8
43186A:  MOVS            R2, #0xFF; unsigned __int8
43186C:  MOVS            R3, #0xFF; unsigned __int8
43186E:  ADD             R0, PC; RsGlobal_ptr
431870:  LDR             R0, [R0]; RsGlobal
431872:  LDR             R6, [R0,#(dword_9FC904 - 0x9FC8FC)]
431874:  MOVS            R0, #0xFF
431876:  STR             R0, [SP,#0x78+var_78]; float
431878:  ADD             R0, SP, #0x78+var_68; this
43187A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43187E:  VMOV            S0, R6
431882:  VLDR            S2, =0.09375
431886:  VLDR            S4, =0.64732
43188A:  CMP.W           R5, #0x280
43188E:  VCVT.F32.S32    S0, S0
431892:  VLDR            S8, =60.0
431896:  VMUL.F32        S2, S16, S2
43189A:  VLDR            S6, =290.0
43189E:  IT EQ
4318A0:  VMOVEQ.F32      S2, S8
4318A4:  CMP.W           R6, #0x1C0
4318A8:  VMOV            R3, S2; float
4318AC:  VLDR            S2, =0.13393
4318B0:  VMOV            R1, S18; float
4318B4:  VMUL.F32        S4, S0, S4
4318B8:  IT EQ
4318BA:  VMOVEQ.F32      S4, S6
4318BE:  VMUL.F32        S0, S0, S2
4318C2:  VMOV            R2, S4; float
4318C6:  CMP.W           R6, #0x1C0
4318CA:  IT EQ
4318CC:  VMOVEQ.F32      S0, S8
4318D0:  STR             R0, [SP,#0x78+var_74]; CRGBA *
4318D2:  MOV             R0, R4; this
4318D4:  VSTR            S0, [SP,#0x78+var_78]
4318D8:  BLX             j__ZN9CSprite2d4DrawEffffRK5CRGBA; CSprite2d::Draw(float,float,float,float,CRGBA const&)
4318DC:  ADD             SP, SP, #0x18
4318DE:  VPOP            {D8-D15}
4318E2:  ADD             SP, SP, #4
4318E4:  POP.W           {R8-R11}
4318E8:  POP             {R4-R7,PC}
