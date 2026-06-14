; =========================================================
; Game Engine Function: sub_15498C
; Address            : 0x15498C - 0x154BA6
; =========================================================

15498C:  PUSH            {R4-R7,LR}
15498E:  ADD             R7, SP, #0xC
154990:  PUSH.W          {R8-R11}
154994:  SUB             SP, SP, #0xA4
154996:  LDR             R1, =(aLoadconfig - 0x1549A0); "LoadConfig.." ...
154998:  MOV             R9, R0
15499A:  MOVS            R0, #4; int
15499C:  ADD             R1, PC; "LoadConfig.."
15499E:  BL              sub_159B70
1549A2:  ADD.W           R10, SP, #0xC0+var_AC
1549A6:  MOV             R0, R10
1549A8:  BL              sub_15A2AC
1549AC:  LDRB.W          R2, [SP,#0xC0+var_AC]
1549B0:  LDR             R0, [SP,#0xC0+var_A4]
1549B2:  LDR             R1, =(aR_1 - 0x1549C0); "r" ...
1549B4:  LSLS            R2, R2, #0x1F
1549B6:  IT EQ
1549B8:  ADDEQ.W         R0, R10, #1; filename
1549BC:  ADD             R1, PC; "r" ; modes
1549BE:  BLX             fopen
1549C2:  MOV             R6, R0
1549C4:  LDRB.W          R0, [SP,#0xC0+var_AC]
1549C8:  LSLS            R0, R0, #0x1F
1549CA:  ITT NE
1549CC:  LDRNE           R0, [SP,#0xC0+var_A4]; void *
1549CE:  BLXNE           j__ZdlPv; operator delete(void *)
1549D2:  CMP             R6, #0
1549D4:  BEQ.W           loc_154B92
1549D8:  MOV             R0, R6; stream
1549DA:  MOVS            R1, #0; off
1549DC:  MOVS            R2, #2; whence
1549DE:  MOV.W           R8, #0
1549E2:  BLX             fseek
1549E6:  MOV             R0, R6; stream
1549E8:  BLX             ftell
1549EC:  MOV             R4, R0
1549EE:  MOV             R0, R6; stream
1549F0:  MOVS            R1, #0; off
1549F2:  MOVS            R2, #0; whence
1549F4:  BLX             fseek
1549F8:  ADDS            R0, R4, #1; unsigned int
1549FA:  BLX             j__Znaj; operator new[](uint)
1549FE:  MOVS            R1, #1; size
154A00:  MOV             R2, R4; n
154A02:  MOV             R3, R6; stream
154A04:  MOV             R5, R0
154A06:  BLX             fread
154A0A:  MOV             R0, R6; stream
154A0C:  BLX             fclose
154A10:  ADD             R0, SP, #0xC0+var_B8; int
154A12:  MOV             R1, R5; s
154A14:  BL              sub_DC6DC
154A18:  LDR             R0, =(_ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr - 0x154A28)
154A1A:  ADD.W           R6, R10, #0xC
154A1E:  LDR             R1, =(_ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x154A2A)
154A20:  ADD.W           R5, R10, #0x40 ; '@'
154A24:  ADD             R0, PC; _ZTCNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE0_NS_13basic_istreamIcS2_EE_ptr
154A26:  ADD             R1, PC; _ZTVNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
154A28:  LDR             R0, [R0]; `construction vtable for'std::istream-in-std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
154A2A:  LDR             R4, [R1]; `vtable for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
154A2C:  ADD.W           R1, R0, #0x20 ; ' '
154A30:  ADDS            R0, #0xC
154A32:  ADD.W           R11, R4, #0x20 ; ' '
154A36:  STR             R1, [SP,#0xC0+var_6C]
154A38:  STR             R0, [SP,#0xC0+var_AC]
154A3A:  STRD.W          R8, R11, [SP,#0xC0+var_A8]
154A3E:  MOV             R0, R5; this
154A40:  MOV             R1, R6; void *
154A42:  BLX             j__ZNSt6__ndk18ios_base4initEPv; std::ios_base::init(void *)
154A46:  MOV.W           R0, #0xFFFFFFFF
154A4A:  ADD.W           R8, R4, #0xC
154A4E:  STR             R0, [SP,#0xC0+var_20]
154A50:  MOVS            R0, #0
154A52:  STR             R0, [SP,#0xC0+var_24]
154A54:  ADD.W           R0, R4, #0x34 ; '4'
154A58:  STR             R0, [SP,#0xC0+var_BC]
154A5A:  STR             R0, [SP,#0xC0+var_6C]
154A5C:  STR.W           R8, [SP,#0xC0+var_AC]
154A60:  STR.W           R11, [SP,#0xC0+var_A4]
154A64:  MOV             R0, R6
154A66:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2Ev; std::streambuf::basic_streambuf(void)
154A6A:  LDR             R0, =(_ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x154A7A)
154A6C:  VMOV.I32        Q8, #0
154A70:  ADD.W           R1, R10, #0x2C ; ','
154A74:  MOVS            R2, #0x18
154A76:  ADD             R0, PC; _ZTVNSt6__ndk115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
154A78:  VST1.32         {D16-D17}, [R1]!
154A7C:  LDR             R0, [R0]; `vtable for'std::stringbuf ...
154A7E:  STR             R2, [R1]
154A80:  ADD.W           R10, R0, #8
154A84:  STR.W           R10, [SP,#0xC0+var_A0]
154A88:  ADD             R1, SP, #0xC0+var_B8
154A8A:  MOV             R0, R6
154A8C:  BL              sub_E3EC0
154A90:  LDRB.W          R0, [SP,#0xC0+var_B8]
154A94:  STR             R5, [SP,#0xC0+var_C0]
154A96:  LSLS            R0, R0, #0x1F
154A98:  ITT NE
154A9A:  LDRNE           R0, [SP,#0xC0+var_B0]; void *
154A9C:  BLXNE           j__ZdlPv; operator delete(void *)
154AA0:  ADD.W           R5, R9, #0x60 ; '`'
154AA4:  ADD             R0, SP, #0xC0+var_AC
154AA6:  MOV             R1, R5
154AA8:  BL              sub_E4664
154AAC:  LDR             R1, =(aGlobalvolume - 0x154AB2); "globalVolume" ...
154AAE:  ADD             R1, PC; "globalVolume"
154AB0:  ADD             R0, SP, #0xC0+var_B8; int
154AB2:  BL              sub_DC6DC
154AB6:  ADD.W           R4, R9, #0x70 ; 'p'
154ABA:  ADD             R1, SP, #0xC0+var_B8
154ABC:  MOV             R0, R5
154ABE:  MOV             R2, R4
154AC0:  BL              sub_E4BDC
154AC4:  LDRB.W          R1, [SP,#0xC0+var_B8]
154AC8:  STR             R0, [R4]
154ACA:  LSLS            R0, R1, #0x1F
154ACC:  ITT NE
154ACE:  LDRNE           R0, [SP,#0xC0+var_B0]; void *
154AD0:  BLXNE           j__ZdlPv; operator delete(void *)
154AD4:  LDR             R1, =(aVehiclevolume - 0x154ADA); "vehicleVolume" ...
154AD6:  ADD             R1, PC; "vehicleVolume"
154AD8:  ADD             R0, SP, #0xC0+var_B8; int
154ADA:  BL              sub_DC6DC
154ADE:  ADD.W           R4, R9, #0x74 ; 't'
154AE2:  ADD             R1, SP, #0xC0+var_B8
154AE4:  MOV             R0, R5
154AE6:  MOV             R2, R4
154AE8:  BL              sub_155624
154AEC:  VMOV            S0, R0
154AF0:  LDRB.W          R0, [SP,#0xC0+var_B8]
154AF4:  VSTR            S0, [R4]
154AF8:  LSLS            R0, R0, #0x1F
154AFA:  ITT NE
154AFC:  LDRNE           R0, [SP,#0xC0+var_B0]; void *
154AFE:  BLXNE           j__ZdlPv; operator delete(void *)
154B02:  LDR             R1, =(a3dvolume - 0x154B08); "3DVolume" ...
154B04:  ADD             R1, PC; "3DVolume"
154B06:  ADD             R0, SP, #0xC0+var_B8; int
154B08:  BL              sub_DC6DC
154B0C:  ADD.W           R4, R9, #0x78 ; 'x'
154B10:  ADD             R1, SP, #0xC0+var_B8
154B12:  MOV             R0, R5
154B14:  MOV             R2, R4
154B16:  BL              sub_155624
154B1A:  VMOV            S0, R0
154B1E:  LDRB.W          R0, [SP,#0xC0+var_B8]
154B22:  VSTR            S0, [R4]
154B26:  LSLS            R0, R0, #0x1F
154B28:  ITT NE
154B2A:  LDRNE           R0, [SP,#0xC0+var_B0]; void *
154B2C:  BLXNE           j__ZdlPv; operator delete(void *)
154B30:  LDR             R1, =(aRecorderenable - 0x154B36); "recorderEnabled" ...
154B32:  ADD             R1, PC; "recorderEnabled"
154B34:  ADD             R0, SP, #0xC0+var_B8; int
154B36:  BL              sub_DC6DC
154B3A:  ADD.W           R4, R9, #0x7C ; '|'
154B3E:  ADD             R1, SP, #0xC0+var_B8
154B40:  MOV             R0, R5
154B42:  MOV             R2, R4
154B44:  BL              sub_E4ABC
154B48:  LDRB.W          R1, [SP,#0xC0+var_B8]
154B4C:  STRB            R0, [R4]
154B4E:  LDR             R4, [SP,#0xC0+var_C0]
154B50:  LSLS            R0, R1, #0x1F
154B52:  ITT NE
154B54:  LDRNE           R0, [SP,#0xC0+var_B0]; void *
154B56:  BLXNE           j__ZdlPv; operator delete(void *)
154B5A:  LDRB.W          R0, [SP,#0xC0+var_80]
154B5E:  LDR             R1, [SP,#0xC0+var_BC]
154B60:  STR             R1, [SP,#0xC0+var_6C]
154B62:  LSLS            R0, R0, #0x1F
154B64:  STR.W           R8, [SP,#0xC0+var_AC]
154B68:  STRD.W          R11, R10, [SP,#0xC0+var_A4]
154B6C:  ITT NE
154B6E:  LDRNE           R0, [SP,#0xC0+var_78]; void *
154B70:  BLXNE           j__ZdlPv; operator delete(void *)
154B74:  MOV             R0, R6
154B76:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEED2Ev; std::streambuf::~streambuf()
154B7A:  LDR             R0, =(_ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr - 0x154B80)
154B7C:  ADD             R0, PC; _ZTTNSt6__ndk118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE_ptr
154B7E:  LDR             R0, [R0]; `VTT for'std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>> ...
154B80:  ADDS            R1, R0, #4
154B82:  ADD             R0, SP, #0xC0+var_AC
154B84:  BLX             j__ZNSt6__ndk114basic_iostreamIcNS_11char_traitsIcEEED2Ev; std::iostream::~basic_iostream()
154B88:  MOV             R0, R4
154B8A:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
154B8E:  MOVS            R0, #1
154B90:  B               loc_154B9E
154B92:  LDR             R1, =(aCanTOpenConfig - 0x154B9A); "can't open config file." ...
154B94:  MOVS            R0, #4; int
154B96:  ADD             R1, PC; "can't open config file."
154B98:  BL              sub_159B70
154B9C:  MOVS            R0, #0
154B9E:  ADD             SP, SP, #0xA4
154BA0:  POP.W           {R8-R11}
154BA4:  POP             {R4-R7,PC}
