; =========================================================
; Game Engine Function: sub_EB1E8
; Address            : 0xEB1E8 - 0xEB29E
; =========================================================

EB1E8:  PUSH            {R4-R7,LR}
EB1EA:  ADD             R7, SP, #0xC
EB1EC:  PUSH.W          {R11}
EB1F0:  SUB             SP, SP, #0x20
EB1F2:  MOV             R6, R1
EB1F4:  MOV             R5, R0
EB1F6:  MOVS            R0, #1
EB1F8:  ADD             R1, SP, #0x30+var_2C
EB1FA:  STRB.W          R0, [SP,#0x30+var_2C]
EB1FE:  MOV             R0, R5
EB200:  BL              sub_EB41C
EB204:  LDRD.W          R1, R2, [R5,#8]
EB208:  STR             R0, [SP,#0x30+var_20]
EB20A:  CMP             R1, R2
EB20C:  BCS             loc_EB216
EB20E:  STR.W           R0, [R1],#4
EB212:  STR             R1, [R5,#8]
EB214:  B               loc_EB21E
EB216:  ADDS            R0, R5, #4
EB218:  ADD             R1, SP, #0x30+var_20
EB21A:  BL              sub_EB4C8
EB21E:  ADDS            R0, R6, #1
EB220:  BEQ             loc_EB240
EB222:  LDR             R0, [R5,#8]
EB224:  LDR.W           R0, [R0,#-4]
EB228:  LDRSB.W         R0, [R0]
EB22C:  CMP             R0, #2
EB22E:  BHI             loc_EB23A
EB230:  LDR             R1, =(unk_92190 - 0xEB236)
EB232:  ADD             R1, PC; unk_92190
EB234:  LDR.W           R0, [R1,R0,LSL#2]
EB238:  B               loc_EB23C
EB23A:  MOVS            R0, #1
EB23C:  CMP             R0, R6
EB23E:  BCC             loc_EB24A
EB240:  MOVS            R0, #1
EB242:  ADD             SP, SP, #0x20 ; ' '
EB244:  POP.W           {R11}
EB248:  POP             {R4-R7,PC}
EB24A:  MOVS            R0, #0x10; thrown_size
EB24C:  BLX             j___cxa_allocate_exception
EB250:  MOV             R4, R0
EB252:  ADD             R0, SP, #0x30+var_2C; this
EB254:  MOV             R1, R6; std::__itoa *
EB256:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
EB25A:  LDR             R2, =(aExcessiveObjec - 0xEB260); "excessive object size: " ...
EB25C:  ADD             R2, PC; "excessive object size: "
EB25E:  ADD             R0, SP, #0x30+var_2C; int
EB260:  MOVS            R1, #0; int
EB262:  MOVS            R6, #0
EB264:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EB268:  VLDR            D16, [R0]
EB26C:  LDR             R1, [R0,#8]
EB26E:  STR             R1, [SP,#0x30+var_18]
EB270:  VSTR            D16, [SP,#0x30+var_20]
EB274:  STRD.W          R6, R6, [R0]
EB278:  STR             R6, [R0,#8]
EB27A:  LDR             R0, [R5,#8]
EB27C:  MOVS            R5, #1
EB27E:  LDR.W           R3, [R0,#-4]
EB282:  ADD             R2, SP, #0x30+var_20
EB284:  MOV             R0, R4
EB286:  MOV.W           R1, #0x198
EB28A:  BL              sub_E92EC
EB28E:  LDR             R1, =(_ZTIN8nlohmann6detail12out_of_rangeE - 0xEB298); `typeinfo for'nlohmann::detail::out_of_range ...
EB290:  MOVS            R5, #0
EB292:  LDR             R2, =(sub_E9438+1 - 0xEB29A)
EB294:  ADD             R1, PC; lptinfo
EB296:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EB298:  MOV             R0, R4; void *
EB29A:  BLX             j___cxa_throw
