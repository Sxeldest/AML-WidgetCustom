; =========================================================
; Game Engine Function: sub_74DBC
; Address            : 0x74DBC - 0x74E1C
; =========================================================

74DBC:  PUSH            {R4,R5,R7,LR}
74DBE:  ADD             R7, SP, #8
74DC0:  MOV             R4, R0
74DC2:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74DCC)
74DC4:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74DD2)
74DC6:  MOV             R5, R4
74DC8:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74DCA:  LDRB.W          R2, [R4,#0x2C]
74DCE:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74DD0:  LDR             R0, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74DD2:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
74DD4:  ADD.W           R3, R0, #0x34 ; '4'
74DD8:  STR             R3, [R4,#0x40]
74DDA:  ADD.W           R3, R0, #0xC
74DDE:  ADDS            R0, #0x20 ; ' '
74DE0:  STR             R0, [R4,#8]
74DE2:  ADD.W           R0, R1, #8
74DE6:  STR.W           R0, [R5,#0xC]!
74DEA:  LSLS            R0, R2, #0x1F
74DEC:  STR             R3, [R4]
74DEE:  ITT NE
74DF0:  LDRNE           R0, [R4,#0x34]; void *
74DF2:  BLXNE           j__ZdlPv; operator delete(void *)
74DF6:  MOV             R0, R5
74DF8:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
74DFC:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74E02)
74DFE:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74E00:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74E02:  ADDS            R1, R0, #4
74E04:  MOV             R0, R4
74E06:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
74E0A:  ADD.W           R0, R4, #0x40 ; '@'
74E0E:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
74E12:  MOV             R0, R4; void *
74E14:  POP.W           {R4,R5,R7,LR}
74E18:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
