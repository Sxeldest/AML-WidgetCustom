; =========================================================
; Game Engine Function: sub_11A0C8
; Address            : 0x11A0C8 - 0x11A272
; =========================================================

11A0C8:  PUSH            {R4-R7,LR}
11A0CA:  ADD             R7, SP, #0xC
11A0CC:  PUSH.W          {R8,R9,R11}
11A0D0:  SUB             SP, SP, #0x50
11A0D2:  LDR             R6, [R0,#4]
11A0D4:  MOV             R4, R0
11A0D6:  MOV             R5, R1
11A0D8:  MOV             R0, R1
11A0DA:  MOV             R1, R2
11A0DC:  MOV             R2, R3
11A0DE:  BLX             R6
11A0E0:  MOV             R9, R4
11A0E2:  LDRB.W          R0, [R9,#0x34]!
11A0E6:  LDR.W           R1, [R9,#4]
11A0EA:  LSLS            R2, R0, #0x1F
11A0EC:  IT EQ
11A0EE:  LSREQ           R1, R0, #1
11A0F0:  CMP             R1, #0
11A0F2:  BEQ.W           loc_11A26A
11A0F6:  LDR             R0, =(off_23494C - 0x11A104)
11A0F8:  MOV             R1, #0x677DD8
11A100:  ADD             R0, PC; off_23494C
11A102:  LDR             R0, [R0]; dword_23DF24
11A104:  LDR             R0, [R0]
11A106:  LDR             R6, [R0,R1]
11A108:  ADD             R0, SP, #0x68+var_64; int
11A10A:  LDR             R1, =(aModloader_0 - 0x11A110); "modloader" ...
11A10C:  ADD             R1, PC; "modloader"
11A10E:  BL              sub_DC6DC
11A112:  MOVW            R2, #0xCCCD
11A116:  SUBS            R1, R5, R6
11A118:  MOVT            R2, #0xCCCC
11A11C:  UMULL.W         R1, R8, R1, R2
11A120:  LDR             R1, =(asc_87ACA - 0x11A126); "\\" ...
11A122:  ADD             R1, PC; "\\"
11A124:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
11A128:  VLDR            D16, [R0]
11A12C:  MOVS            R5, #0
11A12E:  LDR             R1, [R0,#8]
11A130:  STR             R1, [SP,#0x68+var_50]
11A132:  VSTR            D16, [SP,#0x68+var_58]
11A136:  STRD.W          R5, R5, [R0]
11A13A:  STR             R5, [R0,#8]
11A13C:  LDRB.W          R0, [R4,#0x28]
11A140:  LDRD.W          R2, R1, [R4,#0x2C]
11A144:  ANDS.W          R3, R0, #1
11A148:  ITT EQ
11A14A:  ADDEQ.W         R1, R4, #0x29 ; ')'
11A14E:  LSREQ           R2, R0, #1
11A150:  ADD             R0, SP, #0x68+var_58
11A152:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
11A156:  VLDR            D16, [R0]
11A15A:  LDR             R2, [R0,#8]
11A15C:  LDR             R1, =(asc_87ACA - 0x11A164); "\\" ...
11A15E:  STR             R2, [SP,#0x68+var_40]
11A160:  ADD             R1, PC; "\\"
11A162:  VSTR            D16, [SP,#0x68+var_48]
11A166:  STRD.W          R5, R5, [R0]
11A16A:  STR             R5, [R0,#8]
11A16C:  ADD             R0, SP, #0x68+var_48; int
11A16E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc; std::string::append(char const*)
11A172:  VLDR            D16, [R0]
11A176:  MOVS            R5, #0
11A178:  LDR             R1, [R0,#8]
11A17A:  STR             R1, [SP,#0x68+var_30]
11A17C:  VSTR            D16, [SP,#0x68+var_38]
11A180:  STRD.W          R5, R5, [R0]
11A184:  STR             R5, [R0,#8]
11A186:  LDRB.W          R0, [R4,#0x34]
11A18A:  LDRD.W          R2, R1, [R4,#0x38]
11A18E:  ANDS.W          R3, R0, #1
11A192:  ITT EQ
11A194:  ADDEQ.W         R1, R9, #1
11A198:  LSREQ           R2, R0, #1
11A19A:  ADD             R0, SP, #0x68+var_38
11A19C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcj; std::string::append(char const*,uint)
11A1A0:  VLDR            D16, [R0]
11A1A4:  LDR             R1, [R0,#8]
11A1A6:  STR             R1, [SP,#0x68+var_20]
11A1A8:  VSTR            D16, [SP,#0x68+var_28]
11A1AC:  STRD.W          R5, R5, [R0]
11A1B0:  STR             R5, [R0,#8]
11A1B2:  LDRB.W          R0, [SP,#0x68+var_38]
11A1B6:  LSLS            R0, R0, #0x1F
11A1B8:  ITT NE
11A1BA:  LDRNE           R0, [SP,#0x68+var_30]; void *
11A1BC:  BLXNE           j__ZdlPv; operator delete(void *)
11A1C0:  LDRB.W          R0, [SP,#0x68+var_48]
11A1C4:  LSLS            R0, R0, #0x1F
11A1C6:  ITT NE
11A1C8:  LDRNE           R0, [SP,#0x68+var_40]; void *
11A1CA:  BLXNE           j__ZdlPv; operator delete(void *)
11A1CE:  LDRB.W          R0, [SP,#0x68+var_58]
11A1D2:  LSLS            R0, R0, #0x1F
11A1D4:  ITT NE
11A1D6:  LDRNE           R0, [SP,#0x68+var_50]; void *
11A1D8:  BLXNE           j__ZdlPv; operator delete(void *)
11A1DC:  LDRB.W          R0, [SP,#0x68+var_64]
11A1E0:  LSLS            R0, R0, #0x1F
11A1E2:  ITT NE
11A1E4:  LDRNE           R0, [SP,#0x68+var_5C]; void *
11A1E6:  BLXNE           j__ZdlPv; operator delete(void *)
11A1EA:  ADD             R0, SP, #0x68+var_38
11A1EC:  ADD             R2, SP, #0x68+var_28
11A1EE:  BL              sub_11A2E0
11A1F2:  ADD             R0, SP, #0x68+var_48; this
11A1F4:  ADD             R1, SP, #0x68+var_38; std::__fs::filesystem::path *
11A1F6:  MOVS            R2, #0; std::error_code *
11A1F8:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
11A1FC:  LDRB.W          R0, [SP,#0x68+var_38]
11A200:  LDRB.W          R1, [SP,#0x68+var_48]
11A204:  LSLS            R0, R0, #0x1F
11A206:  SUB.W           R5, R1, #1
11A20A:  ITT NE
11A20C:  LDRNE           R0, [SP,#0x68+var_30]; void *
11A20E:  BLXNE           j__ZdlPv; operator delete(void *)
11A212:  CMP             R5, #0xFD
11A214:  BHI             loc_11A244
11A216:  MOV.W           R0, R8,LSR#4
11A21A:  LDR             R1, [R4,#0x40]
11A21C:  ADD.W           R0, R0, R0,LSL#1
11A220:  LDRB.W          R2, [R1,R0,LSL#2]
11A224:  ADD.W           R5, R1, R0,LSL#2
11A228:  LSLS            R0, R2, #0x1F
11A22A:  ITT NE
11A22C:  LDRNE           R0, [R5,#8]; void *
11A22E:  BLXNE           j__ZdlPv; operator delete(void *)
11A232:  VLDR            D16, [SP,#0x68+var_28]
11A236:  LDR             R0, [SP,#0x68+var_20]
11A238:  STR             R0, [R5,#8]
11A23A:  MOVS            R0, #0
11A23C:  VSTR            D16, [R5]
11A240:  STRH.W          R0, [SP,#0x68+var_28]
11A244:  LDRB.W          R0, [R9]
11A248:  LSLS            R0, R0, #0x1F
11A24A:  BNE             loc_11A254
11A24C:  MOVS            R0, #0
11A24E:  STRH.W          R0, [R9]
11A252:  B               loc_11A25C
11A254:  LDR             R0, [R4,#0x3C]
11A256:  MOVS            R1, #0
11A258:  STRB            R1, [R0]
11A25A:  STR             R1, [R4,#0x38]
11A25C:  LDRB.W          R0, [SP,#0x68+var_28]
11A260:  LSLS            R0, R0, #0x1F
11A262:  ITT NE
11A264:  LDRNE           R0, [SP,#0x68+var_20]; void *
11A266:  BLXNE           j__ZdlPv; operator delete(void *)
11A26A:  ADD             SP, SP, #0x50 ; 'P'
11A26C:  POP.W           {R8,R9,R11}
11A270:  POP             {R4-R7,PC}
