; =========================================================
; Game Engine Function: sub_155858
; Address            : 0x155858 - 0x1559CA
; =========================================================

155858:  PUSH            {R4-R7,LR}
15585A:  ADD             R7, SP, #0xC
15585C:  PUSH.W          {R8-R11}
155860:  SUB             SP, SP, #0xB4
155862:  LDR             R1, =(aSaveConfig - 0x15586C); "Save config.." ...
155864:  MOV             R9, R0
155866:  MOVS            R0, #4; int
155868:  ADD             R1, PC; "Save config.."
15586A:  BL              sub_159B70
15586E:  ADD             R4, SP, #0xD0+var_AC
155870:  MOV             R0, R4
155872:  BL              sub_15A2AC
155876:  LDRB.W          R2, [SP,#0xD0+var_AC]
15587A:  LDR             R0, [SP,#0xD0+var_A4]
15587C:  LDR             R1, =(aW7 - 0x155888); "w7@>" ...
15587E:  LSLS            R2, R2, #0x1F
155880:  IT EQ
155882:  ADDEQ           R0, R4, #1; filename
155884:  ADD             R1, PC; "w7@>"
155886:  BLX             fopen
15588A:  MOV             R8, R0
15588C:  LDRB.W          R0, [SP,#0xD0+var_AC]
155890:  LSLS            R0, R0, #0x1F
155892:  ITT NE
155894:  LDRNE           R0, [SP,#0xD0+var_A4]; void *
155896:  BLXNE           j__ZdlPv; operator delete(void *)
15589A:  CMP.W           R8, #0
15589E:  BEQ.W           loc_1559B8
1558A2:  LDR             R0, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x1558B2)
1558A4:  ADD.W           R6, R4, #0xC
1558A8:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1558B8)
1558AA:  MOV.W           R11, #0
1558AE:  ADD             R0, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
1558B0:  STR.W           R11, [SP,#0xD0+var_A8]
1558B4:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
1558B6:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
1558B8:  LDR             R5, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
1558BA:  ADD.W           R1, R0, #0x20 ; ' '
1558BE:  ADDS            R0, #0xC
1558C0:  STR             R0, [SP,#0xD0+var_AC]
1558C2:  ADD.W           R10, R5, #0x20 ; ' '
1558C6:  ADD.W           R0, R4, #0x40 ; '@'; this
1558CA:  STR             R1, [SP,#0xD0+var_6C]
1558CC:  STR.W           R10, [SP,#0xD0+var_A4]
1558D0:  MOV             R1, R6; void *
1558D2:  STR             R0, [SP,#0xD0+var_C8]
1558D4:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
1558D8:  MOV.W           R0, #0xFFFFFFFF
1558DC:  STR.W           R10, [SP,#0xD0+var_A4]
1558E0:  STRD.W          R11, R0, [SP,#0xD0+var_24]
1558E4:  ADD.W           R0, R5, #0x34 ; '4'
1558E8:  ADDS            R5, #0xC
1558EA:  STR             R0, [SP,#0xD0+var_CC]
1558EC:  STR             R0, [SP,#0xD0+var_6C]
1558EE:  STR             R5, [SP,#0xD0+var_AC]
1558F0:  MOV             R0, R6
1558F2:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
1558F6:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x155906)
1558F8:  VMOV.I32        Q8, #0
1558FC:  ADD.W           R1, R4, #0x2C ; ','
155900:  MOVS            R2, #0x18
155902:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
155904:  VST1.32         {D16-D17}, [R1]!
155908:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
15590A:  STR             R2, [R1]
15590C:  ADD.W           R11, R0, #8
155910:  STR.W           R11, [SP,#0xD0+var_A0]
155914:  ADD.W           R0, R4, #8
155918:  ADD.W           R1, R9, #0x60 ; '`'
15591C:  BL              sub_155A20
155920:  ADD.W           R9, SP, #0xD0+var_B8
155924:  MOV             R1, R6
155926:  STR             R5, [SP,#0xD0+var_D0]
155928:  MOV             R0, R9
15592A:  BL              sub_116AEC
15592E:  LDR             R4, [SP,#0xD0+var_B0]
155930:  LDRB.W          R5, [SP,#0xD0+var_B8]
155934:  ADD             R0, SP, #0xD0+var_C4
155936:  MOV             R1, R6
155938:  BL              sub_116AEC
15593C:  LDRB.W          R0, [SP,#0xD0+var_C4]
155940:  LSLS            R2, R5, #0x1F
155942:  LDR             R1, [SP,#0xD0+var_C0]
155944:  IT EQ
155946:  ADDEQ.W         R4, R9, #1
15594A:  MOV             R3, R8; s
15594C:  LSLS            R2, R0, #0x1F
15594E:  IT EQ
155950:  LSREQ           R1, R0, #1; size
155952:  MOV             R0, R4; ptr
155954:  MOVS            R2, #1; n
155956:  BLX             fwrite
15595A:  LDRB.W          R0, [SP,#0xD0+var_C4]
15595E:  LSLS            R0, R0, #0x1F
155960:  ITT NE
155962:  LDRNE           R0, [SP,#0xD0+var_BC]; void *
155964:  BLXNE           j__ZdlPv; operator delete(void *)
155968:  LDRB.W          R0, [SP,#0xD0+var_B8]
15596C:  LDR             R4, [SP,#0xD0+var_D0]
15596E:  LSLS            R0, R0, #0x1F
155970:  ITT NE
155972:  LDRNE           R0, [SP,#0xD0+var_B0]; void *
155974:  BLXNE           j__ZdlPv; operator delete(void *)
155978:  MOV             R0, R8; stream
15597A:  BLX             fflush
15597E:  MOV             R0, R8; stream
155980:  BLX             fclose
155984:  LDRB.W          R0, [SP,#0xD0+var_80]
155988:  LDR             R1, [SP,#0xD0+var_CC]
15598A:  STR             R1, [SP,#0xD0+var_6C]
15598C:  LSLS            R0, R0, #0x1F
15598E:  STR             R4, [SP,#0xD0+var_AC]
155990:  STRD.W          R10, R11, [SP,#0xD0+var_A4]
155994:  ITT NE
155996:  LDRNE           R0, [SP,#0xD0+var_78]; void *
155998:  BLXNE           j__ZdlPv; operator delete(void *)
15599C:  MOV             R0, R6
15599E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
1559A2:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1559A8)
1559A4:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
1559A6:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
1559A8:  ADDS            R1, R0, #4
1559AA:  ADD             R0, SP, #0xD0+var_AC
1559AC:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
1559B0:  LDR             R0, [SP,#0xD0+var_C8]
1559B2:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
1559B6:  B               loc_1559C2
1559B8:  LDR             R1, =(aCanTOpenConfig_0 - 0x1559C0); "Can't open config file." ...
1559BA:  MOVS            R0, #4; int
1559BC:  ADD             R1, PC; "Can't open config file."
1559BE:  BL              sub_159B70
1559C2:  ADD             SP, SP, #0xB4
1559C4:  POP.W           {R8-R11}
1559C8:  POP             {R4-R7,PC}
