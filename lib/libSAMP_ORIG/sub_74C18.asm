; =========================================================
; Game Engine Function: sub_74C18
; Address            : 0x74C18 - 0x74C72
; =========================================================

74C18:  PUSH            {R4,R5,R7,LR}
74C1A:  ADD             R7, SP, #8
74C1C:  MOV             R4, R0
74C1E:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74C28)
74C20:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74C2E)
74C22:  MOV             R5, R4
74C24:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74C26:  LDRB.W          R2, [R4,#0x2C]
74C2A:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74C2C:  LDR             R0, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74C2E:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
74C30:  ADD.W           R3, R0, #0x34 ; '4'
74C34:  STR             R3, [R4,#0x40]
74C36:  ADD.W           R3, R0, #0xC
74C3A:  ADDS            R0, #0x20 ; ' '
74C3C:  STR             R0, [R4,#8]
74C3E:  ADD.W           R0, R1, #8
74C42:  STR.W           R0, [R5,#0xC]!
74C46:  LSLS            R0, R2, #0x1F
74C48:  STR             R3, [R4]
74C4A:  ITT NE
74C4C:  LDRNE           R0, [R4,#0x34]; void *
74C4E:  BLXNE           j__ZdlPv; operator delete(void *)
74C52:  MOV             R0, R5
74C54:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
74C58:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74C5E)
74C5A:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74C5C:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74C5E:  ADDS            R1, R0, #4
74C60:  MOV             R0, R4
74C62:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
74C66:  ADD.W           R0, R4, #0x40 ; '@'
74C6A:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
74C6E:  MOV             R0, R4
74C70:  POP             {R4,R5,R7,PC}
