; =========================================================
; Game Engine Function: sub_E5014
; Address            : 0xE5014 - 0xE5056
; =========================================================

E5014:  PUSH            {R4,R5,R7,LR}
E5016:  ADD             R7, SP, #8
E5018:  MOV             R4, R0
E501A:  LDR             R0, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE5022)
E501C:  MOV             R5, R4
E501E:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E5020:  LDR             R0, [R0]; `vtable for'std::ifstream ...
E5022:  ADD.W           R1, R0, #0x20 ; ' '
E5026:  STR.W           R1, [R5,#0x64]!
E502A:  ADD.W           R1, R0, #0xC
E502E:  MOV             R0, R4
E5030:  STR.W           R1, [R0],#8
E5034:  BL              sub_E50B0
E5038:  LDR             R0, =(_ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE503E)
E503A:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E503C:  LDR             R0, [R0]; `VTT for'std::ifstream ...
E503E:  ADDS            R1, R0, #4
E5040:  MOV             R0, R4
E5042:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEED2Ev; std::istream::~istream()
E5046:  MOV             R0, R5
E5048:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E504C:  MOV             R0, R4; void *
E504E:  POP.W           {R4,R5,R7,LR}
E5052:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
