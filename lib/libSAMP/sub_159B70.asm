; =========================================================
; Game Engine Function: sub_159B70
; Address            : 0x159B70 - 0x159E5A
; =========================================================

159B70:  PUSH            {R4-R7,LR}
159B72:  ADD             R7, SP, #0xC
159B74:  PUSH.W          {R8-R11}
159B78:  SUB             SP, SP, #0xBC
159B7A:  MOV             R8, R0
159B7C:  LDR             R0, =(byte_381A2C - 0x159B84)
159B7E:  MOV             R11, R1
159B80:  ADD             R0, PC; byte_381A2C
159B82:  LDRB            R0, [R0]
159B84:  DMB.W           ISH
159B88:  LDR             R5, =(dword_381A28 - 0x159B8E)
159B8A:  ADD             R5, PC; dword_381A28
159B8C:  LSLS            R0, R0, #0x1F
159B8E:  BEQ.W           loc_159E14
159B92:  LDR             R0, [R5]
159B94:  CBNZ            R0, loc_159BC2
159B96:  ADD             R4, SP, #0xD8+var_AC
159B98:  MOV             R0, R4
159B9A:  BL              sub_15A228
159B9E:  LDRB.W          R2, [SP,#0xD8+var_AC]
159BA2:  LDR             R0, [SP,#0xD8+var_A4]
159BA4:  LDR             R1, =(aW7 - 0x159BB0); "w7@>" ...
159BA6:  LSLS            R2, R2, #0x1F
159BA8:  IT EQ
159BAA:  ADDEQ           R0, R4, #1; filename
159BAC:  ADD             R1, PC; "w7@>"
159BAE:  BLX             fopen
159BB2:  LDRB.W          R1, [SP,#0xD8+var_AC]
159BB6:  STR             R0, [R5]
159BB8:  LSLS            R0, R1, #0x1F
159BBA:  ITT NE
159BBC:  LDRNE           R0, [SP,#0xD8+var_A4]; void *
159BBE:  BLXNE           j__ZdlPv; operator delete(void *)
159BC2:  CMP.W           R8, #4
159BC6:  BNE             loc_159BD8
159BC8:  B               loc_159D9C; jumptable 00159D92 case 4
159BCA:  MOV             R1, R11; text
159BCC:  BL              sub_ED4F8
159BD0:  ADD             SP, SP, #0xBC; jumptable 00159D92 default case
159BD2:  POP.W           {R8-R11}
159BD6:  POP             {R4-R7,PC}
159BD8:  STR             R5, [SP,#0xD8+var_BC]
159BDA:  ADD.W           R10, SP, #0xD8+var_AC
159BDE:  LDR             R0, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x159BEC)
159BE0:  ADD.W           R9, R10, #0xC
159BE4:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x159BF0)
159BE6:  MOVS            R5, #0
159BE8:  ADD             R0, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
159BEA:  STR             R5, [SP,#0xD8+var_A8]
159BEC:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
159BEE:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
159BF0:  LDR             R4, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
159BF2:  ADD.W           R1, R0, #0x20 ; ' '
159BF6:  ADDS            R0, #0xC
159BF8:  STR             R0, [SP,#0xD8+var_AC]
159BFA:  ADD.W           R6, R4, #0x20 ; ' '
159BFE:  ADD.W           R0, R10, #0x40 ; '@'; this
159C02:  STR             R1, [SP,#0xD8+var_6C]
159C04:  STR             R6, [SP,#0xD8+var_A4]
159C06:  MOV             R1, R9; void *
159C08:  STR             R0, [SP,#0xD8+var_C4]
159C0A:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
159C0E:  MOV.W           R0, #0xFFFFFFFF
159C12:  STR.W           R11, [SP,#0xD8+s]
159C16:  STRD.W          R5, R0, [SP,#0xD8+var_24]
159C1A:  ADD.W           R0, R4, #0x34 ; '4'
159C1E:  STR             R0, [SP,#0xD8+var_D0]
159C20:  STR             R0, [SP,#0xD8+var_6C]
159C22:  ADD.W           R0, R4, #0xC
159C26:  STR             R0, [SP,#0xD8+var_D4]
159C28:  STR             R0, [SP,#0xD8+var_AC]
159C2A:  STR             R6, [SP,#0xD8+var_C8]
159C2C:  STR             R6, [SP,#0xD8+var_A4]
159C2E:  MOV             R0, R9
159C30:  STR.W           R9, [SP,#0xD8+var_CC]
159C34:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
159C38:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x159C4A)
159C3A:  VMOV.I32        Q8, #0
159C3E:  ADD.W           R1, R10, #0x2C ; ','
159C42:  LDR.W           R11, [SP,#0xD8+var_BC]
159C46:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
159C48:  CMP.W           R8, #0
159C4C:  VST1.32         {D16-D17}, [R1]!
159C50:  MOV.W           R2, #0x18
159C54:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
159C56:  STR             R2, [R1]
159C58:  ADD.W           R0, R0, #8
159C5C:  STR             R0, [SP,#0xD8+var_D8]
159C5E:  STR             R0, [SP,#0xD8+var_A0]
159C60:  BEQ             loc_159CC2
159C62:  LDR             R1, =(a5+4 - 0x159C68); "[" ...
159C64:  ADD             R1, PC; "["
159C66:  ADD.W           R0, R10, #8
159C6A:  MOVS            R2, #1
159C6C:  BL              sub_FB2B4
159C70:  MOV             R4, R0
159C72:  SUB.W           R0, R8, #1
159C76:  CMP             R0, #2
159C78:  BHI             loc_159C84
159C7A:  LDR             R1, =(off_22F79C - 0x159C80); "Info" ...
159C7C:  ADD             R1, PC; off_22F79C
159C7E:  LDR.W           R1, [R1,R0,LSL#2]
159C82:  B               loc_159C88
159C84:  LDR             R1, =(byte_8F794 - 0x159C8A)
159C86:  ADD             R1, PC; byte_8F794 ; s
159C88:  ADD             R0, SP, #0xD8+var_B8; int
159C8A:  BL              sub_DC6DC
159C8E:  LDRB.W          R3, [SP,#0xD8+var_B8]
159C92:  LDRD.W          R2, R1, [SP,#0xD8+var_B4]
159C96:  ANDS.W          R5, R3, #1
159C9A:  ITT EQ
159C9C:  ADDEQ           R1, R0, #1
159C9E:  LSREQ           R2, R3, #1
159CA0:  MOV             R0, R4
159CA2:  BL              sub_FB2B4
159CA6:  LDR             R1, =(asc_84B99 - 0x159CAC); "] " ...
159CA8:  ADD             R1, PC; "] "
159CAA:  MOVS            R2, #2
159CAC:  BL              sub_FB2B4
159CB0:  LDRB.W          R0, [SP,#0xD8+var_B8]
159CB4:  LDR.W           R11, [SP,#0xD8+var_BC]
159CB8:  LSLS            R0, R0, #0x1F
159CBA:  ITT NE
159CBC:  LDRNE           R0, [SP,#0xD8+var_B0]; void *
159CBE:  BLXNE           j__ZdlPv; operator delete(void *)
159CC2:  LDR             R4, [SP,#0xD8+s]
159CC4:  MOV             R0, R4; s
159CC6:  BLX             strlen
159CCA:  MOV             R2, R0
159CCC:  ADD.W           R0, R10, #8
159CD0:  MOV             R1, R4
159CD2:  BL              sub_FB2B4
159CD6:  MOV             R4, R0
159CD8:  LDR             R0, [R0]
159CDA:  LDR.W           R0, [R0,#-0xC]
159CDE:  ADDS            R1, R4, R0
159CE0:  ADD             R0, SP, #0xD8+var_B8; this
159CE2:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
159CE6:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0x159CEC)
159CE8:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
159CEA:  LDR             R1, [R0]; std::locale::id *
159CEC:  ADD             R0, SP, #0xD8+var_B8; this
159CEE:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
159CF2:  LDR             R1, [R0]
159CF4:  LDR             R2, [R1,#0x1C]
159CF6:  MOVS            R1, #0xA
159CF8:  BLX             R2
159CFA:  MOV             R6, R0
159CFC:  ADD             R0, SP, #0xD8+var_B8; this
159CFE:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
159D02:  MOV             R0, R4
159D04:  MOV             R1, R6
159D06:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
159D0A:  MOV             R0, R4
159D0C:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
159D10:  LDR.W           R4, [R11]
159D14:  CMP             R4, #0
159D16:  BEQ             loc_159DB4
159D18:  LDR             R5, [SP,#0xD8+var_CC]
159D1A:  ADD             R6, SP, #0xD8+var_B8
159D1C:  MOV             R0, R6
159D1E:  MOV             R1, R5
159D20:  BL              sub_116AEC
159D24:  LDR.W           R9, [SP,#0xD8+var_C8]
159D28:  LDRB.W          R1, [SP,#0xD8+var_B8]
159D2C:  LDR             R0, [SP,#0xD8+var_B0]
159D2E:  LSLS            R1, R1, #0x1F
159D30:  IT EQ
159D32:  ADDEQ           R0, R6, #1; s
159D34:  MOV             R1, R4; stream
159D36:  BLX             fputs
159D3A:  LDRB.W          R0, [SP,#0xD8+var_B8]
159D3E:  LSLS            R0, R0, #0x1F
159D40:  ITT NE
159D42:  LDRNE           R0, [SP,#0xD8+var_B0]; void *
159D44:  BLXNE           j__ZdlPv; operator delete(void *)
159D48:  LDR.W           R0, [R11]; stream
159D4C:  BLX             fflush
159D50:  LDR             R0, [SP,#0xD8+var_D0]
159D52:  STR             R0, [SP,#0xD8+var_6C]
159D54:  LDR             R0, [SP,#0xD8+var_D4]
159D56:  STR             R0, [SP,#0xD8+var_AC]
159D58:  LDRB.W          R0, [SP,#0xD8+var_80]
159D5C:  LDR             R1, [SP,#0xD8+var_D8]
159D5E:  LSLS            R0, R0, #0x1F
159D60:  STRD.W          R9, R1, [SP,#0xD8+var_A4]
159D64:  ITT NE
159D66:  LDRNE           R0, [SP,#0xD8+var_78]; void *
159D68:  BLXNE           j__ZdlPv; operator delete(void *)
159D6C:  MOV             R0, R5
159D6E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
159D72:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x159D78)
159D74:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
159D76:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
159D78:  ADDS            R1, R0, #4
159D7A:  ADD             R0, SP, #0xD8+var_AC
159D7C:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
159D80:  LDR             R0, [SP,#0xD8+var_C4]
159D82:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
159D86:  LDR.W           R11, [SP,#0xD8+s]
159D8A:  CMP.W           R8, #4; switch 5 cases
159D8E:  BHI.W           def_159D92; jumptable 00159D92 default case
159D92:  TBB.W           [PC,R8]; switch jump
159D96:  DCB 9; jump table for switch statement
159D97:  DCB 0x33
159D98:  DCB 0x39
159D99:  DCB 0x2D
159D9A:  DCB 3
159D9B:  ALIGN 2
159D9C:  MOV             R0, R11; jumptable 00159D92 case 4
159D9E:  BLX             strlen
159DA2:  MOV             R2, R0
159DA4:  MOVS            R0, #4; int
159DA6:  B               loc_159BCA
159DA8:  MOV             R0, R11; jumptable 00159D92 case 0
159DAA:  BLX             strlen
159DAE:  MOV             R2, R0
159DB0:  MOVS            R0, #0
159DB2:  B               loc_159BCA
159DB4:  LDRB.W          R0, [SP,#0xD8+var_80]
159DB8:  LDR             R1, [SP,#0xD8+var_D0]
159DBA:  STR             R1, [SP,#0xD8+var_6C]
159DBC:  LDR             R1, [SP,#0xD8+var_D4]
159DBE:  LSLS            R0, R0, #0x1F
159DC0:  STR             R1, [SP,#0xD8+var_AC]
159DC2:  LDR             R1, [SP,#0xD8+var_D8]
159DC4:  STR             R1, [SP,#0xD8+var_A0]
159DC6:  LDR             R1, [SP,#0xD8+var_C8]
159DC8:  STR             R1, [SP,#0xD8+var_A4]
159DCA:  LDR             R4, [SP,#0xD8+var_CC]
159DCC:  ITT NE
159DCE:  LDRNE           R0, [SP,#0xD8+var_78]; void *
159DD0:  BLXNE           j__ZdlPv; operator delete(void *)
159DD4:  MOV             R0, R4
159DD6:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
159DDA:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x159DE0)
159DDC:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
159DDE:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
159DE0:  ADDS            R1, R0, #4
159DE2:  ADD             R0, SP, #0xD8+var_AC
159DE4:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
159DE8:  LDR             R0, [SP,#0xD8+var_C4]
159DEA:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
159DEE:  B               def_159D92; jumptable 00159D92 default case
159DF0:  MOV             R0, R11; jumptable 00159D92 case 3
159DF2:  BLX             strlen
159DF6:  MOV             R2, R0
159DF8:  MOVS            R0, #3
159DFA:  B               loc_159BCA
159DFC:  MOV             R0, R11; jumptable 00159D92 case 1
159DFE:  BLX             strlen
159E02:  MOV             R2, R0
159E04:  MOVS            R0, #1
159E06:  B               loc_159BCA
159E08:  MOV             R0, R11; jumptable 00159D92 case 2
159E0A:  BLX             strlen
159E0E:  MOV             R2, R0
159E10:  MOVS            R0, #2
159E12:  B               loc_159BCA
159E14:  LDR             R0, =(byte_381A2C - 0x159E1A)
159E16:  ADD             R0, PC; byte_381A2C ; __guard *
159E18:  BLX             j___cxa_guard_acquire
159E1C:  CMP             R0, #0
159E1E:  BEQ.W           loc_159B92
159E22:  ADD             R4, SP, #0xD8+var_AC
159E24:  MOV             R0, R4
159E26:  BL              sub_15A228
159E2A:  LDRB.W          R2, [SP,#0xD8+var_AC]
159E2E:  LDR             R0, [SP,#0xD8+var_A4]
159E30:  LDR             R1, =(aW7 - 0x159E3C); "w7@>" ...
159E32:  LSLS            R2, R2, #0x1F
159E34:  IT EQ
159E36:  ADDEQ           R0, R4, #1; filename
159E38:  ADD             R1, PC; "w7@>"
159E3A:  BLX             fopen
159E3E:  MOV             R4, R0
159E40:  LDRB.W          R0, [SP,#0xD8+var_AC]
159E44:  LSLS            R0, R0, #0x1F
159E46:  ITT NE
159E48:  LDRNE           R0, [SP,#0xD8+var_A4]; void *
159E4A:  BLXNE           j__ZdlPv; operator delete(void *)
159E4E:  LDR             R0, =(byte_381A2C - 0x159E56)
159E50:  STR             R4, [R5]
159E52:  ADD             R0, PC; byte_381A2C ; __guard *
159E54:  BLX             j___cxa_guard_release
159E58:  B               loc_159B92
