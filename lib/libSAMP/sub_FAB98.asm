; =========================================================
; Game Engine Function: sub_FAB98
; Address            : 0xFAB98 - 0xFACCE
; =========================================================

FAB98:  PUSH            {R4-R7,LR}
FAB9A:  ADD             R7, SP, #0xC
FAB9C:  PUSH.W          {R11}
FABA0:  SUB             SP, SP, #0xD0
FABA2:  MOV             R4, R0
FABA4:  LDR             R0, =(off_234A24 - 0xFABAC)
FABA6:  LDRB            R2, [R4]
FABA8:  ADD             R0, PC; off_234A24
FABAA:  LDR             R0, [R0]; dword_23DEEC
FABAC:  LDR             R1, [R0]
FABAE:  EOR.W           R0, R2, #1
FABB2:  STRB            R0, [R4]
FABB4:  CBZ             R1, loc_FABDA
FABB6:  LDR             R5, [R1,#0x60]
FABB8:  CBZ             R5, loc_FABDA
FABBA:  CBZ             R0, loc_FABC6
FABBC:  LDR             R1, =(aHeadMovementsE - 0xFABC6); "-> Head movements enabled" ...
FABBE:  ADD             R0, SP, #0xE0+s
FABC0:  MOVS            R2, #0x19
FABC2:  ADD             R1, PC; "-> Head movements enabled"
FABC4:  B               loc_FABCE
FABC6:  LDR             R1, =(aHeadMovementsD - 0xFABD0); "-> Head movements disabled" ...
FABC8:  ADD             R0, SP, #0xE0+s
FABCA:  MOVS            R2, #0x1A
FABCC:  ADD             R1, PC; "-> Head movements disabled"
FABCE:  BL              sub_F1E60
FABD2:  LDR             R1, [SP,#0xE0+s]; s
FABD4:  MOV             R0, R5; int
FABD6:  BL              sub_12D318
FABDA:  BL              sub_F97EC
FABDE:  STR             R0, [SP,#0xE0+var_20]
FABE0:  ADD             R0, SP, #0xE0+s; int
FABE2:  ADD             R1, SP, #0xE0+var_20
FABE4:  MOVS            R2, #0
FABE6:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
FABEA:  LDR             R1, =(off_22AE78 - 0xFABF0); "headmove" ...
FABEC:  ADD             R1, PC; off_22AE78
FABEE:  ADD             R0, SP, #0xE0+var_2C; int
FABF0:  MOVS            R2, #0
FABF2:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
FABF6:  ADD             R0, SP, #0xE0+var_1C
FABF8:  ADD             R1, SP, #0xE0+s
FABFA:  ADD             R2, SP, #0xE0+var_2C
FABFC:  BL              sub_F1DD4
FAC00:  LDRB.W          R0, [SP,#0xE0+var_2C]
FAC04:  LSLS            R0, R0, #0x1F
FAC06:  ITT NE
FAC08:  LDRNE           R0, [SP,#0xE0+var_24]; void *
FAC0A:  BLXNE           j__ZdlPv; operator delete(void *)
FAC0E:  LDRB.W          R0, [SP,#0xE0+s]
FAC12:  LSLS            R0, R0, #0x1F
FAC14:  ITT NE
FAC16:  LDRNE           R0, [SP,#0xE0+var_D4]; void *
FAC18:  BLXNE           j__ZdlPv; operator delete(void *)
FAC1C:  ADD             R5, SP, #0xE0+s
FAC1E:  ADD             R1, SP, #0xE0+var_1C
FAC20:  MOVS            R2, #0x10
FAC22:  MOV             R0, R5
FAC24:  BL              sub_FAD2C
FAC28:  LDR             R0, [SP,#0xE0+var_98]
FAC2A:  CBZ             R0, loc_FAC8C
FAC2C:  LDR             R1, =(aEnabled_0 - 0xFAC32); "enabled=" ...
FAC2E:  ADD             R1, PC; "enabled="
FAC30:  ADD             R0, SP, #0xE0+s
FAC32:  MOVS            R2, #8
FAC34:  BL              sub_FB2B4
FAC38:  LDR             R1, [R0]
FAC3A:  LDR.W           R1, [R1,#-0xC]
FAC3E:  ADDS            R2, R0, R1
FAC40:  LDRB            R1, [R4]
FAC42:  LDR             R3, [R2,#4]
FAC44:  ORR.W           R3, R3, #2
FAC48:  BIC.W           R3, R3, #0x48 ; 'H'
FAC4C:  STR             R3, [R2,#4]
FAC4E:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
FAC52:  MOV             R4, R0
FAC54:  LDR             R0, [R0]
FAC56:  LDR.W           R0, [R0,#-0xC]
FAC5A:  ADDS            R1, R4, R0
FAC5C:  ADD             R0, SP, #0xE0+var_2C; this
FAC5E:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
FAC62:  LDR             R0, =(_ZNSt6__ndk15ctypeIcE2idE_ptr - 0xFAC68)
FAC64:  ADD             R0, PC; _ZNSt6__ndk15ctypeIcE2idE_ptr
FAC66:  LDR             R1, [R0]; std::locale::id *
FAC68:  ADD             R0, SP, #0xE0+var_2C; this
FAC6A:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
FAC6E:  LDR             R1, [R0]
FAC70:  LDR             R2, [R1,#0x1C]
FAC72:  MOVS            R1, #0xA
FAC74:  BLX             R2
FAC76:  MOV             R6, R0
FAC78:  ADD             R0, SP, #0xE0+var_2C; this
FAC7A:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
FAC7E:  MOV             R0, R4
FAC80:  MOV             R1, R6
FAC82:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE3putEc; std::ostream::put(char)
FAC86:  MOV             R0, R4
FAC88:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEE5flushEv; std::ostream::flush(void)
FAC8C:  LDR             R0, =(_ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xFAC92)
FAC8E:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
FAC90:  LDR             R0, [R0]; `vtable for'std::ofstream ...
FAC92:  ADD.W           R1, R0, #0x20 ; ' '
FAC96:  ADDS            R0, #0xC
FAC98:  STR             R0, [SP,#0xE0+s]
FAC9A:  ADDS            R0, R5, #4
FAC9C:  STR             R1, [SP,#0xE0+var_7C]
FAC9E:  BL              sub_E50B0
FACA2:  LDR             R0, =(_ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr - 0xFACA8)
FACA4:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ofstreamIcNS_11char_traitsIcEEEE_ptr
FACA6:  LDR             R0, [R0]; `VTT for'std::ofstream ...
FACA8:  ADDS            R1, R0, #4
FACAA:  MOV             R0, R5
FACAC:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
FACB0:  ADD.W           R0, R5, #0x60 ; '`'
FACB4:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
FACB8:  LDRB.W          R0, [SP,#0xE0+var_1C]
FACBC:  LSLS            R0, R0, #0x1F
FACBE:  ITT NE
FACC0:  LDRNE           R0, [SP,#0xE0+var_14]; void *
FACC2:  BLXNE           j__ZdlPv; operator delete(void *)
FACC6:  ADD             SP, SP, #0xD0
FACC8:  POP.W           {R11}
FACCC:  POP             {R4-R7,PC}
