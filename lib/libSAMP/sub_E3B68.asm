; =========================================================
; Game Engine Function: sub_E3B68
; Address            : 0xE3B68 - 0xE3BD8
; =========================================================

E3B68:  PUSH            {R4-R7,LR}
E3B6A:  ADD             R7, SP, #0xC
E3B6C:  PUSH.W          {R11}
E3B70:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3B78)
E3B72:  LDR             R2, [R0]
E3B74:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3B76:  LDR             R3, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3B80)
E3B78:  LDR.W           R2, [R2,#-0xC]
E3B7C:  ADD             R3, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3B7E:  LDR             R1, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E3B80:  ADDS            R4, R0, R2
E3B82:  LDR             R3, [R3]; `vtable for'std::stringbuf ...
E3B84:  ADD.W           R6, R1, #0xC
E3B88:  STR             R6, [R0,R2]
E3B8A:  ADD.W           R0, R1, #0x20 ; ' '
E3B8E:  STR             R0, [R4,#8]
E3B90:  MOV             R6, R4
E3B92:  LDRB.W          R0, [R4,#0x2C]
E3B96:  MOV             R5, R4
E3B98:  ADD.W           R2, R3, #8
E3B9C:  ADDS            R1, #0x34 ; '4'
E3B9E:  STR.W           R2, [R6,#0xC]!
E3BA2:  LSLS            R0, R0, #0x1F
E3BA4:  STR.W           R1, [R5,#0x40]!
E3BA8:  ITT NE
E3BAA:  LDRNE           R0, [R4,#0x34]; void *
E3BAC:  BLXNE           j__ZdlPv; operator delete(void *)
E3BB0:  MOV             R0, R6
E3BB2:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
E3BB6:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3BBC)
E3BB8:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3BBA:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E3BBC:  ADDS            R1, R0, #4
E3BBE:  MOV             R0, R4
E3BC0:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
E3BC4:  MOV             R0, R5
E3BC6:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E3BCA:  MOV             R0, R4; void *
E3BCC:  POP.W           {R11}
E3BD0:  POP.W           {R4-R7,LR}
E3BD4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
