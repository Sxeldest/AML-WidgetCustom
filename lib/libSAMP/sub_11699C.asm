; =========================================================
; Game Engine Function: sub_11699C
; Address            : 0x11699C - 0x116A00
; =========================================================

11699C:  PUSH            {R4-R7,LR}
11699E:  ADD             R7, SP, #0xC
1169A0:  PUSH.W          {R11}
1169A4:  LDR             R1, =(_ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1169AE)
1169A6:  LDR             R2, [R0]
1169A8:  LDR             R3, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1169B4)
1169AA:  ADD             R1, PC; _ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
1169AC:  LDR.W           R2, [R2,#-0xC]
1169B0:  ADD             R3, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
1169B2:  LDR             R1, [R1]; `vtable for'std::ostringstream ...
1169B4:  ADDS            R4, R0, R2
1169B6:  LDR             R3, [R3]; `vtable for'std::stringbuf ...
1169B8:  ADD.W           R6, R1, #0xC
1169BC:  STR             R6, [R0,R2]
1169BE:  MOV             R6, R4
1169C0:  LDRB.W          R0, [R4,#0x24]
1169C4:  MOV             R5, R4
1169C6:  ADD.W           R2, R3, #8
1169CA:  ADDS            R1, #0x20 ; ' '
1169CC:  STR.W           R2, [R6,#4]!
1169D0:  LSLS            R0, R0, #0x1F
1169D2:  STR.W           R1, [R5,#0x38]!
1169D6:  ITT NE
1169D8:  LDRNE           R0, [R4,#0x2C]; void *
1169DA:  BLXNE           j__ZdlPv; operator delete(void *)
1169DE:  MOV             R0, R6
1169E0:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
1169E4:  LDR             R0, =(_ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1169EA)
1169E6:  ADD             R0, PC; _ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
1169E8:  LDR             R0, [R0]; `VTT for'std::ostringstream ...
1169EA:  ADDS            R1, R0, #4
1169EC:  MOV             R0, R4
1169EE:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
1169F2:  MOV             R0, R5
1169F4:  POP.W           {R11}
1169F8:  POP.W           {R4-R7,LR}
1169FC:  B.W             sub_224268
