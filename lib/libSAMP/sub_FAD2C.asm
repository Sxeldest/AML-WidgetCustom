; =========================================================
; Game Engine Function: sub_FAD2C
; Address            : 0xFAD2C - 0xFADA8
; =========================================================

FAD2C:  PUSH            {R4-R7,LR}
FAD2E:  ADD             R7, SP, #0xC
FAD30:  PUSH.W          {R8,R9,R11}
FAD34:  MOV             R4, R0
FAD36:  LDR             R0, =(_ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr - 0xFAD40)
FAD38:  MOV             R8, R2
FAD3A:  LDRB            R2, [R1]
FAD3C:  ADD             R0, PC; _ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr
FAD3E:  LDR             R5, [R1,#8]
FAD40:  MOV             R9, R4
FAD42:  ADDS            R6, R4, #4
FAD44:  LDR             R0, [R0]; `construction vtable for'std::ostream-in-std::ofstream ...
FAD46:  LSLS            R2, R2, #0x1F
FAD48:  ADD.W           R3, R0, #0xC
FAD4C:  STR             R3, [R4]
FAD4E:  IT EQ
FAD50:  ADDEQ           R5, R1, #1
FAD52:  ADDS            R0, #0x20 ; ' '
FAD54:  STR.W           R0, [R9,#0x60]!
FAD58:  MOV             R0, R9; this
FAD5A:  MOV             R1, R6; void *
FAD5C:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
FAD60:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xFAD6C)
FAD62:  MOV.W           R1, #0xFFFFFFFF
FAD66:  MOVS            R2, #0
FAD68:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
FAD6A:  STRD.W          R2, R1, [R4,#0xA8]
FAD6E:  LDR             R0, [R0]; `vtable for'std::ofstream ...
FAD70:  ADD.W           R1, R0, #0x20 ; ' '
FAD74:  ADDS            R0, #0xC
FAD76:  STR             R1, [R4,#0x60]
FAD78:  STR             R0, [R4]
FAD7A:  MOV             R0, R6
FAD7C:  BL              sub_E6108
FAD80:  ORR.W           R2, R8, #0x10
FAD84:  MOV             R0, R6; int
FAD86:  MOV             R1, R5; filename
FAD88:  BL              sub_E61BC
FAD8C:  CBNZ            R0, loc_FADA0
FAD8E:  LDR             R0, [R4]
FAD90:  LDR.W           R0, [R0,#-0xC]
FAD94:  ADD             R0, R4; this
FAD96:  LDR             R1, [R0,#0x10]
FAD98:  ORR.W           R1, R1, #4; unsigned int
FAD9C:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
FADA0:  MOV             R0, R4
FADA2:  POP.W           {R8,R9,R11}
FADA6:  POP             {R4-R7,PC}
