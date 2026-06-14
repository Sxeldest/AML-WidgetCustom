; =========================================================
; Game Engine Function: sub_125EB4
; Address            : 0x125EB4 - 0x125F06
; =========================================================

125EB4:  PUSH            {R4-R7,LR}
125EB6:  ADD             R7, SP, #0xC
125EB8:  PUSH.W          {R11}
125EBC:  MOV             R5, R0
125EBE:  LDR             R0, =(_ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr - 0x125EC8)
125EC0:  MOV             R6, R5
125EC2:  MOV             R4, R5
125EC4:  ADD             R0, PC; _ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr
125EC6:  LDR             R0, [R0]; `construction vtable for'std::ostream-in-std::ofstream ...
125EC8:  ADD.W           R1, R0, #0xC
125ECC:  ADDS            R0, #0x20 ; ' '
125ECE:  STR.W           R1, [R6],#4
125ED2:  STR.W           R0, [R4,#0x60]!
125ED6:  MOV             R0, R4; this
125ED8:  MOV             R1, R6; void *
125EDA:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
125EDE:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0x125EEA)
125EE0:  MOV.W           R1, #0xFFFFFFFF
125EE4:  MOVS            R2, #0
125EE6:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
125EE8:  STRD.W          R2, R1, [R5,#0xA8]
125EEC:  LDR             R0, [R0]; `vtable for'std::ofstream ...
125EEE:  ADD.W           R1, R0, #0x20 ; ' '
125EF2:  ADDS            R0, #0xC
125EF4:  STR             R1, [R5,#0x60]
125EF6:  STR             R0, [R5]
125EF8:  MOV             R0, R6
125EFA:  BL              sub_E6108
125EFE:  MOV             R0, R5
125F00:  POP.W           {R11}
125F04:  POP             {R4-R7,PC}
