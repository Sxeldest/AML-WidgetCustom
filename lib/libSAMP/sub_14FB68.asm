; =========================================================
; Game Engine Function: sub_14FB68
; Address            : 0x14FB68 - 0x14FDE0
; =========================================================

14FB68:  PUSH            {R4-R7,LR}
14FB6A:  ADD             R7, SP, #0xC
14FB6C:  PUSH.W          {R8-R11}
14FB70:  SUB             SP, SP, #4
14FB72:  VPUSH           {D8-D12}
14FB76:  SUB             SP, SP, #0x110
14FB78:  LDR             R0, [R7,#arg_0]
14FB7A:  MOV             R4, R1
14FB7C:  LDR             R1, [R7,#arg_C]
14FB7E:  VMOV            S2, R3
14FB82:  VMOV            S0, R2
14FB86:  STR             R0, [SP,#0x158+var_4C]
14FB88:  VMOV            S4, R0
14FB8C:  STRD.W          R2, R3, [SP,#0x158+var_54]
14FB90:  CBZ             R1, loc_14FBD6
14FB92:  LDR             R0, =(off_234970 - 0x14FB98)
14FB94:  ADD             R0, PC; off_234970
14FB96:  LDR             R6, [R0]; dword_23DEF0
14FB98:  LDR             R0, [R6]
14FB9A:  LDR             R0, [R0,#4]
14FB9C:  CBZ             R0, loc_14FBD6
14FB9E:  ADD             R5, SP, #0x158+var_FC
14FBA0:  MOV             R1, R5
14FBA2:  BL              sub_F8828
14FBA6:  MOVS            R1, #0
14FBA8:  MOVS            R2, #1
14FBAA:  LDR             R0, [R6]
14FBAC:  MOVS            R3, #1
14FBAE:  STRD.W          R2, R1, [SP,#0x158+var_150]
14FBB2:  ADD             R2, SP, #0x158+var_54
14FBB4:  STRD.W          R1, R1, [SP,#0x158+var_158]
14FBB8:  STRD.W          R1, R1, [SP,#0x158+var_148]
14FBBC:  ADD.W           R1, R5, #0x30 ; '0'
14FBC0:  BL              sub_FA184
14FBC4:  CMP             R0, #0
14FBC6:  BEQ.W           loc_14FDD2
14FBCA:  VLDR            S0, [SP,#0x158+var_54]
14FBCE:  VLDR            S2, [SP,#0x158+var_50]
14FBD2:  VLDR            S4, [SP,#0x158+var_4C]
14FBD6:  LDR             R0, =(off_23494C - 0x14FBE6)
14FBD8:  MOV             R1, #0x5C5799
14FBE0:  MOVS            R5, #0
14FBE2:  ADD             R0, PC; off_23494C
14FBE4:  MOVS            R2, #0
14FBE6:  MOVS            R3, #0
14FBE8:  VSTR            S4, [SP,#0x158+var_58]
14FBEC:  LDR             R0, [R0]; dword_23DF24
14FBEE:  VSTR            S2, [SP,#0x158+var_5C]
14FBF2:  VSTR            S0, [SP,#0x158+var_60]
14FBF6:  LDR             R0, [R0]
14FBF8:  STRD.W          R5, R5, [SP,#0x158+var_158]
14FBFC:  ADDS            R6, R0, R1
14FBFE:  ADD             R0, SP, #0x158+var_60
14FC00:  ADD             R1, SP, #0x158+var_6C
14FC02:  BLX             R6
14FC04:  VMOV.F32        S0, #1.0
14FC08:  VLDR            S2, [SP,#0x158+var_64]
14FC0C:  VCMP.F32        S2, S0
14FC10:  VMRS            APSR_nzcv, FPSCR
14FC14:  BMI.W           loc_14FDD2
14FC18:  LDR             R0, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x14FC28)
14FC1A:  ADD.W           R8, SP, #0x158+var_FC
14FC1E:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x14FC2C)
14FC20:  ADD.W           R11, R8, #0xC
14FC24:  ADD             R0, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
14FC26:  STR             R5, [SP,#0x158+var_F8]
14FC28:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
14FC2A:  ADD.W           R9, R8, #0x40 ; '@'
14FC2E:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
14FC30:  LDR             R6, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
14FC32:  ADD.W           R1, R0, #0x20 ; ' '
14FC36:  ADDS            R0, #0xC
14FC38:  ADD.W           R10, R6, #0x20 ; ' '
14FC3C:  STR             R1, [SP,#0x158+var_BC]
14FC3E:  STR             R0, [SP,#0x158+var_FC]
14FC40:  STR.W           R10, [SP,#0x158+var_F4]
14FC44:  MOV             R0, R9; this
14FC46:  MOV             R1, R11; void *
14FC48:  STR.W           R9, [SP,#0x158+var_12C]
14FC4C:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
14FC50:  ADD.W           R5, R6, #0x34 ; '4'
14FC54:  MOV.W           R0, #0xFFFFFFFF
14FC58:  ADDS            R6, #0xC
14FC5A:  STR             R0, [SP,#0x158+var_70]
14FC5C:  MOVS            R0, #0
14FC5E:  STR             R5, [SP,#0x158+var_BC]
14FC60:  STR             R0, [SP,#0x158+var_74]
14FC62:  STR             R6, [SP,#0x158+var_FC]
14FC64:  STR.W           R10, [SP,#0x158+var_F4]
14FC68:  MOV             R0, R11
14FC6A:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
14FC6E:  STRD.W          R6, R5, [SP,#0x158+var_13C]
14FC72:  VMOV.I32        Q8, #0
14FC76:  STR.W           R10, [SP,#0x158+var_134]
14FC7A:  ADD.W           R2, R8, #0x2C ; ','
14FC7E:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x14FC88)
14FC80:  MOVS            R3, #0x18
14FC82:  LDR             R1, [R7,#arg_4]
14FC84:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
14FC86:  VST1.32         {D16-D17}, [R2]!
14FC8A:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
14FC8C:  STR             R3, [R2]
14FC8E:  ADDS            R0, #8
14FC90:  STR             R0, [SP,#0x158+var_140]
14FC92:  STR             R0, [SP,#0x158+var_F0]
14FC94:  MOV             R0, R11
14FC96:  STR.W           R11, [SP,#0x158+var_130]
14FC9A:  BL              sub_E3EC0
14FC9E:  LDR             R0, [R7,#arg_8]
14FCA0:  VMOV.F32        S24, #0.5
14FCA4:  VLDR            S8, =0.0039216
14FCA8:  ADD             R6, SP, #0x158+var_108
14FCAA:  REV             R0, R0
14FCAC:  ADD.W           R11, SP, #0x158+var_110
14FCB0:  ADD             R5, SP, #0x158+var_118
14FCB2:  ADD.W           R8, SP, #0x158+var_128
14FCB6:  LSRS            R2, R0, #0x18
14FCB8:  UBFX.W          R1, R0, #0x10, #8
14FCBC:  VMOV            S0, R2
14FCC0:  UBFX.W          R2, R0, #8, #8
14FCC4:  UXTB            R0, R0
14FCC6:  VMOV            S2, R1
14FCCA:  VMOV            S6, R0
14FCCE:  MOVS            R0, #0
14FCD0:  VMOV            S4, R2
14FCD4:  STRD.W          R0, R0, [SP,#0x158+var_108]
14FCD8:  VCVT.F32.U32    S0, S0
14FCDC:  STR             R0, [SP,#0x158+var_100]
14FCDE:  VCVT.F32.U32    S2, S2
14FCE2:  LDR             R0, =(off_234980 - 0x14FCF4)
14FCE4:  VCVT.F32.U32    S4, S4
14FCE8:  MOV.W           R10, #1
14FCEC:  VCVT.F32.U32    S6, S6
14FCF0:  ADD             R0, PC; off_234980
14FCF2:  LDR.W           R9, [R0]; dword_238EC0
14FCF6:  VMUL.F32        S16, S0, S8
14FCFA:  VMUL.F32        S18, S2, S8
14FCFE:  VMUL.F32        S20, S4, S8
14FD02:  VMUL.F32        S22, S6, S8
14FD06:  ADD             R0, SP, #0x158+var_FC
14FD08:  MOV             R1, R6
14FD0A:  MOVS            R2, #0xA
14FD0C:  BL              sub_E384C
14FD10:  LDR             R1, [R0]
14FD12:  LDR.W           R1, [R1,#-0xC]
14FD16:  ADD             R0, R1
14FD18:  LDRB            R0, [R0,#0x10]
14FD1A:  TST.W           R0, #5
14FD1E:  BNE             loc_14FD88
14FD20:  VLDR            S0, [R9]
14FD24:  VMUL.F32        S0, S0, S24
14FD28:  VMOV            R3, S0
14FD2C:  MOV             R0, R11
14FD2E:  MOV             R1, R4
14FD30:  MOV             R2, R6
14FD32:  BL              sub_12B090
14FD36:  VLDR            S0, [SP,#0x158+var_110]
14FD3A:  VLDR            S2, [SP,#0x158+var_6C]
14FD3E:  VMLS.F32        S2, S0, S24
14FD42:  LDR             R0, [SP,#0x158+var_68]
14FD44:  VLDR            S0, [R9]
14FD48:  STR             R0, [SP,#0x158+var_114]
14FD4A:  VMUL.F32        S0, S0, S24
14FD4E:  VSTR            S16, [SP,#0x158+var_11C]
14FD52:  VSTR            S18, [SP,#0x158+var_120]
14FD56:  VSTR            S20, [SP,#0x158+var_124]
14FD5A:  VSTR            S22, [SP,#0x158+var_128]
14FD5E:  VSTR            S2, [SP,#0x158+var_118]
14FD62:  MOV             R0, R4; int
14FD64:  MOV             R1, R5; int
14FD66:  MOV             R2, R8; int
14FD68:  MOV             R3, R6; int
14FD6A:  VSTR            S0, [SP,#0x158+var_154]
14FD6E:  STR.W           R10, [SP,#0x158+var_158]; int
14FD72:  BL              sub_12AE34
14FD76:  VLDR            S0, [R9]
14FD7A:  VLDR            S2, [SP,#0x158+var_68]
14FD7E:  VMLA.F32        S2, S0, S24
14FD82:  VSTR            S2, [SP,#0x158+var_68]
14FD86:  B               loc_14FD06
14FD88:  LDRB.W          R0, [SP,#0x158+var_108]
14FD8C:  LSLS            R0, R0, #0x1F
14FD8E:  ITT NE
14FD90:  LDRNE           R0, [SP,#0x158+var_100]; void *
14FD92:  BLXNE           j__ZdlPv; operator delete(void *)
14FD96:  LDRB.W          R0, [SP,#0x158+var_D0]
14FD9A:  LDR             R1, [SP,#0x158+var_138]
14FD9C:  STR             R1, [SP,#0x158+var_BC]
14FD9E:  LDR             R1, [SP,#0x158+var_13C]
14FDA0:  LSLS            R0, R0, #0x1F
14FDA2:  STR             R1, [SP,#0x158+var_FC]
14FDA4:  LDR             R1, [SP,#0x158+var_140]
14FDA6:  STR             R1, [SP,#0x158+var_F0]
14FDA8:  LDR             R1, [SP,#0x158+var_134]
14FDAA:  STR             R1, [SP,#0x158+var_F4]
14FDAC:  LDRD.W          R5, R4, [SP,#0x158+var_130]
14FDB0:  ITT NE
14FDB2:  LDRNE           R0, [SP,#0x158+var_C8]; void *
14FDB4:  BLXNE           j__ZdlPv; operator delete(void *)
14FDB8:  MOV             R0, R5
14FDBA:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
14FDBE:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x14FDC4)
14FDC0:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
14FDC2:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
14FDC4:  ADDS            R1, R0, #4
14FDC6:  ADD             R0, SP, #0x158+var_FC
14FDC8:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
14FDCC:  MOV             R0, R4
14FDCE:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
14FDD2:  ADD             SP, SP, #0x110
14FDD4:  VPOP            {D8-D12}
14FDD8:  ADD             SP, SP, #4
14FDDA:  POP.W           {R8-R11}
14FDDE:  POP             {R4-R7,PC}
