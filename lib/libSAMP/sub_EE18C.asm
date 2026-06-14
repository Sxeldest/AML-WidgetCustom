; =========================================================
; Game Engine Function: sub_EE18C
; Address            : 0xEE18C - 0xEE1CE
; =========================================================

EE18C:  PUSH            {R4,R5,R7,LR}
EE18E:  ADD             R7, SP, #8
EE190:  MOV             R4, R0
EE192:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEE19A)
EE194:  MOV             R5, R4
EE196:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EE198:  LDR             R0, [R0]; `vtable for'std::ofstream ...
EE19A:  ADD.W           R1, R0, #0x20 ; ' '
EE19E:  STR.W           R1, [R5,#0x60]!
EE1A2:  ADD.W           R1, R0, #0xC
EE1A6:  MOV             R0, R4
EE1A8:  STR.W           R1, [R0],#4
EE1AC:  BL              sub_E50B0
EE1B0:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEE1B6)
EE1B2:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EE1B4:  LDR             R0, [R0]; `VTT for'std::ofstream ...
EE1B6:  ADDS            R1, R0, #4
EE1B8:  MOV             R0, R4
EE1BA:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
EE1BE:  MOV             R0, R5
EE1C0:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
EE1C4:  MOV             R0, R4; void *
EE1C6:  POP.W           {R4,R5,R7,LR}
EE1CA:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
