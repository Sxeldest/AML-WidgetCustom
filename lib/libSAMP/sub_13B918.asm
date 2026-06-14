; =========================================================
; Game Engine Function: sub_13B918
; Address            : 0x13B918 - 0x13BDC2
; =========================================================

13B918:  PUSH            {R4-R7,LR}
13B91A:  ADD             R7, SP, #0xC
13B91C:  PUSH.W          {R8-R11}
13B920:  SUB             SP, SP, #4
13B922:  VPUSH           {D12-D13}
13B926:  VPUSH           {D8-D10}
13B92A:  SUB             SP, SP, #0x1A0; float
13B92C:  STR             R0, [SP,#0x1E8+var_1D8]
13B92E:  MOV             R8, R1
13B930:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13B940)
13B932:  ADD.W           R9, SP, #0x1E8+var_E4
13B936:  LDR             R1, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x13B946)
13B938:  ADD.W           R5, R9, #0xC
13B93C:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13B93E:  MOV.W           R10, #0
13B942:  ADD             R1, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
13B944:  STR.W           R10, [SP,#0x1E8+var_4C]
13B948:  LDR             R4, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13B94A:  LDR             R1, [R1]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13B94C:  ADD.W           R6, R4, #0x20 ; ' '
13B950:  STRD.W          R10, R10, [SP,#0x1E8+var_54]
13B954:  ADD.W           R0, R1, #0x20 ; ' '
13B958:  STR             R0, [SP,#0x1E8+var_1CC]
13B95A:  STR             R0, [SP,#0x1E8+var_A4]
13B95C:  ADD.W           R0, R1, #0xC
13B960:  STR             R0, [SP,#0x1E8+var_1D0]
13B962:  STR             R0, [SP,#0x1E8+var_E4]
13B964:  ADD.W           R0, R9, #0x40 ; '@'; this
13B968:  STR.W           R10, [SP,#0x1E8+var_E0]
13B96C:  STR             R6, [SP,#0x1E8+var_DC]
13B96E:  MOV             R1, R5; void *
13B970:  STR             R0, [SP,#0x1E8+var_1E0]
13B972:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
13B976:  MOV.W           R0, #0xFFFFFFFF
13B97A:  STR             R6, [SP,#0x1E8+var_DC]
13B97C:  STRD.W          R10, R0, [SP,#0x1E8+var_5C]
13B980:  ADD.W           R0, R4, #0x34 ; '4'
13B984:  STR             R0, [SP,#0x1E8+var_1B8]
13B986:  STR             R0, [SP,#0x1E8+var_A4]
13B988:  ADD.W           R0, R4, #0xC
13B98C:  STR             R0, [SP,#0x1E8+var_1BC]
13B98E:  STR             R0, [SP,#0x1E8+var_E4]
13B990:  MOV             R0, R5
13B992:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
13B996:  STR             R6, [SP,#0x1E8+var_1B4]
13B998:  VMOV.I32        Q4, #0
13B99C:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13B9A8)
13B99E:  ADD.W           R1, R9, #0x2C ; ','
13B9A2:  MOVS            R2, #0x18
13B9A4:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13B9A6:  VST1.32         {D8-D9}, [R1]!
13B9AA:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
13B9AC:  STR             R2, [R1]
13B9AE:  ADDS            R0, #8
13B9B0:  STR             R0, [SP,#0x1E8+var_1C0]
13B9B2:  STR             R0, [SP,#0x1E8+var_D8]
13B9B4:  MOV             R0, R5
13B9B6:  MOV             R1, R8
13B9B8:  STR             R5, [SP,#0x1E8+var_1DC]
13B9BA:  BL              sub_E3EC0
13B9BE:  ADD.W           R9, SP, #0x1E8+var_18C
13B9C2:  VMOV.F32        S20, #0.5
13B9C6:  ADD.W           R0, R9, #0x2C ; ','
13B9CA:  STR             R0, [SP,#0x1E8+var_1D4]
13B9CC:  ADD.W           R0, R9, #0x40 ; '@'
13B9D0:  STR             R0, [SP,#0x1E8+var_1C4]
13B9D2:  ADD.W           R0, R9, #0xC
13B9D6:  STR             R0, [SP,#0x1E8+var_1C8]
13B9D8:  VMOV.F32        Q6, #1.0
13B9DC:  LDR             R5, [SP,#0x1E8+var_1C8]
13B9DE:  ADD.W           R10, SP, #0x1E8+var_198
13B9E2:  ADD             R4, SP, #0x1E8+var_1B0
13B9E4:  ADD.W           R8, SP, #0x1E8+var_FC
13B9E8:  MOVS            R6, #0
13B9EA:  STRD.W          R6, R6, [SP,#0x1E8+var_F0]
13B9EE:  STR             R6, [SP,#0x1E8+var_E8]
13B9F0:  ADD             R0, SP, #0x1E8+var_E4
13B9F2:  ADD             R1, SP, #0x1E8+var_F0
13B9F4:  MOVS            R2, #0xA
13B9F6:  BL              sub_E384C
13B9FA:  LDR             R1, [R0]
13B9FC:  LDR.W           R1, [R1,#-0xC]
13BA00:  ADD             R0, R1
13BA02:  LDRB            R0, [R0,#0x10]
13BA04:  TST.W           R0, #5
13BA08:  BNE.W           loc_13BB3E
13BA0C:  LDRB.W          R0, [SP,#0x1E8+var_F0]
13BA10:  LDR             R1, [SP,#0x1E8+var_EC]
13BA12:  LSLS            R2, R0, #0x1F
13BA14:  IT EQ
13BA16:  LSREQ           R1, R0, #1
13BA18:  CMP             R1, #0
13BA1A:  BEQ             loc_13B9F0
13BA1C:  LDR             R0, [SP,#0x1E8+var_1CC]
13BA1E:  MOV.W           R11, #0
13BA22:  STR             R0, [SP,#0x1E8+var_14C]
13BA24:  LDR             R0, [SP,#0x1E8+var_1D0]
13BA26:  STR             R6, [SP,#0x1E8+var_F4]
13BA28:  STRD.W          R6, R6, [SP,#0x1E8+var_FC]
13BA2C:  STR             R6, [SP,#0x1E8+var_188]
13BA2E:  LDR             R6, [SP,#0x1E8+var_1B4]
13BA30:  STR             R0, [SP,#0x1E8+var_18C]
13BA32:  STR             R6, [SP,#0x1E8+var_184]
13BA34:  LDR             R0, [SP,#0x1E8+var_1C4]; this
13BA36:  MOV             R1, R5; void *
13BA38:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
13BA3C:  MOV.W           R0, #0xFFFFFFFF
13BA40:  STR             R6, [SP,#0x1E8+var_184]
13BA42:  STRD.W          R11, R0, [SP,#0x1E8+var_104]
13BA46:  LDR             R0, [SP,#0x1E8+var_1B8]
13BA48:  STR             R0, [SP,#0x1E8+var_14C]
13BA4A:  LDR             R0, [SP,#0x1E8+var_1BC]
13BA4C:  STR             R0, [SP,#0x1E8+var_18C]
13BA4E:  MOV             R0, R5
13BA50:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
13BA54:  LDR             R0, [SP,#0x1E8+var_1D4]
13BA56:  VST1.32         {D8-D9}, [R0]
13BA5A:  MOVS            R0, #0x18
13BA5C:  STR             R0, [SP,#0x1E8+var_150]
13BA5E:  LDR             R0, [SP,#0x1E8+var_1C0]
13BA60:  STR             R0, [SP,#0x1E8+var_180]
13BA62:  ADD             R1, SP, #0x1E8+var_F0
13BA64:  MOV             R0, R5
13BA66:  BL              sub_E3EC0
13BA6A:  MOVS            R6, #0
13BA6C:  STRD.W          R6, R6, [SP,#0x1E8+var_198]
13BA70:  STR             R6, [SP,#0x1E8+var_190]
13BA72:  MOV             R0, R9
13BA74:  MOV             R1, R10
13BA76:  MOVS            R2, #9
13BA78:  BL              sub_E384C
13BA7C:  LDR             R1, [R0]
13BA7E:  LDR.W           R1, [R1,#-0xC]
13BA82:  ADD             R0, R1
13BA84:  LDRB            R0, [R0,#0x10]
13BA86:  TST.W           R0, #5
13BA8A:  BNE             loc_13BAE0
13BA8C:  MOVS            R0, #0x78 ; 'x'; unsigned int
13BA8E:  BLX             j__Znwj; operator new(uint)
13BA92:  MOV             R11, R0
13BA94:  LDR             R0, =(off_234980 - 0x13BA9E)
13BA96:  VST1.64         {D12-D13}, [R4]
13BA9A:  ADD             R0, PC; off_234980
13BA9C:  LDR             R0, [R0]; dword_238EC0
13BA9E:  VLDR            S0, [R0]
13BAA2:  VMUL.F32        S0, S0, S20
13BAA6:  MOV             R0, R11; int
13BAA8:  MOV             R1, R10; int
13BAAA:  MOV             R2, R4; int
13BAAC:  MOVS            R3, #0; int
13BAAE:  VSTR            S0, [SP,#0x1E8+var_1E8]
13BAB2:  BL              sub_13D3DC
13BAB6:  LDR.W           R0, [R11]
13BABA:  STR.W           R11, [SP,#0x1E8+var_19C]
13BABE:  LDR             R1, [R0,#8]
13BAC0:  MOV             R0, R11
13BAC2:  BLX             R1
13BAC4:  LDRD.W          R0, R1, [SP,#0x1E8+var_F8]
13BAC8:  CMP             R0, R1
13BACA:  BEQ             loc_13BAD6
13BACC:  LDR             R1, [SP,#0x1E8+var_19C]
13BACE:  STR.W           R1, [R0],#4
13BAD2:  STR             R0, [SP,#0x1E8+var_F8]
13BAD4:  B               loc_13BA72
13BAD6:  ADD             R1, SP, #0x1E8+var_19C
13BAD8:  MOV             R0, R8
13BADA:  BL              sub_13C0E8
13BADE:  B               loc_13BA72
13BAE0:  ADD             R0, SP, #0x1E8+var_54
13BAE2:  MOV             R1, R8
13BAE4:  BL              sub_13BE9C
13BAE8:  LDRB.W          R0, [SP,#0x1E8+var_198]
13BAEC:  LSLS            R0, R0, #0x1F
13BAEE:  ITT NE
13BAF0:  LDRNE           R0, [SP,#0x1E8+var_190]; void *
13BAF2:  BLXNE           j__ZdlPv; operator delete(void *)
13BAF6:  LDRB.W          R0, [SP,#0x1E8+var_160]
13BAFA:  LDR             R1, [SP,#0x1E8+var_1B8]
13BAFC:  STR             R1, [SP,#0x1E8+var_14C]
13BAFE:  LDR             R1, [SP,#0x1E8+var_1BC]
13BB00:  LSLS            R0, R0, #0x1F
13BB02:  STR             R1, [SP,#0x1E8+var_18C]
13BB04:  LDR             R1, [SP,#0x1E8+var_1C0]
13BB06:  STR             R1, [SP,#0x1E8+var_180]
13BB08:  LDR             R1, [SP,#0x1E8+var_1B4]
13BB0A:  STR             R1, [SP,#0x1E8+var_184]
13BB0C:  ITT NE
13BB0E:  LDRNE           R0, [SP,#0x1E8+var_158]; void *
13BB10:  BLXNE           j__ZdlPv; operator delete(void *)
13BB14:  MOV             R0, R5
13BB16:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
13BB1A:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13BB20)
13BB1C:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13BB1E:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13BB20:  ADDS            R1, R0, #4
13BB22:  MOV             R0, R9
13BB24:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
13BB28:  LDR             R0, [SP,#0x1E8+var_1C4]
13BB2A:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
13BB2E:  LDR             R0, [SP,#0x1E8+var_FC]; void *
13BB30:  CMP             R0, #0
13BB32:  BEQ.W           loc_13B9F0
13BB36:  STR             R0, [SP,#0x1E8+var_F8]
13BB38:  BLX             j__ZdlPv; operator delete(void *)
13BB3C:  B               loc_13B9F0
13BB3E:  LDRD.W          R0, R1, [SP,#0x1E8+var_54]
13BB42:  MOV.W           R11, #0
13BB46:  STR.W           R11, [SP,#0x1E8+var_1A8]
13BB4A:  CMP             R1, R0
13BB4C:  STRD.W          R11, R11, [SP,#0x1E8+var_1B0]
13BB50:  BEQ.W           loc_13BD42
13BB54:  ADD.W           R9, R4, #8
13BB58:  MOVS            R3, #0
13BB5A:  MOV.W           R10, #0
13BB5E:  ADD.W           R6, R10, R10,LSL#1
13BB62:  ADD.W           R4, R0, R6,LSL#2
13BB66:  LDR.W           R2, [R0,R6,LSL#2]
13BB6A:  LDR             R4, [R4,#4]
13BB6C:  CMP             R4, R2
13BB6E:  BEQ             loc_13BC5E
13BB70:  MOVS            R1, #0
13BB72:  MOV             R8, R1
13BB74:  LDR             R1, [SP,#0x1E8+var_1AC]
13BB76:  SUBS            R2, R1, R3
13BB78:  CMP.W           R8, R2,ASR#2
13BB7C:  BCC             loc_13BC24
13BB7E:  LDR             R4, [SP,#0x1E8+var_1A8]
13BB80:  CMP             R1, R4
13BB82:  BCS             loc_13BB9C
13BB84:  STR.W           R11, [R1],#4
13BB88:  STR             R1, [SP,#0x1E8+var_1AC]
13BB8A:  B               loc_13BC24
13BB8C:  DCD _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13B940
13BB90:  DCD _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x13B946
13BB94:  DCD _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13B9A8
13BB98:  DCD off_234980 - 0x13BA9E
13BB9C:  ASRS            R2, R2, #2
13BB9E:  ADDS            R1, R2, #1
13BBA0:  CMP.W           R1, #0x40000000
13BBA4:  BCS.W           loc_13BDBC
13BBA8:  SUBS            R0, R4, R3
13BBAA:  MOV             R3, #0x7FFFFFFC
13BBB2:  CMP.W           R1, R0,ASR#1
13BBB6:  IT LS
13BBB8:  ASRLS           R1, R0, #1
13BBBA:  CMP             R0, R3
13BBBC:  IT CS
13BBBE:  MOVCS           R1, #0x3FFFFFFF
13BBC2:  ADD             R0, SP, #0x1E8+var_18C
13BBC4:  MOV             R3, R9
13BBC6:  BL              sub_13C368
13BBCA:  LDRD.W          R1, R0, [SP,#0x1E8+var_1B0]; src
13BBCE:  LDRD.W          R3, R4, [SP,#0x1E8+var_188]
13BBD2:  SUBS            R2, R0, R1; n
13BBD4:  STR.W           R11, [R4],#4
13BBD8:  SUBS            R3, R3, R2
13BBDA:  CMP             R2, #1
13BBDC:  STR             R4, [SP,#0x1E8+var_184]
13BBDE:  STR             R3, [SP,#0x1E8+var_188]
13BBE0:  BLT             loc_13BBF0
13BBE2:  MOV             R0, R3; dest
13BBE4:  BLX             j_memcpy
13BBE8:  LDRD.W          R3, R4, [SP,#0x1E8+var_188]
13BBEC:  LDRD.W          R1, R0, [SP,#0x1E8+var_1B0]
13BBF0:  LDR             R2, [SP,#0x1E8+var_1A8]
13BBF2:  ADD.W           R12, SP, #0x1E8+var_1B0
13BBF6:  CMP             R0, R1
13BBF8:  LDR             R5, [SP,#0x1E8+var_180]
13BBFA:  STM.W           R12, {R3-R5}
13BBFE:  STRD.W          R0, R2, [SP,#0x1E8+var_184]
13BC02:  STRD.W          R1, R1, [SP,#0x1E8+var_18C]
13BC06:  ITTTT NE
13BC08:  SUBNE           R2, R0, R1
13BC0A:  SUBNE           R2, #4
13BC0C:  MVNNE.W         R2, R2,LSR#2
13BC10:  ADDNE.W         R0, R0, R2,LSL#2
13BC14:  IT NE
13BC16:  STRNE           R0, [SP,#0x1E8+var_184]
13BC18:  CBZ             R1, loc_13BC22
13BC1A:  MOV             R0, R1; void *
13BC1C:  BLX             j__ZdlPv; operator delete(void *)
13BC20:  LDR             R3, [SP,#0x1E8+var_1B0]
13BC22:  LDR             R0, [SP,#0x1E8+var_54]
13BC24:  LDR.W           R2, [R0,R6,LSL#2]
13BC28:  ADD.W           R4, R3, R8,LSL#2
13BC2C:  ADD.W           R1, R8, #1
13BC30:  VLDR            S0, [R4]
13BC34:  LDR.W           R5, [R2,R8,LSL#2]
13BC38:  VLDR            S2, [R5,#0x14]
13BC3C:  ADD.W           R5, R0, R6,LSL#2
13BC40:  VCMP.F32        S0, S2
13BC44:  VMRS            APSR_nzcv, FPSCR
13BC48:  IT MI
13BC4A:  VMOVMI.F32      S0, S2
13BC4E:  LDR             R5, [R5,#4]
13BC50:  VSTR            S0, [R4]
13BC54:  SUBS            R2, R5, R2
13BC56:  CMP.W           R1, R2,ASR#2
13BC5A:  BCC             loc_13BB72
13BC5C:  LDR             R1, [SP,#0x1E8+var_50]
13BC5E:  SUBS            R2, R1, R0
13BC60:  MOV             R6, #0xAAAAAAAB
13BC68:  ADD.W           R10, R10, #1
13BC6C:  ASRS            R2, R2, #2
13BC6E:  MULS            R2, R6
13BC70:  CMP             R10, R2
13BC72:  BCC.W           loc_13BB5E
13BC76:  VLDR            S16, =0.0
13BC7A:  CMP             R1, R0
13BC7C:  BEQ             loc_13BD4C
13BC7E:  LDR             R0, =(_ZTVN10ListWidget10ItemWidgetE - 0x13BC90); `vtable for'ListWidget::ItemWidget ...
13BC80:  VMOV.F32        S18, #5.0
13BC84:  MOV.W           R9, #0
13BC88:  MOV.W           R10, #0
13BC8C:  ADD             R0, PC; `vtable for'ListWidget::ItemWidget
13BC8E:  ADDS            R0, #8
13BC90:  STR             R0, [SP,#0x1E8+var_1C4]
13BC92:  LDR             R0, =(off_234B7C - 0x13BC98)
13BC94:  ADD             R0, PC; off_234B7C
13BC96:  LDR.W           R11, [R0]; dword_238EC8
13BC9A:  MOVS            R0, #0x68 ; 'h'; unsigned int
13BC9C:  BLX             j__Znwj; operator new(uint)
13BCA0:  MOV             R4, R0
13BCA2:  MOVS            R1, #1
13BCA4:  BL              sub_13DAAC
13BCA8:  LDR             R0, [SP,#0x1E8+var_1C4]
13BCAA:  STRD.W          R9, R9, [R4,#0x5C]
13BCAE:  STR.W           R9, [R4,#0x64]
13BCB2:  STR             R0, [R4]
13BCB4:  LDR             R0, [SP,#0x1E8+var_1D8]
13BCB6:  MOV             R1, R4
13BCB8:  BL              sub_13D96C
13BCBC:  LDR             R1, [SP,#0x1E8+var_54]
13BCBE:  ADD.W           R5, R10, R10,LSL#1
13BCC2:  ADD.W           R2, R1, R5,LSL#2
13BCC6:  LDR.W           R0, [R1,R5,LSL#2]
13BCCA:  LDR             R2, [R2,#4]
13BCCC:  CMP             R2, R0
13BCCE:  BEQ             loc_13BD24
13BCD0:  VLDR            S20, [R11]
13BCD4:  MOVS            R6, #0
13BCD6:  MOV.W           R8, #0
13BCDA:  LDR.W           R1, [R0,R8,LSL#2]
13BCDE:  VMOV            R2, S20
13BCE2:  MOV             R0, R4
13BCE4:  BL              sub_13BF3C
13BCE8:  LDR             R0, [SP,#0x1E8+var_1B0]
13BCEA:  ADD.W           R8, R8, #1
13BCEE:  VLDR            S0, [R11]
13BCF2:  ADD             R0, R6
13BCF4:  LDR             R1, [SP,#0x1E8+var_54]
13BCF6:  ADDS            R6, #4
13BCF8:  VLDR            S2, [R0]
13BCFC:  ADD.W           R2, R1, R5,LSL#2
13BD00:  VMLA.F32        S2, S0, S18
13BD04:  LDR.W           R0, [R1,R5,LSL#2]
13BD08:  LDR             R2, [R2,#4]
13BD0A:  SUBS            R2, R2, R0
13BD0C:  VADD.F32        S20, S20, S2
13BD10:  VCMP.F32        S16, S20
13BD14:  VMRS            APSR_nzcv, FPSCR
13BD18:  IT MI
13BD1A:  VMOVMI.F32      S16, S20
13BD1E:  CMP.W           R8, R2,ASR#2
13BD22:  BCC             loc_13BCDA
13BD24:  LDR             R0, [SP,#0x1E8+var_50]
13BD26:  ADD.W           R10, R10, #1
13BD2A:  LDR             R4, [SP,#0x1E8+var_1DC]
13BD2C:  SUBS            R0, R0, R1
13BD2E:  MOV             R1, #0xAAAAAAAB
13BD36:  ASRS            R0, R0, #2
13BD38:  MULS            R0, R1
13BD3A:  CMP             R10, R0
13BD3C:  BCC             loc_13BC9A
13BD3E:  LDR             R3, [SP,#0x1E8+var_1B0]
13BD40:  B               loc_13BD4E
13BD42:  LDR             R0, [SP,#0x1E8+var_1D8]
13BD44:  LDR             R4, [SP,#0x1E8+var_1DC]
13BD46:  STR.W           R11, [R0,#0x64]
13BD4A:  B               loc_13BD5E
13BD4C:  LDR             R4, [SP,#0x1E8+var_1DC]
13BD4E:  LDR             R0, [SP,#0x1E8+var_1D8]
13BD50:  VSTR            S16, [R0,#0x64]
13BD54:  CBZ             R3, loc_13BD5E
13BD56:  MOV             R0, R3; void *
13BD58:  STR             R3, [SP,#0x1E8+var_1AC]
13BD5A:  BLX             j__ZdlPv; operator delete(void *)
13BD5E:  LDRB.W          R0, [SP,#0x1E8+var_F0]
13BD62:  LSLS            R0, R0, #0x1F
13BD64:  ITT NE
13BD66:  LDRNE           R0, [SP,#0x1E8+var_E8]; void *
13BD68:  BLXNE           j__ZdlPv; operator delete(void *)
13BD6C:  LDRB.W          R0, [SP,#0x1E8+var_B8]
13BD70:  LDR             R1, [SP,#0x1E8+var_1B8]
13BD72:  STR             R1, [SP,#0x1E8+var_A4]
13BD74:  LDR             R1, [SP,#0x1E8+var_1BC]
13BD76:  LSLS            R0, R0, #0x1F
13BD78:  STR             R1, [SP,#0x1E8+var_E4]
13BD7A:  LDR             R1, [SP,#0x1E8+var_1C0]
13BD7C:  STR             R1, [SP,#0x1E8+var_D8]
13BD7E:  LDR             R1, [SP,#0x1E8+var_1B4]
13BD80:  STR             R1, [SP,#0x1E8+var_DC]
13BD82:  ITT NE
13BD84:  LDRNE           R0, [SP,#0x1E8+var_B0]; void *
13BD86:  BLXNE           j__ZdlPv; operator delete(void *)
13BD8A:  MOV             R0, R4
13BD8C:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
13BD90:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x13BD96)
13BD92:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
13BD94:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
13BD96:  ADDS            R1, R0, #4
13BD98:  ADD             R0, SP, #0x1E8+var_E4
13BD9A:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
13BD9E:  LDR             R0, [SP,#0x1E8+var_1E0]
13BDA0:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
13BDA4:  ADD             R0, SP, #0x1E8+var_54
13BDA6:  BL              sub_13C09C
13BDAA:  ADD             SP, SP, #0x1A0
13BDAC:  VPOP            {D8-D10}
13BDB0:  VPOP            {D12-D13}
13BDB4:  ADD             SP, SP, #4
13BDB6:  POP.W           {R8-R11}
13BDBA:  POP             {R4-R7,PC}
13BDBC:  ADD             R0, SP, #0x1E8+var_1B0
13BDBE:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
