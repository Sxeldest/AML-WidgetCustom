; =========================================================
; Game Engine Function: sub_E399C
; Address            : 0xE399C - 0xE3A00
; =========================================================

E399C:  PUSH            {R4-R7,LR}
E399E:  ADD             R7, SP, #0xC
E39A0:  PUSH.W          {R11}
E39A4:  MOV             R4, R0
E39A6:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE39B0)
E39A8:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE39B6)
E39AA:  MOV             R6, R4
E39AC:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E39AE:  LDRB.W          R2, [R4,#0x24]
E39B2:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E39B4:  MOV             R5, R4
E39B6:  LDR             R0, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E39B8:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
E39BA:  ADD.W           R3, R0, #0x20 ; ' '
E39BE:  STR             R3, [R4]
E39C0:  ADDS            R1, #8
E39C2:  STR.W           R1, [R6,#4]!
E39C6:  ADD.W           R1, R0, #0x34 ; '4'
E39CA:  ADDS            R0, #0xC
E39CC:  STR.W           R0, [R4,#-8]!
E39D0:  LSLS            R0, R2, #0x1F
E39D2:  STR.W           R1, [R5,#0x38]!
E39D6:  ITT NE
E39D8:  LDRNE           R0, [R4,#0x34]; void *
E39DA:  BLXNE           j__ZdlPv; operator delete(void *)
E39DE:  MOV             R0, R6
E39E0:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
E39E4:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE39EA)
E39E6:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E39E8:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E39EA:  ADDS            R1, R0, #4
E39EC:  MOV             R0, R4
E39EE:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
E39F2:  MOV             R0, R5
E39F4:  POP.W           {R11}
E39F8:  POP.W           {R4-R7,LR}
E39FC:  B.W             sub_224268
