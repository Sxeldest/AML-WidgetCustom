; =========================================================
; Game Engine Function: sub_E3C10
; Address            : 0xE3C10 - 0xE3C3C
; =========================================================

E3C10:  PUSH            {R4,R6,R7,LR}
E3C12:  ADD             R7, SP, #8
E3C14:  MOV             R4, R0
E3C16:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0xE3C20)
E3C18:  LDRB.W          R1, [R4,#0x20]
E3C1C:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
E3C1E:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
E3C20:  ADDS            R0, #8
E3C22:  STR             R0, [R4]
E3C24:  LSLS            R0, R1, #0x1F
E3C26:  ITT NE
E3C28:  LDRNE           R0, [R4,#0x28]; void *
E3C2A:  BLXNE           j__ZdlPv; operator delete(void *)
E3C2E:  MOV             R0, R4
E3C30:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
E3C34:  POP.W           {R4,R6,R7,LR}
E3C38:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
