; =========================================================
; Game Engine Function: sub_116A0C
; Address            : 0x116A0C - 0x116A66
; =========================================================

116A0C:  PUSH            {R4,R5,R7,LR}
116A0E:  ADD             R7, SP, #8
116A10:  MOV             R4, R0
116A12:  LDR             R0, =(_ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x116A1C)
116A14:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x116A22)
116A16:  MOV             R5, R4
116A18:  ADD             R0, PC; _ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
116A1A:  LDRB.W          R2, [R4,#0x24]
116A1E:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
116A20:  LDR             R0, [R0]; `vtable for'std::ostringstream ...
116A22:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
116A24:  ADD.W           R3, R0, #0x20 ; ' '
116A28:  ADDS            R0, #0xC
116A2A:  STR             R0, [R4]
116A2C:  ADD.W           R0, R1, #8
116A30:  STR.W           R0, [R5,#4]!
116A34:  LSLS            R0, R2, #0x1F
116A36:  STR             R3, [R4,#0x38]
116A38:  ITT NE
116A3A:  LDRNE           R0, [R4,#0x2C]; void *
116A3C:  BLXNE           j__ZdlPv; operator delete(void *)
116A40:  MOV             R0, R5
116A42:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
116A46:  LDR             R0, =(_ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x116A4C)
116A48:  ADD             R0, PC; _ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
116A4A:  LDR             R0, [R0]; `VTT for'std::ostringstream ...
116A4C:  ADDS            R1, R0, #4
116A4E:  MOV             R0, R4
116A50:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
116A54:  ADD.W           R0, R4, #0x38 ; '8'
116A58:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
116A5C:  MOV             R0, R4; void *
116A5E:  POP.W           {R4,R5,R7,LR}
116A62:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
