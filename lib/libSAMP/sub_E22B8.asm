; =========================================================
; Game Engine Function: sub_E22B8
; Address            : 0xE22B8 - 0xE2492
; =========================================================

E22B8:  PUSH            {R4-R7,LR}
E22BA:  ADD             R7, SP, #0xC
E22BC:  PUSH.W          {R8,R9,R11}
E22C0:  VPUSH           {D8}
E22C4:  SUB.W           SP, SP, #0x240
E22C8:  MOV             R9, R0
E22CA:  LDRD.W          R1, R0, [R7,#arg_8]
E22CE:  ADD             R6, SP, #0x260+var_38
E22D0:  ADD.W           R8, SP, #0x260+var_240
E22D4:  STRD.W          R1, R0, [SP,#0x260+var_28]
E22D8:  MOV             R5, R3
E22DA:  MOV             R4, R2
E22DC:  LDRD.W          R3, R2, [R7,#arg_0]
E22E0:  ADD             R1, SP, #0x260+var_30; int
E22E2:  STRD.W          R3, R2, [SP,#0x260+var_30]
E22E6:  MOV             R0, R6; int
E22E8:  MOV             R2, R8; this
E22EA:  BL              sub_E17E4
E22EE:  LDRH.W          R0, [SP,#0x260+var_28+1]
E22F2:  MOV.W           R1, #0x700
E22F6:  LDR             R3, [SP,#0x260+var_34]
E22F8:  VMOV            D8, R4, R5
E22FC:  CMP.W           R5, #0xFFFFFFFF
E2300:  AND.W           R2, R1, R0,LSL#4
E2304:  BIC.W           R4, R3, #0xFF00
E2308:  ADD.W           R1, R4, R2
E230C:  STR             R1, [SP,#0x260+var_34]
E230E:  BLE             loc_E231A
E2310:  CMP.W           R2, #0x100
E2314:  BEQ             loc_E2322
E2316:  MOV             R4, R1
E2318:  B               loc_E2324
E231A:  VNEG.F64        D8, D8
E231E:  ORR.W           R4, R4, #0x100
E2322:  STR             R4, [SP,#0x260+var_34]
E2324:  VLDR            D16, =+Inf
E2328:  VABS.F64        D17, D8
E232C:  VCMP.F64        D17, D16
E2330:  VMRS            APSR_nzcv, FPSCR
E2334:  BMI             loc_E233A
E2336:  BGT             loc_E233A
E2338:  B               loc_E23E6
E233A:  AND.W           R0, R0, #0xF
E233E:  CMP             R0, #4
E2340:  BNE             loc_E2386
E2342:  ANDS.W          R0, R4, #0xFF00
E2346:  BEQ             loc_E2386
E2348:  LDR             R1, =(unk_91D45 - 0xE2356)
E234A:  UBFX.W          R3, R4, #8, #8
E234E:  LDRD.W          R0, R2, [R9,#8]
E2352:  ADD             R1, PC; unk_91D45
E2354:  LDRB            R4, [R1,R3]
E2356:  ADDS            R1, R0, #1
E2358:  CMP             R2, R1
E235A:  BCS             loc_E236C
E235C:  LDR.W           R0, [R9]
E2360:  LDR             R2, [R0]
E2362:  MOV             R0, R9
E2364:  BLX             R2
E2366:  LDR.W           R0, [R9,#8]
E236A:  ADDS            R1, R0, #1
E236C:  LDR.W           R2, [R9,#4]
E2370:  STR.W           R1, [R9,#8]
E2374:  STRB            R4, [R2,R0]
E2376:  LDRD.W          R1, R0, [SP,#0x260+var_34]
E237A:  BIC.W           R4, R1, #0xFF00
E237E:  STR             R4, [SP,#0x260+var_34]
E2380:  CBZ             R0, loc_E2386
E2382:  SUBS            R0, #1
E2384:  STR             R0, [SP,#0x260+var_30]
E2386:  LDR             R0, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xE2398); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
E2388:  MOV.W           R1, #0x1F4
E238C:  STR             R1, [SP,#0x260+var_234]
E238E:  ADD.W           R5, R8, #0x10
E2392:  MOVS            R1, #0
E2394:  ADD             R0, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
E2396:  STR             R1, [SP,#0x260+var_238]
E2398:  UXTB            R1, R4
E239A:  CMP             R1, #3
E239C:  ADD.W           R0, R0, #8
E23A0:  STR             R5, [SP,#0x260+var_23C]
E23A2:  STR             R0, [SP,#0x260+var_240]
E23A4:  BNE             loc_E240A
E23A6:  TST.W           R4, #0xFF00
E23AA:  BEQ             loc_E23BE
E23AC:  LDR             R0, =(unk_91D45 - 0xE23B6)
E23AE:  UBFX.W          R1, R4, #8, #8
E23B2:  ADD             R0, PC; unk_91D45
E23B4:  LDRB            R0, [R0,R1]
E23B6:  MOVS            R1, #1
E23B8:  STR             R1, [SP,#0x260+var_238]
E23BA:  STRB.W          R0, [SP,#0x260+var_230]
E23BE:  VMOV            R0, R1, D8
E23C2:  LDR             R3, [SP,#0x260+var_38]
E23C4:  LDR             R2, [SP,#0x260+var_2C]
E23C6:  STRD.W          R4, R8, [SP,#0x260+var_260]
E23CA:  BL              sub_E1894
E23CE:  LDRD.W          R0, R2, [SP,#0x260+var_23C]
E23D2:  STRD.W          R0, R2, [SP,#0x260+var_250]
E23D6:  ADD             R0, SP, #0x260+var_250
E23D8:  ADD             R1, SP, #0x260+var_30
E23DA:  STR             R0, [SP,#0x260+var_260]
E23DC:  MOV             R0, R9
E23DE:  MOV             R3, R2
E23E0:  BL              sub_E1A8C
E23E4:  B               loc_E246E
E23E6:  VCMP.F64        D8, D8
E23EA:  LDRD.W          R0, R1, [SP,#0x260+var_28]
E23EE:  LDRD.W          R2, R3, [SP,#0x260+var_30]
E23F2:  STMEA.W         SP, {R0,R1,R6}
E23F6:  MOVS            R1, #0
E23F8:  MOV             R0, R9
E23FA:  VMRS            APSR_nzcv, FPSCR
E23FE:  IT VS
E2400:  MOVVS           R1, #1
E2402:  BL              sub_DE2CC
E2406:  MOV             R4, R0
E2408:  B               loc_E247A
E240A:  LDR             R2, [SP,#0x260+var_2C]
E240C:  LDRB.W          R0, [SP,#0x260+var_28]
E2410:  CMP             R0, #0
E2412:  MOV             R0, R2
E2414:  IT NE
E2416:  MOVNE           R0, #6
E2418:  CMP.W           R2, #0xFFFFFFFF
E241C:  IT GT
E241E:  MOVGT           R0, R2
E2420:  CMP             R1, #1
E2422:  BNE             loc_E2430
E2424:  MOV             R1, #0x7FFFFFFF; char *
E2428:  CMP             R0, R1
E242A:  BEQ             loc_E248A
E242C:  ADDS            R6, R0, #1
E242E:  B               loc_E243E
E2430:  MOV             R6, R0
E2432:  CMP             R0, #0
E2434:  IT EQ
E2436:  MOVEQ           R6, #1
E2438:  CMP             R1, #2
E243A:  IT EQ
E243C:  MOVEQ           R6, R0
E243E:  VMOV            R0, R1, D8; int
E2442:  LDR             R3, [SP,#0x260+var_38]; int
E2444:  MOV             R2, R6; n
E2446:  STRD.W          R4, R8, [SP,#0x260+var_260]; int
E244A:  BLX             j__ZN3fmt2v86detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE; fmt::v8::detail::format_float<double>(double,int,fmt::v8::detail::float_specs,fmt::v8::detail::buffer<char> &)
E244E:  LDR             R1, [R7,#arg_10]
E2450:  LDRD.W          R2, R3, [SP,#0x260+var_23C]
E2454:  LDR             R4, [SP,#0x260+var_34]
E2456:  STR             R6, [SP,#0x260+var_38]
E2458:  STR             R0, [SP,#0x260+var_248]
E245A:  STRD.W          R2, R3, [SP,#0x260+var_250]
E245E:  STRD.W          R4, R1, [SP,#0x260+var_260]; int
E2462:  ADD             R1, SP, #0x260+var_250; int
E2464:  ADD             R2, SP, #0x260+var_30; int
E2466:  MOV             R0, R9; int
E2468:  MOV             R3, R6; int
E246A:  BL              sub_E1AF4
E246E:  MOV             R4, R0
E2470:  LDR             R0, [SP,#0x260+var_23C]; void *
E2472:  CMP             R0, R5
E2474:  BEQ             loc_E247A
E2476:  BLX             j__ZdlPv; operator delete(void *)
E247A:  MOV             R0, R4
E247C:  ADD.W           SP, SP, #0x240
E2480:  VPOP            {D8}
E2484:  POP.W           {R8,R9,R11}
E2488:  POP             {R4-R7,PC}
E248A:  LDR             R0, =(aNumberIsTooBig - 0xE2490); "number is too big" ...
E248C:  ADD             R0, PC; "number is too big"
E248E:  BLX             j__ZN3fmt2v86detail18throw_format_errorEPKc; fmt::v8::detail::throw_format_error(char const*)
