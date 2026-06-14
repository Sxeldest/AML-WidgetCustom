; =========================================================
; Game Engine Function: sub_E4E94
; Address            : 0xE4E94 - 0xE4ED0
; =========================================================

E4E94:  PUSH            {R4,R5,R7,LR}
E4E96:  ADD             R7, SP, #8
E4E98:  MOV             R4, R0
E4E9A:  LDR             R0, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE4EA2)
E4E9C:  MOV             R5, R4
E4E9E:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E4EA0:  LDR             R0, [R0]; `vtable for'std::ifstream ...
E4EA2:  ADD.W           R1, R0, #0x20 ; ' '
E4EA6:  STR.W           R1, [R5,#0x64]!
E4EAA:  ADD.W           R1, R0, #0xC
E4EAE:  MOV             R0, R4
E4EB0:  STR.W           R1, [R0],#8
E4EB4:  BL              sub_E50B0
E4EB8:  LDR             R0, =(_ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE4EBE)
E4EBA:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E4EBC:  LDR             R0, [R0]; `VTT for'std::ifstream ...
E4EBE:  ADDS            R1, R0, #4
E4EC0:  MOV             R0, R4
E4EC2:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEED2Ev; std::istream::~istream()
E4EC6:  MOV             R0, R5
E4EC8:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E4ECC:  MOV             R0, R4
E4ECE:  POP             {R4,R5,R7,PC}
