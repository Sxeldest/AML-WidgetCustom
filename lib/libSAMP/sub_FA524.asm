; =========================================================
; Game Engine Function: sub_FA524
; Address            : 0xFA524 - 0xFA82E
; =========================================================

FA524:  PUSH            {R4-R7,LR}
FA526:  ADD             R7, SP, #0xC
FA528:  PUSH.W          {R8-R11}
FA52C:  SUB             SP, SP, #0x12C
FA52E:  MOV             R4, R0
FA530:  LDR             R0, =(off_234A24 - 0xFA53A)
FA532:  LDR             R1, =(_ZTVN7sigslot10connectionE - 0xFA53E); `vtable for'sigslot::connection ...
FA534:  MOVS            R3, #1
FA536:  ADD             R0, PC; off_234A24
FA538:  STRB            R3, [R4]
FA53A:  ADD             R1, PC; `vtable for'sigslot::connection
FA53C:  MOVS            R2, #0
FA53E:  LDR             R0, [R0]; dword_23DEEC
FA540:  MOV             R8, R4
FA542:  ADD.W           R6, R1, #8
FA546:  STR.W           R2, [R8,#0x10]!
FA54A:  STRD.W          R6, R2, [R4,#4]
FA54E:  LDR             R0, [R0]
FA550:  STR             R2, [R4,#0xC]
FA552:  CBZ             R0, loc_FA598
FA554:  LDR             R3, =(_ZTVNSt6__ndk110__function6__funcIZN8HeadmoveC1EvE3$_0NS_9allocatorIS3_EEFvNS_17basic_string_viewIcNS_11char_traitsIcEEEEEEE - 0xFA55E); `vtable for'std::__function::__func<Headmove::Headmove(void)::$_0,std::allocator<Headmove::Headmove(void)::$_0>,void ()(std::string_view)> ...
FA556:  ADD             R5, SP, #0x148+var_50
FA558:  LDR             R2, =(aHeadmove - 0xFA566); "headmove" ...
FA55A:  ADD             R3, PC; `vtable for'std::__function::__func<Headmove::Headmove(void)::$_0,std::allocator<Headmove::Headmove(void)::$_0>,void ()(std::string_view)>
FA55C:  LDR             R1, [R0,#0x60]
FA55E:  ADD.W           R0, R3, #8
FA562:  ADD             R2, PC; "headmove"
FA564:  STR             R5, [SP,#0x148+var_40]
FA566:  STR             R4, [SP,#0x148+var_4C]
FA568:  STR             R0, [SP,#0x148+var_50]
FA56A:  ADD             R0, SP, #0x148+var_130
FA56C:  MOVS            R3, #8
FA56E:  STR             R5, [SP,#0x148+var_148]
FA570:  STR             R6, [SP,#0x148+var_144]
FA572:  BL              sub_12CD48
FA576:  LDRD.W          R0, R1, [SP,#0x148+var_12C]
FA57A:  STR             R0, [R4,#8]
FA57C:  LDR             R0, [R4,#0xC]; this
FA57E:  STR             R1, [R4,#0xC]
FA580:  MOVS            R1, #0
FA582:  STRD.W          R1, R1, [SP,#0x148+var_12C]
FA586:  CBZ             R0, loc_FA5AC
FA588:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
FA58C:  LDR             R0, [SP,#0x148+var_128]; this
FA58E:  STR             R6, [SP,#0x148+var_130]
FA590:  CBZ             R0, loc_FA5AE
FA592:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
FA596:  B               loc_FA5AE
FA598:  LDR             R1, =(aAxl - 0xFA5A2); "AXL" ...
FA59A:  LDR             R2, =(aCanTCreateSUiO - 0xFA5A4); "Can't create %s - UI object not defined" ...
FA59C:  LDR             R3, =(aHeadmove_0 - 0xFA5A6); "Headmove" ...
FA59E:  ADD             R1, PC; "AXL"
FA5A0:  ADD             R2, PC; "Can't create %s - UI object not defined"
FA5A2:  ADD             R3, PC; "Headmove"
FA5A4:  MOVS            R0, #6; prio
FA5A6:  BLX             __android_log_print
FA5AA:  B               loc_FA824
FA5AC:  STR             R6, [SP,#0x148+var_130]
FA5AE:  LDR             R0, [SP,#0x148+var_40]
FA5B0:  CMP             R5, R0
FA5B2:  BEQ             loc_FA5BA
FA5B4:  CBZ             R0, loc_FA5C4
FA5B6:  MOVS            R1, #5
FA5B8:  B               loc_FA5BC
FA5BA:  MOVS            R1, #4
FA5BC:  LDR             R2, [R0]
FA5BE:  LDR.W           R1, [R2,R1,LSL#2]
FA5C2:  BLX             R1
FA5C4:  LDR             R0, =(off_23494C - 0xFA5CA)
FA5C6:  ADD             R0, PC; off_23494C
FA5C8:  LDR             R0, [R0]; dword_23DF24
FA5CA:  LDR.W           R10, [R0]
FA5CE:  LDR             R1, =(sub_FA944+1 - 0xFA5D4)
FA5D0:  ADD             R1, PC; sub_FA944
FA5D2:  ADD             R0, SP, #0x148+var_68
FA5D4:  MOVS            R2, #0
FA5D6:  MOV             R3, R4
FA5D8:  BL              sub_FA9E4
FA5DC:  ADD.W           R11, SP, #0x148+var_38
FA5E0:  ADD.W           R9, SP, #0x148+var_68
FA5E4:  MOV             R0, R11
FA5E6:  MOV             R1, R9
FA5E8:  BL              sub_FAFC0
FA5EC:  BL              sub_FAF68
FA5F0:  LDR             R0, =(unk_247378 - 0xFA5F6)
FA5F2:  ADD             R0, PC; unk_247378
FA5F4:  LDR             R6, [R0,#(dword_247388 - 0x247378)]
FA5F6:  CBNZ            R6, loc_FA628
FA5F8:  ADD             R5, SP, #0x148+var_38
FA5FA:  ADD             R0, SP, #0x148+var_130
FA5FC:  MOV             R1, R5
FA5FE:  BL              sub_FAFC0
FA602:  BL              sub_FAF68
FA606:  LDR             R0, =(unk_247378 - 0xFA60C)
FA608:  ADD             R0, PC; unk_247378
FA60A:  ADD             R5, SP, #0x148+var_130
FA60C:  MOV             R1, R5
FA60E:  BL              sub_FAFEC
FA612:  LDR             R0, [SP,#0x148+var_120]
FA614:  CMP             R5, R0
FA616:  BEQ             loc_FA61E
FA618:  CBZ             R0, loc_FA628
FA61A:  MOVS            R1, #5
FA61C:  B               loc_FA620
FA61E:  MOVS            R1, #4
FA620:  LDR             R2, [R0]
FA622:  LDR.W           R1, [R2,R1,LSL#2]
FA626:  BLX             R1
FA628:  LDR             R0, [SP,#0x148+var_28]
FA62A:  CMP             R11, R0
FA62C:  BEQ             loc_FA634
FA62E:  CBZ             R0, loc_FA63E
FA630:  MOVS            R1, #5
FA632:  B               loc_FA636
FA634:  MOVS            R1, #4
FA636:  LDR             R2, [R0]
FA638:  LDR.W           R1, [R2,R1,LSL#2]
FA63C:  BLX             R1
FA63E:  CBNZ            R6, loc_FA654
FA640:  MOVW            R0, #0x808
FA644:  LDR             R1, =(sub_FAF14+1 - 0xFA650)
FA646:  MOVT            R0, #0x67 ; 'g'
FA64A:  ADD             R0, R10
FA64C:  ADD             R1, PC; sub_FAF14
FA64E:  MOV             R2, R8
FA650:  BL              sub_164196
FA654:  LDR             R0, [SP,#0x148+var_58]
FA656:  CMP             R9, R0
FA658:  BEQ             loc_FA660
FA65A:  CBZ             R0, loc_FA66A
FA65C:  MOVS            R1, #5
FA65E:  B               loc_FA662
FA660:  MOVS            R1, #4
FA662:  LDR             R2, [R0]
FA664:  LDR.W           R1, [R2,R1,LSL#2]
FA668:  BLX             R1
FA66A:  BL              sub_F97EC
FA66E:  STR             R0, [SP,#0x148+var_13C]
FA670:  ADD             R0, SP, #0x148+var_130; int
FA672:  ADD             R1, SP, #0x148+var_13C
FA674:  MOVS            R2, #0
FA676:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
FA67A:  LDR             R1, =(off_22AE78 - 0xFA680); "headmove" ...
FA67C:  ADD             R1, PC; off_22AE78
FA67E:  ADD             R0, SP, #0x148+var_78; int
FA680:  MOVS            R2, #0
FA682:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
FA686:  ADD             R0, SP, #0x148+var_38
FA688:  ADD             R1, SP, #0x148+var_130
FA68A:  ADD             R2, SP, #0x148+var_78
FA68C:  BL              sub_F1DD4
FA690:  LDRB.W          R0, [SP,#0x148+var_78]
FA694:  LSLS            R0, R0, #0x1F
FA696:  ITT NE
FA698:  LDRNE           R0, [SP,#0x148+var_70]; void *
FA69A:  BLXNE           j__ZdlPv; operator delete(void *)
FA69E:  LDRB.W          R0, [SP,#0x148+var_130]
FA6A2:  LSLS            R0, R0, #0x1F
FA6A4:  ITT NE
FA6A6:  LDRNE           R0, [SP,#0x148+var_128]; void *
FA6A8:  BLXNE           j__ZdlPv; operator delete(void *)
FA6AC:  ADD             R0, SP, #0x148+var_130; this
FA6AE:  ADD             R1, SP, #0x148+var_38; std::__fs::filesystem::path *
FA6B0:  MOVS            R2, #0; std::error_code *
FA6B2:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
FA6B6:  LDRB.W          R0, [SP,#0x148+var_130]
FA6BA:  SUBS            R0, #1
FA6BC:  CMP             R0, #0xFE
FA6BE:  BCS.W           loc_FA816
FA6C2:  ADD.W           R10, SP, #0x148+var_130
FA6C6:  ADD             R1, SP, #0x148+var_38
FA6C8:  MOVS            R2, #8
FA6CA:  MOV             R0, R10
FA6CC:  BL              sub_FAA20
FA6D0:  LDR             R0, [SP,#0x148+var_E8]
FA6D2:  CMP             R0, #0
FA6D4:  BEQ.W           loc_FA7E8
FA6D8:  MOVS            R0, #0
FA6DA:  STR             R4, [SP,#0x148+var_140]
FA6DC:  STRD.W          R0, R0, [SP,#0x148+var_78]
FA6E0:  ADD             R4, SP, #0x148+var_13C
FA6E2:  STR             R0, [SP,#0x148+var_70]
FA6E4:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xFA6EC)
FA6E6:  LDR             R6, =(aEnabled_0 - 0xFA6EE); "enabled=" ...
FA6E8:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
FA6EA:  ADD             R6, PC; "enabled="
FA6EC:  LDR.W           R11, [R0]; std::ctype<char>::id ...
FA6F0:  LDR             R0, [SP,#0x148+var_130]
FA6F2:  LDR.W           R0, [R0,#-0xC]
FA6F6:  ADD.W           R1, R10, R0
FA6FA:  MOV             R0, R4; this
FA6FC:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
FA700:  MOV             R0, R4; this
FA702:  MOV             R1, R11; std::locale::id *
FA704:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
FA708:  LDR             R1, [R0]
FA70A:  LDR             R2, [R1,#0x1C]
FA70C:  MOVS            R1, #0xA
FA70E:  BLX             R2
FA710:  MOV             R5, R0
FA712:  MOV             R0, R4; this
FA714:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
FA718:  ADD             R1, SP, #0x148+var_78
FA71A:  MOV             R0, R10
FA71C:  MOV             R2, R5
FA71E:  BL              sub_E384C
FA722:  LDR             R1, [R0]
FA724:  LDRB.W          R2, [SP,#0x148+var_78]
FA728:  LDR.W           R1, [R1,#-0xC]
FA72C:  ADD             R0, R1
FA72E:  LDRB            R1, [R0,#0x10]
FA730:  AND.W           R0, R2, #1
FA734:  TST.W           R1, #5
FA738:  BNE             loc_FA7DE
FA73A:  CMP             R0, #0
FA73C:  LDRD.W          R1, R8, [SP,#0x148+var_74]
FA740:  IT EQ
FA742:  LSREQ           R1, R2, #1
FA744:  ADD             R0, SP, #0x148+var_78
FA746:  IT EQ
FA748:  ADDEQ.W         R8, R0, #1
FA74C:  CMP             R1, #8
FA74E:  BLT             loc_FA6F0
FA750:  ADD.W           R9, R8, R1
FA754:  MOV             R0, R8; s
FA756:  SUBS            R2, R1, #7; n
FA758:  MOVS            R1, #0x65 ; 'e'; c
FA75A:  BLX             memchr
FA75E:  CMP             R0, #0
FA760:  BEQ             loc_FA6F0
FA762:  MOV             R1, R6; s2
FA764:  MOVS            R2, #8; n
FA766:  MOV             R5, R0
FA768:  BLX             memcmp
FA76C:  CBZ             R0, loc_FA77A
FA76E:  ADDS            R0, R5, #1
FA770:  SUB.W           R1, R9, R0
FA774:  CMP             R1, #8
FA776:  BGE             loc_FA756
FA778:  B               loc_FA6F0
FA77A:  CMP             R5, R9
FA77C:  BEQ             loc_FA6F0
FA77E:  CMP             R5, R8
FA780:  BNE             loc_FA6F0
FA782:  MOV             R0, R6; char *
FA784:  MOVS            R1, #9; size_t
FA786:  BLX             __strlen_chk
FA78A:  MOV             R2, R0
FA78C:  ADD             R1, SP, #0x148+var_78
FA78E:  MOV             R0, R4
FA790:  MOV.W           R3, #0xFFFFFFFF
FA794:  STR             R1, [SP,#0x148+var_148]
FA796:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_jjRKS4_; std::string::basic_string(std::string const&,uint,uint,std::allocator<char> const&)
FA79A:  MOV             R0, R4
FA79C:  MOVS            R1, #0
FA79E:  MOVS            R2, #0xA
FA7A0:  LDR             R5, [SP,#0x148+var_140]
FA7A2:  BLX             j__ZNSt6__ndk14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPji; std::stoi(std::string const&,uint *,int)
FA7A6:  LDRB.W          R1, [SP,#0x148+var_13C]
FA7AA:  CMP             R0, #0
FA7AC:  IT NE
FA7AE:  MOVNE           R0, #1
FA7B0:  STRB            R0, [R5]
FA7B2:  LSLS            R0, R1, #0x1F
FA7B4:  BEQ             loc_FA6F0
FA7B6:  LDR             R0, [SP,#0x148+var_134]; void *
FA7B8:  BLX             j__ZdlPv; operator delete(void *)
FA7BC:  B               loc_FA6F0
FA7BE:  MOV             R5, R0
FA7C0:  LDRB.W          R0, [SP,#0x148+var_13C]
FA7C4:  LSLS            R0, R0, #0x1F
FA7C6:  ITT NE
FA7C8:  LDRNE           R0, [SP,#0x148+var_134]; void *
FA7CA:  BLXNE           j__ZdlPv; operator delete(void *)
FA7CE:  B               loc_FA7D2
FA7D0:  MOV             R5, R0
FA7D2:  MOV             R0, R5; void *
FA7D4:  BLX             j___cxa_begin_catch
FA7D8:  BLX             j___cxa_end_catch
FA7DC:  B               loc_FA6F0
FA7DE:  CBZ             R0, loc_FA7E6
FA7E0:  LDR             R0, [SP,#0x148+var_70]; void *
FA7E2:  BLX             j__ZdlPv; operator delete(void *)
FA7E6:  LDR             R4, [SP,#0x148+var_140]
FA7E8:  LDR             R0, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xFA7EE)
FA7EA:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
FA7EC:  LDR             R0, [R0]; `vtable for'std::ifstream ...
FA7EE:  ADD.W           R1, R0, #0x20 ; ' '
FA7F2:  ADDS            R0, #0xC
FA7F4:  STR             R0, [SP,#0x148+var_130]
FA7F6:  ADD.W           R0, R10, #8
FA7FA:  STR             R1, [SP,#0x148+var_CC]
FA7FC:  BL              sub_E50B0
FA800:  LDR             R0, =(_ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xFA806)
FA802:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
FA804:  LDR             R0, [R0]; `VTT for'std::ifstream ...
FA806:  ADDS            R1, R0, #4
FA808:  MOV             R0, R10
FA80A:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEED2Ev; std::istream::~istream()
FA80E:  ADD.W           R0, R10, #0x64 ; 'd'
FA812:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
FA816:  LDRB.W          R0, [SP,#0x148+var_38]
FA81A:  LSLS            R0, R0, #0x1F
FA81C:  ITT NE
FA81E:  LDRNE           R0, [SP,#0x148+var_30]; void *
FA820:  BLXNE           j__ZdlPv; operator delete(void *)
FA824:  MOV             R0, R4
FA826:  ADD             SP, SP, #0x12C
FA828:  POP.W           {R8-R11}
FA82C:  POP             {R4-R7,PC}
