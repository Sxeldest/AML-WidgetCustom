; =========================================================
; Game Engine Function: sub_74CD4
; Address            : 0x74CD4 - 0x74D38
; =========================================================

74CD4:  PUSH            {R4-R7,LR}
74CD6:  ADD             R7, SP, #0xC
74CD8:  PUSH.W          {R11}
74CDC:  MOV             R4, R0
74CDE:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74CE8)
74CE0:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74CEE)
74CE2:  MOV             R6, R4
74CE4:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74CE6:  LDRB.W          R2, [R4,#0x24]
74CEA:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74CEC:  MOV             R5, R4
74CEE:  LDR             R0, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74CF0:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
74CF2:  ADD.W           R3, R0, #0x20 ; ' '
74CF6:  STR             R3, [R4]
74CF8:  ADDS            R1, #8
74CFA:  STR.W           R1, [R6,#4]!
74CFE:  ADD.W           R1, R0, #0x34 ; '4'
74D02:  ADDS            R0, #0xC
74D04:  STR.W           R0, [R4,#-8]!
74D08:  LSLS            R0, R2, #0x1F
74D0A:  STR.W           R1, [R5,#0x38]!
74D0E:  ITT NE
74D10:  LDRNE           R0, [R4,#0x34]; void *
74D12:  BLXNE           j__ZdlPv; operator delete(void *)
74D16:  MOV             R0, R6
74D18:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
74D1C:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74D22)
74D1E:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74D20:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
74D22:  ADDS            R1, R0, #4
74D24:  MOV             R0, R4
74D26:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
74D2A:  MOV             R0, R5
74D2C:  POP.W           {R11}
74D30:  POP.W           {R4-R7,LR}
74D34:  B.W             sub_10C164
