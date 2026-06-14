; =========================================================
; Game Engine Function: sub_116158
; Address            : 0x116158 - 0x1161AC
; =========================================================

116158:  PUSH            {R4,R5,R7,LR}
11615A:  ADD             R7, SP, #8
11615C:  MOV             R4, R0
11615E:  LDR             R0, =(_ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x116168)
116160:  LDR             R1, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x11616E)
116162:  MOV             R5, R4
116164:  ADD             R0, PC; _ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
116166:  LDRB.W          R2, [R4,#0x24]
11616A:  ADD             R1, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
11616C:  LDR             R0, [R0]; `vtable for'std::ostringstream ...
11616E:  LDR             R1, [R1]; `vtable for'std::stringbuf ...
116170:  ADD.W           R3, R0, #0x20 ; ' '
116174:  ADDS            R0, #0xC
116176:  STR             R0, [R4]
116178:  ADD.W           R0, R1, #8
11617C:  STR.W           R0, [R5,#4]!
116180:  LSLS            R0, R2, #0x1F
116182:  STR             R3, [R4,#0x38]
116184:  ITT NE
116186:  LDRNE           R0, [R4,#0x2C]; void *
116188:  BLXNE           j__ZdlPv; operator delete(void *)
11618C:  MOV             R0, R5
11618E:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
116192:  LDR             R0, =(_ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x116198)
116194:  ADD             R0, PC; _ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
116196:  LDR             R0, [R0]; `VTT for'std::ostringstream ...
116198:  ADDS            R1, R0, #4
11619A:  MOV             R0, R4
11619C:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
1161A0:  ADD.W           R0, R4, #0x38 ; '8'
1161A4:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
1161A8:  MOV             R0, R4
1161AA:  POP             {R4,R5,R7,PC}
