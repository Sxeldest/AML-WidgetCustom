; =========================================================
; Game Engine Function: sub_74F48
; Address            : 0x74F48 - 0x74F74
; =========================================================

74F48:  PUSH            {R4,R6,R7,LR}
74F4A:  ADD             R7, SP, #8
74F4C:  MOV             R4, R0
74F4E:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x74F58)
74F50:  LDRB.W          R1, [R4,#0x20]
74F54:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
74F56:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
74F58:  ADDS            R0, #8
74F5A:  STR             R0, [R4]
74F5C:  LSLS            R0, R1, #0x1F
74F5E:  ITT NE
74F60:  LDRNE           R0, [R4,#0x28]; void *
74F62:  BLXNE           j__ZdlPv; operator delete(void *)
74F66:  MOV             R0, R4
74F68:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
74F6C:  POP.W           {R4,R6,R7,LR}
74F70:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
