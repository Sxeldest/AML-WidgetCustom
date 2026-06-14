; =========================================================
; Game Engine Function: sub_13648C
; Address            : 0x13648C - 0x136C3A
; =========================================================

13648C:  PUSH            {R4-R7,LR}
13648E:  ADD             R7, SP, #0xC
136490:  PUSH.W          {R8-R11}
136494:  SUB             SP, SP, #4
136496:  VPUSH           {D8-D9}
13649A:  SUB             SP, SP, #0x1E0
13649C:  STR             R0, [SP,#0x210+var_1F8]
13649E:  MOVW            R2, #0x13BC
1364A2:  LDR             R0, =(off_23496C - 0x1364B2)
1364A4:  ADD             R5, SP, #0x210+var_D4
1364A6:  ADD.W           R4, R5, #0xC
1364AA:  MOV.W           R8, #0
1364AE:  ADD             R0, PC; off_23496C
1364B0:  LDR             R6, [R0]; dword_23DEF4
1364B2:  LDR             R0, [R6]
1364B4:  LDR.W           R0, [R0,#0x3B0]
1364B8:  LDR             R1, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x1364BE)
1364BA:  ADD             R1, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
1364BC:  LDR.W           R10, [R0]
1364C0:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1364C8)
1364C2:  LDR             R1, [R1]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
1364C4:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
1364C6:  LDR.W           R2, [R10,R2]
1364CA:  STR.W           R8, [SP,#0x210+var_D0]
1364CE:  LDR.W           R9, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
1364D2:  ADD.W           R0, R1, #0x20 ; ' '
1364D6:  STR             R0, [SP,#0x210+var_1E0]
1364D8:  STR             R0, [SP,#0x210+var_94]
1364DA:  ADD.W           R0, R1, #0xC
1364DE:  ADD.W           R11, R9, #0x20 ; ' '
1364E2:  STR             R0, [SP,#0x210+var_1E4]
1364E4:  STR             R0, [SP,#0x210+var_D4]
1364E6:  ADD.W           R0, R5, #0x40 ; '@'; this
1364EA:  STR             R2, [SP,#0x210+var_1E8]
1364EC:  STR.W           R11, [SP,#0x210+var_CC]
1364F0:  MOV             R1, R4; void *
1364F2:  STR             R0, [SP,#0x210+var_200]
1364F4:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
1364F8:  B               loc_136508
1364FA:  ALIGN 4
1364FC:  DCD off_23496C - 0x1364B2
136500:  DCD _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x1364BE
136504:  DCD _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1364C8
136508:  MOV.W           R0, #0xFFFFFFFF
13650C:  STR.W           R11, [SP,#0x210+var_1FC]
136510:  STRD.W          R8, R0, [SP,#0x210+var_4C]
136514:  ADD.W           R0, R9, #0x34 ; '4'
136518:  STR             R0, [SP,#0x210+var_1F0]
13651A:  STR             R0, [SP,#0x210+var_94]
13651C:  ADD.W           R0, R9, #0xC
136520:  STR             R0, [SP,#0x210+var_1F4]
136522:  STR             R0, [SP,#0x210+var_D4]
136524:  STR.W           R11, [SP,#0x210+var_CC]
136528:  MOV             R0, R4
13652A:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
13652E:  LDR             R1, =(aTotalPlayers - 0x13653E); "Total players: " ...
136530:  VMOV.I32        Q8, #0
136534:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x136542)
136536:  ADD.W           R2, R5, #0x2C ; ','
13653A:  ADD             R1, PC; "Total players: "
13653C:  MOV             R8, R4
13653E:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
136540:  VST1.32         {D16-D17}, [R2]!
136544:  MOVS            R3, #0x18
136546:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
136548:  STR             R3, [R2]
13654A:  ADD.W           R9, R0, #8
13654E:  STR.W           R9, [SP,#0x210+var_C8]
136552:  ADD.W           R0, R5, #8
136556:  MOVS            R2, #0xF
136558:  BL              sub_FB2B4
13655C:  LDR             R4, [SP,#0x210+var_1F8]
13655E:  B               loc_136568
136560:  DCD aTotalPlayers - 0x13653E
136564:  DCD _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x136542
136568:  MOV             R5, R0
13656A:  MOV             R0, R10
13656C:  BL              sub_148ED8
136570:  MOV             R1, R0
136572:  MOV             R0, R5
136574:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
136578:  LDR             R6, [R6]
13657A:  LDR             R5, [R4,#0x58]
13657C:  MOV             R0, R6; s
13657E:  BLX             strlen
136582:  MOV             R2, R0
136584:  ADD             R0, SP, #0x210+var_164
136586:  MOV             R1, R6
136588:  BL              sub_164D04
13658C:  ADD             R1, SP, #0x210+var_164
13658E:  MOV             R0, R5
136590:  BL              sub_13D450
136594:  LDRB.W          R0, [SP,#0x210+var_164]
136598:  LSLS            R0, R0, #0x1F
13659A:  ITT NE
13659C:  LDRNE           R0, [SP,#0x210+var_15C]; void *
13659E:  BLXNE           j__ZdlPv; operator delete(void *)
1365A2:  LDR             R6, [R4,#0x5C]
1365A4:  ADD             R0, SP, #0x210+var_164
1365A6:  MOV             R1, R8
1365A8:  BL              sub_116AEC
1365AC:  ADD             R5, SP, #0x210+var_164
1365AE:  MOV             R0, R6
1365B0:  MOV             R1, R5
1365B2:  BL              sub_13D450
1365B6:  LDRB.W          R0, [SP,#0x210+var_164]
1365BA:  STR.W           R8, [SP,#0x210+var_208]
1365BE:  LSLS            R0, R0, #0x1F
1365C0:  ITT NE
1365C2:  LDRNE           R0, [SP,#0x210+var_15C]; void *
1365C4:  BLXNE           j__ZdlPv; operator delete(void *)
1365C8:  LDR             R0, [SP,#0x210+var_1E0]
1365CA:  ADD.W           R4, R5, #0xC
1365CE:  STR             R0, [SP,#0x210+var_124]
1365D0:  ADD.W           R11, R5, #0x40 ; '@'
1365D4:  LDR             R0, [SP,#0x210+var_1E4]
1365D6:  MOV.W           R8, #0
1365DA:  LDR             R6, [SP,#0x210+var_1FC]
1365DC:  STR.W           R8, [SP,#0x210+var_160]
1365E0:  STR             R0, [SP,#0x210+var_164]
1365E2:  STR             R6, [SP,#0x210+var_15C]
1365E4:  MOV             R0, R11; this
1365E6:  MOV             R1, R4; void *
1365E8:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
1365EC:  MOV.W           R0, #0xFFFFFFFF
1365F0:  STR             R6, [SP,#0x210+var_15C]
1365F2:  STRD.W          R8, R0, [SP,#0x210+var_DC]
1365F6:  LDR             R0, [SP,#0x210+var_1F0]
1365F8:  STR             R0, [SP,#0x210+var_124]
1365FA:  LDR             R0, [SP,#0x210+var_1F4]
1365FC:  STR             R0, [SP,#0x210+var_164]
1365FE:  MOV             R0, R4
136600:  STR             R4, [SP,#0x210+var_204]
136602:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
136606:  VMOV.I32        Q8, #0
13660A:  ADD.W           R0, R5, #0x2C ; ','
13660E:  LDR             R1, =(aIdNicknameScor - 0x13661E); "ID\tNickname\tScore\tPing\n" ...
136610:  MOVS            R2, #0x18
136612:  STR.W           R9, [SP,#0x210+var_158]
136616:  VST1.32         {D16-D17}, [R0]!
13661A:  ADD             R1, PC; "ID\tNickname\tScore\tPing\n"
13661C:  STR             R2, [R0]
13661E:  ADD.W           R0, R5, #8
136622:  MOVS            R2, #0x17
136624:  STR             R0, [SP,#0x210+var_1E4]
136626:  BL              sub_FB2B4
13662A:  B               loc_136638
13662C:  DCD aIdNicknameScor - 0x13661E
136630:  DCFS 0.0039216
136634:  DCFS 255.0
136638:  LDR             R0, [SP,#0x210+var_1E8]
13663A:  BL              sub_1413FC
13663E:  MOV             R6, R0
136640:  LSRS            R0, R0, #0x18
136642:  VMOV            S0, R0
136646:  VLDR            S16, =0.0039216
13664A:  VLDR            S18, =255.0
13664E:  VCVT.F32.S32    S0, S0
136652:  VMUL.F32        S0, S0, S16
136656:  VMUL.F32        S0, S0, S18
13665A:  VCVT.S32.F32    S0, S0
13665E:  VMOV            R3, S0
136662:  ADD             R0, SP, #0x210+s
136664:  BL              sub_136E18
136668:  ADD             R0, SP, #0x210+var_1B0; int
13666A:  ADD             R1, SP, #0x210+s; s
13666C:  BL              sub_DC6DC
136670:  LDR             R2, =(unk_82C5B - 0x136676)
136672:  ADD             R2, PC; unk_82C5B ; s
136674:  ADD             R0, SP, #0x210+var_1B0; int
136676:  MOVS            R1, #0; int
136678:  MOVS            R4, #0
13667A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
13667E:  B               loc_136684
136680:  DCD unk_82C5B - 0x136676
136684:  UBFX.W          R1, R6, #0x10, #8
136688:  VLDR            D16, [R0]
13668C:  VMOV            S0, R1
136690:  LDR             R1, [R0,#8]
136692:  STR             R1, [SP,#0x210+var_198]
136694:  VCVT.F32.S32    S0, S0
136698:  VSTR            D16, [SP,#0x210+var_1A0]
13669C:  STRD.W          R4, R4, [R0]
1366A0:  STR             R4, [R0,#8]
1366A2:  VMUL.F32        S0, S0, S16
1366A6:  VMUL.F32        S0, S0, S18
1366AA:  VCVT.S32.F32    S0, S0
1366AE:  VMOV            R3, S0
1366B2:  ADD             R0, SP, #0x210+s
1366B4:  BL              sub_136E18
1366B8:  ADD             R0, SP, #0x210+var_1BC; int
1366BA:  ADD             R1, SP, #0x210+s; s
1366BC:  BL              sub_DC6DC
1366C0:  LDRB.W          R3, [SP,#0x210+var_1BC]
1366C4:  LDRD.W          R2, R1, [SP,#0x210+var_1B8]
1366C8:  ANDS.W          R5, R3, #1
1366CC:  ITT EQ
1366CE:  ADDEQ           R1, R0, #1
1366D0:  LSREQ           R2, R3, #1
1366D2:  ADD             R0, SP, #0x210+var_1A0
1366D4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
1366D8:  UBFX.W          R1, R6, #8, #8
1366DC:  VLDR            D16, [R0]
1366E0:  VMOV            S0, R1
1366E4:  LDR             R1, [R0,#8]
1366E6:  STR             R1, [SP,#0x210+var_188]
1366E8:  MOVS            R1, #0
1366EA:  VCVT.F32.S32    S0, S0
1366EE:  VSTR            D16, [SP,#0x210+var_190]
1366F2:  STRD.W          R1, R1, [R0]
1366F6:  STR             R1, [R0,#8]
1366F8:  VMUL.F32        S0, S0, S16
1366FC:  VMUL.F32        S0, S0, S18
136700:  VCVT.S32.F32    S0, S0
136704:  VMOV            R3, S0
136708:  ADD             R0, SP, #0x210+s
13670A:  BL              sub_136E18
13670E:  ADD             R0, SP, #0x210+var_1C8; int
136710:  ADD             R1, SP, #0x210+s; s
136712:  BL              sub_DC6DC
136716:  LDRB.W          R6, [SP,#0x210+var_1C8]
13671A:  ADDS            R0, #1
13671C:  LDRD.W          R2, R1, [SP,#0x210+var_1C4]
136720:  ANDS.W          R3, R6, #1
136724:  STR             R0, [SP,#0x210+var_1E8]
136726:  ITT EQ
136728:  MOVEQ           R1, R0
13672A:  LSREQ           R2, R6, #1
13672C:  ADD             R0, SP, #0x210+var_190
13672E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
136732:  VLDR            D16, [R0]
136736:  MOVS            R4, #0
136738:  LDR             R2, [R0,#8]
13673A:  LDR             R1, =(asc_89E0B - 0x136742); "}" ...
13673C:  STR             R2, [SP,#0x210+var_178]
13673E:  ADD             R1, PC; "}"
136740:  VSTR            D16, [SP,#0x210+var_180]
136744:  STRD.W          R4, R4, [R0]
136748:  STR             R4, [R0,#8]
13674A:  ADD.W           R8, SP, #0x210+var_180
13674E:  MOV             R0, R8; int
136750:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
136754:  B               loc_13675C
136756:  ALIGN 4
136758:  DCD asc_89E0B - 0x136742
13675C:  VLDR            D16, [R0]
136760:  LDR             R1, [R0,#8]
136762:  STR             R1, [SP,#0x210+var_168]
136764:  VSTR            D16, [SP,#0x210+var_170]
136768:  STRD.W          R4, R4, [R0]
13676C:  STR             R4, [R0,#8]
13676E:  LDRB.W          R0, [SP,#0x210+var_180]
136772:  LSLS            R0, R0, #0x1F
136774:  ITT NE
136776:  LDRNE           R0, [SP,#0x210+var_178]; void *
136778:  BLXNE           j__ZdlPv; operator delete(void *)
13677C:  LDRB.W          R0, [SP,#0x210+var_1C8]
136780:  LSLS            R0, R0, #0x1F
136782:  ITT NE
136784:  LDRNE           R0, [SP,#0x210+var_1C0]; void *
136786:  BLXNE           j__ZdlPv; operator delete(void *)
13678A:  LDRB.W          R0, [SP,#0x210+var_190]
13678E:  LSLS            R0, R0, #0x1F
136790:  ITT NE
136792:  LDRNE           R0, [SP,#0x210+var_188]; void *
136794:  BLXNE           j__ZdlPv; operator delete(void *)
136798:  LDRB.W          R0, [SP,#0x210+var_1BC]
13679C:  LSLS            R0, R0, #0x1F
13679E:  ITT NE
1367A0:  LDRNE           R0, [SP,#0x210+var_1B4]; void *
1367A2:  BLXNE           j__ZdlPv; operator delete(void *)
1367A6:  LDRB.W          R0, [SP,#0x210+var_1A0]
1367AA:  LSLS            R0, R0, #0x1F
1367AC:  ITT NE
1367AE:  LDRNE           R0, [SP,#0x210+var_198]; void *
1367B0:  BLXNE           j__ZdlPv; operator delete(void *)
1367B4:  LDRB.W          R0, [SP,#0x210+var_1B0]
1367B8:  STRD.W          R11, R9, [SP,#0x210+var_210]
1367BC:  LSLS            R0, R0, #0x1F
1367BE:  ITT NE
1367C0:  LDRNE           R0, [SP,#0x210+var_1A8]; void *
1367C2:  BLXNE           j__ZdlPv; operator delete(void *)
1367C6:  ADD             R3, SP, #0x210+var_170
1367C8:  LDRB.W          R0, [SP,#0x210+var_170]
1367CC:  ADDS            R4, R3, #1
1367CE:  LDRD.W          R2, R1, [SP,#0x210+var_170+4]
1367D2:  ANDS.W          R3, R0, #1
1367D6:  ITT EQ
1367D8:  MOVEQ           R1, R4
1367DA:  LSREQ           R2, R0, #1
1367DC:  LDR             R0, [SP,#0x210+var_1E4]
1367DE:  BL              sub_FB2B4
1367E2:  ADD.W           R11, R10, #0x13A0
1367E6:  LDRH.W          R1, [R11]
1367EA:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEt; std::ostream::operator<<(ushort)
1367EE:  LDR             R1, =(asc_9174C - 0x1367F4); "\t" ...
1367F0:  ADD             R1, PC; "\t"
1367F2:  MOVS            R2, #1
1367F4:  BL              sub_FB2B4
1367F8:  B               loc_136800
1367FA:  ALIGN 4
1367FC:  DCD asc_9174C - 0x1367F4
136800:  LDRB.W          R3, [SP,#0x210+var_170]
136804:  LDRD.W          R2, R1, [SP,#0x210+var_170+4]
136808:  ANDS.W          R6, R3, #1
13680C:  ITT EQ
13680E:  MOVEQ           R1, R4
136810:  LSREQ           R2, R3, #1
136812:  BL              sub_FB2B4
136816:  MOV             R9, R0
136818:  MOVW            R0, #0x13A2
13681C:  ADD.W           R5, R10, R0
136820:  MOV             R0, R5; s
136822:  BLX             strlen
136826:  MOV             R2, R0
136828:  ADD             R6, SP, #0x210+s
13682A:  MOV             R1, R5
13682C:  MOV             R0, R6
13682E:  BL              sub_164D04
136832:  LDRB.W          R0, [SP,#0x210+s]
136836:  LDR             R5, [SP,#0x210+var_3C]
136838:  LSLS            R0, R0, #0x1F
13683A:  IT EQ
13683C:  ADDEQ           R5, R6, #1
13683E:  MOV             R0, R5; s
136840:  BLX             strlen
136844:  MOV             R2, R0
136846:  MOV             R0, R9
136848:  MOV             R1, R5
13684A:  BL              sub_FB2B4
13684E:  LDR             R1, =(asc_9174C - 0x136854); "\t" ...
136850:  ADD             R1, PC; "\t"
136852:  MOVS            R2, #1
136854:  BL              sub_FB2B4
136858:  LDRB.W          R3, [SP,#0x210+var_170]
13685C:  LDRD.W          R2, R1, [SP,#0x210+var_170+4]
136860:  ANDS.W          R6, R3, #1
136864:  ITT EQ
136866:  MOVEQ           R1, R4
136868:  LSREQ           R2, R3, #1
13686A:  BL              sub_FB2B4
13686E:  LDR.W           R1, [R11,#0x24]
136872:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
136876:  LDR             R1, =(asc_9174C - 0x13687C); "\t" ...
136878:  ADD             R1, PC; "\t"
13687A:  MOVS            R2, #1
13687C:  BL              sub_FB2B4
136880:  LDRB.W          R3, [SP,#0x210+var_170]
136884:  LDRD.W          R2, R1, [SP,#0x210+var_170+4]
136888:  ANDS.W          R6, R3, #1
13688C:  ITT EQ
13688E:  MOVEQ           R1, R4
136890:  LSREQ           R2, R3, #1
136892:  BL              sub_FB2B4
136896:  LDR.W           R1, [R11,#0x20]
13689A:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
13689E:  LDR             R1, =(asc_8D501 - 0x1368A4); "\n" ...
1368A0:  ADD             R1, PC; "\n"
1368A2:  MOVS            R2, #1
1368A4:  BL              sub_FB2B4
1368A8:  LDRB.W          R0, [SP,#0x210+s]
1368AC:  LSLS            R0, R0, #0x1F
1368AE:  ITT NE
1368B0:  LDRNE           R0, [SP,#0x210+var_3C]; void *
1368B2:  BLXNE           j__ZdlPv; operator delete(void *)
1368B6:  MOV.W           R11, #0
1368BA:  ADD.W           R0, R8, #1
1368BE:  MOVS            R6, #0
1368C0:  STR             R0, [SP,#0x210+var_1E0]
1368C2:  ADD.W           R0, R8, #2
1368C6:  STRD.W          R11, R11, [SP,#0x210+var_180]
1368CA:  STR.W           R11, [SP,#0x210+var_178]
1368CE:  STR             R0, [SP,#0x210+var_1EC]
1368D0:  ADD.W           R0, R10, R6
1368D4:  LDRB.W          R0, [R0,#0xFB4]
1368D8:  CMP             R0, #0
1368DA:  BEQ.W           loc_136B76
1368DE:  ADD.W           R4, R10, R6,LSL#2
1368E2:  LDR             R0, [R4,#4]
1368E4:  CMP             R0, #0
1368E6:  BEQ.W           loc_136B76
1368EA:  LDR             R0, [R0]
1368EC:  CMP             R0, #0
1368EE:  BEQ.W           loc_136B76
1368F2:  UXTH.W          R8, R6
1368F6:  MOV             R0, R10
1368F8:  MOV             R1, R8
1368FA:  BL              sub_148EBA
1368FE:  CMP             R0, #0
136900:  BNE.W           loc_136B76
136904:  LDR             R0, [R4,#4]
136906:  LDR             R0, [R0]
136908:  BL              sub_14A402
13690C:  MOV             R5, R0
13690E:  LSRS            R0, R0, #0x18
136910:  VMOV            S0, R0
136914:  VCVT.F32.S32    S0, S0
136918:  VMUL.F32        S0, S0, S16
13691C:  VMUL.F32        S0, S0, S18
136920:  VCVT.S32.F32    S0, S0
136924:  VMOV            R3, S0
136928:  ADD             R4, SP, #0x210+s
13692A:  MOV             R0, R4
13692C:  BL              sub_136E18
136930:  ADD             R0, SP, #0x210+var_1BC; int
136932:  MOV             R1, R4; s
136934:  BL              sub_DC6DC
136938:  LDR             R2, =(unk_82C5B - 0x13693E)
13693A:  ADD             R2, PC; unk_82C5B ; s
13693C:  MOVS            R1, #0; int
13693E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
136942:  UBFX.W          R1, R5, #0x10, #8
136946:  VLDR            D16, [R0]
13694A:  VMOV            S0, R1
13694E:  LDR             R1, [R0,#8]
136950:  STR             R1, [SP,#0x210+var_1A8]
136952:  VCVT.F32.S32    S0, S0
136956:  VSTR            D16, [SP,#0x210+var_1B0]
13695A:  STRD.W          R11, R11, [R0]
13695E:  STR.W           R11, [R0,#8]
136962:  VMUL.F32        S0, S0, S16
136966:  VMUL.F32        S0, S0, S18
13696A:  VCVT.S32.F32    S0, S0
13696E:  VMOV            R3, S0
136972:  ADD             R4, SP, #0x210+s
136974:  MOV             R0, R4
136976:  BL              sub_136E18
13697A:  ADD             R0, SP, #0x210+var_1C8; int
13697C:  MOV             R1, R4; s
13697E:  BL              sub_DC6DC
136982:  LDRB.W          R0, [SP,#0x210+var_1C8]
136986:  LDRD.W          R2, R1, [SP,#0x210+var_1C4]
13698A:  ANDS.W          R3, R0, #1
13698E:  LDR             R3, [SP,#0x210+var_1E8]
136990:  ITT EQ
136992:  MOVEQ           R1, R3
136994:  LSREQ           R2, R0, #1
136996:  ADD             R0, SP, #0x210+var_1B0
136998:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
13699C:  UBFX.W          R1, R5, #8, #8
1369A0:  VLDR            D16, [R0]
1369A4:  VMOV            S0, R1
1369A8:  LDR             R1, [R0,#8]
1369AA:  STR             R1, [SP,#0x210+var_198]
1369AC:  VCVT.F32.S32    S0, S0
1369B0:  VSTR            D16, [SP,#0x210+var_1A0]
1369B4:  STRD.W          R11, R11, [R0]
1369B8:  STR.W           R11, [R0,#8]
1369BC:  VMUL.F32        S0, S0, S16
1369C0:  VMUL.F32        S0, S0, S18
1369C4:  VCVT.S32.F32    S0, S0
1369C8:  VMOV            R3, S0
1369CC:  ADD             R4, SP, #0x210+s
1369CE:  MOV             R0, R4
1369D0:  BL              sub_136E18
1369D4:  ADD             R0, SP, #0x210+var_1DC; int
1369D6:  MOV             R1, R4; s
1369D8:  BL              sub_DC6DC
1369DC:  LDRB.W          R5, [SP,#0x210+var_1DC]
1369E0:  LDRD.W          R2, R1, [SP,#0x210+var_1D8]
1369E4:  ANDS.W          R3, R5, #1
1369E8:  ITT EQ
1369EA:  ADDEQ           R1, R0, #1
1369EC:  LSREQ           R2, R5, #1
1369EE:  ADD             R0, SP, #0x210+var_1A0
1369F0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
1369F4:  VLDR            D16, [R0]
1369F8:  LDR             R2, [R0,#8]
1369FA:  LDR             R1, =(asc_89E0B - 0x136A02); "}" ...
1369FC:  STR             R2, [SP,#0x210+var_188]
1369FE:  ADD             R1, PC; "}"
136A00:  VSTR            D16, [SP,#0x210+var_190]
136A04:  STRD.W          R11, R11, [R0]
136A08:  STR.W           R11, [R0,#8]
136A0C:  ADD             R0, SP, #0x210+var_190; int
136A0E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
136A12:  LDRH            R1, [R0,#6]
136A14:  LDR.W           R2, [R0,#2]
136A18:  LDR.W           R9, [R0,#8]
136A1C:  LDRB            R5, [R0,#1]
136A1E:  LDRB            R4, [R0]
136A20:  STRD.W          R11, R11, [R0]
136A24:  STR.W           R11, [R0,#8]
136A28:  LDRB.W          R0, [SP,#0x210+var_180]
136A2C:  STR             R2, [SP,#0x210+var_1D0]
136A2E:  STRH.W          R1, [SP,#0x210+var_1CC]
136A32:  LSLS            R0, R0, #0x1F
136A34:  ITT NE
136A36:  LDRNE           R0, [SP,#0x210+var_178]; void *
136A38:  BLXNE           j__ZdlPv; operator delete(void *)
136A3C:  LDRB.W          R1, [SP,#0x210+var_190]
136A40:  LDR             R3, [SP,#0x210+var_1EC]
136A42:  LDRH.W          R0, [SP,#0x210+var_1CC]
136A46:  LDR             R2, [SP,#0x210+var_1D0]
136A48:  STRH            R0, [R3,#4]
136A4A:  LSLS            R0, R1, #0x1F
136A4C:  STR             R2, [R3]
136A4E:  STRB.W          R5, [SP,#0x210+var_180+1]
136A52:  STRB.W          R4, [SP,#0x210+var_180]
136A56:  STR.W           R9, [SP,#0x210+var_178]
136A5A:  ITT NE
136A5C:  LDRNE           R0, [SP,#0x210+var_188]; void *
136A5E:  BLXNE           j__ZdlPv; operator delete(void *)
136A62:  LDRB.W          R0, [SP,#0x210+var_1DC]
136A66:  LSLS            R0, R0, #0x1F
136A68:  ITT NE
136A6A:  LDRNE           R0, [SP,#0x210+var_1D4]; void *
136A6C:  BLXNE           j__ZdlPv; operator delete(void *)
136A70:  LDRB.W          R0, [SP,#0x210+var_1A0]
136A74:  LSLS            R0, R0, #0x1F
136A76:  ITT NE
136A78:  LDRNE           R0, [SP,#0x210+var_198]; void *
136A7A:  BLXNE           j__ZdlPv; operator delete(void *)
136A7E:  LDRB.W          R0, [SP,#0x210+var_1C8]
136A82:  LSLS            R0, R0, #0x1F
136A84:  ITT NE
136A86:  LDRNE           R0, [SP,#0x210+var_1C0]; void *
136A88:  BLXNE           j__ZdlPv; operator delete(void *)
136A8C:  LDRB.W          R0, [SP,#0x210+var_1B0]
136A90:  LSLS            R0, R0, #0x1F
136A92:  ITT NE
136A94:  LDRNE           R0, [SP,#0x210+var_1A8]; void *
136A96:  BLXNE           j__ZdlPv; operator delete(void *)
136A9A:  LDRB.W          R0, [SP,#0x210+var_1BC]
136A9E:  LSLS            R0, R0, #0x1F
136AA0:  ITT NE
136AA2:  LDRNE           R0, [SP,#0x210+var_1B4]; void *
136AA4:  BLXNE           j__ZdlPv; operator delete(void *)
136AA8:  LDRB.W          R0, [SP,#0x210+var_180]
136AAC:  LDRD.W          R2, R1, [SP,#0x210+var_180+4]
136AB0:  ANDS.W          R3, R0, #1
136AB4:  LDR             R3, [SP,#0x210+var_1E0]
136AB6:  ITT EQ
136AB8:  MOVEQ           R1, R3
136ABA:  LSREQ           R2, R0, #1
136ABC:  LDR             R0, [SP,#0x210+var_1E4]
136ABE:  BL              sub_FB2B4
136AC2:  MOV             R1, R6
136AC4:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
136AC8:  LDR             R1, =(asc_9174C - 0x136ACE); "\t" ...
136ACA:  ADD             R1, PC; "\t"
136ACC:  MOVS            R2, #1
136ACE:  BL              sub_FB2B4
136AD2:  LDRB.W          R3, [SP,#0x210+var_180]
136AD6:  LDRD.W          R2, R1, [SP,#0x210+var_180+4]
136ADA:  ANDS.W          R5, R3, #1
136ADE:  LDR             R5, [SP,#0x210+var_1E0]
136AE0:  ITT EQ
136AE2:  MOVEQ           R1, R5
136AE4:  LSREQ           R2, R3, #1
136AE6:  BL              sub_FB2B4
136AEA:  MOV             R5, R0
136AEC:  MOV             R0, R10
136AEE:  MOV             R1, R8
136AF0:  BL              sub_148E64
136AF4:  MOV             R9, R0
136AF6:  BLX             strlen
136AFA:  MOV             R2, R0
136AFC:  MOV             R0, R5
136AFE:  MOV             R1, R9
136B00:  BL              sub_FB2B4
136B04:  LDR             R1, =(asc_9174C - 0x136B0A); "\t" ...
136B06:  ADD             R1, PC; "\t"
136B08:  MOVS            R2, #1
136B0A:  BL              sub_FB2B4
136B0E:  LDRB.W          R3, [SP,#0x210+var_180]
136B12:  LDRD.W          R2, R1, [SP,#0x210+var_180+4]
136B16:  ANDS.W          R5, R3, #1
136B1A:  LDR             R5, [SP,#0x210+var_1E0]
136B1C:  ITT EQ
136B1E:  MOVEQ           R1, R5
136B20:  LSREQ           R2, R3, #1
136B22:  BL              sub_FB2B4
136B26:  MOV             R5, R0
136B28:  MOV             R0, R10
136B2A:  MOV             R1, R8
136B2C:  BL              sub_148E8E
136B30:  MOV             R1, R0
136B32:  MOV             R0, R5
136B34:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
136B38:  LDR             R1, =(asc_9174C - 0x136B3E); "\t" ...
136B3A:  ADD             R1, PC; "\t"
136B3C:  MOVS            R2, #1
136B3E:  BL              sub_FB2B4
136B42:  LDRB.W          R3, [SP,#0x210+var_180]
136B46:  LDRD.W          R2, R1, [SP,#0x210+var_180+4]
136B4A:  ANDS.W          R5, R3, #1
136B4E:  LDR             R5, [SP,#0x210+var_1E0]
136B50:  ITT EQ
136B52:  MOVEQ           R1, R5
136B54:  LSREQ           R2, R3, #1
136B56:  BL              sub_FB2B4
136B5A:  MOV             R5, R0
136B5C:  MOV             R0, R10
136B5E:  MOV             R1, R8
136B60:  BL              sub_148EA4
136B64:  MOV             R1, R0
136B66:  MOV             R0, R5
136B68:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
136B6C:  LDR             R1, =(asc_8D501 - 0x136B72); "\n" ...
136B6E:  ADD             R1, PC; "\n"
136B70:  MOVS            R2, #1
136B72:  BL              sub_FB2B4
136B76:  ADDS            R6, #1
136B78:  CMP.W           R6, #0x3EC
136B7C:  BNE.W           loc_1368D0
136B80:  LDR             R0, [SP,#0x210+var_1F8]
136B82:  LDR             R4, [R0,#0x54]
136B84:  LDR             R5, [SP,#0x210+var_204]
136B86:  ADD             R0, SP, #0x210+s
136B88:  MOV             R1, R5
136B8A:  BL              sub_116AEC
136B8E:  ADD             R1, SP, #0x210+s
136B90:  MOV             R0, R4
136B92:  BL              sub_13C604
136B96:  LDR.W           R9, [SP,#0x210+var_1FC]
136B9A:  LDRD.W          R8, R6, [SP,#0x210+var_210]
136B9E:  LDRB.W          R0, [SP,#0x210+s]
136BA2:  LSLS            R0, R0, #0x1F
136BA4:  ITT NE
136BA6:  LDRNE           R0, [SP,#0x210+var_3C]; void *
136BA8:  BLXNE           j__ZdlPv; operator delete(void *)
136BAC:  LDRB.W          R0, [SP,#0x210+var_180]
136BB0:  LSLS            R0, R0, #0x1F
136BB2:  ITT NE
136BB4:  LDRNE           R0, [SP,#0x210+var_178]; void *
136BB6:  BLXNE           j__ZdlPv; operator delete(void *)
136BBA:  LDRB.W          R0, [SP,#0x210+var_170]
136BBE:  LSLS            R0, R0, #0x1F
136BC0:  ITT NE
136BC2:  LDRNE           R0, [SP,#0x210+var_168]; void *
136BC4:  BLXNE           j__ZdlPv; operator delete(void *)
136BC8:  LDRB.W          R0, [SP,#0x210+var_138]
136BCC:  LDR             R1, [SP,#0x210+var_1F0]
136BCE:  STR             R1, [SP,#0x210+var_124]
136BD0:  LDR             R1, [SP,#0x210+var_1F4]
136BD2:  LSLS            R0, R0, #0x1F
136BD4:  STR             R1, [SP,#0x210+var_164]
136BD6:  STRD.W          R9, R6, [SP,#0x210+var_15C]
136BDA:  ITT NE
136BDC:  LDRNE           R0, [SP,#0x210+var_130]; void *
136BDE:  BLXNE           j__ZdlPv; operator delete(void *)
136BE2:  MOV             R0, R5
136BE4:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
136BE8:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x136BEE)
136BEA:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
136BEC:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
136BEE:  ADDS            R4, R0, #4
136BF0:  ADD             R0, SP, #0x210+var_164
136BF2:  MOV             R1, R4
136BF4:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
136BF8:  MOV             R0, R8
136BFA:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
136BFE:  LDR             R0, [SP,#0x210+var_1F0]
136C00:  STR             R0, [SP,#0x210+var_94]
136C02:  LDR             R0, [SP,#0x210+var_1F4]
136C04:  STR             R0, [SP,#0x210+var_D4]
136C06:  LDRB.W          R0, [SP,#0x210+var_A8]
136C0A:  STRD.W          R9, R6, [SP,#0x210+var_CC]
136C0E:  LSLS            R0, R0, #0x1F
136C10:  ITT NE
136C12:  LDRNE           R0, [SP,#0x210+var_A0]; void *
136C14:  BLXNE           j__ZdlPv; operator delete(void *)
136C18:  LDR             R0, [SP,#0x210+var_208]
136C1A:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
136C1E:  ADD             R0, SP, #0x210+var_D4
136C20:  MOV             R1, R4
136C22:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
136C26:  LDR             R0, [SP,#0x210+var_200]
136C28:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
136C2C:  ADD             SP, SP, #0x1E0
136C2E:  VPOP            {D8-D9}
136C32:  ADD             SP, SP, #4
136C34:  POP.W           {R8-R11}
136C38:  POP             {R4-R7,PC}
