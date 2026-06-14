; =========================================================
; Game Engine Function: sub_EFD50
; Address            : 0xEFD50 - 0xEFE58
; =========================================================

EFD50:  PUSH            {R4-R7,LR}
EFD52:  ADD             R7, SP, #0xC
EFD54:  PUSH.W          {R8-R10}
EFD58:  SUB             SP, SP, #0x90
EFD5A:  ADD             R5, SP, #0xA8+var_44
EFD5C:  MOV             R4, R0
EFD5E:  MOV             R8, R3
EFD60:  MOV             R6, R2
EFD62:  MOV             R0, R5
EFD64:  MOV             R9, R1
EFD66:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
EFD6A:  LDR             R0, =(_ZTVNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEEE_ptr - 0xEFD76)
EFD6C:  ADD.W           R10, SP, #0xA8+var_98
EFD70:  LDR             R1, =(_ZTVN3fmt2v86detail9formatbufINSt6__ndk115basic_streambufIcNS3_11char_traitsIcEEEEEE - 0xEFD7A); `vtable for'fmt::v8::detail::formatbuf<std::streambuf> ...
EFD72:  ADD             R0, PC; _ZTVNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEEE_ptr
EFD74:  STR             R4, [SP,#0xA8+var_24]
EFD76:  ADD             R1, PC; `vtable for'fmt::v8::detail::formatbuf<std::streambuf>
EFD78:  ADD.W           R4, R10, #4
EFD7C:  LDR             R0, [R0]; `vtable for'std::ostream ...
EFD7E:  ADDS            R1, #8
EFD80:  STR             R1, [SP,#0xA8+var_44]
EFD82:  ADD.W           R1, R0, #0x20 ; ' '
EFD86:  ADDS            R0, #0xC
EFD88:  STR             R1, [SP,#0xA8+var_94]
EFD8A:  STR             R0, [SP,#0xA8+var_98]
EFD8C:  MOV             R0, R4; this
EFD8E:  MOV             R1, R5; void *
EFD90:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
EFD94:  MOV.W           R1, #0xFFFFFFFF
EFD98:  LDR             R0, [SP,#0xA8+var_98]
EFD9A:  STR             R1, [SP,#0xA8+var_48]
EFD9C:  MOVS            R1, #0
EFD9E:  STR             R1, [SP,#0xA8+var_4C]
EFDA0:  LDR.W           R0, [R0,#-0xC]
EFDA4:  ADD.W           R4, R10, R0
EFDA8:  ADD             R0, SP, #0xA8+var_9C; this
EFDAA:  MOV             R1, R4
EFDAC:  BLX             j__ZNKSt6__ndk18ios_base6getlocEv; std::ios_base::getloc(void)
EFDB0:  ADD             R0, SP, #0xA8+var_1C; this
EFDB2:  MOV             R1, R4; std::locale *
EFDB4:  MOV             R2, R6
EFDB6:  BLX             j__ZNSt6__ndk18ios_base5imbueERKNS_6localeE; std::ios_base::imbue(std::locale const&)
EFDBA:  ADD             R0, SP, #0xA8+var_1C; this
EFDBC:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
EFDC0:  LDR             R4, [R4,#0x18]
EFDC2:  CBZ             R4, loc_EFDE8
EFDC4:  LDR             R0, [R4]
EFDC6:  LDR             R2, [R0,#8]
EFDC8:  MOV             R0, R4
EFDCA:  MOV             R1, R6
EFDCC:  BLX             R2
EFDCE:  ADDS            R4, #4
EFDD0:  ADD             R5, SP, #0xA8+var_20
EFDD2:  MOV             R0, R5; this
EFDD4:  MOV             R1, R4; std::locale *
EFDD6:  BLX             j__ZNSt6__ndk16localeC2ERKS0_; std::locale::locale(std::locale const&)
EFDDA:  MOV             R0, R4
EFDDC:  MOV             R1, R6
EFDDE:  BLX             j__ZNSt6__ndk16localeaSERKS0_; std::locale::operator=(std::locale const&)
EFDE2:  MOV             R0, R5; this
EFDE4:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
EFDE8:  ADD             R0, SP, #0xA8+var_9C; this
EFDEA:  BLX             j__ZNSt6__ndk16localeD2Ev; std::locale::~locale()
EFDEE:  LDR             R0, =(_ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr - 0xEFDF4)
EFDF0:  ADD             R0, PC; _ZNSt6__ndk18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE2idE_ptr
EFDF2:  LDR             R1, [R0]; std::locale::id *
EFDF4:  MOV             R0, R6; this
EFDF6:  BLX             j__ZNKSt6__ndk16locale9use_facetERNS0_2idE; std::locale::use_facet(std::locale::id &)
EFDFA:  LDR             R1, [SP,#0xA8+var_98]
EFDFC:  LDR             R2, [R0]
EFDFE:  LDR             R3, [R7,#arg_0]
EFE00:  LDR.W           R1, [R1,#-0xC]
EFE04:  LDR             R6, [R2,#0xC]
EFE06:  ADD.W           R2, R10, R1
EFE0A:  LDR             R1, [R2,#0x18]
EFE0C:  STR             R3, [SP,#0xA8+var_A0]
EFE0E:  MOVS            R3, #0x20 ; ' '
EFE10:  STRD.W          R9, R8, [SP,#0xA8+var_A8]
EFE14:  BLX             R6
EFE16:  CBZ             R0, loc_EFE2C
EFE18:  ADD             R0, SP, #0xA8+var_98
EFE1A:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED1Ev; std::ostream::~ostream()
EFE1E:  ADD             R0, SP, #0xA8+var_44
EFE20:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
EFE24:  ADD             SP, SP, #0x90
EFE26:  POP.W           {R8-R10}
EFE2A:  POP             {R4-R7,PC}
EFE2C:  MOVS            R0, #8; thrown_size
EFE2E:  BLX             j___cxa_allocate_exception
EFE32:  LDR             R1, =(aFailedToFormat - 0xEFE3A); "failed to format time" ...
EFE34:  MOV             R4, R0
EFE36:  ADD             R1, PC; "failed to format time"
EFE38:  BLX             j__ZNSt13runtime_errorC2EPKc_0; std::runtime_error::runtime_error(char const*)
EFE3C:  LDR             R0, =(_ZTVN3fmt2v812format_errorE_ptr - 0xEFE44)
EFE3E:  LDR             R1, =(_ZTIN3fmt2v812format_errorE_ptr - 0xEFE48)
EFE40:  ADD             R0, PC; _ZTVN3fmt2v812format_errorE_ptr
EFE42:  LDR             R2, =(_ZN3fmt2v812format_errorD2Ev_ptr - 0xEFE4C)
EFE44:  ADD             R1, PC; _ZTIN3fmt2v812format_errorE_ptr
EFE46:  LDR             R0, [R0]; `vtable for'fmt::v8::format_error ...
EFE48:  ADD             R2, PC; _ZN3fmt2v812format_errorD2Ev_ptr
EFE4A:  LDR             R1, [R1]; lptinfo
EFE4C:  ADDS            R0, #8
EFE4E:  LDR             R2, [R2]; fmt::v8::format_error::~format_error() ; void (*)(void *)
EFE50:  STR             R0, [R4]
EFE52:  MOV             R0, R4; void *
EFE54:  BLX             j___cxa_throw
