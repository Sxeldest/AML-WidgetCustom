; =========================================================
; Game Engine Function: sub_EDE5C
; Address            : 0xEDE5C - 0xEDE98
; =========================================================

EDE5C:  PUSH            {R4,R5,R7,LR}
EDE5E:  ADD             R7, SP, #8
EDE60:  MOV             R4, R0
EDE62:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEDE6A)
EDE64:  MOV             R5, R4
EDE66:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EDE68:  LDR             R0, [R0]; `vtable for'std::ofstream ...
EDE6A:  ADD.W           R1, R0, #0x20 ; ' '
EDE6E:  STR.W           R1, [R5,#0x60]!
EDE72:  ADD.W           R1, R0, #0xC
EDE76:  MOV             R0, R4
EDE78:  STR.W           R1, [R0],#4
EDE7C:  BL              sub_E50B0
EDE80:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEDE86)
EDE82:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EDE84:  LDR             R0, [R0]; `VTT for'std::ofstream ...
EDE86:  ADDS            R1, R0, #4
EDE88:  MOV             R0, R4
EDE8A:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
EDE8E:  MOV             R0, R5
EDE90:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
EDE94:  MOV             R0, R4
EDE96:  POP             {R4,R5,R7,PC}
