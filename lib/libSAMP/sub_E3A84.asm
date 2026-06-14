; =========================================================
; Game Engine Function: sub_E3A84
; Address            : 0xE3A84 - 0xE3AE4
; =========================================================

E3A84:  PUSH            {R4,R5,R7,LR}
E3A86:  ADD             R7, SP, #8
E3A88:  MOV             R4, R0
E3A8A:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3A94)
E3A8C:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3A9A)
E3A8E:  MOV             R5, R4
E3A90:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3A92:  LDRB.W          R2, [R4,#0x2C]
E3A96:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3A98:  LDR             R0, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E3A9A:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
E3A9C:  ADD.W           R3, R0, #0x34 ; '4'
E3AA0:  STR             R3, [R4,#0x40]
E3AA2:  ADD.W           R3, R0, #0xC
E3AA6:  ADDS            R0, #0x20 ; ' '
E3AA8:  STR             R0, [R4,#8]
E3AAA:  ADD.W           R0, R1, #8
E3AAE:  STR.W           R0, [R5,#0xC]!
E3AB2:  LSLS            R0, R2, #0x1F
E3AB4:  STR             R3, [R4]
E3AB6:  ITT NE
E3AB8:  LDRNE           R0, [R4,#0x34]; void *
E3ABA:  BLXNE           j__ZdlPv; operator delete(void *)
E3ABE:  MOV             R0, R5
E3AC0:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
E3AC4:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3ACA)
E3AC6:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3AC8:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E3ACA:  ADDS            R1, R0, #4
E3ACC:  MOV             R0, R4
E3ACE:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
E3AD2:  ADD.W           R0, R4, #0x40 ; '@'
E3AD6:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E3ADA:  MOV             R0, R4; void *
E3ADC:  POP.W           {R4,R5,R7,LR}
E3AE0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
