; =========================================================
; Game Engine Function: _ZN11CObjectData10InitialiseEPcb
; Address            : 0x468590 - 0x468AB0
; =========================================================

468590:  PUSH            {R4-R7,LR}
468592:  ADD             R7, SP, #0xC
468594:  PUSH.W          {R8-R11}
468598:  SUB             SP, SP, #4
46859A:  VPUSH           {D8-D11}
46859E:  SUB.W           SP, SP, #0x2E0
4685A2:  MOV             R4, R0
4685A4:  LDR.W           R0, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x4685B4)
4685A8:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x4685BA)
4685AC:  MOV.W           R8, #0
4685B0:  ADD             R0, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
4685B2:  MOVW            R2, #0xFF7E
4685B6:  ADD             R1, PC; __stack_chk_guard_ptr
4685B8:  MOVT            R2, #0x44C7
4685BC:  LDR             R5, [R0]; CObjectData::ms_aObjectInfo ...
4685BE:  ADR.W           R0, dword_468AB0
4685C2:  VLD1.64         {D16-D17}, [R0@128]
4685C6:  LDR             R0, [R1]; __stack_chk_guard
4685C8:  MOV.W           R1, #0x3F800000
4685CC:  STRD.W          R8, R1, [R5,#(dword_99ED50 - 0x99ED3C)]
4685D0:  MOVS            R1, #2
4685D2:  STRH.W          R8, [R5,#(word_99ED58 - 0x99ED3C)]
4685D6:  STRB            R1, [R5,#(byte_99ED5A - 0x99ED3C)]
4685D8:  MOV             R1, R5
4685DA:  VST1.32         {D16-D17}, [R1]!
4685DE:  LDR             R0, [R0]
4685E0:  STR             R2, [R1]
4685E2:  MOV             R1, R5; void *
4685E4:  STR             R0, [SP,#0x320+var_44]
4685E6:  ADD.W           R0, R5, #0x50 ; 'P'; void *
4685EA:  MOVS            R2, #0x50 ; 'P'; size_t
4685EC:  BLX             memcpy_0
4685F0:  ADD.W           R0, R5, #0xA0; void *
4685F4:  MOV             R1, R5; void *
4685F6:  MOVS            R2, #0x50 ; 'P'; size_t
4685F8:  STRB.W          R8, [R5,#(byte_99EDAA - 0x99ED3C)]
4685FC:  BLX             memcpy_0
468600:  ADD.W           R0, R5, #0xF0; void *
468604:  MOVS            R6, #4
468606:  MOV             R1, R5; void *
468608:  MOVS            R2, #0x50 ; 'P'; size_t
46860A:  STRB.W          R6, [R5,#(byte_99EDF9 - 0x99ED3C)]
46860E:  BLX             memcpy_0
468612:  ADD.W           R0, R5, #0x140; void *
468616:  MOV             R1, R5; void *
468618:  MOVS            R2, #0x50 ; 'P'; size_t
46861A:  STRH.W          R6, [R5,#(word_99EE49 - 0x99ED3C)]
46861E:  BLX             memcpy_0
468622:  LDR.W           R0, =(byte_61CD7E - 0x468630)
468626:  MOVS            R1, #byte_5; char *
468628:  STRB.W          R1, [R5,#(byte_99EE99 - 0x99ED3C)]
46862C:  ADD             R0, PC; byte_61CD7E ; this
46862E:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
468632:  ADR.W           R1, dword_468ACC; char *
468636:  MOV             R0, R4; this
468638:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
46863C:  MOV             R4, R0
46863E:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
468642:  CMP             R0, #0
468644:  BEQ.W           loc_468A86
468648:  LDR.W           R1, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x46865A)
46864C:  VMOV.I32        Q4, #0
468650:  ADD             R5, SP, #0x320+var_260
468652:  ADD.W           R11, SP, #0x320+var_244
468656:  ADD             R1, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
468658:  ADD.W           R10, SP, #0x320+var_144
46865C:  VLDR            S20, =100.0
468660:  MOV.W           R9, #5
468664:  LDR             R6, [R1]; CObjectData::ms_aObjectInfo ...
468666:  LDR.W           R1, =(g_fxMan_ptr - 0x468672)
46866A:  VLDR            S22, =0.008
46866E:  ADD             R1, PC; g_fxMan_ptr
468670:  LDR             R1, [R1]; g_fxMan
468672:  STR             R1, [SP,#0x320+var_270]
468674:  LDR.W           R1, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x46867C)
468678:  ADD             R1, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
46867A:  LDR             R1, [R1]; CObjectData::ms_aObjectInfo ...
46867C:  STR             R1, [SP,#0x320+var_26C]
46867E:  LDR.W           R1, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x468686)
468682:  ADD             R1, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
468684:  LDR             R1, [R1]; CObjectData::ms_aObjectInfo ...
468686:  STR             R1, [SP,#0x320+var_274]
468688:  LDR.W           R1, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x468690)
46868C:  ADD             R1, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
46868E:  LDR             R1, [R1]; CObjectData::ms_aObjectInfo ...
468690:  STR             R1, [SP,#0x320+var_278]
468692:  LDR.W           R1, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x46869A)
468696:  ADD             R1, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
468698:  LDR             R1, [R1]; CObjectData::ms_aObjectInfo ...
46869A:  STR             R1, [SP,#0x320+var_280]
46869C:  LDR.W           R1, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x4686A4)
4686A0:  ADD             R1, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
4686A2:  LDR             R1, [R1]; CObjectData::ms_aObjectInfo ...
4686A4:  STR             R1, [SP,#0x320+var_284]
4686A6:  LDR.W           R1, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x4686AE)
4686AA:  ADD             R1, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
4686AC:  LDR             R1, [R1]; CObjectData::ms_aObjectInfo ...
4686AE:  STR             R1, [SP,#0x320+var_27C]
4686B0:  B               loc_468A6A
4686B2:  ADD.W           R1, R9, R9,LSL#2
4686B6:  MOV             R2, R10
4686B8:  STRD.W          R6, R1, [SP,#0x320+var_298]
4686BC:  ADD.W           R6, R6, R1,LSL#4
4686C0:  ADD.W           R3, R6, #0x40 ; '@'
4686C4:  ADD.W           R1, R6, #0x20 ; ' '
4686C8:  ADD.W           R10, R6, #0x30 ; '0'
4686CC:  STR             R1, [SP,#0x320+var_29C]
4686CE:  VST1.32         {D8-D9}, [R3]
4686D2:  VST1.32         {D8-D9}, [R10]
4686D6:  VST1.32         {D8-D9}, [R1]
4686DA:  MOV             R1, R6
4686DC:  VST1.32         {D8-D9}, [R1]!
4686E0:  VST1.32         {D8-D9}, [R1]
4686E4:  ADD.W           R1, R6, #0x48 ; 'H'
4686E8:  STR             R5, [SP,#0x320+var_2CC]
4686EA:  MOV             R5, R11
4686EC:  STR             R1, [SP,#0x320+var_2D0]
4686EE:  STR             R1, [SP,#0x320+var_2C4]
4686F0:  ADD             R1, SP, #0x320+var_248
4686F2:  STR.W           R11, [SP,#0x320+var_2E8]
4686F6:  MOV             R11, R2
4686F8:  STR             R1, [SP,#0x320+var_2F8]
4686FA:  ADD             R1, SP, #0x320+var_24C
4686FC:  STR             R1, [SP,#0x320+var_2FC]
4686FE:  ADD             R1, SP, #0x320+var_25C
468700:  STR             R1, [SP,#0x320+var_300]
468702:  ADD             R1, SP, #0x320+var_258
468704:  STR             R1, [SP,#0x320+var_304]
468706:  ADD             R1, SP, #0x320+var_254
468708:  STR             R1, [SP,#0x320+var_308]
46870A:  ADD             R1, SP, #0x320+var_250
46870C:  STR             R1, [SP,#0x320+var_314]
46870E:  ADD.W           R1, R6, #0x44 ; 'D'
468712:  STR.W           R8, [SP,#0x320+var_260]
468716:  STRD.W          R1, R3, [SP,#0x320+var_2C0]
46871A:  STRD.W          R3, R1, [SP,#0x320+var_2D8]
46871E:  ADD.W           R1, R6, #0x3C ; '<'
468722:  STR             R1, [SP,#0x320+var_2B8]
468724:  MOV             R3, R6
468726:  STR             R1, [SP,#0x320+var_2DC]
468728:  ADD.W           R1, R6, #0x38 ; '8'
46872C:  STR             R1, [SP,#0x320+var_2B4]
46872E:  STR             R1, [SP,#0x320+var_2E0]
468730:  ADD.W           R1, R6, #0x34 ; '4'
468734:  STR             R1, [SP,#0x320+var_2B0]
468736:  STR             R1, [SP,#0x320+var_2E4]
468738:  ADD.W           R1, R6, #0x2C ; ','
46873C:  STR             R1, [SP,#0x320+var_2A8]
46873E:  STR             R1, [SP,#0x320+var_2EC]
468740:  ADD.W           R1, R6, #0x28 ; '('
468744:  STR             R1, [SP,#0x320+var_2A4]
468746:  STR             R1, [SP,#0x320+var_2F0]
468748:  ADD.W           R1, R6, #0x24 ; '$'
46874C:  STR             R1, [SP,#0x320+var_2A0]
46874E:  STR             R1, [SP,#0x320+var_2F4]
468750:  ADD.W           R1, R6, #0x18
468754:  STR             R1, [SP,#0x320+var_290]
468756:  STR             R1, [SP,#0x320+var_30C]
468758:  ADD.W           R1, R6, #0x14
46875C:  STR             R1, [SP,#0x320+var_28C]
46875E:  STR             R1, [SP,#0x320+var_310]
468760:  ADD.W           R1, R6, #0xC
468764:  STR             R1, [SP,#0x320+var_288]
468766:  STR             R1, [SP,#0x320+var_318]
468768:  ADD.W           R1, R6, #8
46876C:  STR             R1, [SP,#0x320+var_268]
46876E:  STR             R1, [SP,#0x320+var_31C]
468770:  ADDS            R1, R6, #4
468772:  STR             R1, [SP,#0x320+var_264]
468774:  STR             R1, [SP,#0x320+var_320]
468776:  LDR             R1, =(aSFFFFFFFDDDDDF - 0x46877C); "%s %f %f %f %f %f %f %f %d %d %d %d %d "...
468778:  ADD             R1, PC; "%s %f %f %f %f %f %f %f %d %d %d %d %d "...
46877A:  BLX             sscanf
46877E:  LDR             R0, [SP,#0x320+var_248]
468780:  STR.W           R8, [R6,#0x30]
468784:  CMP             R0, #1
468786:  STRB.W          R0, [R6,#0x20]
46878A:  BLT             loc_468798
46878C:  LDR             R0, [SP,#0x320+var_270]; this
46878E:  MOV             R1, R5; CKeyGen *
468790:  BLX             j__ZN11FxManager_c14FindFxSystemBPEPc; FxManager_c::FindFxSystemBP(char *)
468794:  STR.W           R0, [R10]
468798:  VLDR            S0, [SP,#0x320+var_250]
46879C:  VLDR            S2, [R6]
4687A0:  VDIV.F32        S0, S20, S0
4687A4:  LDR             R1, [SP,#0x320+var_294]
4687A6:  LDR             R0, [SP,#0x320+var_26C]
4687A8:  STR.W           R10, [SP,#0x320+var_2AC]
4687AC:  MOV             R10, R11
4687AE:  ADD.W           R8, R0, R1,LSL#4
4687B2:  LDR             R0, [SP,#0x320+var_254]
4687B4:  MOVS            R1, #0; char *
4687B6:  VMUL.F32        S2, S2, S22
4687BA:  VMUL.F32        S0, S2, S0
4687BE:  VSTR            S0, [R8,#0x10]
4687C2:  STRB.W          R0, [R8,#0x1C]
4687C6:  LDR             R0, [SP,#0x320+var_258]
4687C8:  STRB.W          R0, [R8,#0x1D]
4687CC:  LDR             R0, [SP,#0x320+var_25C]
4687CE:  STRB.W          R0, [R8,#0x1E]
4687D2:  LDR             R0, [SP,#0x320+var_24C]
4687D4:  STRB.W          R0, [R8,#0x1F]
4687D8:  LDR             R0, [SP,#0x320+var_260]
4687DA:  STRB.W          R0, [R8,#0x4C]
4687DE:  MOV             R0, R11; this
4687E0:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
4687E4:  CMP             R0, #0
4687E6:  BEQ.W           loc_468A42
4687EA:  LDR             R1, [SP,#0x320+var_274]
4687EC:  ADD.W           R11, R8, #0x1E
4687F0:  VLDR            S0, [R6]
4687F4:  ADD.W           R2, R8, #0x1D
4687F8:  ADD.W           R3, R8, #0x1C
4687FC:  VLDR            S2, [R1]
468800:  VCMP.F32        S0, S2
468804:  VMRS            APSR_nzcv, FPSCR
468808:  BNE             loc_468864
46880A:  LDR             R1, [SP,#0x320+var_290]
46880C:  VLDR            S4, [R1]
468810:  LDR             R1, [SP,#0x320+var_278]
468812:  VLDR            S6, [R1,#0x18]
468816:  VCMP.F32        S4, S6
46881A:  VMRS            APSR_nzcv, FPSCR
46881E:  BNE             loc_468864
468820:  LDR             R1, [SP,#0x320+var_280]
468822:  LDRB            R6, [R3]
468824:  LDRB            R5, [R1,#0x1C]
468826:  CMP             R6, R5
468828:  BNE             loc_468864
46882A:  LDR             R1, [SP,#0x320+var_284]
46882C:  LDRB            R6, [R2]
46882E:  LDRB            R5, [R1,#0x1D]
468830:  CMP             R6, R5
468832:  ITTT NE
468834:  LDRNE           R1, [SP,#0x320+var_284]
468836:  LDRBNE.W        R1, [R1,#0xBD]
46883A:  CMPNE           R6, R1
46883C:  BNE             loc_468864
46883E:  LDRB.W          R1, [R11]
468842:  CMP             R6, R5
468844:  MOV.W           R8, #0
468848:  MOV.W           R2, #2
46884C:  BNE.W           loc_468A50
468850:  LDR             R6, [SP,#0x320+var_298]
468852:  ADD             R5, SP, #0x320+var_260
468854:  ADD.W           R11, SP, #0x320+var_244
468858:  CMP             R1, #0
46885A:  BEQ.W           loc_468A64
46885E:  STRH.W          R8, [R0,#0x26]
468862:  B               loc_468A74
468864:  LDR             R5, [SP,#0x320+var_288]
468866:  CMP.W           R9, #0
46886A:  BEQ.W           loc_468A3A
46886E:  ADD.W           R1, R8, #0x4C ; 'L'
468872:  STR             R1, [SP,#0x320+var_2C8]
468874:  ADD.W           R1, R8, #0x1F
468878:  STR             R1, [SP,#0x320+var_294]
46887A:  LDR             R1, [SP,#0x320+var_27C]
46887C:  ADD.W           R6, R8, #0x10
468880:  MOV.W           R12, #0
468884:  ADD.W           LR, R1, #0x28 ; '('
468888:  B               loc_468892
46888A:  VLDR            S2, [LR,#0x28]
46888E:  ADD.W           LR, LR, #0x50 ; 'P'
468892:  VCMP.F32        S0, S2
468896:  VMRS            APSR_nzcv, FPSCR
46889A:  BNE.W           loc_46899E
46889E:  LDR             R1, [SP,#0x320+var_264]
4688A0:  VLDR            S2, [LR,#-0x24]
4688A4:  VLDR            S4, [R1]
4688A8:  VCMP.F32        S4, S2
4688AC:  VMRS            APSR_nzcv, FPSCR
4688B0:  BNE             loc_46899E
4688B2:  LDR             R1, [SP,#0x320+var_268]
4688B4:  VLDR            S2, [LR,#-0x20]
4688B8:  VLDR            S4, [R1]
4688BC:  VCMP.F32        S4, S2
4688C0:  VMRS            APSR_nzcv, FPSCR
4688C4:  BNE             loc_46899E
4688C6:  VLDR            S2, [LR,#-0x1C]
4688CA:  VLDR            S4, [R5]
4688CE:  VCMP.F32        S4, S2
4688D2:  VMRS            APSR_nzcv, FPSCR
4688D6:  BNE             loc_46899E
4688D8:  VLDR            S2, [LR,#-0x18]
4688DC:  VLDR            S4, [R6]
4688E0:  VCMP.F32        S4, S2
4688E4:  VMRS            APSR_nzcv, FPSCR
4688E8:  BNE             loc_46899E
4688EA:  LDR             R1, [SP,#0x320+var_28C]
4688EC:  VLDR            S2, [LR,#-0x14]
4688F0:  VLDR            S4, [R1]
4688F4:  VCMP.F32        S4, S2
4688F8:  VMRS            APSR_nzcv, FPSCR
4688FC:  BNE             loc_46899E
4688FE:  LDR             R1, [SP,#0x320+var_290]
468900:  VLDR            S2, [LR,#-0x10]
468904:  VLDR            S4, [R1]
468908:  VCMP.F32        S4, S2
46890C:  VMRS            APSR_nzcv, FPSCR
468910:  BNE             loc_46899E
468912:  LDRB.W          R1, [LR,#-0xC]
468916:  LDRB            R5, [R3]
468918:  CMP             R5, R1
46891A:  LDR             R5, [SP,#0x320+var_288]
46891C:  BNE             loc_46899E
46891E:  LDRB.W          R1, [LR,#-0xB]
468922:  LDRB            R5, [R2]
468924:  CMP             R5, R1
468926:  LDR             R5, [SP,#0x320+var_288]
468928:  BNE             loc_46899E
46892A:  LDRB.W          R1, [LR,#-0xA]
46892E:  LDRB.W          R5, [R11]
468932:  CMP             R5, R1
468934:  LDR             R5, [SP,#0x320+var_288]
468936:  BNE             loc_46899E
468938:  LDR             R5, [SP,#0x320+var_294]
46893A:  LDRB.W          R1, [LR,#-9]
46893E:  LDRB            R5, [R5]
468940:  CMP             R5, R1
468942:  LDR             R5, [SP,#0x320+var_288]
468944:  BNE             loc_46899E
468946:  LDR             R5, [SP,#0x320+var_29C]
468948:  LDRB.W          R1, [LR,#-8]
46894C:  LDRB            R5, [R5]
46894E:  CMP             R5, R1
468950:  LDR             R5, [SP,#0x320+var_288]
468952:  BNE             loc_46899E
468954:  LDR             R1, [SP,#0x320+var_2A0]
468956:  VLDR            S2, [LR,#-4]
46895A:  VLDR            S4, [R1]
46895E:  VCMP.F32        S4, S2
468962:  VMRS            APSR_nzcv, FPSCR
468966:  BNE             loc_46899E
468968:  LDR             R1, [SP,#0x320+var_2A4]
46896A:  VLDR            S2, [LR]
46896E:  VLDR            S4, [R1]
468972:  VCMP.F32        S4, S2
468976:  VMRS            APSR_nzcv, FPSCR
46897A:  BNE             loc_46899E
46897C:  LDR             R1, [SP,#0x320+var_2A8]
46897E:  VLDR            S2, [LR,#4]
468982:  VLDR            S4, [R1]
468986:  VCMP.F32        S4, S2
46898A:  VMRS            APSR_nzcv, FPSCR
46898E:  BNE             loc_46899E
468990:  LDR             R5, [SP,#0x320+var_2AC]
468992:  LDR.W           R1, [LR,#8]
468996:  LDR             R5, [R5]
468998:  CMP             R5, R1
46899A:  LDR             R5, [SP,#0x320+var_288]
46899C:  BEQ             loc_4689B4
46899E:  ADD.W           R12, R12, #1
4689A2:  CMP             R12, R9
4689A4:  BCC.W           loc_46888A
4689A8:  B               loc_468A3A
4689AA:  ALIGN 4
4689AC:  DCFS 100.0
4689B0:  DCFS 0.008
4689B4:  LDR             R1, [SP,#0x320+var_2B0]
4689B6:  VLDR            S2, [LR,#0xC]
4689BA:  VLDR            S4, [R1]
4689BE:  VCMP.F32        S4, S2
4689C2:  VMRS            APSR_nzcv, FPSCR
4689C6:  BNE             loc_46899E
4689C8:  LDR             R1, [SP,#0x320+var_2B4]
4689CA:  VLDR            S2, [LR,#0x10]
4689CE:  VLDR            S4, [R1]
4689D2:  VCMP.F32        S4, S2
4689D6:  VMRS            APSR_nzcv, FPSCR
4689DA:  BNE             loc_46899E
4689DC:  LDR             R1, [SP,#0x320+var_2B8]
4689DE:  VLDR            S2, [LR,#0x14]
4689E2:  VLDR            S4, [R1]
4689E6:  VCMP.F32        S4, S2
4689EA:  VMRS            APSR_nzcv, FPSCR
4689EE:  BNE             loc_46899E
4689F0:  LDR             R1, [SP,#0x320+var_2BC]
4689F2:  VLDR            S2, [LR,#0x18]
4689F6:  VLDR            S4, [R1]
4689FA:  VCMP.F32        S4, S2
4689FE:  VMRS            APSR_nzcv, FPSCR
468A02:  BNE             loc_46899E
468A04:  LDR             R1, [SP,#0x320+var_2C0]
468A06:  VLDR            S2, [LR,#0x1C]
468A0A:  VLDR            S4, [R1]
468A0E:  VCMP.F32        S4, S2
468A12:  VMRS            APSR_nzcv, FPSCR
468A16:  BNE             loc_46899E
468A18:  LDR             R5, [SP,#0x320+var_2C4]
468A1A:  LDR.W           R1, [LR,#0x20]
468A1E:  LDR             R5, [R5]
468A20:  CMP             R5, R1
468A22:  LDR             R5, [SP,#0x320+var_288]
468A24:  BNE             loc_46899E
468A26:  LDR             R5, [SP,#0x320+var_2C8]
468A28:  LDRB.W          R1, [LR,#0x24]
468A2C:  LDRB            R5, [R5]
468A2E:  CMP             R5, R1
468A30:  LDR             R5, [SP,#0x320+var_288]
468A32:  BNE             loc_46899E
468A34:  STRH.W          R12, [R0,#0x26]
468A38:  B               loc_468A42
468A3A:  STRH.W          R9, [R0,#0x26]
468A3E:  ADD.W           R9, R9, #1
468A42:  MOV.W           R8, #0
468A46:  LDR             R6, [SP,#0x320+var_298]
468A48:  ADD             R5, SP, #0x320+var_260
468A4A:  ADD.W           R11, SP, #0x320+var_244
468A4E:  B               loc_468A74
468A50:  LDR             R6, [SP,#0x320+var_298]
468A52:  ADD             R5, SP, #0x320+var_260
468A54:  ADD.W           R11, SP, #0x320+var_244
468A58:  CMP             R1, #0
468A5A:  ITEE NE
468A5C:  STRHNE          R2, [R0,#0x26]
468A5E:  MOVEQ           R1, #3
468A60:  STRHEQ          R1, [R0,#0x26]
468A62:  B               loc_468A74
468A64:  MOVS            R1, #1
468A66:  STRH            R1, [R0,#0x26]
468A68:  B               loc_468A74
468A6A:  LDRB            R1, [R0]; unsigned int
468A6C:  CMP             R1, #0
468A6E:  IT NE
468A70:  CMPNE           R1, #0x3B ; ';'
468A72:  BNE             loc_468A80
468A74:  MOV             R0, R4; this
468A76:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
468A7A:  CMP             R0, #0
468A7C:  BNE             loc_468A6A
468A7E:  B               loc_468A86
468A80:  CMP             R1, #0x2A ; '*'
468A82:  BNE.W           loc_4686B2
468A86:  MOV             R0, R4; this
468A88:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
468A8C:  LDR             R0, =(__stack_chk_guard_ptr - 0x468A94)
468A8E:  LDR             R1, [SP,#0x320+var_44]
468A90:  ADD             R0, PC; __stack_chk_guard_ptr
468A92:  LDR             R0, [R0]; __stack_chk_guard
468A94:  LDR             R0, [R0]
468A96:  SUBS            R0, R0, R1
468A98:  ITTTT EQ
468A9A:  ADDEQ.W         SP, SP, #0x2E0
468A9E:  VPOPEQ          {D8-D11}
468AA2:  ADDEQ           SP, SP, #4
468AA4:  POPEQ.W         {R8-R11}
468AA8:  IT EQ
468AAA:  POPEQ           {R4-R7,PC}
468AAC:  BLX             __stack_chk_fail
