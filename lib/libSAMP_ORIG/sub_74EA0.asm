; =========================================================
; Game Engine Function: sub_74EA0
; Address            : 0x74EA0 - 0x74F10
; =========================================================

74EA0:  PUSH            {R4-R7,LR}
74EA2:  ADD             R7, SP, #0xC
74EA4:  PUSH.W          {R11}
74EA8:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74EB0)
74EAA:  LDR             R2, [R0]
74EAC:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74EAE:  LDR             R3, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74EB8)
74EB0:  LDR.W           R2, [R2,#-0xC]
74EB4:  ADD             R3, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74EB6:  LDR             R1, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74EB8:  ADDS            R4, R0, R2
74EBA:  LDR             R3, [R3]; `vtable for'std::stringbuf ...
74EBC:  ADD.W           R6, R1, #0xC
74EC0:  STR             R6, [R0,R2]
74EC2:  ADD.W           R0, R1, #0x20 ; ' '
74EC6:  STR             R0, [R4,#8]
74EC8:  MOV             R6, R4
74ECA:  LDRB.W          R0, [R4,#0x2C]
74ECE:  MOV             R5, R4
74ED0:  ADD.W           R2, R3, #8
74ED4:  ADDS            R1, #0x34 ; '4'
74ED6:  STR.W           R2, [R6,#0xC]!
74EDA:  LSLS            R0, R0, #0x1F
74EDC:  STR.W           R1, [R5,#0x40]!
74EE0:  ITT NE
74EE2:  LDRNE           R0, [R4,#0x34]; void *
74EE4:  BLXNE           j__ZdlPv; operator delete(void *)
74EE8:  MOV             R0, R6
74EEA:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
74EEE:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74EF4)
74EF0:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74EF2:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74EF4:  ADDS            R1, R0, #4
74EF6:  MOV             R0, R4
74EF8:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
74EFC:  MOV             R0, R5
74EFE:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
74F02:  MOV             R0, R4; void *
74F04:  POP.W           {R11}
74F08:  POP.W           {R4-R7,LR}
74F0C:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
