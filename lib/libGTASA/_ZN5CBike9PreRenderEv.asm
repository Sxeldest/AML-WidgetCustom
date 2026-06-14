; =========================================================
; Game Engine Function: _ZN5CBike9PreRenderEv
; Address            : 0x565458 - 0x56604A
; =========================================================

565458:  PUSH            {R4-R7,LR}
56545A:  ADD             R7, SP, #0xC
56545C:  PUSH.W          {R8-R11}
565460:  SUB             SP, SP, #4
565462:  VPUSH           {D8-D13}
565466:  SUB             SP, SP, #0x1C8; float
565468:  MOV             R9, R0
56546A:  BLX             j__ZN8CVehicle9PreRenderEv; CVehicle::PreRender(void)
56546E:  MOV             R0, R9; this
565470:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
565474:  LDRB.W          R1, [R9,#0x42F]
565478:  STR             R0, [SP,#0x218+var_1D4]; bool
56547A:  LDR             R0, [R0,#0x2C]
56547C:  STR             R0, [SP,#0x218+var_1C8]
56547E:  ADDW            R0, R9, #0x42C
565482:  STR             R0, [SP,#0x218+var_1D0]
565484:  LSLS            R0, R1, #0x1F
565486:  BEQ             loc_565576
565488:  LDR.W           R0, [R9]
56548C:  LDR.W           R1, [R0,#0xD4]
565490:  MOV             R0, R9
565492:  BLX             R1
565494:  ADDW            R0, R9, #0x794
565498:  VMOV.F32        S4, #1.0
56549C:  ADDW            R2, R9, #0x724
5654A0:  ADDW            R1, R9, #0x79C
5654A4:  VLDR            S0, [R0]
5654A8:  ADDW            R0, R9, #0x784
5654AC:  VLDR            S6, [R2]
5654B0:  ADD.W           R2, R9, #0x728
5654B4:  VLDR            S2, [R0]
5654B8:  ADDW            R0, R9, #0x78C
5654BC:  VLDR            S8, [R2]
5654C0:  VDIV.F32        S0, S2, S0
5654C4:  VSUB.F32        S0, S4, S0
5654C8:  VLDR            S10, [R1]
5654CC:  VMIN.F32        D3, D4, D3
5654D0:  VLDR            S8, [R0]
5654D4:  ADD.W           R0, R9, #0x730
5654D8:  ADDW            R1, R9, #0x72C
5654DC:  VDIV.F32        S10, S8, S10
5654E0:  VSUB.F32        S6, S6, S0
5654E4:  VLDR            S12, [R0]
5654E8:  VSUB.F32        S0, S4, S0
5654EC:  VDIV.F32        S0, S6, S0
5654F0:  VCMPE.F32       S0, #0.0
5654F4:  VMRS            APSR_nzcv, FPSCR
5654F8:  VSUB.F32        S6, S4, S10
5654FC:  VLDR            S10, [R1]
565500:  VMUL.F32        S2, S2, S0
565504:  LDR             R1, [SP,#0x218+var_1C8]
565506:  VMIN.F32        D5, D6, D5
56550A:  LDR             R0, [R1,#0x10]
56550C:  VSUB.F32        S4, S4, S6
565510:  VSUB.F32        S10, S10, S6
565514:  VLDR            S6, [R0,#8]
565518:  ADDW            R0, R9, #0x774
56551C:  VSUB.F32        S2, S6, S2
565520:  VDIV.F32        S4, S10, S4
565524:  IT GT
565526:  VMOVGT.F32      S6, S2
56552A:  VLDR            S0, [R0]
56552E:  VMOV.F32        S2, #0.75
565532:  VCMPE.F32       S4, #0.0
565536:  VSUB.F32        S6, S6, S0
56553A:  VMRS            APSR_nzcv, FPSCR
56553E:  VMUL.F32        S6, S6, S2
565542:  VADD.F32        S0, S0, S6
565546:  VMUL.F32        S6, S8, S4
56554A:  VSTR            S0, [R0]
56554E:  LDR             R0, [R1,#0x10]
565550:  VLDR            S0, [R0,#0x48]
565554:  ADD.W           R0, R9, #0x778
565558:  VSUB.F32        S6, S0, S6
56555C:  IT GT
56555E:  VMOVGT.F32      S0, S6
565562:  VLDR            S4, [R0]
565566:  VSUB.F32        S0, S0, S4
56556A:  VMUL.F32        S0, S0, S2
56556E:  VADD.F32        S0, S4, S0
565572:  VSTR            S0, [R0]
565576:  LDRB.W          R0, [R9,#0x3A]
56557A:  CMP             R0, #0x20 ; ' '
56557C:  MOV             R0, R9
56557E:  STR             R0, [SP,#0x218+var_1B0]
565580:  BCS.W           loc_56573E
565584:  VLDR            S0, [R9,#0x48]
565588:  VMOV.F32        S18, #1.0
56558C:  VLDR            S2, [R9,#0x4C]
565590:  VMOV.F32        S22, #-1.0
565594:  VMUL.F32        S0, S0, S0
565598:  VLDR            S4, [R9,#0x50]
56559C:  VMUL.F32        S2, S2, S2
5655A0:  LDR.W           R0, [R9,#0x824]
5655A4:  VMUL.F32        S4, S4, S4
5655A8:  MOVS            R1, #4
5655AA:  CMP             R0, #2
5655AC:  ADDW            R0, R9, #0x73C
5655B0:  IT EQ
5655B2:  MOVEQ           R1, #0
5655B4:  STR             R0, [SP,#0x218+var_1C4]
5655B6:  ADD.W           R0, R9, #0x740
5655BA:  STR             R0, [SP,#0x218+var_1BC]
5655BC:  ADDW            R0, R9, #0x65C
5655C0:  VLDR            S20, =0.8
5655C4:  STR             R0, [SP,#0x218+var_1B8]
5655C6:  ADD.W           R0, R9, #0x738
5655CA:  VADD.F32        S0, S0, S2
5655CE:  MOV.W           R8, #0
5655D2:  STR             R0, [SP,#0x218+var_1CC]
5655D4:  ADDW            R0, R9, #0x734
5655D8:  STR             R1, [SP,#0x218+var_1B4]
5655DA:  STR             R0, [SP,#0x218+var_1C0]
5655DC:  VADD.F32        S0, S0, S4
5655E0:  VSQRT.F32       S16, S0
5655E4:  CMP.W           R8, #0
5655E8:  BEQ             loc_565616
5655EA:  LDR             R0, [SP,#0x218+var_1BC]
5655EC:  VLDR            S0, [R0]
5655F0:  VCMPE.F32       S0, S18
5655F4:  VMRS            APSR_nzcv, FPSCR
5655F8:  BLT             loc_565610
5655FA:  LDR             R0, [SP,#0x218+var_1C4]
5655FC:  VLDR            S0, [R0]
565600:  VCMPE.F32       S0, S18
565604:  VMRS            APSR_nzcv, FPSCR
565608:  BGE             loc_565610
56560A:  MOV.W           R10, #2
56560E:  B               loc_565640
565610:  MOV.W           R10, #3
565614:  B               loc_565640
565616:  LDR             R0, [SP,#0x218+var_1C0]
565618:  VLDR            S0, [R0]
56561C:  VCMPE.F32       S0, S18
565620:  VMRS            APSR_nzcv, FPSCR
565624:  BLT             loc_56563C
565626:  LDR             R0, [SP,#0x218+var_1CC]
565628:  VLDR            S0, [R0]
56562C:  VCMPE.F32       S0, S18
565630:  VMRS            APSR_nzcv, FPSCR
565634:  BGE             loc_56563C
565636:  MOV.W           R10, #1
56563A:  B               loc_565640
56563C:  MOV.W           R10, #0
565640:  MOV             R0, R9; this
565642:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
565646:  LDR             R1, [SP,#0x218+var_1B8]
565648:  MOVS            R3, #0x2C ; ','
56564A:  LDR             R2, [SP,#0x218+var_1B0]
56564C:  VLDR            S0, [R0,#8]
565650:  VLDR            S24, [R1]
565654:  SMLABB.W        R9, R10, R3, R2
565658:  VMUL.F32        S26, S0, S20
56565C:  VMOV            R1, S24
565660:  LDR.W           R11, [R9,#0x67C]
565664:  MOV             R0, R1; x
565666:  BLX             sinf
56566A:  VMOV            S0, R0
56566E:  ADDW            R0, R9, #0x674
565672:  LDR.W           R9, [SP,#0x218+var_1B0]
565676:  CMP.W           R8, #0
56567A:  VLDR            D16, [R0]
56567E:  VMUL.F32        S0, S26, S0
565682:  STR.W           R11, [SP,#0x218+var_90]
565686:  ADD.W           R2, R9, R10,LSL#2
56568A:  VSTR            D16, [SP,#0x218+var_98]
56568E:  ADD.W           R6, R9, R8
565692:  LDR.W           R1, [R9,#0x14]
565696:  VCMPE.F32       S24, #0.0
56569A:  VLDR            S8, [SP,#0x218+var_98+4]
56569E:  VLDR            S2, [R1]
5656A2:  VLDR            S4, [R1,#4]
5656A6:  VLDR            S6, [R1,#8]
5656AA:  VMUL.F32        S2, S0, S2
5656AE:  VMUL.F32        S4, S0, S4
5656B2:  ADD.W           R1, R9, R8,LSL#2
5656B6:  VMUL.F32        S0, S0, S6
5656BA:  VLDR            S6, [SP,#0x218+var_98]
5656BE:  VADD.F32        S2, S2, S6
5656C2:  VLDR            S6, [SP,#0x218+var_90]
5656C6:  VADD.F32        S4, S4, S8
5656CA:  VADD.F32        S0, S0, S6
5656CE:  VSTR            S2, [SP,#0x218+var_98]
5656D2:  VSTR            S4, [SP,#0x218+var_98+4]
5656D6:  VSTR            S0, [SP,#0x218+var_90]
5656DA:  VMOV.F32        S0, S18
5656DE:  LDR.W           R3, [R2,#0x734]; int
5656E2:  LDRB.W          R2, [R6,#0x670]; int
5656E6:  LDRB.W          R4, [R6,#0x760]
5656EA:  LDRB.W          R12, [R6,#0x762]
5656EE:  ADD.W           R6, R6, #0x760
5656F2:  LDR.W           R5, [R1,#0x758]
5656F6:  LDR.W           R1, [R1,#0x820]; int
5656FA:  STRD.W          R5, R6, [SP,#0x218+var_204]; int
5656FE:  STR             R0, [SP,#0x218+var_214]; unsigned __int8
565700:  ADD             R0, SP, #0x218+var_98
565702:  STR             R0, [SP,#0x218+var_210]; int
565704:  LDR             R0, [SP,#0x218+var_1B4]
565706:  IT EQ
565708:  ORREQ           R4, R0
56570A:  VMRS            APSR_nzcv, FPSCR
56570E:  MOV             R0, R9; int
565710:  IT GT
565712:  VMOVGT.F32      S0, S22
565716:  CMP.W           R12, #0
56571A:  STR.W           R8, [SP,#0x218+var_208]; int
56571E:  VSTR            S0, [SP,#0x218+var_20C]
565722:  VSTR            S16, [SP,#0x218+var_218]
565726:  IT NE
565728:  ORRNE.W         R4, R4, #2
56572C:  STR             R4, [SP,#0x218+var_1FC]; unsigned __int8
56572E:  BLX             j__ZN8CVehicle23AddSingleWheelParticlesE11tWheelStatejffP9CColPointP7CVectorfijPbj; CVehicle::AddSingleWheelParticles(tWheelState,uint,float,float,CColPoint *,CVector *,float,int,uint,bool *,uint)
565732:  ADD.W           R8, R8, #1
565736:  CMP.W           R8, #2
56573A:  BNE.W           loc_5655E4
56573E:  MOVS            R0, #0
565740:  STRB.W          R0, [R9,#0x5DC]
565744:  MOV             R0, R9; this
565746:  BLX             j__ZN5CBike19CalculateLeanMatrixEv; CBike::CalculateLeanMatrix(void)
56574A:  LDR             R4, [SP,#0x218+var_1D0]
56574C:  LDR             R0, [R4]
56574E:  TST.W           R0, #0x10
565752:  BEQ             loc_5657B2
565754:  LSLS            R0, R0, #1
565756:  BMI             loc_5657B2
565758:  LDR.W           R0, [R9,#0x388]
56575C:  LDR.W           R0, [R0,#0xCC]
565760:  ANDS.W          R0, R0, #0x1000
565764:  BNE             loc_5657B2
565766:  LDR.W           R0, [R9,#0x14]
56576A:  VLDR            S6, [R9,#0x48]
56576E:  VLDR            S8, [R9,#0x4C]
565772:  VLDR            S0, [R0,#0x10]
565776:  VLDR            S2, [R0,#0x14]
56577A:  VMUL.F32        S0, S6, S0
56577E:  VLDR            S4, [R0,#0x18]
565782:  VMUL.F32        S2, S8, S2
565786:  VLDR            S10, [R9,#0x50]
56578A:  VMUL.F32        S4, S10, S4
56578E:  VADD.F32        S0, S0, S2
565792:  VLDR            S2, =0.0055556
565796:  VADD.F32        S0, S0, S4
56579A:  VDIV.F32        S0, S0, S2
56579E:  VLDR            S2, =130.0
5657A2:  VCMPE.F32       S0, S2
5657A6:  VMRS            APSR_nzcv, FPSCR
5657AA:  ITT LT
5657AC:  MOVLT           R0, R9; this
5657AE:  BLXLT           j__ZN8CVehicle19AddExhaustParticlesEv; CVehicle::AddExhaustParticles(void)
5657B2:  MOV             R0, R9; this
5657B4:  BLX             j__ZN8CVehicle26AddDamagedVehicleParticlesEv; CVehicle::AddDamagedVehicleParticles(void)
5657B8:  LDRH.W          R0, [R9,#0x26]
5657BC:  MOVW            R1, #0x20B
5657C0:  CMP             R0, R1
5657C2:  BNE.W           loc_5659E6
5657C6:  LDRD.W          R0, R1, [R4]
5657CA:  MOV.W           R2, #0x8000
5657CE:  BIC.W           R1, R2, R1
5657D2:  MOVS            R2, #0x10
5657D4:  BIC.W           R0, R2, R0
5657D8:  ORRS            R0, R1
5657DA:  BNE.W           loc_5659E6
5657DE:  LDRB.W          R0, [R9,#0x47]
5657E2:  LSLS            R0, R0, #0x1A
5657E4:  BMI.W           loc_5659E6
5657E8:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5657FC)
5657EC:  MOVW            R1, #0x999A
5657F0:  MOVW            R2, #0x5C29
5657F4:  MOVT            R1, #0x3F19
5657F8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5657FA:  MOVT            R2, #0x3E8F
5657FE:  STR             R1, [SP,#0x218+var_98+4]
565800:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
565802:  STR             R2, [SP,#0x218+var_98]
565804:  MOV             R2, #0x3E99999A
56580C:  STR             R1, [SP,#0x218+var_DC]
56580E:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
565810:  MOV             R0, #0xBE8F5C29
565818:  STR             R2, [SP,#0x218+var_90]
56581A:  STR             R0, [SP,#0x218+var_E0]
56581C:  MOV             R6, R5
56581E:  STR             R2, [SP,#0x218+var_D8]
565820:  BFC.W           R6, #9, #0x17
565824:  CMP             R6, #0xFF
565826:  BHI             loc_5658BC
565828:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x56583A)
56582C:  VMOV.F32        S0, #10.0
565830:  MOVS            R1, #0
565832:  MOV.W           R2, #0x3FC00000
565836:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
565838:  MOVT            R1, #0x41F0
56583C:  MOVS            R3, #0; unsigned __int8
56583E:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
565840:  VLDR            S2, [R0,#0x44]
565844:  MOVS            R0, #1
565846:  STR             R0, [SP,#0x218+var_1D8]; bool
565848:  MOVS            R0, #0
56584A:  VDIV.F32        S0, S2, S0
56584E:  STRD.W          R0, R0, [SP,#0x218+var_1F8]; unsigned __int8
565852:  STRD.W          R0, R0, [SP,#0x218+var_1F0]; float
565856:  STRD.W          R2, R0, [SP,#0x218+var_1E8]; float
56585A:  STRD.W          R1, R0, [SP,#0x218+var_1E0]; float
56585E:  MOVS            R1, #0x42200000
565864:  STRD.W          R0, R0, [SP,#0x218+var_200]; unsigned __int8
565868:  STR             R0, [SP,#0x218+var_204]; float
56586A:  STR             R1, [SP,#0x218+var_208]; float
56586C:  MOV             R1, #0x3ECCCCCD
565874:  STR             R1, [SP,#0x218+var_20C]; CVector *
565876:  ADD             R1, SP, #0x218+var_E0
565878:  STR             R1, [SP,#0x218+var_210]; unsigned __int8
56587A:  MOVS            R1, #0xFF
56587C:  VLDR            S2, =255.0
565880:  VMUL.F32        S0, S0, S2
565884:  VCVT.U32.F32    S0, S0
565888:  STRD.W          R0, R1, [SP,#0x218+var_218]; unsigned __int8
56588C:  ADD.W           R0, R9, #0x15; this
565890:  MOV             R1, R9; unsigned int
565892:  VMOV            R2, S0; CEntity *
565896:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
56589A:  UXTB            R0, R5
56589C:  B               loc_565934
56589E:  ALIGN 0x10
5658A0:  DCFS 0.8
5658A4:  DCFS 0.0055556
5658A8:  DCFS 130.0
5658AC:  DCFS 255.0
5658B0:  DCFS 0.00097656
5658B4:  DCFS 3.1416
5658B8:  DCFS 180.0
5658BC:  LDR.W           R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x5658CE)
5658C0:  VMOV.F32        S0, #10.0
5658C4:  MOVS            R1, #0
5658C6:  MOV.W           R2, #0x3FC00000
5658CA:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
5658CC:  MOVT            R1, #0x41F0
5658D0:  MOVS            R3, #0; unsigned __int8
5658D2:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
5658D4:  VLDR            S2, [R0,#0x44]
5658D8:  MOVS            R0, #1
5658DA:  STR             R0, [SP,#0x218+var_1D8]; bool
5658DC:  MOVS            R0, #0
5658DE:  VDIV.F32        S0, S2, S0
5658E2:  STRD.W          R0, R0, [SP,#0x218+var_1F8]; unsigned __int8
5658E6:  STRD.W          R0, R0, [SP,#0x218+var_1F0]; float
5658EA:  STRD.W          R2, R0, [SP,#0x218+var_1E8]; float
5658EE:  MOVS            R2, #0; CEntity *
5658F0:  STRD.W          R1, R0, [SP,#0x218+var_1E0]; float
5658F4:  MOV             R1, R9; unsigned int
5658F6:  STRD.W          R0, R0, [SP,#0x218+var_200]; unsigned __int8
5658FA:  STR             R0, [SP,#0x218+var_204]; float
5658FC:  MOVS            R0, #0x42200000
565902:  STR             R0, [SP,#0x218+var_208]; float
565904:  MOV             R0, #0x3ECCCCCD
56590C:  STR             R0, [SP,#0x218+var_20C]; CVector *
56590E:  ADD             R0, SP, #0x218+var_98
565910:  STR             R0, [SP,#0x218+var_210]; unsigned __int8
565912:  MOVS            R0, #0xFF
565914:  VLDR            S2, =255.0
565918:  VMUL.F32        S0, S0, S2
56591C:  VCVT.U32.F32    S0, S0
565920:  STR             R0, [SP,#0x218+var_214]; unsigned __int8
565922:  VMOV            R0, S0
565926:  STR             R0, [SP,#0x218+var_218]; unsigned __int8
565928:  ADD.W           R0, R9, #0x16; this
56592C:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
565930:  NEGS            R0, R5
565932:  MOV             R6, R0
565934:  VMOV.F32        S0, #0.5
565938:  LDR.W           R1, [R9,#0x14]
56593C:  MVNS            R0, R0
56593E:  ADD.W           R2, R1, #0x30 ; '0'
565942:  CMP             R1, #0
565944:  VLDR            S8, [R1,#0x20]
565948:  UXTB            R0, R0
56594A:  VLDR            S10, [R1,#0x24]
56594E:  VLDR            S2, [R1,#0x10]
565952:  VLDR            S4, [R1,#0x14]
565956:  VLDR            S6, [R1,#0x18]
56595A:  VMUL.F32        S8, S8, S0
56595E:  VLDR            S12, [R1,#0x28]
565962:  IT EQ
565964:  ADDEQ.W         R2, R9, #4
565968:  VLDR            S14, [R2]
56596C:  VMUL.F32        S10, S10, S0
565970:  VLDR            S1, [R2,#4]
565974:  VMUL.F32        S0, S12, S0
565978:  VLDR            S3, [R2,#8]
56597C:  VADD.F32        S2, S14, S2
565980:  VADD.F32        S4, S1, S4
565984:  UXTB            R1, R6
565986:  VADD.F32        S6, S3, S6
56598A:  MOVS            R6, #1
56598C:  VADD.F32        S2, S2, S8
565990:  VADD.F32        S4, S4, S10
565994:  VADD.F32        S0, S6, S0
565998:  VMOV            S6, R1
56599C:  VCVT.F32.S32    S6, S6
5659A0:  VMOV            R1, S2
5659A4:  VLDR            S2, =0.00097656
5659A8:  VMOV            R2, S4
5659AC:  VMOV            R3, S0
5659B0:  VMOV            S0, R0
5659B4:  MOVS            R0, #0
5659B6:  VCVT.F32.S32    S0, S0
5659BA:  STRD.W          R0, R6, [SP,#0x218+var_1FC]
5659BE:  VMUL.F32        S4, S6, S2
5659C2:  MOVS            R6, #0x41200000
5659C8:  STR             R0, [SP,#0x218+var_1F4]
5659CA:  STR             R0, [SP,#0x218+var_204]
5659CC:  STRD.W          R0, R0, [SP,#0x218+var_218]; float
5659D0:  STRD.W          R0, R6, [SP,#0x218+var_210]
5659D4:  MOVS            R0, #0
5659D6:  VMUL.F32        S0, S0, S2
5659DA:  VSTR            S4, [SP,#0x218+var_208]
5659DE:  VSTR            S0, [SP,#0x218+var_200]
5659E2:  BLX             j__ZN12CPointLights8AddLightEh7CVectorS0_ffffhbP7CEntity; CPointLights::AddLight(uchar,CVector,CVector,float,float,float,float,uchar,bool,CEntity *)
5659E6:  ADD.W           R1, R9, #0x5E0; CMatrix *
5659EA:  MOV             R0, R9; this
5659EC:  MOVS            R2, #4; unsigned int
5659EE:  BLX             j__ZN8CVehicle15DoVehicleLightsER7CMatrixj; CVehicle::DoVehicleLights(CMatrix &,uint)
5659F2:  MOV             R0, R9; CPhysical *
5659F4:  MOVS            R1, #1
5659F6:  BLX             j__ZN8CShadows21StoreShadowForVehicleEP8CVehicle12VEH_SHD_TYPE; CShadows::StoreShadowForVehicle(CVehicle *,VEH_SHD_TYPE)
5659FA:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x565A08)
5659FE:  MOVS            R4, #0
565A00:  STRD.W          R4, R4, [SP,#0x218+var_A0]
565A04:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
565A06:  LDRSH.W         R1, [R9,#0x26]
565A0A:  LDR.W           R5, [R9,#0x498]
565A0E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
565A10:  LDR.W           R11, [R0,R1,LSL#2]
565A14:  MOV             R0, R5; x
565A16:  BLX             cosf
565A1A:  LDR.W           R6, [R9,#0x14]
565A1E:  STR             R0, [SP,#0x218+var_98+4]
565A20:  MOV             R0, R5; x
565A22:  BLX             sinf
565A26:  EOR.W           R0, R0, #0x80000000
565A2A:  STR             R0, [SP,#0x218+var_98]
565A2C:  ADD             R0, SP, #0x218+var_FC; CMatrix *
565A2E:  ADD             R2, SP, #0x218+var_98
565A30:  MOV             R1, R6; CVector *
565A32:  STR             R4, [SP,#0x218+var_90]
565A34:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
565A38:  LDR.W           R0, [R9,#0x14]
565A3C:  VLDR            D16, [R0,#0x10]
565A40:  LDR             R0, [R0,#0x18]
565A42:  STR             R0, [SP,#0x218+var_100]
565A44:  ADDW            R0, R9, #0x744
565A48:  VSTR            D16, [SP,#0x218+var_108]
565A4C:  VLDR            S0, [R0]
565A50:  VCMPE.F32       S0, #0.0
565A54:  VMRS            APSR_nzcv, FPSCR
565A58:  BGT             loc_565A6C
565A5A:  ADD.W           R0, R9, #0x748
565A5E:  VLDR            S0, [R0]
565A62:  VCMPE.F32       S0, #0.0
565A66:  VMRS            APSR_nzcv, FPSCR
565A6A:  BLE             loc_565B2A
565A6C:  LDR             R0, [SP,#0x218+var_1C8]
565A6E:  ADD.W           R1, R9, #0x738
565A72:  VMOV.F32        S16, #0.5
565A76:  MOVS            R2, #0
565A78:  LDR             R0, [R0,#0x10]
565A7A:  VLDR            S0, [R0,#4]
565A7E:  VLDR            S4, [R0,#0x24]
565A82:  VLDR            S2, [R0,#8]
565A86:  ADDW            R0, R9, #0x734
565A8A:  VADD.F32        S0, S0, S4
565A8E:  VLDR            S4, [R1]
565A92:  VLDR            S6, [R0]
565A96:  ADDW            R1, R9, #0x784
565A9A:  VCMPE.F32       S6, S4
565A9E:  VLDR            S8, [R1]
565AA2:  VMRS            APSR_nzcv, FPSCR
565AA6:  MOV.W           R1, #0
565AAA:  VMUL.F32        S0, S0, S16
565AAE:  VMOV            R3, S0
565AB2:  IT GE
565AB4:  MOVGE           R1, #1
565AB6:  VLDR            S6, [R11,#0x58]
565ABA:  ADD.W           R0, R0, R1,LSL#2
565ABE:  MOV             R1, R9
565AC0:  VMUL.F32        S0, S6, S16
565AC4:  VLDR            S4, [R0]
565AC8:  ADD             R0, SP, #0x218+var_98
565ACA:  VMUL.F32        S4, S4, S8
565ACE:  VSUB.F32        S2, S2, S4
565AD2:  VSUB.F32        S0, S2, S0
565AD6:  VSTR            S0, [SP,#0x218+var_218]
565ADA:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
565ADE:  VLDR            D16, [SP,#0x218+var_98]
565AE2:  ADD             R2, SP, #0x218+var_FC; int
565AE4:  LDR             R0, [SP,#0x218+var_90]
565AE6:  ADD             R3, SP, #0x218+var_F0; int
565AE8:  STR             R0, [SP,#0x218+var_E8]
565AEA:  MOV             R0, R9; int
565AEC:  VSTR            D16, [SP,#0x218+var_F0]
565AF0:  MOVS            R1, #0; int
565AF2:  VLDR            S0, [R11,#0x58]
565AF6:  VMUL.F32        S0, S0, S16
565AFA:  VSTR            S0, [SP,#0x218+var_218]
565AFE:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
565B02:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x565B16)
565B06:  VMOV            S0, R0
565B0A:  STR.W           R0, [R9,#0x76C]
565B0E:  ADDW            R0, R9, #0x764
565B12:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
565B14:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
565B16:  VLDR            S2, [R1]
565B1A:  VMUL.F32        S0, S0, S2
565B1E:  VLDR            S2, [R0]
565B22:  VADD.F32        S0, S2, S0
565B26:  VSTR            S0, [R0]
565B2A:  ADDW            R0, R9, #0x74C
565B2E:  VLDR            S0, [R0]
565B32:  VCMPE.F32       S0, #0.0
565B36:  VMRS            APSR_nzcv, FPSCR
565B3A:  BGT             loc_565B4E
565B3C:  ADD.W           R0, R9, #0x750
565B40:  VLDR            S0, [R0]
565B44:  VCMPE.F32       S0, #0.0
565B48:  VMRS            APSR_nzcv, FPSCR
565B4C:  BLE             loc_565C10
565B4E:  LDR             R0, [SP,#0x218+var_1C8]
565B50:  ADDW            R1, R9, #0x73C
565B54:  VMOV.F32        S16, #0.5
565B58:  MOVS            R2, #0
565B5A:  LDR             R0, [R0,#0x10]
565B5C:  VLDR            S0, [R0,#0x44]
565B60:  VLDR            S4, [R0,#0x64]
565B64:  VLDR            S2, [R0,#0x48]
565B68:  ADD.W           R0, R9, #0x740
565B6C:  VADD.F32        S0, S0, S4
565B70:  VLDR            S4, [R1]
565B74:  VLDR            S6, [R0]
565B78:  ADDW            R0, R9, #0x78C
565B7C:  MOVS            R1, #0xC
565B7E:  VCMPE.F32       S4, S6
565B82:  VLDR            S8, [R0]
565B86:  VMRS            APSR_nzcv, FPSCR
565B8A:  VMUL.F32        S0, S0, S16
565B8E:  VMOV            R3, S0
565B92:  IT LT
565B94:  MOVLT           R1, #8
565B96:  VLDR            S6, [R11,#0x58]
565B9A:  ADD.W           R0, R9, R1
565B9E:  MOV             R1, R9
565BA0:  ADDW            R0, R0, #0x734
565BA4:  VMUL.F32        S0, S6, S16
565BA8:  VLDR            S4, [R0]
565BAC:  ADD             R0, SP, #0x218+var_98
565BAE:  VMUL.F32        S4, S4, S8
565BB2:  VSUB.F32        S2, S2, S4
565BB6:  VSUB.F32        S0, S2, S0
565BBA:  VSTR            S0, [SP,#0x218+var_218]
565BBE:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
565BC2:  VLDR            D16, [SP,#0x218+var_98]
565BC6:  ADD             R2, SP, #0x218+var_108; int
565BC8:  LDR             R0, [SP,#0x218+var_90]
565BCA:  ADD             R3, SP, #0x218+var_F0; int
565BCC:  STR             R0, [SP,#0x218+var_E8]
565BCE:  MOV             R0, R9; int
565BD0:  VSTR            D16, [SP,#0x218+var_F0]
565BD4:  VLDR            S0, [R11,#0x5C]
565BD8:  LDR.W           R1, [R9,#0x824]; int
565BDC:  VMUL.F32        S0, S0, S16
565BE0:  VSTR            S0, [SP,#0x218+var_218]
565BE4:  BLX             j__ZN8CVehicle20ProcessWheelRotationE11tWheelStateRK7CVectorS3_f; CVehicle::ProcessWheelRotation(tWheelState,CVector const&,CVector const&,float)
565BE8:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x565BFC)
565BEC:  VMOV            S0, R0
565BF0:  STR.W           R0, [R9,#0x770]
565BF4:  ADD.W           R0, R9, #0x768
565BF8:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
565BFA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
565BFC:  VLDR            S2, [R1]
565C00:  VMUL.F32        S0, S0, S2
565C04:  VLDR            S2, [R0]
565C08:  VADD.F32        S0, S2, S0
565C0C:  VSTR            S0, [R0]
565C10:  LDR.W           R0, [R9,#0x5BC]
565C14:  CMP             R0, #0
565C16:  BEQ.W           loc_565D90
565C1A:  ADD.W           R9, SP, #0x218+var_E0
565C1E:  ADD.W           R1, R0, #0x10
565C22:  MOVS            R2, #0
565C24:  MOVS            R4, #0
565C26:  MOV             R0, R9
565C28:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
565C2C:  ADD.W           R10, SP, #0x218+var_150
565C30:  ADD             R0, SP, #0x218+var_190
565C32:  STR             R4, [SP,#0x218+var_10C]
565C34:  STR             R0, [SP,#0x218+var_110]
565C36:  MOV             R0, R10; this
565C38:  VLDR            S16, [SP,#0x218+var_B0]
565C3C:  VLDR            S18, [SP,#0x218+var_AC]
565C40:  VLDR            S20, [SP,#0x218+var_A8]
565C44:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
565C48:  MOV             R0, R10; this
565C4A:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
565C4E:  VLDR            S2, [R11,#0x70]
565C52:  VLDR            S0, =3.1416
565C56:  STR             R4, [SP,#0x218+var_1AC]
565C58:  VMUL.F32        S0, S2, S0
565C5C:  VLDR            S2, =180.0
565C60:  VDIV.F32        S0, S0, S2
565C64:  VMOV            R6, S0
565C68:  MOV             R0, R6; x
565C6A:  BLX             sinf
565C6E:  STR             R0, [SP,#0x218+var_1A8]
565C70:  MOV             R0, R6; x
565C72:  BLX             cosf
565C76:  ADD             R6, SP, #0x218+var_1AC
565C78:  EOR.W           R0, R0, #0x80000000
565C7C:  STR             R0, [SP,#0x218+var_1A4]
565C7E:  MOV             R0, R6; this
565C80:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
565C84:  LDR             R0, [SP,#0x218+var_1B0]
565C86:  ADD             R5, SP, #0x218+var_1A0
565C88:  MOV             R1, R6
565C8A:  LDR.W           R0, [R0,#0x658]
565C8E:  EOR.W           R2, R0, #0x80000000
565C92:  MOV             R0, R5
565C94:  BLX             j__ZN11CQuaternion3SetEP5RwV3df; CQuaternion::Set(RwV3d *,float)
565C98:  LDR             R1, [SP,#0x218+var_110]
565C9A:  MOV             R0, R5
565C9C:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
565CA0:  MOV             R0, R10; this
565CA2:  BLX             j__ZN7CMatrix6UpdateEv; CMatrix::Update(void)
565CA6:  MOV             R0, R9; this
565CA8:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
565CAC:  ADD             R5, SP, #0x218+var_98
565CAE:  MOV             R1, R9
565CB0:  MOV             R2, R10
565CB2:  MOV             R0, R5
565CB4:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
565CB8:  MOV             R0, R9
565CBA:  MOV             R1, R5
565CBC:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
565CC0:  MOV             R0, R5; this
565CC2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
565CC6:  VLDR            S0, [SP,#0x218+var_B0]
565CCA:  MOV             R0, R9; this
565CCC:  VLDR            S2, [SP,#0x218+var_AC]
565CD0:  VLDR            S4, [SP,#0x218+var_A8]
565CD4:  VADD.F32        S0, S16, S0
565CD8:  VADD.F32        S2, S18, S2
565CDC:  LDR.W           R9, [SP,#0x218+var_1B0]
565CE0:  VADD.F32        S4, S20, S4
565CE4:  VSTR            S0, [SP,#0x218+var_B0]
565CE8:  VSTR            S2, [SP,#0x218+var_AC]
565CEC:  VSTR            S4, [SP,#0x218+var_A8]
565CF0:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
565CF4:  LDR.W           R0, [R9,#0x5D0]
565CF8:  CMP             R0, #0
565CFA:  BEQ             loc_565D8A
565CFC:  ADD.W           R1, R0, #0x10
565D00:  ADD             R0, SP, #0x218+var_E0
565D02:  MOVS            R2, #0
565D04:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
565D08:  LDRB.W          R0, [R9,#0x3A]
565D0C:  LDRD.W          R6, R5, [SP,#0x218+var_B0]
565D10:  LDR.W           R9, [SP,#0x218+var_A8]
565D14:  AND.W           R0, R0, #0xF0
565D18:  CMP             R0, #0x20 ; ' '
565D1A:  BNE             loc_565D74
565D1C:  ADD.W           R10, SP, #0x218+var_E0
565D20:  MOV             R0, R10; this
565D22:  BLX             j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
565D26:  ADD.W           R11, SP, #0x218+var_98
565D2A:  ADD             R2, SP, #0x218+var_150
565D2C:  MOV             R1, R10
565D2E:  MOV             R0, R11
565D30:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
565D34:  MOV             R0, R10
565D36:  MOV             R1, R11
565D38:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
565D3C:  MOV             R0, R11; this
565D3E:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
565D42:  VMOV            S0, R5
565D46:  VLDR            S6, [SP,#0x218+var_AC]
565D4A:  VMOV            S2, R6
565D4E:  VLDR            S4, [SP,#0x218+var_B0]
565D52:  VLDR            S8, [SP,#0x218+var_A8]
565D56:  VMOV            S10, R9
565D5A:  VADD.F32        S2, S4, S2
565D5E:  VADD.F32        S0, S6, S0
565D62:  VADD.F32        S4, S8, S10
565D66:  VSTR            S2, [SP,#0x218+var_B0]
565D6A:  VSTR            S0, [SP,#0x218+var_AC]
565D6E:  VSTR            S4, [SP,#0x218+var_A8]
565D72:  B               loc_565D80
565D74:  ADD             R0, SP, #0x218+var_E0; this
565D76:  MOV             R1, R6; float
565D78:  MOV             R2, R5; float
565D7A:  MOV             R3, R9; float
565D7C:  BLX             j__ZN7CMatrix12SetTranslateEfff; CMatrix::SetTranslate(float,float,float)
565D80:  ADD             R0, SP, #0x218+var_E0; this
565D82:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
565D86:  LDR.W           R9, [SP,#0x218+var_1B0]
565D8A:  ADD             R0, SP, #0x218+var_150; this
565D8C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
565D90:  LDR.W           R5, [R9,#0x5C0]
565D94:  CMP             R5, #0
565D96:  BEQ             loc_565E1A
565D98:  ADD.W           R0, R9, #0x780
565D9C:  VLDR            S0, [R0]
565DA0:  ADD.W           R0, R9, #0x778
565DA4:  VLDR            S2, [R0]
565DA8:  ADDW            R0, R9, #0x7AC
565DAC:  VSUB.F32        S0, S2, S0
565DB0:  VLDR            S2, [R0]
565DB4:  VDIV.F32        S0, S0, S2
565DB8:  VMOV            R0, S0; x
565DBC:  BLX             asinf
565DC0:  ADD.W           R1, R5, #0x10
565DC4:  ADD             R5, SP, #0x218+var_E0
565DC6:  MOV             R6, R0
565DC8:  MOVS            R2, #0
565DCA:  MOV             R0, R5
565DCC:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
565DD0:  EOR.W           R1, R6, #0x80000000; x
565DD4:  MOV             R0, R5; this
565DD6:  MOVS            R2, #0; float
565DD8:  MOVS            R3, #0; float
565DDA:  VLDR            S16, [SP,#0x218+var_B0]
565DDE:  VLDR            S18, [SP,#0x218+var_AC]
565DE2:  VLDR            S20, [SP,#0x218+var_A8]
565DE6:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
565DEA:  VLDR            S0, [SP,#0x218+var_B0]
565DEE:  MOV             R0, R5; this
565DF0:  VLDR            S2, [SP,#0x218+var_AC]
565DF4:  VLDR            S4, [SP,#0x218+var_A8]
565DF8:  VADD.F32        S0, S16, S0
565DFC:  VADD.F32        S2, S18, S2
565E00:  VADD.F32        S4, S20, S4
565E04:  VSTR            S0, [SP,#0x218+var_B0]
565E08:  VSTR            S2, [SP,#0x218+var_AC]
565E0C:  VSTR            S4, [SP,#0x218+var_A8]
565E10:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
565E14:  ADD.W           R8, R5, #0x30 ; '0'
565E18:  B               loc_565E20
565E1A:  ADD             R0, SP, #0x218+var_E0
565E1C:  ADD.W           R8, R0, #0x30 ; '0'
565E20:  LDR.W           R0, [R9,#0x5C4]
565E24:  MOVS            R2, #0
565E26:  ADD.W           R1, R0, #0x10
565E2A:  ADD             R0, SP, #0x218+var_E0
565E2C:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
565E30:  LDR             R0, [SP,#0x218+var_1C8]
565E32:  VMOV.F32        S4, #0.5
565E36:  LDR.W           R6, [R8]
565E3A:  LDR             R0, [R0,#0x10]
565E3C:  VLDR            S0, [R0,#4]
565E40:  VLDR            S2, [R0,#0x24]
565E44:  ADDW            R0, R9, #0x77C
565E48:  VADD.F32        S0, S0, S2
565E4C:  VLDR            S2, [R0]
565E50:  ADDW            R0, R9, #0x774
565E54:  VLDR            S6, [R0]
565E58:  ADD.W           R0, R9, #0x7B8
565E5C:  VSUB.F32        S2, S6, S2
565E60:  VMUL.F32        S0, S0, S4
565E64:  VLDR            S4, [R0]
565E68:  ADD.W           R0, R9, #0x7B0
565E6C:  VLDR            S8, [R0]
565E70:  ADDW            R0, R9, #0x7B4
565E74:  VMUL.F32        S2, S2, S4
565E78:  VLDR            S4, [R0]
565E7C:  ADDW            R0, R9, #0x764
565E80:  VSUB.F32        S0, S0, S8
565E84:  VSUB.F32        S16, S6, S4
565E88:  VSUB.F32        S18, S0, S2
565E8C:  VLDR            S0, [R0]
565E90:  LDRB.W          R0, [R9,#0x670]
565E94:  CMP             R0, #1
565E96:  BNE             loc_565EBE
565E98:  VMOV            R5, S0
565E9C:  MOV             R0, R5; x
565E9E:  BLX             sinf
565EA2:  VMOV            S2, R0
565EA6:  VLDR            S0, =0.05
565EAA:  ADD             R0, SP, #0x218+var_E0; this
565EAC:  MOV             R1, R5; x
565EAE:  VMUL.F32        S0, S2, S0
565EB2:  MOVS            R2, #0; float
565EB4:  VMOV            R3, S0; float
565EB8:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
565EBC:  B               loc_565EC8
565EBE:  VMOV            R1, S0; x
565EC2:  ADD             R0, SP, #0x218+var_E0; this
565EC4:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
565EC8:  VLDR            S2, [SP,#0x218+var_AC]
565ECC:  VMOV            S6, R6
565ED0:  VLDR            S0, [SP,#0x218+var_B0]
565ED4:  ADD             R5, SP, #0x218+var_E0
565ED6:  VLDR            S4, [SP,#0x218+var_A8]
565EDA:  VADD.F32        S2, S18, S2
565EDE:  VADD.F32        S0, S0, S6
565EE2:  MOV             R0, R5; this
565EE4:  VADD.F32        S4, S16, S4
565EE8:  VSTR            S2, [SP,#0x218+var_AC]
565EEC:  VSTR            S4, [SP,#0x218+var_A8]
565EF0:  VSTR            S0, [SP,#0x218+var_B0]
565EF4:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
565EF8:  LDR.W           R0, [R9,#0x5CC]
565EFC:  MOVS            R2, #0
565EFE:  ADD.W           R1, R0, #0x10
565F02:  MOV             R0, R5
565F04:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
565F08:  MOV             R0, R5; this
565F0A:  STR.W           R6, [R8]
565F0E:  VSTR            S16, [SP,#0x218+var_A8]
565F12:  VSTR            S18, [SP,#0x218+var_AC]
565F16:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
565F1A:  LDR.W           R0, [R9,#0x5C8]
565F1E:  MOVS            R2, #0
565F20:  ADD.W           R1, R0, #0x10
565F24:  MOV             R0, R5
565F26:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
565F2A:  ADD.W           R0, R9, #0x768
565F2E:  VLDR            S16, [SP,#0x218+var_B0]
565F32:  VLDR            S18, [SP,#0x218+var_AC]
565F36:  VLDR            S0, [R0]
565F3A:  LDRB.W          R0, [R9,#0x671]
565F3E:  VLDR            S20, [SP,#0x218+var_A8]
565F42:  CMP             R0, #1
565F44:  BNE             loc_565F6C
565F46:  VMOV            R5, S0
565F4A:  MOV             R0, R5; x
565F4C:  BLX             sinf
565F50:  VMOV            S2, R0
565F54:  VLDR            S0, =0.07
565F58:  ADD             R0, SP, #0x218+var_E0; this
565F5A:  MOV             R1, R5; x
565F5C:  VMUL.F32        S0, S2, S0
565F60:  MOVS            R2, #0; float
565F62:  VMOV            R3, S0; float
565F66:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
565F6A:  B               loc_565F76
565F6C:  VMOV            R1, S0; x
565F70:  ADD             R0, SP, #0x218+var_E0; this
565F72:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
565F76:  VLDR            S0, [SP,#0x218+var_B0]
565F7A:  ADD             R0, SP, #0x218+var_E0; this
565F7C:  VLDR            S2, [SP,#0x218+var_AC]
565F80:  VLDR            S4, [SP,#0x218+var_A8]
565F84:  VADD.F32        S0, S16, S0
565F88:  VADD.F32        S2, S18, S2
565F8C:  VADD.F32        S4, S20, S4
565F90:  VSTR            S0, [SP,#0x218+var_B0]
565F94:  VSTR            S2, [SP,#0x218+var_AC]
565F98:  VSTR            S4, [SP,#0x218+var_A8]
565F9C:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
565FA0:  LDR.W           R0, [R9,#0x5B8]
565FA4:  CMP             R0, #0
565FA6:  BEQ             loc_566036
565FA8:  ADD             R5, SP, #0x218+var_E0
565FAA:  ADD.W           R1, R0, #0x10
565FAE:  MOVS            R2, #0
565FB0:  MOV             R0, R5
565FB2:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
565FB6:  ADDW            R0, R9, #0x65C
565FBA:  VLDR            S2, =-0.05
565FBE:  VLDR            S18, [SP,#0x218+var_B0]
565FC2:  VLDR            S16, [R0]
565FC6:  LDR             R0, [SP,#0x218+var_1D4]
565FC8:  VABS.F32        S0, S16
565FCC:  VLDR            S20, [SP,#0x218+var_AC]
565FD0:  VLDR            S22, [R0,#8]
565FD4:  MOV             R0, R5; this
565FD6:  VMUL.F32        S0, S0, S2
565FDA:  VMOV            R1, S0; x
565FDE:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
565FE2:  LDR.W           R1, [R9,#0x65C]; x
565FE6:  MOV             R0, R5; this
565FE8:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
565FEC:  VMOV            R0, S16; x
565FF0:  BLX             cosf
565FF4:  VMOV.F32        S0, #1.0
565FF8:  VLDR            S2, =0.9
565FFC:  VMOV            S4, R0
566000:  VLDR            S6, [SP,#0x218+var_A8]
566004:  VMUL.F32        S2, S22, S2
566008:  MOV             R0, R5; this
56600A:  VSUB.F32        S0, S0, S4
56600E:  VLDR            S4, [SP,#0x218+var_AC]
566012:  VADD.F32        S4, S20, S4
566016:  VMUL.F32        S0, S2, S0
56601A:  VLDR            S2, [SP,#0x218+var_B0]
56601E:  VADD.F32        S2, S18, S2
566022:  VADD.F32        S0, S0, S6
566026:  VSTR            S2, [SP,#0x218+var_B0]
56602A:  VSTR            S4, [SP,#0x218+var_AC]
56602E:  VSTR            S0, [SP,#0x218+var_A8]
566032:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
566036:  ADD             R0, SP, #0x218+var_E0; this
566038:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
56603C:  ADD             SP, SP, #0x1C8
56603E:  VPOP            {D8-D13}
566042:  ADD             SP, SP, #4
566044:  POP.W           {R8-R11}
566048:  POP             {R4-R7,PC}
