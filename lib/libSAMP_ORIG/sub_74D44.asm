; =========================================================
; Game Engine Function: sub_74D44
; Address            : 0x74D44 - 0x74DAE
; =========================================================

74D44:  PUSH            {R4-R7,LR}
74D46:  ADD             R7, SP, #0xC
74D48:  PUSH.W          {R11}
74D4C:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74D54)
74D4E:  LDR             R2, [R0]
74D50:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74D52:  LDR             R3, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74D5C)
74D54:  LDR.W           R2, [R2,#-0xC]
74D58:  ADD             R3, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74D5A:  LDR             R1, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74D5C:  ADDS            R4, R0, R2
74D5E:  LDR             R3, [R3]; `vtable for'std::stringbuf ...
74D60:  ADD.W           R6, R1, #0xC
74D64:  STR             R6, [R0,R2]
74D66:  ADD.W           R0, R1, #0x20 ; ' '
74D6A:  STR             R0, [R4,#8]
74D6C:  MOV             R6, R4
74D6E:  LDRB.W          R0, [R4,#0x2C]
74D72:  MOV             R5, R4
74D74:  ADD.W           R2, R3, #8
74D78:  ADDS            R1, #0x34 ; '4'
74D7A:  STR.W           R2, [R6,#0xC]!
74D7E:  LSLS            R0, R0, #0x1F
74D80:  STR.W           R1, [R5,#0x40]!
74D84:  ITT NE
74D86:  LDRNE           R0, [R4,#0x34]; void *
74D88:  BLXNE           j__ZdlPv; operator delete(void *)
74D8C:  MOV             R0, R6
74D8E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
74D92:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74D98)
74D94:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74D96:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74D98:  ADDS            R1, R0, #4
74D9A:  MOV             R0, R4
74D9C:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
74DA0:  MOV             R0, R5
74DA2:  POP.W           {R11}
74DA6:  POP.W           {R4-R7,LR}
74DAA:  B.W             sub_10C164
