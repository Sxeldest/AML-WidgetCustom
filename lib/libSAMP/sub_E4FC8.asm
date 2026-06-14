; =========================================================
; Game Engine Function: sub_E4FC8
; Address            : 0xE4FC8 - 0xE500A
; =========================================================

E4FC8:  PUSH            {R4,R5,R7,LR}
E4FCA:  ADD             R7, SP, #8
E4FCC:  LDR             R1, [R0]
E4FCE:  LDR             R2, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE4FD4)
E4FD0:  ADD             R2, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E4FD2:  LDR.W           R1, [R1,#-0xC]
E4FD6:  ADDS            R4, R0, R1
E4FD8:  LDR             R2, [R2]; `vtable for'std::ifstream ...
E4FDA:  ADD.W           R0, R2, #0x20 ; ' '
E4FDE:  MOV             R5, R4
E4FE0:  STR.W           R0, [R5,#0x64]!
E4FE4:  MOV             R0, R4
E4FE6:  ADD.W           R1, R2, #0xC
E4FEA:  STR.W           R1, [R0],#8
E4FEE:  BL              sub_E50B0
E4FF2:  LDR             R0, =(_ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE4FF8)
E4FF4:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E4FF6:  LDR             R0, [R0]; `VTT for'std::ifstream ...
E4FF8:  ADDS            R1, R0, #4
E4FFA:  MOV             R0, R4
E4FFC:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEED2Ev; std::istream::~istream()
E5000:  MOV             R0, R5
E5002:  POP.W           {R4,R5,R7,LR}
E5006:  B.W             sub_224268
