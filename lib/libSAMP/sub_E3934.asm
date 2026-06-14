; =========================================================
; Game Engine Function: sub_E3934
; Address            : 0xE3934 - 0xE398E
; =========================================================

E3934:  PUSH            {R4,R5,R7,LR}
E3936:  ADD             R7, SP, #8
E3938:  MOV             R4, R0
E393A:  LDR             R0, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3944)
E393C:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE394A)
E393E:  MOV             R5, R4
E3940:  ADD             R0, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3942:  LDRB.W          R2, [R4,#0x2C]
E3946:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3948:  LDR             R0, [R0]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E394A:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
E394C:  ADD.W           R3, R0, #0x34 ; '4'
E3950:  STR             R3, [R4,#0x40]
E3952:  ADD.W           R3, R0, #0xC
E3956:  ADDS            R0, #0x20 ; ' '
E3958:  STR             R0, [R4,#8]
E395A:  ADD.W           R0, R1, #8
E395E:  STR.W           R0, [R5,#0xC]!
E3962:  LSLS            R0, R2, #0x1F
E3964:  STR             R3, [R4]
E3966:  ITT NE
E3968:  LDRNE           R0, [R4,#0x34]; void *
E396A:  BLXNE           j__ZdlPv; operator delete(void *)
E396E:  MOV             R0, R5
E3970:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
E3974:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE397A)
E3976:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3978:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
E397A:  ADDS            R1, R0, #4
E397C:  MOV             R0, R4
E397E:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
E3982:  ADD.W           R0, R4, #0x40 ; '@'
E3986:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E398A:  MOV             R0, R4
E398C:  POP             {R4,R5,R7,PC}
