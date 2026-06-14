; =========================================================
; Game Engine Function: sub_FAA20
; Address            : 0xFAA20 - 0xFAAA2
; =========================================================

FAA20:  PUSH            {R4-R7,LR}
FAA22:  ADD             R7, SP, #0xC
FAA24:  PUSH.W          {R8-R10}
FAA28:  MOV             R4, R0
FAA2A:  LDR             R0, =(_ZTCNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0xFAA34)
FAA2C:  MOV             R8, R2
FAA2E:  LDRB            R2, [R1]
FAA30:  ADD             R0, PC; _ZTCNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
FAA32:  LDR             R5, [R1,#8]
FAA34:  MOV.W           R10, #0
FAA38:  MOV             R9, R4
FAA3A:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::ifstream ...
FAA3C:  LSLS            R2, R2, #0x1F
FAA3E:  ADD.W           R6, R4, #8
FAA42:  ADD.W           R3, R0, #0xC
FAA46:  STRD.W          R3, R10, [R4]
FAA4A:  IT EQ
FAA4C:  ADDEQ           R5, R1, #1
FAA4E:  ADDS            R0, #0x20 ; ' '
FAA50:  STR.W           R0, [R9,#0x64]!
FAA54:  MOV             R0, R9; this
FAA56:  MOV             R1, R6; void *
FAA58:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
FAA5C:  LDR             R0, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xFAA6A)
FAA5E:  MOV.W           R1, #0xFFFFFFFF
FAA62:  STRD.W          R10, R1, [R4,#0xAC]
FAA66:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
FAA68:  LDR             R0, [R0]; `vtable for'std::ifstream ...
FAA6A:  ADD.W           R1, R0, #0x20 ; ' '
FAA6E:  ADDS            R0, #0xC
FAA70:  STR             R1, [R4,#0x64]
FAA72:  STR             R0, [R4]
FAA74:  MOV             R0, R6
FAA76:  BL              sub_E6108
FAA7A:  ORR.W           R2, R8, #8
FAA7E:  MOV             R0, R6; int
FAA80:  MOV             R1, R5; filename
FAA82:  BL              sub_E61BC
FAA86:  CBNZ            R0, loc_FAA9A
FAA88:  LDR             R0, [R4]
FAA8A:  LDR.W           R0, [R0,#-0xC]
FAA8E:  ADD             R0, R4; this
FAA90:  LDR             R1, [R0,#0x10]
FAA92:  ORR.W           R1, R1, #4; unsigned int
FAA96:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
FAA9A:  MOV             R0, R4
FAA9C:  POP.W           {R8-R10}
FAAA0:  POP             {R4-R7,PC}
