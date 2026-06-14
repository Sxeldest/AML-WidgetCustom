; =========================================================
; Game Engine Function: sub_115F9C
; Address            : 0x115F9C - 0x1160F4
; =========================================================

115F9C:  PUSH            {R4-R7,LR}
115F9E:  ADD             R7, SP, #0xC
115FA0:  PUSH.W          {R8-R11}
115FA4:  SUB             SP, SP, #0x9C
115FA6:  MOV             R6, R0
115FA8:  BL              sub_1175EC
115FAC:  LDR             R2, =(aArzhudBgWanted - 0x115FB8); "arzhud_bg_wanted_star" ...
115FAE:  ADD.W           R0, R6, #0x24 ; '$'
115FB2:  LDR             R1, [R6,#0x20]
115FB4:  ADD             R2, PC; "arzhud_bg_wanted_star"
115FB6:  BL              sub_163144
115FBA:  LDR             R0, =(_ZTCNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr - 0x115FC6)
115FBC:  ADD             R4, SP, #0xB8+var_A4
115FBE:  ADD.W           R9, R4, #4
115FC2:  ADD             R0, PC; _ZTCNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_ostreamIcS2_EE_ptr
115FC4:  LDR             R0, [R0]; `construction vtable for'std::ostream-in-std::ostringstream ...
115FC6:  ADD.W           R1, R0, #0x20 ; ' '
115FCA:  ADDS            R0, #0xC
115FCC:  STR             R0, [SP,#0xB8+var_A4]
115FCE:  ADD.W           R0, R4, #0x38 ; '8'; this
115FD2:  STR             R1, [SP,#0xB8+var_6C]
115FD4:  MOV             R1, R9; void *
115FD6:  STR             R0, [SP,#0xB8+var_B4]
115FD8:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
115FDC:  LDR             R0, =(_ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x115FEA)
115FDE:  MOV.W           R1, #0xFFFFFFFF
115FE2:  STR             R1, [SP,#0xB8+var_20]
115FE4:  MOVS            R1, #0
115FE6:  ADD             R0, PC; _ZTVNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
115FE8:  STR             R1, [SP,#0xB8+var_24]
115FEA:  LDR             R0, [R0]; `vtable for'std::ostringstream ...
115FEC:  ADD.W           R10, R0, #0x20 ; ' '
115FF0:  ADD.W           R11, R0, #0xC
115FF4:  STR.W           R10, [SP,#0xB8+var_6C]
115FF8:  STR.W           R11, [SP,#0xB8+var_A4]
115FFC:  MOV             R0, R9
115FFE:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
116002:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x116012)
116004:  VMOV.I32        Q8, #0
116008:  LDR             R1, =(off_234930 - 0x116016)
11600A:  ADD.W           R2, R4, #0x24 ; '$'
11600E:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
116010:  MOVS            R3, #0x10
116012:  ADD             R1, PC; off_234930
116014:  VST1.32         {D16-D17}, [R2]!
116018:  LDR             R1, [R1]; dword_23DF1C
11601A:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
11601C:  STR             R3, [R2]
11601E:  LDR             R1, [R1]
116020:  ADD.W           R8, R0, #8
116024:  STR.W           R8, [SP,#0xB8+var_A0]
116028:  CMP             R1, #4
11602A:  BNE             loc_11605A
11602C:  LDR             R1, =(aArzhudLogoMobi - 0x116032); "arzhud_logo_mobile_" ...
11602E:  ADD             R1, PC; "arzhud_logo_mobile_"
116030:  ADD             R0, SP, #0xB8+var_A4
116032:  MOVS            R2, #0x13
116034:  BL              sub_FB2B4
116038:  LDR             R1, [R0]
11603A:  LDR.W           R1, [R1,#-0xC]
11603E:  LDR             R2, =(off_234988 - 0x116046)
116040:  ADD             R1, R0
116042:  ADD             R2, PC; off_234988
116044:  LDR             R3, [R1,#4]
116046:  LDR             R2, [R2]; dword_23DEE8
116048:  ORR.W           R3, R3, #2
11604C:  BIC.W           R3, R3, #0x48 ; 'H'
116050:  STR             R3, [R1,#4]
116052:  LDR             R1, [R2]
116054:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
116058:  B               loc_11608C
11605A:  LDR             R1, =(aArzhudLogo - 0x116060); "arzhud_logo_" ...
11605C:  ADD             R1, PC; "arzhud_logo_"
11605E:  ADD             R0, SP, #0xB8+var_A4
116060:  MOVS            R2, #0xC
116062:  BL              sub_FB2B4
116066:  LDR             R1, [R0]
116068:  LDR.W           R1, [R1,#-0xC]
11606C:  LDR             R2, =(off_234988 - 0x116074)
11606E:  ADD             R1, R0
116070:  ADD             R2, PC; off_234988
116072:  LDR             R3, [R1,#4]
116074:  LDR             R2, [R2]; dword_23DEE8
116076:  ORR.W           R3, R3, #2
11607A:  BIC.W           R3, R3, #0x48 ; 'H'
11607E:  STR             R3, [R1,#4]
116080:  LDR             R1, [R2]
116082:  CMP             R1, #0
116084:  IT EQ
116086:  MOVEQ           R1, #0x17
116088:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEElsEi; std::ostream::operator<<(int)
11608C:  LDR             R4, [R6,#0x20]
11608E:  ADD             R5, SP, #0xB8+var_B0
116090:  MOV             R1, R9
116092:  MOV             R0, R5
116094:  BL              sub_116AEC
116098:  LDRB.W          R0, [SP,#0xB8+var_B0]
11609C:  LDR             R2, [SP,#0xB8+var_A8]
11609E:  LSLS            R0, R0, #0x1F
1160A0:  IT EQ
1160A2:  ADDEQ           R2, R5, #1
1160A4:  ADD.W           R0, R6, #0x28 ; '('
1160A8:  MOV             R1, R4
1160AA:  BL              sub_163144
1160AE:  LDRB.W          R0, [SP,#0xB8+var_B0]
1160B2:  LSLS            R0, R0, #0x1F
1160B4:  ITT NE
1160B6:  LDRNE           R0, [SP,#0xB8+var_A8]; void *
1160B8:  BLXNE           j__ZdlPv; operator delete(void *)
1160BC:  LDRB.W          R0, [SP,#0xB8+var_80]
1160C0:  STR.W           R10, [SP,#0xB8+var_6C]
1160C4:  STRD.W          R11, R8, [SP,#0xB8+var_A4]
1160C8:  LSLS            R0, R0, #0x1F
1160CA:  ITT NE
1160CC:  LDRNE           R0, [SP,#0xB8+var_78]; void *
1160CE:  BLXNE           j__ZdlPv; operator delete(void *)
1160D2:  MOV             R0, R9
1160D4:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
1160D8:  LDR             R0, =(_ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x1160DE)
1160DA:  ADD             R0, PC; _ZTTNSt6__ndk119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
1160DC:  LDR             R0, [R0]; `VTT for'std::ostringstream ...
1160DE:  ADDS            R1, R0, #4
1160E0:  ADD             R0, SP, #0xB8+var_A4
1160E2:  BLX             j__ZNSt6__ndk113basic_ostreamIcNS_11char_traitsIcEEED2Ev; std::ostream::~ostream()
1160E6:  LDR             R0, [SP,#0xB8+var_B4]
1160E8:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
1160EC:  ADD             SP, SP, #0x9C
1160EE:  POP.W           {R8-R11}
1160F2:  POP             {R4-R7,PC}
