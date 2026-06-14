; =========================================================
; Game Engine Function: sub_E5060
; Address            : 0xE5060 - 0xE50A8
; =========================================================

E5060:  PUSH            {R4,R5,R7,LR}
E5062:  ADD             R7, SP, #8
E5064:  LDR             R1, [R0]
E5066:  LDR             R2, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE506C)
E5068:  ADD             R2, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E506A:  LDR.W           R1, [R1,#-0xC]
E506E:  ADDS            R4, R0, R1
E5070:  LDR             R2, [R2]; `vtable for'std::ifstream ...
E5072:  ADD.W           R0, R2, #0x20 ; ' '
E5076:  MOV             R5, R4
E5078:  STR.W           R0, [R5,#0x64]!
E507C:  MOV             R0, R4
E507E:  ADD.W           R1, R2, #0xC
E5082:  STR.W           R1, [R0],#8
E5086:  BL              sub_E50B0
E508A:  LDR             R0, =(_ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE5090)
E508C:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E508E:  LDR             R0, [R0]; `VTT for'std::ifstream ...
E5090:  ADDS            R1, R0, #4
E5092:  MOV             R0, R4
E5094:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEED2Ev; std::istream::~istream()
E5098:  MOV             R0, R5
E509A:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E509E:  MOV             R0, R4; void *
E50A0:  POP.W           {R4,R5,R7,LR}
E50A4:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
