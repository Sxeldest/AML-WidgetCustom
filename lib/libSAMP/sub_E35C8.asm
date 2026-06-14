; =========================================================
; Game Engine Function: sub_E35C8
; Address            : 0xE35C8 - 0xE37DE
; =========================================================

E35C8:  PUSH            {R4-R7,LR}
E35CA:  ADD             R7, SP, #0xC
E35CC:  PUSH.W          {R8-R11}
E35D0:  SUB             SP, SP, #4
E35D2:  VPUSH           {D8-D12}
E35D6:  SUB             SP, SP, #0xF8
E35D8:  LDR             R0, =(off_23494C - 0xE35E4)
E35DA:  MOV             R6, R1
E35DC:  LDR             R1, [R7,#arg_0]
E35DE:  MOVS            R4, #0
E35E0:  ADD             R0, PC; off_23494C
E35E2:  STR             R1, [SP,#0x140+var_4C]
E35E4:  MOVW            R1, #0x5799
E35E8:  STRD.W          R2, R3, [SP,#0x140+var_54]
E35EC:  LDR             R0, [R0]; dword_23DF24
E35EE:  MOVT            R1, #0x5C ; '\'
E35F2:  MOVS            R2, #0
E35F4:  MOVS            R3, #0
E35F6:  STRD.W          R4, R4, [SP,#0x140+var_140]
E35FA:  LDR             R0, [R0]
E35FC:  ADDS            R5, R0, R1
E35FE:  ADD             R0, SP, #0x140+var_54
E3600:  ADD             R1, SP, #0x140+var_60
E3602:  BLX             R5
E3604:  VMOV.F32        S0, #1.0
E3608:  VLDR            S2, [SP,#0x140+var_58]
E360C:  VCMP.F32        S2, S0
E3610:  VMRS            APSR_nzcv, FPSCR
E3614:  BMI.W           loc_E37D0
E3618:  LDR             R0, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0xE3628)
E361A:  ADD.W           R8, SP, #0x140+var_F0
E361E:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE362C)
E3620:  ADD.W           R11, R8, #0xC
E3624:  ADD             R0, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
E3626:  STR             R4, [SP,#0x140+var_EC]
E3628:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E362A:  ADD.W           R9, R8, #0x40 ; '@'
E362E:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E3630:  LDR             R5, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E3632:  ADD.W           R1, R0, #0x20 ; ' '
E3636:  ADDS            R0, #0xC
E3638:  ADD.W           R10, R5, #0x20 ; ' '
E363C:  STR             R1, [SP,#0x140+var_B0]
E363E:  STR             R0, [SP,#0x140+var_F0]
E3640:  STR.W           R10, [SP,#0x140+var_E8]
E3644:  MOV             R0, R9; this
E3646:  MOV             R1, R11; void *
E3648:  STR.W           R9, [SP,#0x140+var_124]
E364C:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
E3650:  ADD.W           R4, R5, #0x34 ; '4'
E3654:  MOV.W           R0, #0xFFFFFFFF
E3658:  ADDS            R5, #0xC
E365A:  STR             R0, [SP,#0x140+var_64]
E365C:  MOVS            R0, #0
E365E:  STR             R4, [SP,#0x140+var_B0]
E3660:  STR             R0, [SP,#0x140+var_68]
E3662:  STR             R5, [SP,#0x140+var_F0]
E3664:  STR.W           R10, [SP,#0x140+var_E8]
E3668:  MOV             R0, R11
E366A:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
E366E:  STRD.W          R5, R4, [SP,#0x140+var_134]
E3672:  VMOV.I32        Q8, #0
E3676:  STR.W           R10, [SP,#0x140+var_12C]
E367A:  ADD.W           R2, R8, #0x2C ; ','
E367E:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3688)
E3680:  MOVS            R3, #0x18
E3682:  LDR             R1, [R7,#arg_4]
E3684:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3686:  VST1.32         {D16-D17}, [R2]!
E368A:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
E368C:  STR             R3, [R2]
E368E:  ADDS            R0, #8
E3690:  STR             R0, [SP,#0x140+var_138]
E3692:  STR             R0, [SP,#0x140+var_E4]
E3694:  MOV             R0, R11
E3696:  STR.W           R11, [SP,#0x140+var_128]
E369A:  BL              sub_E3EC0
E369E:  LDR             R0, [R7,#arg_8]
E36A0:  VMOV.F32        S24, #0.5
E36A4:  VLDR            S8, =0.0039216
E36A8:  ADD             R5, SP, #0x140+var_100
E36AA:  ADD.W           R11, SP, #0x140+var_108
E36AE:  ADD             R4, SP, #0x140+var_110
E36B0:  LSRS            R2, R0, #0x18
E36B2:  UBFX.W          R1, R0, #0x10, #8
E36B6:  VMOV            S0, R2
E36BA:  UBFX.W          R2, R0, #8, #8
E36BE:  UXTB            R0, R0
E36C0:  VMOV            S2, R1
E36C4:  VMOV            S6, R0
E36C8:  MOVS            R0, #0
E36CA:  VMOV            S4, R2
E36CE:  STRD.W          R0, R0, [SP,#0x140+var_100]
E36D2:  VCVT.F32.U32    S0, S0
E36D6:  STR             R0, [SP,#0x140+var_F8]
E36D8:  VCVT.F32.U32    S2, S2
E36DC:  LDR             R0, =(off_234980 - 0xE36EE)
E36DE:  VCVT.F32.U32    S4, S4
E36E2:  ADD.W           R8, SP, #0x140+var_120
E36E6:  VCVT.F32.U32    S6, S6
E36EA:  ADD             R0, PC; off_234980
E36EC:  MOV.W           R10, #1
E36F0:  LDR.W           R9, [R0]; dword_238EC0
E36F4:  VMUL.F32        S16, S0, S8
E36F8:  VMUL.F32        S18, S2, S8
E36FC:  VMUL.F32        S20, S4, S8
E3700:  VMUL.F32        S22, S6, S8
E3704:  ADD             R0, SP, #0x140+var_F0
E3706:  MOV             R1, R5
E3708:  MOVS            R2, #0xA
E370A:  BL              sub_E384C
E370E:  LDR             R1, [R0]
E3710:  LDR.W           R1, [R1,#-0xC]
E3714:  ADD             R0, R1
E3716:  LDRB            R0, [R0,#0x10]
E3718:  TST.W           R0, #5
E371C:  BNE             loc_E3786
E371E:  VLDR            S0, [R9]
E3722:  VMUL.F32        S0, S0, S24
E3726:  VMOV            R3, S0
E372A:  MOV             R0, R11
E372C:  MOV             R1, R6
E372E:  MOV             R2, R5
E3730:  BL              sub_12B090
E3734:  VLDR            S0, [SP,#0x140+var_108]
E3738:  VLDR            S2, [SP,#0x140+var_60]
E373C:  VMLS.F32        S2, S0, S24
E3740:  LDR             R0, [SP,#0x140+var_5C]
E3742:  VLDR            S0, [R9]
E3746:  STR             R0, [SP,#0x140+var_10C]
E3748:  VMUL.F32        S0, S0, S24
E374C:  VSTR            S16, [SP,#0x140+var_114]
E3750:  VSTR            S18, [SP,#0x140+var_118]
E3754:  VSTR            S20, [SP,#0x140+var_11C]
E3758:  VSTR            S22, [SP,#0x140+var_120]
E375C:  VSTR            S2, [SP,#0x140+var_110]
E3760:  MOV             R0, R6; int
E3762:  MOV             R1, R4; int
E3764:  MOV             R2, R8; int
E3766:  MOV             R3, R5; int
E3768:  VSTR            S0, [SP,#0x140+var_13C]
E376C:  STR.W           R10, [SP,#0x140+var_140]; int
E3770:  BL              sub_12AE34
E3774:  VLDR            S0, [R9]
E3778:  VLDR            S2, [SP,#0x140+var_5C]
E377C:  VMLA.F32        S2, S0, S24
E3780:  VSTR            S2, [SP,#0x140+var_5C]
E3784:  B               loc_E3704
E3786:  LDRB.W          R0, [SP,#0x140+var_100]
E378A:  LSLS            R0, R0, #0x1F
E378C:  ITT NE
E378E:  LDRNE           R0, [SP,#0x140+var_F8]; void *
E3790:  BLXNE           j__ZdlPv; operator delete(void *)
E3794:  LDRB.W          R0, [SP,#0x140+var_C4]
E3798:  LDR             R1, [SP,#0x140+var_130]
E379A:  STR             R1, [SP,#0x140+var_B0]
E379C:  LDR             R1, [SP,#0x140+var_134]
E379E:  LSLS            R0, R0, #0x1F
E37A0:  STR             R1, [SP,#0x140+var_F0]
E37A2:  LDR             R1, [SP,#0x140+var_138]
E37A4:  STR             R1, [SP,#0x140+var_E4]
E37A6:  LDR             R1, [SP,#0x140+var_12C]
E37A8:  STR             R1, [SP,#0x140+var_E8]
E37AA:  LDRD.W          R5, R4, [SP,#0x140+var_128]
E37AE:  ITT NE
E37B0:  LDRNE           R0, [SP,#0x140+var_BC]; void *
E37B2:  BLXNE           j__ZdlPv; operator delete(void *)
E37B6:  MOV             R0, R5
E37B8:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
E37BC:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE37C2)
E37BE:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E37C0:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E37C2:  ADDS            R1, R0, #4
E37C4:  ADD             R0, SP, #0x140+var_F0
E37C6:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
E37CA:  MOV             R0, R4
E37CC:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E37D0:  ADD             SP, SP, #0xF8
E37D2:  VPOP            {D8-D12}
E37D6:  ADD             SP, SP, #4
E37D8:  POP.W           {R8-R11}
E37DC:  POP             {R4-R7,PC}
