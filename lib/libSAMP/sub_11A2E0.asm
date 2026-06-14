; =========================================================
; Game Engine Function: sub_11A2E0
; Address            : 0x11A2E0 - 0x11A368
; =========================================================

11A2E0:  PUSH            {R4,R5,R7,LR}
11A2E2:  ADD             R7, SP, #8
11A2E4:  SUB             SP, SP, #0x30
11A2E6:  MOV             R4, R0
11A2E8:  LDRB            R0, [R2]
11A2EA:  MOV             R5, R2
11A2EC:  LDR             R1, [R2,#4]
11A2EE:  LSLS            R2, R0, #0x1F
11A2F0:  IT EQ
11A2F2:  LSREQ           R1, R0, #1
11A2F4:  CBZ             R1, loc_11A354
11A2F6:  MOV             R0, R5
11A2F8:  MOVS            R1, #1
11A2FA:  BL              sub_11A084
11A2FE:  BL              sub_F97EC
11A302:  STR             R0, [SP,#0x38+var_28]
11A304:  ADD             R0, SP, #0x38+var_24; int
11A306:  ADD             R1, SP, #0x38+var_28
11A308:  MOVS            R2, #0
11A30A:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
11A30E:  ADD             R0, SP, #0x38+var_34; int
11A310:  MOV             R1, R5
11A312:  MOVS            R2, #0
11A314:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
11A318:  ADD             R0, SP, #0x38+var_18
11A31A:  ADD             R1, SP, #0x38+var_24
11A31C:  ADD             R2, SP, #0x38+var_34
11A31E:  BL              sub_F1DD4
11A322:  LDRB.W          R0, [SP,#0x38+var_34]
11A326:  LSLS            R0, R0, #0x1F
11A328:  ITT NE
11A32A:  LDRNE           R0, [SP,#0x38+var_2C]; void *
11A32C:  BLXNE           j__ZdlPv; operator delete(void *)
11A330:  LDRB.W          R0, [SP,#0x38+var_24]
11A334:  LSLS            R0, R0, #0x1F
11A336:  ITT NE
11A338:  LDRNE           R0, [SP,#0x38+var_1C]; void *
11A33A:  BLXNE           j__ZdlPv; operator delete(void *)
11A33E:  MOV             R0, R5
11A340:  MOVS            R1, #0
11A342:  BL              sub_11A084
11A346:  VLDR            D16, [SP,#0x38+var_18]
11A34A:  LDR             R0, [SP,#0x38+var_10]
11A34C:  STR             R0, [R4,#8]
11A34E:  VSTR            D16, [R4]
11A352:  B               loc_11A364
11A354:  BL              sub_F97EC
11A358:  ADD             R1, SP, #0x38+var_18
11A35A:  STR             R0, [SP,#0x38+var_18]
11A35C:  MOV             R0, R4; int
11A35E:  MOVS            R2, #0
11A360:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2IPKcvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<char const*,void>(char const* const&,std::__fs::filesystem::path::format)
11A364:  ADD             SP, SP, #0x30 ; '0'
11A366:  POP             {R4,R5,R7,PC}
