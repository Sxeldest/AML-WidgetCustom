; =========================================================
; Game Engine Function: sub_EDFE8
; Address            : 0xEDFE8 - 0xEE066
; =========================================================

EDFE8:  PUSH            {R4-R7,LR}
EDFEA:  ADD             R7, SP, #0xC
EDFEC:  PUSH.W          {R8,R9,R11}
EDFF0:  MOV             R5, R0
EDFF2:  LDR             R0, =(_ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr - 0xEDFFC)
EDFF4:  MOV             R6, R5
EDFF6:  MOV             R9, R5
EDFF8:  ADD             R0, PC; _ZTCNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr
EDFFA:  MOV             R4, R1
EDFFC:  MOV             R8, R2
EDFFE:  LDR             R0, [R0]; `construction vtable for'std::ostream-in-std::ofstream ...
EE000:  ADD.W           R1, R0, #0xC
EE004:  ADDS            R0, #0x20 ; ' '
EE006:  STR.W           R1, [R6],#4
EE00A:  STR.W           R0, [R9,#0x60]!
EE00E:  MOV             R0, R9; this
EE010:  MOV             R1, R6; void *
EE012:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
EE016:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xEE022)
EE018:  MOV.W           R1, #0xFFFFFFFF
EE01C:  MOVS            R2, #0
EE01E:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
EE020:  STRD.W          R2, R1, [R5,#0xA8]
EE024:  LDR             R0, [R0]; `vtable for'std::ofstream ...
EE026:  ADD.W           R1, R0, #0x20 ; ' '
EE02A:  ADDS            R0, #0xC
EE02C:  STR             R1, [R5,#0x60]
EE02E:  STR             R0, [R5]
EE030:  MOV             R0, R6
EE032:  BL              sub_E6108
EE036:  LDRB            R0, [R4]
EE038:  LDR             R1, [R4,#8]
EE03A:  LSLS            R0, R0, #0x1F
EE03C:  IT EQ
EE03E:  ADDEQ           R1, R4, #1; filename
EE040:  ORR.W           R2, R8, #0x10
EE044:  MOV             R0, R6; int
EE046:  BL              sub_E61BC
EE04A:  CBNZ            R0, loc_EE05E
EE04C:  LDR             R0, [R5]
EE04E:  LDR.W           R0, [R0,#-0xC]
EE052:  ADD             R0, R5; this
EE054:  LDR             R1, [R0,#0x10]
EE056:  ORR.W           R1, R1, #4; unsigned int
EE05A:  BLX             j__ZNSt6__ndk18ios_base5clearEj; std::ios_base::clear(uint)
EE05E:  MOV             R0, R5
EE060:  POP.W           {R8,R9,R11}
EE064:  POP             {R4-R7,PC}
