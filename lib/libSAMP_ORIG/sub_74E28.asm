; =========================================================
; Game Engine Function: sub_74E28
; Address            : 0x74E28 - 0x74E92
; =========================================================

74E28:  PUSH            {R4-R7,LR}
74E2A:  ADD             R7, SP, #0xC
74E2C:  PUSH.W          {R11}
74E30:  MOV             R4, R0
74E32:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74E3C)
74E34:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74E42)
74E36:  MOV             R6, R4
74E38:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74E3A:  LDRB.W          R2, [R4,#0x24]
74E3E:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74E40:  MOV             R5, R4
74E42:  LDR             R0, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74E44:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
74E46:  ADD.W           R3, R0, #0x20 ; ' '
74E4A:  STR             R3, [R4]
74E4C:  ADDS            R1, #8
74E4E:  STR.W           R1, [R6,#4]!
74E52:  ADD.W           R1, R0, #0x34 ; '4'
74E56:  ADDS            R0, #0xC
74E58:  STR.W           R0, [R4,#-8]!
74E5C:  LSLS            R0, R2, #0x1F
74E5E:  STR.W           R1, [R5,#0x38]!
74E62:  ITT NE
74E64:  LDRNE           R0, [R4,#0x34]; void *
74E66:  BLXNE           j__ZdlPv; operator delete(void *)
74E6A:  MOV             R0, R6
74E6C:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
74E70:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74E76)
74E72:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74E74:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74E76:  ADDS            R1, R0, #4
74E78:  MOV             R0, R4
74E7A:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
74E7E:  MOV             R0, R5
74E80:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
74E84:  MOV             R0, R4; void *
74E86:  POP.W           {R11}
74E8A:  POP.W           {R4-R7,LR}
74E8E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
