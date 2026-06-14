; =========================================================
; Game Engine Function: sub_EE1D8
; Address            : 0xEE1D8 - 0xEE21A
; =========================================================

EE1D8:  PUSH            {R4,R5,R7,LR}
EE1DA:  ADD             R7, SP, #8
EE1DC:  LDR             R1, [R0]
EE1DE:  LDR             R2, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEE1E4)
EE1E0:  ADD             R2, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EE1E2:  LDR.W           R1, [R1,#-0xC]
EE1E6:  ADDS            R4, R0, R1
EE1E8:  LDR             R2, [R2]; `vtable for'std::ofstream ...
EE1EA:  ADD.W           R0, R2, #0x20 ; ' '
EE1EE:  MOV             R5, R4
EE1F0:  STR.W           R0, [R5,#0x60]!
EE1F4:  MOV             R0, R4
EE1F6:  ADD.W           R1, R2, #0xC
EE1FA:  STR.W           R1, [R0],#4
EE1FE:  BL              sub_E50B0
EE202:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEE208)
EE204:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EE206:  LDR             R0, [R0]; `VTT for'std::ofstream ...
EE208:  ADDS            R1, R0, #4
EE20A:  MOV             R0, R4
EE20C:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
EE210:  MOV             R0, R5
EE212:  POP.W           {R4,R5,R7,LR}
EE216:  B.W             sub_224268
