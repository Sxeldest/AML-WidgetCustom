; =========================================================
; Game Engine Function: sub_BA15C
; Address            : 0xBA15C - 0xBAF26
; =========================================================

BA15C:  PUSH            {R4-R7,LR}
BA15E:  ADD             R7, SP, #0xC
BA160:  PUSH.W          {R8-R11}
BA164:  SUB.W           SP, SP, #0x960
BA168:  SUB             SP, SP, #4
BA16A:  MOV             R6, SP
BA16C:  ADD.W           LR, R6, #0x148
BA170:  STR.W           R2, [R6,#0x980+var_850]
BA174:  MOVS            R4, #0
BA176:  LDR.W           R2, =(__stack_chk_guard_ptr - 0xBA17E)
BA17A:  ADD             R2, PC; __stack_chk_guard_ptr
BA17C:  LDR             R2, [R2]; __stack_chk_guard
BA17E:  LDR             R2, [R2]
BA180:  STR.W           R2, [R6,#0x980+var_840]
BA184:  LDR.W           R9, [R0]
BA188:  LDR             R3, [R0,#8]; int
BA18A:  LDRD.W          R5, R11, [R9,#4]
BA18E:  LDR.W           R2, [R9,#0x18]
BA192:  STR.W           R2, [R6,#0x980+var_858]
BA196:  MOVW            R2, #0x2058
BA19A:  SUB.W           R8, R2, R1,LSL#2
BA19E:  MOV.W           R2, #0x2000
BA1A2:  STR.W           R1, [R6,#0x980+var_8C0]
BA1A6:  NEGS            R1, R1
BA1A8:  STR.W           R1, [R6,#0x980+var_8E0]
BA1AC:  ADD.W           R2, R2, R5,LSL#2
BA1B0:  ADD.W           R12, R5, #0x800
BA1B4:  ADD.W           R1, R6, #0x150
BA1B8:  STR.W           R5, [R6,#0x980+var_8C8]
BA1BC:  MOV             R5, R0
BA1BE:  STR.W           R5, [R6,#0x980+var_848]
BA1C2:  ADD.W           R5, R0, #0x58 ; 'X'
BA1C6:  STR.W           R5, [R1,R4,LSL#2]
BA1CA:  ADD.W           R5, R0, R8
BA1CE:  STR.W           R5, [LR,R4,LSL#2]
BA1D2:  ADDS            R4, #1
BA1D4:  ADD             R0, R2
BA1D6:  CMP             R4, R3
BA1D8:  BLT             loc_BA1C2
BA1DA:  MUL.W           R0, R12, R3
BA1DE:  LDR.W           R1, [R6,#0x138]
BA1E2:  LDR             R2, [R1,#0x34]
BA1E4:  LDR             R5, [R1,#0x14]
BA1E6:  CMP             R2, #4
BA1E8:  STR.W           R2, [R6,#0xA4]
BA1EC:  ADD.W           R0, R1, R0,LSL#2
BA1F0:  STR.W           R3, [R6,#0xC8]
BA1F4:  ADD.W           R10, R0, #0x58 ; 'X'
BA1F8:  BGT             loc_BA20A
BA1FA:  CMP             R5, #0
BA1FC:  ITTT EQ
BA1FE:  LDREQ.W         R0, [R6,#0x138]
BA202:  LDREQ           R0, [R0,#0x38]
BA204:  CMPEQ           R0, #0
BA206:  BEQ.W           loc_BA42E
BA20A:  ADD.W           R0, R3, R3,LSL#1
BA20E:  STR.W           R0, [R6,#0x134]
BA212:  LDR.W           R0, [R6,#0xC0]
BA216:  MOVS            R2, #7
BA218:  LDR.W           R1, [R6,#0xA4]
BA21C:  MULS            R0, R3
BA21E:  MOV.W           R3, #0x200
BA222:  CMP             R1, #0
BA224:  IT EQ
BA226:  MOVEQ.W         R3, #0x600
BA22A:  LDR.W           R1, [R6,#0x138]
BA22E:  STR.W           R9, [R6,#0x118]
BA232:  LDR.W           LR, [R9,#0xC]
BA236:  LDR             R1, [R1,#0x18]
BA238:  ADD.W           R0, R2, R0,LSL#1
BA23C:  CMP             R1, LR
BA23E:  BIC.W           R0, R0, #7
BA242:  IT LT
BA244:  MOVLT           LR, R1
BA246:  SUB.W           R0, SP, R0
BA24A:  CMP             R5, LR
BA24C:  MOV             R2, LR
BA24E:  IT GT
BA250:  MOVGT           R2, R5
BA252:  STR.W           R0, [R6,#0x13C]
BA256:  STR.W           R2, [R6,#0x12C]
BA25A:  MOV             SP, R0
BA25C:  CMP             R5, R1
BA25E:  STR.W           R5, [R6,#0x11C]
BA262:  BGE             loc_BA2C4
BA264:  LDR.W           R2, [R6,#0xB8]
BA268:  MOVW            R0, #0x2030
BA26C:  MOV.W           R9, R11,LSL#1
BA270:  ADD.W           R0, R0, R2,LSL#2
BA274:  LDR.W           R2, [R6,#0xC8]
BA278:  MULS            R0, R2
BA27A:  LDR.W           R2, [R6,#0x11C]
BA27E:  SUB.W           R8, R1, R2
BA282:  LDR.W           R1, [R6,#0x138]
BA286:  ADD.W           R0, R0, R2,LSL#1
BA28A:  ADD             R0, R1
BA28C:  ADD.W           R12, R0, #0x58 ; 'X'
BA290:  ADD.W           R0, R11, R11,LSL#1
BA294:  MOV.W           R11, #0
BA298:  LSLS            R0, R0, #2
BA29A:  MOV             R4, R12
BA29C:  MOV             R1, R8
BA29E:  LDRSH.W         R5, [R4]
BA2A2:  LDRSH           R2, [R4,R0]
BA2A4:  SUBS            R5, R5, R3
BA2A6:  CMP             R5, R2
BA2A8:  IT LT
BA2AA:  MOVLT           R5, R2
BA2AC:  SUBS            R1, #1
BA2AE:  STRH            R5, [R4]
BA2B0:  ADD.W           R4, R4, #2
BA2B4:  BNE             loc_BA29E
BA2B6:  LDR.W           R1, [R6,#0xC8]
BA2BA:  ADD.W           R11, R11, #1
BA2BE:  ADD             R12, R9
BA2C0:  CMP             R11, R1
BA2C2:  BLT             loc_BA29A
BA2C4:  LDR.W           R0, [R6,#0x134]
BA2C8:  LDR.W           R8, [R6,#0xC8]
BA2CC:  ADD.W           R0, R10, R0,LSL#4
BA2D0:  STR.W           R0, [R6,#0x114]
BA2D4:  LDR.W           R0, [R6,#0x138]
BA2D8:  CMP.W           R8, #1
BA2DC:  LDR             R5, [R0,#0x28]
BA2DE:  BLT             loc_BA390
BA2E0:  LDR.W           R0, [R6,#0x11C]
BA2E4:  LDR.W           R9, [R6,#0xC0]
BA2E8:  CMP             R0, LR
BA2EA:  BGE             loc_BA394
BA2EC:  MOVS            R0, #0
BA2EE:  STR.W           R0, [R6,#0x124]
BA2F2:  MOVS            R0, #0
BA2F4:  STR.W           R0, [R6,#0x120]
BA2F8:  MUL.W           R0, R0, R9
BA2FC:  LDR.W           R4, [R6,#0x11C]
BA300:  STR.W           R0, [R6,#0x134]
BA304:  LDR.W           R1, [R6,#0x128]
BA308:  LDR.W           R2, [R6,#0x130]
BA30C:  LDRSH.W         R0, [R1,R4,LSL#1]
BA310:  ADDS            R4, #1
BA312:  LDRSH.W         R1, [R1,R4,LSL#1]
BA316:  SUBS            R1, R1, R0
BA318:  LSLS            R0, R2
BA31A:  LSL.W           R11, R1, R2
BA31E:  LDR.W           R1, [R6,#0x134]
BA322:  CMP.W           R11, #1
BA326:  ADD.W           R9, R0, R1
BA32A:  BLT             loc_BA352
BA32C:  LDR.W           R1, [R6,#0x124]
BA330:  MOV             R10, R11
BA332:  ADD             R0, R1
BA334:  LDR.W           R1, [R6,#0x13C]
BA338:  ADD.W           R8, R1, R0,LSL#1
BA33C:  MOV             R0, R5
BA33E:  BLX             j_celt_lcg_rand
BA342:  MOV             R5, R0
BA344:  SUBS.W          R10, R10, #1
BA348:  MOV.W           R0, R5,ASR#20
BA34C:  STRH.W          R0, [R8],#2
BA350:  BNE             loc_BA33C
BA352:  LDR.W           R1, [R6,#0x138]
BA356:  MOVW            R2, #0x7FFF
BA35A:  LDR.W           R0, [R6,#0x13C]
BA35E:  LDR             R3, [R1,#0x24]
BA360:  ADD.W           R0, R0, R9,LSL#1
BA364:  MOV             R1, R11
BA366:  BLX             j_renormalise_vector
BA36A:  LDR.W           R0, [R6,#0x12C]
BA36E:  CMP             R4, R0
BA370:  BLT             loc_BA304
BA372:  LDR.W           R9, [R6,#0xC0]
BA376:  LDR.W           R0, [R6,#0x124]
BA37A:  LDR.W           R8, [R6,#0xC8]
BA37E:  ADD             R0, R9
BA380:  STR.W           R0, [R6,#0x124]
BA384:  LDR.W           R0, [R6,#0x120]
BA388:  ADDS            R0, #1
BA38A:  CMP             R0, R8
BA38C:  BNE             loc_BA2F4
BA38E:  B               loc_BA394
BA390:  LDR.W           R9, [R6,#0xC0]
BA394:  LDR.W           R0, [R6,#0x138]
BA398:  ADD.W           R10, R6, #0x150
BA39C:  MOVS            R4, #0
BA39E:  STR             R5, [R0,#0x28]
BA3A0:  RSB.W           R0, R9, #0x800
BA3A4:  LDR.W           R1, [R6,#0xB8]
BA3A8:  ADD.W           R0, R0, R1,LSR#1
BA3AC:  LSLS            R5, R0, #2
BA3AE:  LDR.W           R0, [R10,R4,LSL#2]; dest
BA3B2:  MOV             R2, R5; n
BA3B4:  ADD.W           R1, R0, R9,LSL#2; src
BA3B8:  BLX             j_memmove
BA3BC:  ADDS            R4, #1
BA3BE:  CMP             R4, R8
BA3C0:  BLT             loc_BA3AE
BA3C2:  LDR.W           R0, [R6,#0x138]
BA3C6:  MOV             R1, R0
BA3C8:  LDR             R0, [R1,#0x10]
BA3CA:  LDR             R1, [R1,#0x24]
BA3CC:  SUB             SP, SP, #0x28 ; '('
BA3CE:  LDR.W           R2, [R6,#0x11C]
BA3D2:  STR             R1, [SP,#0x9A8+var_988]; int
BA3D4:  MOVS            R1, #0
BA3D6:  STR             R2, [SP,#0x9A8+var_9A8]; int
BA3D8:  LDR.W           R2, [R6,#0x12C]
BA3DC:  STRD.W          R2, R8, [SP,#0x9A8+var_9A4]; int
BA3E0:  STRD.W          R8, R1, [SP,#0x9A8+var_99C]; int
BA3E4:  LDR.W           R2, [R6,#0x130]
BA3E8:  STRD.W          R2, R0, [SP,#0x9A8+var_994]; int
BA3EC:  ADD.W           R2, R6, #0x148; int
BA3F0:  STR             R1, [SP,#0x9A8+var_98C]; int
BA3F2:  LDR.W           R1, [R6,#0x13C]; int
BA3F6:  LDRD.W          R3, R0, [R6,#0x114]; int
BA3FA:  BL              sub_BB284
BA3FE:  ADD             SP, SP, #0x28 ; '('
BA400:  LDR.W           R0, [R6,#0xA4]
BA404:  LDR.W           R1, [R6,#0x138]
BA408:  ADDS            R0, #1
BA40A:  STR             R0, [R1,#0x34]
BA40C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xBA418)
BA410:  LDR.W           R1, [R6,#0x140]
BA414:  ADD             R0, PC; __stack_chk_guard_ptr
BA416:  LDR             R0, [R0]; __stack_chk_guard
BA418:  LDR             R0, [R0]
BA41A:  SUBS            R0, R0, R1
BA41C:  ITTTT EQ
BA41E:  SUBEQ.W         R4, R7, #-var_1C
BA422:  MOVEQ           SP, R4
BA424:  POPEQ.W         {R8-R11}
BA428:  POPEQ           {R4-R7,PC}
BA42A:  BLX             __stack_chk_fail
BA42E:  LDR.W           R0, [R6,#0xA4]
BA432:  MOV             R11, R9
BA434:  CBZ             R0, loc_BA44C
BA436:  LDR.W           R0, [R6,#0x138]
BA43A:  ADD.W           R1, R0, #0x24 ; '$'
BA43E:  STR.W           R1, [R6,#0xBC]
BA442:  LDR.W           R9, [R0,#0x30]
BA446:  MOVW            R0, #0x6666
BA44A:  B               loc_BA4A2
BA44C:  LDR.W           R4, [R6,#0x138]
BA450:  LDR.W           R5, [R4,#0x24]!
BA454:  SUB             SP, SP, #8
BA456:  ADD.W           R9, R6, #0x158
BA45A:  ADD.W           R0, R6, #0x150; int
BA45E:  MOV.W           R2, #0x800; int
BA462:  STR             R5, [SP,#0x988+var_988]; int
BA464:  MOV             R1, R9; src
BA466:  BLX             j_pitch_downsample
BA46A:  ADD             SP, SP, #8
BA46C:  SUB             SP, SP, #8
BA46E:  ADD.W           R0, R6, #0x144
BA472:  MOV             R1, R9
BA474:  MOV.W           R2, #0x530
BA478:  MOV.W           R3, #0x26C
BA47C:  MOV             R8, R0
BA47E:  ADD.W           R0, R9, #0x2D0
BA482:  STRD.W          R8, R5, [SP,#0x988+var_988]; int
BA486:  BLX             j_pitch_search
BA48A:  ADD             SP, SP, #8
BA48C:  LDR.W           R0, [R8]
BA490:  RSB.W           R9, R0, #0x2D0
BA494:  MOV             R0, R4
BA496:  STR.W           R0, [R6,#0xBC]
BA49A:  MOVW            R0, #0x7FFF
BA49E:  STR.W           R9, [R4,#0xC]
BA4A2:  STR             R0, [R6,#8]
BA4A4:  MOV.W           R0, R9,LSL#1
BA4A8:  CMP.W           R0, #0x400
BA4AC:  MOV.W           R8, #0x400
BA4B0:  LDR.W           R2, [R6,#0xC0]
BA4B4:  IT LT
BA4B6:  MOVLT.W         R8, R9,LSL#1
BA4BA:  LDR.W           LR, [R6,#0xB8]
BA4BE:  MOVS            R1, #7
BA4C0:  ADD.W           R0, R1, R8,LSL#1
BA4C4:  BIC.W           R12, R0, #7
BA4C8:  ADD.W           R0, R1, LR,LSL#2
BA4CC:  BIC.W           R0, R0, #7
BA4D0:  SUB.W           R0, SP, R0
BA4D4:  STR.W           R0, [R6,#0x98]
BA4D8:  MOV             SP, R0
BA4DA:  MOV             R0, SP
BA4DC:  SUB.W           R3, R0, #0x830
BA4E0:  MOV             SP, R3
BA4E2:  MVN.W           R1, R8
BA4E6:  ADD.W           R4, LR, R2
BA4EA:  STR             R1, [R6,#0x10]
BA4EC:  ADD.W           R1, R0, R1,LSL#1
BA4F0:  ADDS            R1, #2
BA4F2:  STR.W           R1, [R6,#0x8C]
BA4F6:  MOV             R1, #0xFFFFFFFE
BA4FA:  SUB.W           R12, SP, R12
BA4FE:  ADD.W           R1, R1, LR,LSL#1
BA502:  STR             R1, [R6,#4]
BA504:  MOVW            R1, #0x7E9
BA508:  ADDS            R5, R0, #2
BA50A:  SUBS            R1, R1, R2
BA50C:  STR.W           R1, [R6,#0x88]
BA510:  MOVW            R1, #0x7EA
BA514:  STR.W           R12, [R6,#0x90]
BA518:  SUBS            R1, R1, R2
BA51A:  STR.W           R1, [R6,#0x84]
BA51E:  MOVW            R1, #0x7EB
BA522:  SUBS            R1, R1, R2
BA524:  STR.W           R1, [R6,#0x80]
BA528:  MOVW            R1, #0x7EC
BA52C:  SUBS            R1, R1, R2
BA52E:  STR             R1, [R6,#0x7C]
BA530:  MOVW            R1, #0x7ED
BA534:  SUBS            R1, R1, R2
BA536:  STR             R1, [R6,#0x78]
BA538:  MOVW            R1, #0x7EE
BA53C:  SUBS            R1, R1, R2
BA53E:  STR             R1, [R6,#0x74]
BA540:  MOVW            R1, #0x7EF
BA544:  SUBS            R1, R1, R2
BA546:  STR             R1, [R6,#0x70]
BA548:  MOVW            R1, #0x7F1
BA54C:  SUBS            R1, R1, R2
BA54E:  STR             R1, [R6,#0x6C]
BA550:  MOVW            R1, #0x7F2
BA554:  SUBS            R1, R1, R2
BA556:  STR             R1, [R6,#0x68]
BA558:  MOVW            R1, #0x7F3
BA55C:  SUBS            R1, R1, R2
BA55E:  STR             R1, [R6,#0x64]
BA560:  MOVW            R1, #0x7F4
BA564:  SUBS            R1, R1, R2
BA566:  STR             R1, [R6,#0x60]
BA568:  MOVW            R1, #0x7F5
BA56C:  SUBS            R1, R1, R2
BA56E:  STR             R1, [R6,#0x5C]
BA570:  MOVW            R1, #0x7F6
BA574:  SUBS            R1, R1, R2
BA576:  STR             R1, [R6,#0x58]
BA578:  MOVW            R1, #0x7F7
BA57C:  SUBS            R1, R1, R2
BA57E:  STR             R1, [R6,#0x54]
BA580:  MOVW            R1, #0x7F9
BA584:  SUBS            R1, R1, R2
BA586:  STR             R1, [R6,#0x50]
BA588:  MOVW            R1, #0x7FA
BA58C:  SUBS            R1, R1, R2
BA58E:  STR             R1, [R6,#0x4C]
BA590:  MOVW            R1, #0x7FB
BA594:  SUBS            R1, R1, R2
BA596:  STR             R1, [R6,#0x48]
BA598:  MOVW            R1, #0x7FC
BA59C:  SUBS            R1, R1, R2
BA59E:  STR             R1, [R6,#0x44]
BA5A0:  MOVW            R1, #0x7FD
BA5A4:  SUBS            R1, R1, R2
BA5A6:  STR             R1, [R6,#0x40]
BA5A8:  MOVW            R1, #0x7FE
BA5AC:  SUBS            R1, R1, R2
BA5AE:  STR             R1, [R6,#0x3C]
BA5B0:  MOVW            R1, #0x7FF
BA5B4:  SUBS            R1, R1, R2
BA5B6:  STR             R1, [R6,#0x38]
BA5B8:  ADD.W           R1, R2, R9
BA5BC:  RSB.W           R1, R1, #0x800
BA5C0:  STR.W           R1, [R6,#0x130]
BA5C4:  RSB.W           R1, R9, #0x400
BA5C8:  STR.W           R1, [R6,#0x12C]
BA5CC:  ADD.W           R1, LR, LR,LSR#31
BA5D0:  MOV.W           LR, R1,ASR#1
BA5D4:  SUB.W           R1, R0, R8
BA5D8:  STR.W           R1, [R6,#0x124]
BA5DC:  SUB.W           R1, R0, R8,LSL#1
BA5E0:  SUB.W           R0, R0, #0x800
BA5E4:  STR             R1, [R6,#0x30]
BA5E6:  STR.W           R0, [R6,#0x134]
BA5EA:  MOV             SP, R12
BA5EC:  LDR.W           R0, [R11,#0x34]
BA5F0:  LSLS            R1, R4, #2
BA5F2:  STR.W           R0, [R6,#0xA8]
BA5F6:  RSB.W           R0, R2, #0x7E8
BA5FA:  STR             R0, [R6,#0x24]
BA5FC:  RSB.W           R0, R2, #0x7F0
BA600:  STR             R0, [R6,#0x20]
BA602:  RSB.W           R0, R2, #0x7F8
BA606:  STR             R0, [R6,#0x1C]
BA608:  RSB.W           R0, R2, #0x800
BA60C:  STR.W           R0, [R6,#0xB0]
BA610:  LSLS            R0, R0, #2
BA612:  STR             R1, [R6]
BA614:  STR             R0, [R6,#0x18]
BA616:  MOV.W           R0, R8,ASR#1
BA61A:  STR             R0, [R6,#0xC]
BA61C:  MOV.W           R0, R8,LSL#1
BA620:  STR.W           R8, [R6,#0x9C]
BA624:  MOV             R8, R10
BA626:  MOVS            R1, #0
BA628:  STR             R0, [R6,#0x14]
BA62A:  STR.W           R9, [R6,#0xAC]
BA62E:  STR.W           R3, [R6,#0x94]
BA632:  STR.W           R4, [R6,#0xB4]
BA636:  STR.W           LR, [R6,#0x34]
BA63A:  STRD.W          R10, R5, [R6,#0x28]
BA63E:  B               loc_BA650
BA640:  LDR.W           R5, [R6,#0x13C]
BA644:  CMP.W           R9, R1,ASR#2
BA648:  BGT.W           loc_BADAA
BA64C:  B.W             loc_BAE64
BA650:  ADD.W           R0, R6, #0x150
BA654:  STR.W           R1, [R6,#0xC4]
BA658:  LDR.W           R0, [R0,R1,LSL#2]
BA65C:  MOVS            R1, #0
BA65E:  STR.W           R0, [R6,#0x13C]
BA662:  ADD.W           R0, R0, #0xFA0
BA666:  LDR.W           R2, [R0,R1,LSL#2]
BA66A:  ADD.W           R2, R2, #0x800
BA66E:  LSRS            R2, R2, #0xC
BA670:  STRH.W          R2, [R3,R1,LSL#1]
BA674:  ADDS            R1, #1
BA676:  CMP.W           R1, #0x418
BA67A:  BNE             loc_BA666
BA67C:  LDR.W           R0, [R6,#0xA4]
BA680:  LDR.W           R9, [R6,#0x124]
BA684:  CMP             R0, #0
BA686:  BNE.W           loc_BA9B8
BA68A:  LDR.W           R0, [R6,#0xBC]
BA68E:  LDR             R0, [R0]
BA690:  SUB             SP, SP, #0x10
BA692:  MOVS            R1, #0x18
BA694:  ADD.W           R4, R6, #0x158
BA698:  STR             R1, [SP,#0x990+var_990]; int
BA69A:  MOV.W           R1, #0x400
BA69E:  STRD.W          R1, R0, [SP,#0x990+var_98C]; int
BA6A2:  MOV             R1, R4; int
BA6A4:  LDR.W           R0, [R6,#0x134]; src
BA6A8:  LDR.W           R2, [R6,#0xA8]; int
BA6AC:  LDR.W           R3, [R6,#0xB8]; int
BA6B0:  BLX             j__celt_autocorr
BA6B4:  MOV             R1, R4
BA6B6:  ADD             SP, SP, #0x10
BA6B8:  ADD.W           R0, R6, #0x144
BA6BC:  MOV.W           R5, #0x20000
BA6C0:  MOV             R2, R0
BA6C2:  LDR             R0, [R2,#0x14]
BA6C4:  ADD.W           R0, R0, R0,ASR#13
BA6C8:  STR             R0, [R2,#0x14]
BA6CA:  MOVS            R0, #1
BA6CC:  MUL.W           R2, R5, R0
BA6D0:  LDR.W           R3, [R1,R0,LSL#2]
BA6D4:  ADD.W           R5, R5, #0x20000
BA6D8:  UXTH.W          R12, R3
BA6DC:  ASRS            R4, R2, #0x10
BA6DE:  SMULTT.W        R2, R2, R3
BA6E2:  MUL.W           R4, R12, R4
BA6E6:  SUB.W           R3, R3, R4,ASR#15
BA6EA:  SUB.W           R2, R3, R2,LSL#1
BA6EE:  STR.W           R2, [R1,R0,LSL#2]
BA6F2:  ADDS            R0, #1
BA6F4:  CMP             R0, #0x19
BA6F6:  BNE             loc_BA6CC
BA6F8:  LDR.W           R0, [R6,#0xC4]
BA6FC:  MOVS            R2, #0x18
BA6FE:  ADD.W           R5, R0, R0,LSL#1
BA702:  LSLS            R0, R5, #3
BA704:  ADD.W           R0, R10, R0,LSL#1
BA708:  MOV             R11, R0
BA70A:  BLX             j__celt_lpc
BA70E:  MOVS            R0, #0x17
BA710:  ADD.W           R0, R0, R5,LSL#3
BA714:  STR.W           R0, [R6,#0x128]
BA718:  MOVS            R0, #0x16
BA71A:  ADD.W           R0, R0, R5,LSL#3
BA71E:  STR.W           R0, [R6,#0x120]
BA722:  MOVS            R0, #0x15
BA724:  ADD.W           R0, R0, R5,LSL#3
BA728:  STR.W           R0, [R6,#0x11C]
BA72C:  MOVS            R0, #0x14
BA72E:  ADD.W           R0, R0, R5,LSL#3
BA732:  STR.W           R0, [R6,#0x118]
BA736:  MOVS            R0, #0x13
BA738:  ADD.W           R0, R0, R5,LSL#3
BA73C:  STR.W           R0, [R6,#0x114]
BA740:  MOVS            R0, #0x12
BA742:  ADD.W           R0, R0, R5,LSL#3
BA746:  STR.W           R0, [R6,#0x110]
BA74A:  MOVS            R0, #0x11
BA74C:  ADD.W           R0, R0, R5,LSL#3
BA750:  STR.W           R0, [R6,#0x10C]
BA754:  MOVS            R0, #0x10
BA756:  ADD.W           R0, R0, R5,LSL#3
BA75A:  STR.W           R0, [R6,#0x108]
BA75E:  MOVS            R0, #0xF
BA760:  ADD.W           R0, R0, R5,LSL#3
BA764:  STR.W           R0, [R6,#0x104]
BA768:  MOVS            R0, #0xE
BA76A:  ADD.W           R0, R0, R5,LSL#3
BA76E:  STR.W           R0, [R6,#0x100]
BA772:  MOVS            R0, #0xD
BA774:  ADD.W           R0, R0, R5,LSL#3
BA778:  STR.W           R0, [R6,#0xFC]
BA77C:  MOVS            R0, #0xC
BA77E:  ADD.W           R0, R0, R5,LSL#3
BA782:  STR.W           R0, [R6,#0xF8]
BA786:  MOVS            R0, #0xB
BA788:  ADD.W           R0, R0, R5,LSL#3
BA78C:  STR.W           R0, [R6,#0xF4]
BA790:  MOVS            R0, #0xA
BA792:  ADD.W           R0, R0, R5,LSL#3
BA796:  STR.W           R0, [R6,#0xF0]
BA79A:  MOVS            R0, #9
BA79C:  ADD.W           R0, R0, R5,LSL#3
BA7A0:  STR.W           R0, [R6,#0xEC]
BA7A4:  MOVS            R0, #8
BA7A6:  ADD.W           R0, R0, R5,LSL#3
BA7AA:  STR.W           R0, [R6,#0xE8]
BA7AE:  MOVS            R0, #7
BA7B0:  ORR.W           R0, R0, R5,LSL#3
BA7B4:  STR.W           R0, [R6,#0xE4]
BA7B8:  MOVS            R0, #6
BA7BA:  ORR.W           R0, R0, R5,LSL#3
BA7BE:  STR.W           R0, [R6,#0xE0]
BA7C2:  MOVS            R0, #5
BA7C4:  ORR.W           R0, R0, R5,LSL#3
BA7C8:  STR.W           R0, [R6,#0xDC]
BA7CC:  MOVS            R0, #4
BA7CE:  ORR.W           R0, R0, R5,LSL#3
BA7D2:  STR.W           R0, [R6,#0xD8]
BA7D6:  MOVS            R0, #3
BA7D8:  ORR.W           R0, R0, R5,LSL#3
BA7DC:  STR.W           R0, [R6,#0xD4]
BA7E0:  MOVS            R0, #2
BA7E2:  ORR.W           R0, R0, R5,LSL#3
BA7E6:  STR.W           R0, [R6,#0xD0]
BA7EA:  MOVS            R0, #1
BA7EC:  ORR.W           R0, R0, R5,LSL#3
BA7F0:  STR.W           R0, [R6,#0xCC]
BA7F4:  B               loc_BA820
BA7F6:  MOVW            R1, #0x7FFF
BA7FA:  MOVS            R0, #0
BA7FC:  MOVW            R5, #0x7EB8
BA800:  SXTH            R1, R1
BA802:  LDRSH.W         R2, [R8,R0,LSL#1]
BA806:  SMULBB.W        R1, R1, R5
BA80A:  SBFX.W          R3, R1, #0xF, #0x10
BA80E:  ASRS            R1, R1, #0xF
BA810:  SMULBB.W        R2, R3, R2
BA814:  LSRS            R2, R2, #0xF
BA816:  STRH.W          R2, [R8,R0,LSL#1]
BA81A:  ADDS            R0, #1
BA81C:  CMP             R0, #0x18
BA81E:  BNE             loc_BA800
BA820:  LDR.W           R0, [R6,#0x128]
BA824:  LDRSH.W         LR, [R10,R0,LSL#1]
BA828:  LDR.W           R0, [R6,#0x120]
BA82C:  LDRSH.W         R12, [R10,R0,LSL#1]
BA830:  LDR.W           R0, [R6,#0x11C]
BA834:  LDRSH.W         R4, [R10,R0,LSL#1]
BA838:  LDR.W           R0, [R6,#0x118]
BA83C:  LDRSH.W         R3, [R10,R0,LSL#1]
BA840:  LDR.W           R0, [R6,#0x114]
BA844:  LDRSH.W         R5, [R10,R0,LSL#1]
BA848:  LDR.W           R0, [R6,#0xD0]
BA84C:  LDRSH.W         R9, [R10,R0,LSL#1]
BA850:  LDR.W           R0, [R6,#0xCC]
BA854:  LDRSH.W         R1, [R10,R0,LSL#1]
BA858:  CMP             R1, #0
BA85A:  IT MI
BA85C:  NEGMI           R1, R1
BA85E:  LDRSH.W         R0, [R11]
BA862:  CMP             R0, #0
BA864:  IT MI
BA866:  NEGMI           R0, R0
BA868:  CMP.W           R9, #0
BA86C:  ADD             R0, R1
BA86E:  IT MI
BA870:  RSBMI.W         R9, R9, #0
BA874:  LDR.W           R1, [R6,#0xD4]
BA878:  ADD             R0, R9
BA87A:  LDRSH.W         R1, [R10,R1,LSL#1]
BA87E:  CMP             R1, #0
BA880:  IT MI
BA882:  NEGMI           R1, R1
BA884:  LDR.W           R9, [R6,#0x124]
BA888:  ADD             R0, R1
BA88A:  LDR.W           R1, [R6,#0xD8]
BA88E:  LDRSH.W         R1, [R10,R1,LSL#1]
BA892:  CMP             R1, #0
BA894:  IT MI
BA896:  NEGMI           R1, R1
BA898:  ADD             R0, R1
BA89A:  LDR.W           R1, [R6,#0xDC]
BA89E:  LDRSH.W         R1, [R10,R1,LSL#1]
BA8A2:  CMP             R1, #0
BA8A4:  IT MI
BA8A6:  NEGMI           R1, R1
BA8A8:  ADD             R0, R1
BA8AA:  LDR.W           R1, [R6,#0xE0]
BA8AE:  LDRSH.W         R1, [R10,R1,LSL#1]
BA8B2:  CMP             R1, #0
BA8B4:  IT MI
BA8B6:  NEGMI           R1, R1
BA8B8:  ADD             R0, R1
BA8BA:  LDR.W           R1, [R6,#0xE4]
BA8BE:  LDRSH.W         R1, [R10,R1,LSL#1]
BA8C2:  CMP             R1, #0
BA8C4:  IT MI
BA8C6:  NEGMI           R1, R1
BA8C8:  ADD             R0, R1
BA8CA:  LDR.W           R1, [R6,#0xE8]
BA8CE:  LDRSH.W         R1, [R10,R1,LSL#1]
BA8D2:  CMP             R1, #0
BA8D4:  IT MI
BA8D6:  NEGMI           R1, R1
BA8D8:  ADD             R0, R1
BA8DA:  LDR.W           R1, [R6,#0xEC]
BA8DE:  LDRSH.W         R1, [R10,R1,LSL#1]
BA8E2:  CMP             R1, #0
BA8E4:  IT MI
BA8E6:  NEGMI           R1, R1
BA8E8:  ADD             R0, R1
BA8EA:  LDR.W           R1, [R6,#0xF0]
BA8EE:  LDRSH.W         R1, [R10,R1,LSL#1]
BA8F2:  CMP             R1, #0
BA8F4:  IT MI
BA8F6:  NEGMI           R1, R1
BA8F8:  ADD             R0, R1
BA8FA:  LDR.W           R1, [R6,#0xF4]
BA8FE:  LDRSH.W         R1, [R10,R1,LSL#1]
BA902:  CMP             R1, #0
BA904:  IT MI
BA906:  NEGMI           R1, R1
BA908:  ADD             R0, R1
BA90A:  LDR.W           R1, [R6,#0xF8]
BA90E:  LDRSH.W         R1, [R10,R1,LSL#1]
BA912:  CMP             R1, #0
BA914:  IT MI
BA916:  NEGMI           R1, R1
BA918:  ADD             R0, R1
BA91A:  LDR.W           R1, [R6,#0xFC]
BA91E:  LDRSH.W         R1, [R10,R1,LSL#1]
BA922:  CMP             R1, #0
BA924:  IT MI
BA926:  NEGMI           R1, R1
BA928:  ADD             R0, R1
BA92A:  LDR.W           R1, [R6,#0x100]
BA92E:  LDRSH.W         R1, [R10,R1,LSL#1]
BA932:  CMP             R1, #0
BA934:  IT MI
BA936:  NEGMI           R1, R1
BA938:  ADD             R0, R1
BA93A:  LDR.W           R1, [R6,#0x104]
BA93E:  LDRSH.W         R1, [R10,R1,LSL#1]
BA942:  CMP             R1, #0
BA944:  IT MI
BA946:  NEGMI           R1, R1
BA948:  ADD             R0, R1
BA94A:  LDR.W           R1, [R6,#0x108]
BA94E:  LDRSH.W         R1, [R10,R1,LSL#1]
BA952:  CMP             R1, #0
BA954:  IT MI
BA956:  NEGMI           R1, R1
BA958:  LDR.W           R2, [R6,#0x10C]
BA95C:  ADD             R0, R1
BA95E:  LDR.W           R1, [R6,#0x110]
BA962:  LDRSH.W         R2, [R10,R2,LSL#1]
BA966:  LDRSH.W         R1, [R10,R1,LSL#1]
BA96A:  CMP             R2, #0
BA96C:  IT MI
BA96E:  NEGMI           R2, R2
BA970:  CMP             R1, #0
BA972:  IT MI
BA974:  NEGMI           R1, R1
BA976:  ADD             R0, R2
BA978:  CMP             R5, #0
BA97A:  ADD             R0, R1
BA97C:  IT MI
BA97E:  NEGMI           R5, R5
BA980:  CMP             R3, #0
BA982:  IT MI
BA984:  NEGMI           R3, R3
BA986:  ADD             R0, R5
BA988:  CMP             R4, #0
BA98A:  ADD             R0, R3
BA98C:  IT MI
BA98E:  NEGMI           R4, R4
BA990:  CMP.W           R12, #0
BA994:  IT MI
BA996:  RSBMI.W         R12, R12, #0
BA99A:  ADD             R0, R4
BA99C:  CMP.W           LR, #0
BA9A0:  ADD             R0, R12
BA9A2:  IT MI
BA9A4:  RSBMI.W         LR, LR, #0
BA9A8:  MOVW            R1, #0xFFFF
BA9AC:  ADD             R0, LR
BA9AE:  ADD.W           R0, R0, #0x1000
BA9B2:  CMP             R0, R1
BA9B4:  BGE.W           loc_BA7F6
BA9B8:  LDR.W           R0, [R6,#0xBC]
BA9BC:  LDR             R0, [R0]
BA9BE:  SUB             SP, SP, #8
BA9C0:  MOVS            R1, #0x18
BA9C2:  STRD.W          R1, R0, [SP,#0x988+var_988]
BA9C6:  LDR.W           R0, [R6,#0xC4]
BA9CA:  LDR.W           R4, [R6,#0x90]
BA9CE:  LDR             R5, [R6,#0x30]
BA9D0:  ADD.W           R0, R0, R0,LSL#1
BA9D4:  LDR.W           R3, [R6,#0x9C]
BA9D8:  MOV             R2, R4
BA9DA:  ADD.W           R1, R10, R0,LSL#4
BA9DE:  MOV             R0, R5
BA9E0:  STR.W           R1, [R6,#0x120]
BA9E4:  BLX             j_celt_fir_c
BA9E8:  ADD             SP, SP, #8
BA9EA:  LDR             R2, [R6,#0x14]; n
BA9EC:  MOV             R0, R5; dest
BA9EE:  MOV             R1, R4; src
BA9F0:  BLX             j_memcpy
BA9F4:  LDR.W           LR, [R6,#0xAC]
BA9F8:  MOVS            R0, #0
BA9FA:  CMP.W           LR, #1
BA9FE:  BLT             loc_BAA2C
BAA00:  LDR             R1, [R6,#0x10]
BAA02:  MOVS            R2, #0
BAA04:  LDR.W           R12, [R6,#0x8C]
BAA08:  MOV.W           R10, #0x8000
BAA0C:  LDR             R4, [R6,#0x2C]
BAA0E:  LDRSH.W         R3, [R4,R1,LSL#1]
BAA12:  SXTH            R5, R0
BAA14:  ADDS            R1, #1
BAA16:  CMP             R5, R3
BAA18:  SXTH            R5, R2
BAA1A:  IT GE
BAA1C:  MOVGE           R0, R3
BAA1E:  CMP             R5, R3
BAA20:  IT LE
BAA22:  MOVLE           R2, R3
BAA24:  ADDS            R3, R1, #1
BAA26:  BNE             loc_BAA0E
BAA28:  SXTH            R1, R2
BAA2A:  B               loc_BAA38
BAA2C:  MOVS            R1, #0
BAA2E:  LDR.W           R12, [R6,#0x8C]
BAA32:  LDR             R4, [R6,#0x2C]
BAA34:  MOV.W           R10, #0x8000
BAA38:  SXTH            R0, R0
BAA3A:  NEGS            R0, R0
BAA3C:  CMP             R1, R0
BAA3E:  IT GT
BAA40:  MOVGT           R0, R1
BAA42:  CMP             R0, #1
BAA44:  BLT             loc_BAA52
BAA46:  CLZ.W           R0, R0
BAA4A:  RSB.W           R0, R0, #0x1F
BAA4E:  CMP             R0, #0xA
BAA50:  BGE             loc_BAA88
BAA52:  MOVS            R0, #0
BAA54:  CMP.W           LR, #1
BAA58:  BLT             loc_BAADC
BAA5A:  LDR.W           LR, [R6,#0xC]
BAA5E:  MOVS            R1, #1
BAA60:  MOVS            R3, #0
BAA62:  MOVS            R2, #1
BAA64:  LDRSH.W         R5, [R12,R3,LSL#1]
BAA68:  LDRSH.W         R4, [R9,R3,LSL#1]
BAA6C:  ADDS            R3, #1
BAA6E:  CMP             R3, LR
BAA70:  SMULBB.W        R5, R5, R5
BAA74:  SMULBB.W        R4, R4, R4
BAA78:  LSR.W           R5, R5, R0
BAA7C:  ADD             R1, R5
BAA7E:  LSR.W           R5, R4, R0
BAA82:  ADD             R2, R5
BAA84:  BLT             loc_BAA64
BAA86:  B               loc_BAAE0
BAA88:  MOVS            R0, #0
BAA8A:  CMP.W           LR, #1
BAA8E:  BLT             loc_BAAB2
BAA90:  LDR             R1, [R6,#0x10]
BAA92:  MOVS            R2, #0
BAA94:  LDRSH.W         R3, [R4,R1,LSL#1]
BAA98:  SXTH            R5, R0
BAA9A:  ADDS            R1, #1
BAA9C:  CMP             R5, R3
BAA9E:  SXTH            R5, R2
BAAA0:  IT GE
BAAA2:  MOVGE           R0, R3
BAAA4:  CMP             R5, R3
BAAA6:  IT LE
BAAA8:  MOVLE           R2, R3
BAAAA:  ADDS            R3, R1, #1
BAAAC:  BNE             loc_BAA94
BAAAE:  SXTH            R1, R2
BAAB0:  B               loc_BAAB4
BAAB2:  MOVS            R1, #0
BAAB4:  SXTH            R0, R0
BAAB6:  NEGS            R2, R0
BAAB8:  CMP             R1, R2
BAABA:  IT GT
BAABC:  MOVGT           R2, R1
BAABE:  MOV             R1, #0xFFFFFFEC
BAAC2:  CLZ.W           R0, R2
BAAC6:  CMP             R2, #1
BAAC8:  RSB.W           R0, R0, #0x1F
BAACC:  ADD.W           R0, R1, R0,LSL#1
BAAD0:  IT LT
BAAD2:  MOVLT           R0, #0xFFFFFFEC
BAAD6:  CMP.W           LR, #1
BAADA:  BGE             loc_BAA5A
BAADC:  MOVS            R2, #1
BAADE:  MOVS            R1, #1
BAAE0:  CMP             R2, R1
BAAE2:  IT GE
BAAE4:  MOVGE           R2, R1
BAAE6:  ASRS            R0, R2, #1
BAAE8:  BLX             j_frac_div32
BAAEC:  BLX             j_celt_sqrt
BAAF0:  MOV             R9, R0
BAAF2:  LDR.W           R0, [R6,#0xC0]
BAAF6:  LDR.W           R5, [R6,#0x13C]
BAAFA:  LDR             R2, [R6,#0x18]; n
BAAFC:  ADD.W           R1, R5, R0,LSL#2; src
BAB00:  MOV             R0, R5; dest
BAB02:  BLX             j_memmove
BAB06:  LDR.W           R4, [R6,#0xB4]
BAB0A:  CMP             R4, #1
BAB0C:  BLT             loc_BAB84
BAB0E:  LDR             R0, [R6,#8]
BAB10:  SXTH.W          R12, R9
BAB14:  LDR.W           R1, [R6,#0xB0]
BAB18:  MOVS            R2, #0
BAB1A:  LDR.W           LR, [R6,#0xAC]
BAB1E:  MOV.W           R9, #0
BAB22:  SMULBB.W        R0, R12, R0
BAB26:  ADD.W           R1, R5, R1,LSL#2
BAB2A:  LSRS            R3, R0, #0xF
BAB2C:  MOV             R0, R4
BAB2E:  CMP             R2, LR
BAB30:  ITTTT GE
BAB32:  SXTHGE          R3, R3
BAB34:  SMULBBGE.W      R3, R12, R3
BAB38:  SUBGE.W         R2, R2, LR
BAB3C:  LSRGE           R3, R3, #0xF
BAB3E:  LDR.W           R4, [R6,#0x12C]
BAB42:  LDR.W           R5, [R6,#0x134]
BAB46:  SUBS            R0, #1
BAB48:  ADD             R4, R2
BAB4A:  LDRSH.W         R4, [R5,R4,LSL#1]
BAB4E:  SXTH            R5, R3
BAB50:  SMULBB.W        R5, R4, R5
BAB54:  MOV.W           R5, R5,ASR#15
BAB58:  MOV.W           R5, R5,LSL#12
BAB5C:  STR.W           R5, [R1],#4
BAB60:  LDR.W           R4, [R6,#0x130]
BAB64:  ADD.W           R5, R4, R2
BAB68:  LDR.W           R4, [R6,#0x13C]
BAB6C:  ADD.W           R2, R2, #1
BAB70:  LDR.W           R5, [R4,R5,LSL#2]
BAB74:  ADD.W           R5, R10, R5,LSL#4
BAB78:  SMULTT.W        R5, R5, R5
BAB7C:  ADD.W           R9, R9, R5,LSR#10
BAB80:  BNE             loc_BAB2E
BAB82:  B               loc_BAB88
BAB84:  MOV.W           R9, #0
BAB88:  LDR.W           R5, [R6,#0x13C]
BAB8C:  LDR             R0, [R6,#0x38]
BAB8E:  LDR.W           R0, [R5,R0,LSL#2]
BAB92:  ADD.W           R0, R0, #0x800
BAB96:  LSRS            R0, R0, #0xC
BAB98:  STRH.W          R0, [R6,#0x158]
BAB9C:  LDR             R0, [R6,#0x3C]
BAB9E:  LDR.W           R0, [R5,R0,LSL#2]
BABA2:  ADD.W           R0, R0, #0x800
BABA6:  LSRS            R0, R0, #0xC
BABA8:  STRH.W          R0, [R6,#0x15A]
BABAC:  LDR             R0, [R6,#0x40]
BABAE:  LDR.W           R0, [R5,R0,LSL#2]
BABB2:  ADD.W           R0, R0, #0x800
BABB6:  LSRS            R0, R0, #0xC
BABB8:  STRH.W          R0, [R6,#0x15C]
BABBC:  LDR             R0, [R6,#0x44]
BABBE:  LDR.W           R0, [R5,R0,LSL#2]
BABC2:  ADD.W           R0, R0, #0x800
BABC6:  LSRS            R0, R0, #0xC
BABC8:  STRH.W          R0, [R6,#0x15E]
BABCC:  LDR             R0, [R6,#0x48]
BABCE:  LDR.W           R0, [R5,R0,LSL#2]
BABD2:  ADD.W           R0, R0, #0x800
BABD6:  LSRS            R0, R0, #0xC
BABD8:  STRH.W          R0, [R6,#0x160]
BABDC:  LDR             R0, [R6,#0x4C]
BABDE:  LDR.W           R0, [R5,R0,LSL#2]
BABE2:  ADD.W           R0, R0, #0x800
BABE6:  LSRS            R0, R0, #0xC
BABE8:  STRH.W          R0, [R6,#0x162]
BABEC:  LDR             R0, [R6,#0x50]
BABEE:  LDR.W           R0, [R5,R0,LSL#2]
BABF2:  ADD.W           R0, R0, #0x800
BABF6:  LSRS            R0, R0, #0xC
BABF8:  STRH.W          R0, [R6,#0x164]
BABFC:  LDR             R0, [R6,#0x1C]
BABFE:  LDR.W           R0, [R5,R0,LSL#2]
BAC02:  ADD.W           R0, R0, #0x800
BAC06:  LSRS            R0, R0, #0xC
BAC08:  STRH.W          R0, [R6,#0x166]
BAC0C:  LDR             R0, [R6,#0x54]
BAC0E:  LDR.W           R0, [R5,R0,LSL#2]
BAC12:  ADD.W           R0, R0, #0x800
BAC16:  LSRS            R0, R0, #0xC
BAC18:  STRH.W          R0, [R6,#0x168]
BAC1C:  LDR             R0, [R6,#0x58]
BAC1E:  LDR.W           R0, [R5,R0,LSL#2]
BAC22:  ADD.W           R0, R0, #0x800
BAC26:  LSRS            R0, R0, #0xC
BAC28:  STRH.W          R0, [R6,#0x16A]
BAC2C:  LDR             R0, [R6,#0x5C]
BAC2E:  LDR.W           R0, [R5,R0,LSL#2]
BAC32:  ADD.W           R0, R0, #0x800
BAC36:  LSRS            R0, R0, #0xC
BAC38:  STRH.W          R0, [R6,#0x16C]
BAC3C:  LDR             R0, [R6,#0x60]
BAC3E:  LDR.W           R0, [R5,R0,LSL#2]
BAC42:  ADD.W           R0, R0, #0x800
BAC46:  LSRS            R0, R0, #0xC
BAC48:  STRH.W          R0, [R6,#0x16E]
BAC4C:  LDR             R0, [R6,#0x64]
BAC4E:  LDR.W           R0, [R5,R0,LSL#2]
BAC52:  ADD.W           R0, R0, #0x800
BAC56:  LSRS            R0, R0, #0xC
BAC58:  STRH.W          R0, [R6,#0x170]
BAC5C:  LDR             R0, [R6,#0x68]
BAC5E:  LDR.W           R0, [R5,R0,LSL#2]
BAC62:  ADD.W           R0, R0, #0x800
BAC66:  LSRS            R0, R0, #0xC
BAC68:  STRH.W          R0, [R6,#0x172]
BAC6C:  LDR             R0, [R6,#0x6C]
BAC6E:  LDR.W           R0, [R5,R0,LSL#2]
BAC72:  ADD.W           R0, R0, #0x800
BAC76:  LSRS            R0, R0, #0xC
BAC78:  STRH.W          R0, [R6,#0x174]
BAC7C:  LDR             R0, [R6,#0x20]
BAC7E:  LDR.W           R0, [R5,R0,LSL#2]
BAC82:  ADD.W           R0, R0, #0x800
BAC86:  LSRS            R0, R0, #0xC
BAC88:  STRH.W          R0, [R6,#0x176]
BAC8C:  LDR             R0, [R6,#0x70]
BAC8E:  LDR.W           R0, [R5,R0,LSL#2]
BAC92:  ADD.W           R0, R0, #0x800
BAC96:  LSRS            R0, R0, #0xC
BAC98:  STRH.W          R0, [R6,#0x178]
BAC9C:  LDR             R0, [R6,#0x74]
BAC9E:  LDR.W           R0, [R5,R0,LSL#2]
BACA2:  ADD.W           R0, R0, #0x800
BACA6:  LSRS            R0, R0, #0xC
BACA8:  STRH.W          R0, [R6,#0x17A]
BACAC:  LDR             R0, [R6,#0x78]
BACAE:  LDR.W           R0, [R5,R0,LSL#2]
BACB2:  ADD.W           R0, R0, #0x800
BACB6:  LSRS            R0, R0, #0xC
BACB8:  STRH.W          R0, [R6,#0x17C]
BACBC:  LDR             R0, [R6,#0x7C]
BACBE:  LDR.W           R0, [R5,R0,LSL#2]
BACC2:  ADD.W           R0, R0, #0x800
BACC6:  LSRS            R0, R0, #0xC
BACC8:  STRH.W          R0, [R6,#0x17E]
BACCC:  LDR.W           R0, [R6,#0x80]
BACD0:  LDR.W           R0, [R5,R0,LSL#2]
BACD4:  ADD.W           R0, R0, #0x800
BACD8:  LSRS            R0, R0, #0xC
BACDA:  STRH.W          R0, [R6,#0x180]
BACDE:  LDR.W           R0, [R6,#0x84]
BACE2:  LDR.W           R0, [R5,R0,LSL#2]
BACE6:  ADD.W           R0, R0, #0x800
BACEA:  LSRS            R0, R0, #0xC
BACEC:  STRH.W          R0, [R6,#0x182]
BACF0:  LDR.W           R0, [R6,#0x88]
BACF4:  LDR.W           R0, [R5,R0,LSL#2]
BACF8:  ADD.W           R0, R0, #0x800
BACFC:  LSRS            R0, R0, #0xC
BACFE:  STRH.W          R0, [R6,#0x184]
BAD02:  LDR             R0, [R6,#0x24]
BAD04:  LDR.W           R0, [R5,R0,LSL#2]
BAD08:  ADD.W           R0, R0, #0x800
BAD0C:  LSRS            R0, R0, #0xC
BAD0E:  STRH.W          R0, [R6,#0x186]
BAD12:  LDR.W           R0, [R6,#0xBC]
BAD16:  LDR             R0, [R0]
BAD18:  SUB             SP, SP, #0x10
BAD1A:  MOVS            R1, #0x18
BAD1C:  STR             R1, [SP,#0x990+var_990]
BAD1E:  ADD.W           R1, R6, #0x158
BAD22:  STRD.W          R1, R0, [SP,#0x990+var_98C]
BAD26:  ADD.W           R1, R5, #0x2000
BAD2A:  LDR.W           R0, [R6,#0xA0]
BAD2E:  LDR.W           R4, [R6,#0xB4]
BAD32:  STR.W           R1, [R6,#0x128]
BAD36:  ADD.W           R0, R1, R0,LSL#2
BAD3A:  LDR.W           R1, [R6,#0x120]
BAD3E:  MOV             R3, R4
BAD40:  MOV             R2, R0
BAD42:  BLX             j_celt_iir
BAD46:  ADD             SP, SP, #0x10
BAD48:  CMP             R4, #1
BAD4A:  BLT.W           loc_BAE5C
BAD4E:  LDR.W           R0, [R6,#0xB0]
BAD52:  MOV             R2, R4
BAD54:  ADD.W           R0, R5, R0,LSL#2
BAD58:  MOV             R5, #0xEE1E5D00
BAD60:  MOV             R12, R5
BAD62:  MOVW            R5, #0xA300
BAD66:  MOV             R1, R0
BAD68:  MOVT            R5, #0x11E1
BAD6C:  LDR             R3, [R1]
BAD6E:  CMP             R3, R12
BAD70:  IT LE
BAD72:  MOVLE           R3, R12
BAD74:  CMP             R3, R5
BAD76:  IT GE
BAD78:  MOVGE           R3, R5
BAD7A:  SUBS            R2, #1
BAD7C:  STR.W           R3, [R1],#4
BAD80:  BNE             loc_BAD6C
BAD82:  MOVS            R1, #0
BAD84:  CMP             R4, #1
BAD86:  BLT.W           loc_BA640
BAD8A:  LDR.W           R5, [R6,#0x13C]
BAD8E:  MOV             R2, R4
BAD90:  LDR.W           R3, [R0],#4
BAD94:  SUBS            R2, #1
BAD96:  ADD.W           R3, R10, R3,LSL#4
BAD9A:  SMULTT.W        R3, R3, R3
BAD9E:  ADD.W           R1, R1, R3,LSR#10
BADA2:  BNE             loc_BAD90
BADA4:  CMP.W           R9, R1,ASR#2
BADA8:  BLE             loc_BAE64
BADAA:  CMP             R9, R1
BADAC:  MOV.W           R10, #0x2000
BADB0:  BGE             loc_BAE76
BADB2:  MOVS            R0, #1
BADB4:  ADDS            R1, #1
BADB6:  ADD.W           R0, R0, R9,ASR#1
BADBA:  BLX             j_frac_div32
BADBE:  BLX             j_celt_sqrt
BADC2:  LDR.W           R1, [R6,#0xB8]
BADC6:  MOVW            R9, #0x7FFF
BADCA:  CMP             R1, #1
BADCC:  BLT             loc_BAE14
BADCE:  LDR.W           R1, [R6,#0xB0]
BADD2:  LDR.W           R2, [R6,#0x13C]
BADD6:  LDR.W           R3, [R6,#0xB8]
BADDA:  ADD.W           R1, R2, R1,LSL#2
BADDE:  SUB.W           R2, R9, R0
BADE2:  LDR.W           R5, [R6,#0xA8]
BADE6:  SXTH.W          R12, R2
BADEA:  LDRSH.W         R4, [R5],#2
BADEE:  SUBS            R3, #1
BADF0:  LDR             R2, [R1]
BADF2:  SMULBB.W        R4, R12, R4
BADF6:  SUB.W           R4, R9, R4,LSR#15
BADFA:  SMULTB.W        LR, R2, R4
BADFE:  SXTH            R4, R4
BAE00:  UXTH            R2, R2
BAE02:  MUL.W           R2, R4, R2
BAE06:  MOV.W           R4, LR,LSL#1
BAE0A:  ADD.W           R2, R4, R2,ASR#15
BAE0E:  STR.W           R2, [R1],#4
BAE12:  BNE             loc_BADEA
BAE14:  LDR.W           R1, [R6,#0xC0]
BAE18:  LDR.W           LR, [R6,#0xB4]
BAE1C:  LDR.W           R11, [R6,#0x13C]
BAE20:  CMP             R1, #1
BAE22:  BLT             loc_BAE76
BAE24:  LDR.W           R1, [R6,#0xA0]
BAE28:  SXTH            R2, R0
BAE2A:  LDR.W           R3, [R6,#0xB8]
BAE2E:  LSLS            R0, R0, #0x10
BAE30:  ASRS            R0, R0, #0xF
BAE32:  ADD.W           R12, R11, R1,LSL#2
BAE36:  ADD.W           R5, R12, R3,LSL#2
BAE3A:  ADDS            R3, #1
BAE3C:  CMP             R3, LR
BAE3E:  LDR.W           R4, [R5,R10]
BAE42:  UXTH            R1, R4
BAE44:  MOV.W           R4, R4,ASR#16
BAE48:  MUL.W           R1, R2, R1
BAE4C:  MUL.W           R4, R0, R4
BAE50:  ADD.W           R1, R4, R1,ASR#15
BAE54:  STR.W           R1, [R5,R10]
BAE58:  BLT             loc_BAE36
BAE5A:  B               loc_BAE76
BAE5C:  MOVS            R1, #0
BAE5E:  CMP.W           R9, R1,ASR#2
BAE62:  BGT             loc_BADAA
BAE64:  CMP             R4, #1
BAE66:  BLT             loc_BAE76
BAE68:  LDR.W           R0, [R6,#0xB0]
BAE6C:  LDR             R1, [R6]; n
BAE6E:  ADD.W           R0, R5, R0,LSL#2; int
BAE72:  BLX             sub_10967C
BAE76:  LDR.W           R0, [R6,#0x138]
BAE7A:  MOV             R3, R0
BAE7C:  LDR             R0, [R3,#0x24]
BAE7E:  LDR             R2, [R3,#0x3C]
BAE80:  LDR             R1, [R3,#0x48]
BAE82:  LDRH.W          R3, [R3,#0x44]
BAE86:  SUB             SP, SP, #0x20 ; ' '
BAE88:  LDR.W           R5, [R6,#0xB8]
BAE8C:  NEGS            R3, R3
BAE8E:  SXTH            R3, R3
BAE90:  MOV             R4, R5
BAE92:  STRD.W          R4, R3, [SP,#0x9A0+var_9A0]
BAE96:  STRD.W          R3, R1, [SP,#0x9A0+var_998]
BAE9A:  MOV             R3, R2
BAE9C:  STR             R1, [SP,#0x9A0+var_990]
BAE9E:  MOVS            R1, #0
BAEA0:  STRD.W          R1, R1, [SP,#0x9A0+var_98C]
BAEA4:  LDR.W           R9, [R6,#0x98]
BAEA8:  LDR.W           R1, [R6,#0x128]
BAEAC:  STR             R0, [SP,#0x9A0+var_984]
BAEAE:  MOV             R0, R9
BAEB0:  BLX             j_comb_filter
BAEB4:  ADD             SP, SP, #0x20 ; ' '
BAEB6:  LDR.W           R11, [R6,#0x34]
BAEBA:  CMP             R4, #2
BAEBC:  LDR.W           R10, [R6,#0xA8]
BAEC0:  BLT             loc_BAF06
BAEC2:  LDR             R1, [R6,#4]
BAEC4:  MOVS            R0, #0
BAEC6:  LDR.W           R3, [R9,R0,LSL#2]
BAECA:  LDR.W           R12, [R9,R1,LSL#1]
BAECE:  LDRSH.W         R5, [R10,R1]
BAED2:  LDRSH.W         R4, [R10,R0,LSL#1]
BAED6:  UXTH            R2, R3
BAED8:  MUL.W           LR, R2, R5
BAEDC:  UXTH.W          R2, R12
BAEE0:  SUBS            R1, #2
BAEE2:  MULS            R2, R4
BAEE4:  SMULTB.W        R3, R3, R5
BAEE8:  SMLATB.W        R3, R12, R4, R3
BAEEC:  MOV.W           R5, LR,ASR#15
BAEF0:  ADD.W           R2, R5, R2,ASR#15
BAEF4:  ADD.W           R2, R2, R3,LSL#1
BAEF8:  LDR.W           R3, [R6,#0x128]
BAEFC:  STR.W           R2, [R3,R0,LSL#2]
BAF00:  ADDS            R0, #1
BAF02:  CMP             R11, R0
BAF04:  BNE             loc_BAEC6
BAF06:  LDR.W           R1, [R6,#0xC4]
BAF0A:  ADD.W           R8, R8, #0x30 ; '0'
BAF0E:  LDR.W           R0, [R6,#0xC8]
BAF12:  LDR.W           R3, [R6,#0x94]
BAF16:  ADDS            R1, #1
BAF18:  LDR.W           R10, [R6,#0x28]
BAF1C:  CMP             R1, R0
BAF1E:  BLT.W           loc_BA650
BAF22:  B.W             loc_BA400
