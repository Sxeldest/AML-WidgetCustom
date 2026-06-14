; =========================================================
; Game Engine Function: sub_15A2FC
; Address            : 0x15A2FC - 0x15A35C
; =========================================================

15A2FC:  PUSH            {R4,R5,R7,LR}
15A2FE:  ADD             R7, SP, #8
15A300:  SUB             SP, SP, #0x18
15A302:  MOV             R4, R0
15A304:  ADD             R0, SP, #0x20+var_14
15A306:  MOV             R5, R1
15A308:  CBZ             R2, loc_15A324
15A30A:  BL              sub_15A150
15A30E:  MOV             R0, SP; int
15A310:  MOV             R1, R5
15A312:  MOVS            R2, #0
15A314:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
15A318:  ADD             R1, SP, #0x20+var_14
15A31A:  MOV             R2, SP
15A31C:  MOV             R0, R4
15A31E:  BL              sub_F1DD4
15A322:  B               loc_15A33C
15A324:  BL              sub_15A0B0
15A328:  MOV             R0, SP; int
15A32A:  MOV             R1, R5
15A32C:  MOVS            R2, #0
15A32E:  BLX             j__ZNSt6__ndk14__fs10filesystem4pathC2INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEvEERKT_NS2_6formatE; std::__fs::filesystem::path::path<std::string,void>(std::string const&,std::__fs::filesystem::path::format)
15A332:  ADD             R1, SP, #0x20+var_14
15A334:  MOV             R2, SP
15A336:  MOV             R0, R4
15A338:  BL              sub_F1DD4
15A33C:  LDRB.W          R0, [SP,#0x20+var_20]
15A340:  LSLS            R0, R0, #0x1F
15A342:  ITT NE
15A344:  LDRNE           R0, [SP,#0x20+var_18]; void *
15A346:  BLXNE           j__ZdlPv; operator delete(void *)
15A34A:  LDRB.W          R0, [SP,#0x20+var_14]
15A34E:  LSLS            R0, R0, #0x1F
15A350:  ITT NE
15A352:  LDRNE           R0, [SP,#0x20+var_C]; void *
15A354:  BLXNE           j__ZdlPv; operator delete(void *)
15A358:  ADD             SP, SP, #0x18
15A35A:  POP             {R4,R5,R7,PC}
