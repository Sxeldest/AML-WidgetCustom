; =========================================================
; Game Engine Function: sub_EB2E8
; Address            : 0xEB2E8 - 0xEB39E
; =========================================================

EB2E8:  PUSH            {R4-R7,LR}
EB2EA:  ADD             R7, SP, #0xC
EB2EC:  PUSH.W          {R11}
EB2F0:  SUB             SP, SP, #0x20
EB2F2:  MOV             R6, R1
EB2F4:  MOV             R5, R0
EB2F6:  MOVS            R0, #2
EB2F8:  ADD             R1, SP, #0x30+var_2C
EB2FA:  STRB.W          R0, [SP,#0x30+var_2C]
EB2FE:  MOV             R0, R5
EB300:  BL              sub_EB41C
EB304:  LDRD.W          R1, R2, [R5,#8]
EB308:  STR             R0, [SP,#0x30+var_20]
EB30A:  CMP             R1, R2
EB30C:  BCS             loc_EB316
EB30E:  STR.W           R0, [R1],#4
EB312:  STR             R1, [R5,#8]
EB314:  B               loc_EB31E
EB316:  ADDS            R0, R5, #4
EB318:  ADD             R1, SP, #0x30+var_20
EB31A:  BL              sub_EB4C8
EB31E:  ADDS            R0, R6, #1
EB320:  BEQ             loc_EB340
EB322:  LDR             R0, [R5,#8]
EB324:  LDR.W           R0, [R0,#-4]
EB328:  LDRSB.W         R0, [R0]
EB32C:  CMP             R0, #2
EB32E:  BHI             loc_EB33A
EB330:  LDR             R1, =(unk_92190 - 0xEB336)
EB332:  ADD             R1, PC; unk_92190
EB334:  LDR.W           R0, [R1,R0,LSL#2]
EB338:  B               loc_EB33C
EB33A:  MOVS            R0, #1
EB33C:  CMP             R0, R6
EB33E:  BCC             loc_EB34A
EB340:  MOVS            R0, #1
EB342:  ADD             SP, SP, #0x20 ; ' '
EB344:  POP.W           {R11}
EB348:  POP             {R4-R7,PC}
EB34A:  MOVS            R0, #0x10; thrown_size
EB34C:  BLX             j___cxa_allocate_exception
EB350:  MOV             R4, R0
EB352:  ADD             R0, SP, #0x30+var_2C; this
EB354:  MOV             R1, R6; std::__itoa *
EB356:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
EB35A:  LDR             R2, =(aExcessiveArray - 0xEB360); "excessive array size: " ...
EB35C:  ADD             R2, PC; "excessive array size: "
EB35E:  ADD             R0, SP, #0x30+var_2C; int
EB360:  MOVS            R1, #0; int
EB362:  MOVS            R6, #0
EB364:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EB368:  VLDR            D16, [R0]
EB36C:  LDR             R1, [R0,#8]
EB36E:  STR             R1, [SP,#0x30+var_18]
EB370:  VSTR            D16, [SP,#0x30+var_20]
EB374:  STRD.W          R6, R6, [R0]
EB378:  STR             R6, [R0,#8]
EB37A:  LDR             R0, [R5,#8]
EB37C:  MOVS            R5, #1
EB37E:  LDR.W           R3, [R0,#-4]
EB382:  ADD             R2, SP, #0x30+var_20
EB384:  MOV             R0, R4
EB386:  MOV.W           R1, #0x198
EB38A:  BL              sub_E92EC
EB38E:  LDR             R1, =(_ZTIN8nlohmann6detail12out_of_rangeE - 0xEB398); `typeinfo for'nlohmann::detail::out_of_range ...
EB390:  MOVS            R5, #0
EB392:  LDR             R2, =(sub_E9438+1 - 0xEB39A)
EB394:  ADD             R1, PC; lptinfo
EB396:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
EB398:  MOV             R0, R4; void *
EB39A:  BLX             j___cxa_throw
