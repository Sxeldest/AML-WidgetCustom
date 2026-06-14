; =========================================================
; Game Engine Function: sub_13C604
; Address            : 0x13C604 - 0x13CAB6
; =========================================================

13C604:  PUSH            {R4-R7,LR}
13C606:  ADD             R7, SP, #0xC
13C608:  PUSH.W          {R8-R11}
13C60C:  SUB             SP, SP, #4
13C60E:  VPUSH           {D12-D13}
13C612:  VPUSH           {D8-D10}
13C616:  SUB             SP, SP, #0x1A0; float
13C618:  STR             R0, [SP,#0x1E8+var_1D8]
13C61A:  MOV             R8, R1
13C61C:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13C62C)
13C61E:  ADD.W           R9, SP, #0x1E8+var_E4
13C622:  LDR             R1, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x13C632)
13C624:  ADD.W           R5, R9, #0xC
13C628:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13C62A:  MOV.W           R10, #0
13C62E:  ADD             R1, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
13C630:  STR.W           R10, [SP,#0x1E8+var_4C]
13C634:  LDR             R4, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13C636:  LDR             R1, [R1]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13C638:  ADD.W           R6, R4, #0x20 ; ' '
13C63C:  STRD.W          R10, R10, [SP,#0x1E8+var_54]
13C640:  ADD.W           R0, R1, #0x20 ; ' '
13C644:  STR             R0, [SP,#0x1E8+var_1CC]
13C646:  STR             R0, [SP,#0x1E8+var_A4]
13C648:  ADD.W           R0, R1, #0xC
13C64C:  STR             R0, [SP,#0x1E8+var_1D0]
13C64E:  STR             R0, [SP,#0x1E8+var_E4]
13C650:  ADD.W           R0, R9, #0x40 ; '@'; this
13C654:  STR.W           R10, [SP,#0x1E8+var_E0]
13C658:  STR             R6, [SP,#0x1E8+var_DC]
13C65A:  MOV             R1, R5; void *
13C65C:  STR             R0, [SP,#0x1E8+var_1E0]
13C65E:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
13C662:  MOV.W           R0, #0xFFFFFFFF
13C666:  STR             R6, [SP,#0x1E8+var_DC]
13C668:  STRD.W          R10, R0, [SP,#0x1E8+var_5C]
13C66C:  ADD.W           R0, R4, #0x34 ; '4'
13C670:  STR             R0, [SP,#0x1E8+var_1B8]
13C672:  STR             R0, [SP,#0x1E8+var_A4]
13C674:  ADD.W           R0, R4, #0xC
13C678:  STR             R0, [SP,#0x1E8+var_1BC]
13C67A:  STR             R0, [SP,#0x1E8+var_E4]
13C67C:  MOV             R0, R5
13C67E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
13C682:  STR             R6, [SP,#0x1E8+var_1B4]
13C684:  VMOV.I32        Q4, #0
13C688:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13C694)
13C68A:  ADD.W           R1, R9, #0x2C ; ','
13C68E:  MOVS            R2, #0x18
13C690:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13C692:  VST1.32         {D8-D9}, [R1]!
13C696:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
13C698:  STR             R2, [R1]
13C69A:  ADDS            R0, #8
13C69C:  STR             R0, [SP,#0x1E8+var_1C0]
13C69E:  STR             R0, [SP,#0x1E8+var_D8]
13C6A0:  MOV             R0, R5
13C6A2:  MOV             R1, R8
13C6A4:  STR             R5, [SP,#0x1E8+var_1DC]
13C6A6:  BL              sub_E3EC0
13C6AA:  ADD.W           R9, SP, #0x1E8+var_18C
13C6AE:  VMOV.F32        S20, #0.5
13C6B2:  ADD.W           R0, R9, #0x2C ; ','
13C6B6:  STR             R0, [SP,#0x1E8+var_1D4]
13C6B8:  ADD.W           R0, R9, #0x40 ; '@'
13C6BC:  STR             R0, [SP,#0x1E8+var_1C4]
13C6BE:  ADD.W           R0, R9, #0xC
13C6C2:  STR             R0, [SP,#0x1E8+var_1C8]
13C6C4:  VMOV.F32        Q6, #1.0
13C6C8:  LDR             R5, [SP,#0x1E8+var_1C8]
13C6CA:  ADD.W           R10, SP, #0x1E8+var_198
13C6CE:  ADD             R4, SP, #0x1E8+var_1B0
13C6D0:  ADD.W           R8, SP, #0x1E8+var_FC
13C6D4:  MOVS            R6, #0
13C6D6:  STRD.W          R6, R6, [SP,#0x1E8+var_F0]
13C6DA:  STR             R6, [SP,#0x1E8+var_E8]
13C6DC:  ADD             R0, SP, #0x1E8+var_E4
13C6DE:  ADD             R1, SP, #0x1E8+var_F0
13C6E0:  MOVS            R2, #0xA
13C6E2:  BL              sub_E384C
13C6E6:  LDR             R1, [R0]
13C6E8:  LDR.W           R1, [R1,#-0xC]
13C6EC:  ADD             R0, R1
13C6EE:  LDRB            R0, [R0,#0x10]
13C6F0:  TST.W           R0, #5
13C6F4:  BNE.W           loc_13C82A
13C6F8:  LDRB.W          R0, [SP,#0x1E8+var_F0]
13C6FC:  LDR             R1, [SP,#0x1E8+var_EC]
13C6FE:  LSLS            R2, R0, #0x1F
13C700:  IT EQ
13C702:  LSREQ           R1, R0, #1
13C704:  CMP             R1, #0
13C706:  BEQ             loc_13C6DC
13C708:  LDR             R0, [SP,#0x1E8+var_1CC]
13C70A:  MOV.W           R11, #0
13C70E:  STR             R0, [SP,#0x1E8+var_14C]
13C710:  LDR             R0, [SP,#0x1E8+var_1D0]
13C712:  STR             R6, [SP,#0x1E8+var_F4]
13C714:  STRD.W          R6, R6, [SP,#0x1E8+var_FC]
13C718:  STR             R6, [SP,#0x1E8+var_188]
13C71A:  LDR             R6, [SP,#0x1E8+var_1B4]
13C71C:  STR             R0, [SP,#0x1E8+var_18C]
13C71E:  STR             R6, [SP,#0x1E8+var_184]
13C720:  LDR             R0, [SP,#0x1E8+var_1C4]; this
13C722:  MOV             R1, R5; void *
13C724:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
13C728:  MOV.W           R0, #0xFFFFFFFF
13C72C:  STR             R6, [SP,#0x1E8+var_184]
13C72E:  STRD.W          R11, R0, [SP,#0x1E8+var_104]
13C732:  LDR             R0, [SP,#0x1E8+var_1B8]
13C734:  STR             R0, [SP,#0x1E8+var_14C]
13C736:  LDR             R0, [SP,#0x1E8+var_1BC]
13C738:  STR             R0, [SP,#0x1E8+var_18C]
13C73A:  MOV             R0, R5
13C73C:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
13C740:  LDR             R0, [SP,#0x1E8+var_1D4]
13C742:  VST1.32         {D8-D9}, [R0]
13C746:  MOVS            R0, #0x18
13C748:  STR             R0, [SP,#0x1E8+var_150]
13C74A:  LDR             R0, [SP,#0x1E8+var_1C0]
13C74C:  STR             R0, [SP,#0x1E8+var_180]
13C74E:  ADD             R1, SP, #0x1E8+var_F0
13C750:  MOV             R0, R5
13C752:  BL              sub_E3EC0
13C756:  MOVS            R6, #0
13C758:  STRD.W          R6, R6, [SP,#0x1E8+var_198]
13C75C:  STR             R6, [SP,#0x1E8+var_190]
13C75E:  MOV             R0, R9
13C760:  MOV             R1, R10
13C762:  MOVS            R2, #9
13C764:  BL              sub_E384C
13C768:  LDR             R1, [R0]
13C76A:  LDR.W           R1, [R1,#-0xC]
13C76E:  ADD             R0, R1
13C770:  LDRB            R0, [R0,#0x10]
13C772:  TST.W           R0, #5
13C776:  BNE             loc_13C7CC
13C778:  MOVS            R0, #0x78 ; 'x'; unsigned int
13C77A:  BLX             j__Znwj; operator new(uint)
13C77E:  MOV             R11, R0
13C780:  LDR             R0, =(off_234980 - 0x13C78A)
13C782:  VST1.64         {D12-D13}, [R4]
13C786:  ADD             R0, PC; off_234980
13C788:  LDR             R0, [R0]; dword_238EC0
13C78A:  VLDR            S0, [R0]
13C78E:  VMUL.F32        S0, S0, S20
13C792:  MOV             R0, R11; int
13C794:  MOV             R1, R10; int
13C796:  MOV             R2, R4; int
13C798:  MOVS            R3, #0; int
13C79A:  VSTR            S0, [SP,#0x1E8+var_1E8]
13C79E:  BL              sub_13D3DC
13C7A2:  LDR.W           R0, [R11]
13C7A6:  STR.W           R11, [SP,#0x1E8+var_19C]
13C7AA:  LDR             R1, [R0,#8]
13C7AC:  MOV             R0, R11
13C7AE:  BLX             R1
13C7B0:  LDRD.W          R0, R1, [SP,#0x1E8+var_F8]
13C7B4:  CMP             R0, R1
13C7B6:  BEQ             loc_13C7C2
13C7B8:  LDR             R1, [SP,#0x1E8+var_19C]
13C7BA:  STR.W           R1, [R0],#4
13C7BE:  STR             R0, [SP,#0x1E8+var_F8]
13C7C0:  B               loc_13C75E
13C7C2:  ADD             R1, SP, #0x1E8+var_19C
13C7C4:  MOV             R0, R8
13C7C6:  BL              sub_13C0E8
13C7CA:  B               loc_13C75E
13C7CC:  ADD             R0, SP, #0x1E8+var_54
13C7CE:  MOV             R1, R8
13C7D0:  BL              sub_13BE9C
13C7D4:  LDRB.W          R0, [SP,#0x1E8+var_198]
13C7D8:  LSLS            R0, R0, #0x1F
13C7DA:  ITT NE
13C7DC:  LDRNE           R0, [SP,#0x1E8+var_190]; void *
13C7DE:  BLXNE           j__ZdlPv; operator delete(void *)
13C7E2:  LDRB.W          R0, [SP,#0x1E8+var_160]
13C7E6:  LDR             R1, [SP,#0x1E8+var_1B8]
13C7E8:  STR             R1, [SP,#0x1E8+var_14C]
13C7EA:  LDR             R1, [SP,#0x1E8+var_1BC]
13C7EC:  LSLS            R0, R0, #0x1F
13C7EE:  STR             R1, [SP,#0x1E8+var_18C]
13C7F0:  LDR             R1, [SP,#0x1E8+var_1C0]
13C7F2:  STR             R1, [SP,#0x1E8+var_180]
13C7F4:  LDR             R1, [SP,#0x1E8+var_1B4]
13C7F6:  STR             R1, [SP,#0x1E8+var_184]
13C7F8:  ITT NE
13C7FA:  LDRNE           R0, [SP,#0x1E8+var_158]; void *
13C7FC:  BLXNE           j__ZdlPv; operator delete(void *)
13C800:  MOV             R0, R5
13C802:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
13C806:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13C80C)
13C808:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13C80A:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13C80C:  ADDS            R1, R0, #4
13C80E:  MOV             R0, R9
13C810:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
13C814:  LDR             R0, [SP,#0x1E8+var_1C4]
13C816:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
13C81A:  LDR             R0, [SP,#0x1E8+var_FC]; void *
13C81C:  CMP             R0, #0
13C81E:  BEQ.W           loc_13C6DC
13C822:  STR             R0, [SP,#0x1E8+var_F8]
13C824:  BLX             j__ZdlPv; operator delete(void *)
13C828:  B               loc_13C6DC
13C82A:  LDRD.W          R0, R1, [SP,#0x1E8+var_54]
13C82E:  MOV.W           R11, #0
13C832:  STR.W           R11, [SP,#0x1E8+var_1A8]
13C836:  CMP             R1, R0
13C838:  STRD.W          R11, R11, [SP,#0x1E8+var_1B0]
13C83C:  BEQ.W           loc_13CA36
13C840:  ADD.W           R9, R4, #8
13C844:  MOVS            R3, #0
13C846:  MOV.W           R10, #0
13C84A:  ADD.W           R6, R10, R10,LSL#1
13C84E:  ADD.W           R4, R0, R6,LSL#2
13C852:  LDR.W           R2, [R0,R6,LSL#2]
13C856:  LDR             R4, [R4,#4]
13C858:  CMP             R4, R2
13C85A:  BEQ             loc_13C94A
13C85C:  MOVS            R1, #0
13C85E:  MOV             R8, R1
13C860:  LDR             R1, [SP,#0x1E8+var_1AC]
13C862:  SUBS            R2, R1, R3
13C864:  CMP.W           R8, R2,ASR#2
13C868:  BCC             loc_13C910
13C86A:  LDR             R4, [SP,#0x1E8+var_1A8]
13C86C:  CMP             R1, R4
13C86E:  BCS             loc_13C888
13C870:  STR.W           R11, [R1],#4
13C874:  STR             R1, [SP,#0x1E8+var_1AC]
13C876:  B               loc_13C910
13C878:  DCD _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13C62C
13C87C:  DCD _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x13C632
13C880:  DCD _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13C694
13C884:  DCD off_234980 - 0x13C78A
13C888:  ASRS            R2, R2, #2
13C88A:  ADDS            R1, R2, #1
13C88C:  CMP.W           R1, #0x40000000
13C890:  BCS.W           loc_13CAB0
13C894:  SUBS            R0, R4, R3
13C896:  MOV             R3, #0x7FFFFFFC
13C89E:  CMP.W           R1, R0,ASR#1
13C8A2:  IT LS
13C8A4:  ASRLS           R1, R0, #1
13C8A6:  CMP             R0, R3
13C8A8:  IT CS
13C8AA:  MOVCS           R1, #0x3FFFFFFF
13C8AE:  ADD             R0, SP, #0x1E8+var_18C
13C8B0:  MOV             R3, R9
13C8B2:  BL              sub_13C368
13C8B6:  LDRD.W          R1, R0, [SP,#0x1E8+var_1B0]; src
13C8BA:  LDRD.W          R3, R4, [SP,#0x1E8+var_188]
13C8BE:  SUBS            R2, R0, R1; n
13C8C0:  STR.W           R11, [R4],#4
13C8C4:  SUBS            R3, R3, R2
13C8C6:  CMP             R2, #1
13C8C8:  STR             R4, [SP,#0x1E8+var_184]
13C8CA:  STR             R3, [SP,#0x1E8+var_188]
13C8CC:  BLT             loc_13C8DC
13C8CE:  MOV             R0, R3; dest
13C8D0:  BLX             j_memcpy
13C8D4:  LDRD.W          R3, R4, [SP,#0x1E8+var_188]
13C8D8:  LDRD.W          R1, R0, [SP,#0x1E8+var_1B0]
13C8DC:  LDR             R2, [SP,#0x1E8+var_1A8]
13C8DE:  ADD.W           R12, SP, #0x1E8+var_1B0
13C8E2:  CMP             R0, R1
13C8E4:  LDR             R5, [SP,#0x1E8+var_180]
13C8E6:  STM.W           R12, {R3-R5}
13C8EA:  STRD.W          R0, R2, [SP,#0x1E8+var_184]
13C8EE:  STRD.W          R1, R1, [SP,#0x1E8+var_18C]
13C8F2:  ITTTT NE
13C8F4:  SUBNE           R2, R0, R1
13C8F6:  SUBNE           R2, #4
13C8F8:  MVNNE.W         R2, R2,LSR#2
13C8FC:  ADDNE.W         R0, R0, R2,LSL#2
13C900:  IT NE
13C902:  STRNE           R0, [SP,#0x1E8+var_184]
13C904:  CBZ             R1, loc_13C90E
13C906:  MOV             R0, R1; void *
13C908:  BLX             j__ZdlPv; operator delete(void *)
13C90C:  LDR             R3, [SP,#0x1E8+var_1B0]
13C90E:  LDR             R0, [SP,#0x1E8+var_54]
13C910:  LDR.W           R2, [R0,R6,LSL#2]
13C914:  ADD.W           R4, R3, R8,LSL#2
13C918:  ADD.W           R1, R8, #1
13C91C:  VLDR            S0, [R4]
13C920:  LDR.W           R5, [R2,R8,LSL#2]
13C924:  VLDR            S2, [R5,#0x14]
13C928:  ADD.W           R5, R0, R6,LSL#2
13C92C:  VCMP.F32        S0, S2
13C930:  VMRS            APSR_nzcv, FPSCR
13C934:  IT MI
13C936:  VMOVMI.F32      S0, S2
13C93A:  LDR             R5, [R5,#4]
13C93C:  VSTR            S0, [R4]
13C940:  SUBS            R2, R5, R2
13C942:  CMP.W           R1, R2,ASR#2
13C946:  BCC             loc_13C85E
13C948:  LDR             R1, [SP,#0x1E8+var_50]
13C94A:  SUBS            R2, R1, R0
13C94C:  MOV             R6, #0xAAAAAAAB
13C954:  ADD.W           R10, R10, #1
13C958:  ASRS            R2, R2, #2
13C95A:  MULS            R2, R6
13C95C:  CMP             R10, R2
13C95E:  BCC.W           loc_13C84A
13C962:  VLDR            S16, =0.0
13C966:  CMP             R1, R0
13C968:  BEQ             loc_13CA40
13C96A:  LDR             R0, =(_ZTVN13TabListWidget10ItemWidgetE - 0x13C97C); `vtable for'TabListWidget::ItemWidget ...
13C96C:  VMOV.F32        S18, #5.0
13C970:  MOV.W           R9, #0
13C974:  MOV.W           R10, #0
13C978:  ADD             R0, PC; `vtable for'TabListWidget::ItemWidget
13C97A:  ADDS            R0, #8
13C97C:  STR             R0, [SP,#0x1E8+var_1C4]
13C97E:  LDR             R0, =(off_234B7C - 0x13C984)
13C980:  ADD             R0, PC; off_234B7C
13C982:  LDR.W           R11, [R0]; dword_238EC8
13C986:  MOVS            R0, #0x68 ; 'h'; unsigned int
13C988:  BLX             j__Znwj; operator new(uint)
13C98C:  MOV             R4, R0
13C98E:  MOV             R1, R10
13C990:  CMP.W           R10, #0
13C994:  IT NE
13C996:  MOVNE           R1, #1
13C998:  BL              sub_13DAAC
13C99C:  LDR             R0, [SP,#0x1E8+var_1C4]
13C99E:  STRD.W          R9, R9, [R4,#0x5C]
13C9A2:  STR.W           R9, [R4,#0x64]
13C9A6:  STR             R0, [R4]
13C9A8:  LDR             R0, [SP,#0x1E8+var_1D8]
13C9AA:  MOV             R1, R4
13C9AC:  BL              sub_13D96C
13C9B0:  LDR             R1, [SP,#0x1E8+var_54]
13C9B2:  ADD.W           R5, R10, R10,LSL#1
13C9B6:  ADD.W           R2, R1, R5,LSL#2
13C9BA:  LDR.W           R0, [R1,R5,LSL#2]
13C9BE:  LDR             R2, [R2,#4]
13C9C0:  CMP             R2, R0
13C9C2:  BEQ             loc_13CA18
13C9C4:  VLDR            S20, [R11]
13C9C8:  MOVS            R6, #0
13C9CA:  MOV.W           R8, #0
13C9CE:  LDR.W           R1, [R0,R8,LSL#2]
13C9D2:  VMOV            R2, S20
13C9D6:  MOV             R0, R4
13C9D8:  BL              sub_13CB90
13C9DC:  LDR             R0, [SP,#0x1E8+var_1B0]
13C9DE:  ADD.W           R8, R8, #1
13C9E2:  VLDR            S0, [R11]
13C9E6:  ADD             R0, R6
13C9E8:  LDR             R1, [SP,#0x1E8+var_54]
13C9EA:  ADDS            R6, #4
13C9EC:  VLDR            S2, [R0]
13C9F0:  ADD.W           R2, R1, R5,LSL#2
13C9F4:  VMLA.F32        S2, S0, S18
13C9F8:  LDR.W           R0, [R1,R5,LSL#2]
13C9FC:  LDR             R2, [R2,#4]
13C9FE:  SUBS            R2, R2, R0
13CA00:  VADD.F32        S20, S20, S2
13CA04:  VCMP.F32        S16, S20
13CA08:  VMRS            APSR_nzcv, FPSCR
13CA0C:  IT MI
13CA0E:  VMOVMI.F32      S16, S20
13CA12:  CMP.W           R8, R2,ASR#2
13CA16:  BCC             loc_13C9CE
13CA18:  LDR             R0, [SP,#0x1E8+var_50]
13CA1A:  ADD.W           R10, R10, #1
13CA1E:  LDR             R4, [SP,#0x1E8+var_1DC]
13CA20:  SUBS            R0, R0, R1
13CA22:  MOV             R1, #0xAAAAAAAB
13CA2A:  ASRS            R0, R0, #2
13CA2C:  MULS            R0, R1
13CA2E:  CMP             R10, R0
13CA30:  BCC             loc_13C986
13CA32:  LDR             R3, [SP,#0x1E8+var_1B0]
13CA34:  B               loc_13CA42
13CA36:  LDR             R0, [SP,#0x1E8+var_1D8]
13CA38:  LDR             R4, [SP,#0x1E8+var_1DC]
13CA3A:  STR.W           R11, [R0,#0x64]
13CA3E:  B               loc_13CA52
13CA40:  LDR             R4, [SP,#0x1E8+var_1DC]
13CA42:  LDR             R0, [SP,#0x1E8+var_1D8]
13CA44:  VSTR            S16, [R0,#0x64]
13CA48:  CBZ             R3, loc_13CA52
13CA4A:  MOV             R0, R3; void *
13CA4C:  STR             R3, [SP,#0x1E8+var_1AC]
13CA4E:  BLX             j__ZdlPv; operator delete(void *)
13CA52:  LDRB.W          R0, [SP,#0x1E8+var_F0]
13CA56:  LSLS            R0, R0, #0x1F
13CA58:  ITT NE
13CA5A:  LDRNE           R0, [SP,#0x1E8+var_E8]; void *
13CA5C:  BLXNE           j__ZdlPv; operator delete(void *)
13CA60:  LDRB.W          R0, [SP,#0x1E8+var_B8]
13CA64:  LDR             R1, [SP,#0x1E8+var_1B8]
13CA66:  STR             R1, [SP,#0x1E8+var_A4]
13CA68:  LDR             R1, [SP,#0x1E8+var_1BC]
13CA6A:  LSLS            R0, R0, #0x1F
13CA6C:  STR             R1, [SP,#0x1E8+var_E4]
13CA6E:  LDR             R1, [SP,#0x1E8+var_1C0]
13CA70:  STR             R1, [SP,#0x1E8+var_D8]
13CA72:  LDR             R1, [SP,#0x1E8+var_1B4]
13CA74:  STR             R1, [SP,#0x1E8+var_DC]
13CA76:  ITT NE
13CA78:  LDRNE           R0, [SP,#0x1E8+var_B0]; void *
13CA7A:  BLXNE           j__ZdlPv; operator delete(void *)
13CA7E:  MOV             R0, R4
13CA80:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
13CA84:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13CA8A)
13CA86:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13CA88:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13CA8A:  ADDS            R1, R0, #4
13CA8C:  ADD             R0, SP, #0x1E8+var_E4
13CA8E:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
13CA92:  LDR             R0, [SP,#0x1E8+var_1E0]
13CA94:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
13CA98:  ADD             R0, SP, #0x1E8+var_54
13CA9A:  BL              sub_13C09C
13CA9E:  ADD             SP, SP, #0x1A0
13CAA0:  VPOP            {D8-D10}
13CAA4:  VPOP            {D12-D13}
13CAA8:  ADD             SP, SP, #4
13CAAA:  POP.W           {R8-R11}
13CAAE:  POP             {R4-R7,PC}
13CAB0:  ADD             R0, SP, #0x1E8+var_1B0
13CAB2:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
