; =========================================================
; Game Engine Function: alcCreateContext
; Address            : 0x1BE188 - 0x1BF0DC
; =========================================================

1BE188:  PUSH            {R4-R11,LR}
1BE18C:  ADD             R11, SP, #0x1C
1BE190:  SUB             SP, SP, #0x2C
1BE194:  MOV             R6, R0
1BE198:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BE1AC)
1BE19C:  MOV             R5, R1
1BE1A0:  LDR             R1, =(unk_3827A0 - 0x1BE1B8)
1BE1A4:  LDR             R0, [PC,R0]; __stack_chk_guard
1BE1A8:  LDR             R0, [R0]
1BE1AC:  STR             R0, [R11,#var_20]
1BE1B0:  ADD             R0, PC, R1; unk_3827A0 ; mutex
1BE1B4:  BL              j_EnterCriticalSection
1BE1B8:  CMP             R6, #0
1BE1BC:  BEQ             loc_1BE2A0
1BE1C0:  LDR             R0, =(unk_3827A0 - 0x1BE1CC)
1BE1C4:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BE1C8:  BL              j_EnterCriticalSection
1BE1CC:  LDR             R0, =(dword_382838 - 0x1BE1D8)
1BE1D0:  ADD             R1, PC, R0; dword_382838
1BE1D4:  MOV             R0, #0x2895C
1BE1DC:  LDR             R4, [R1]
1BE1E0:  CMP             R4, #0
1BE1E4:  ADDNE           R1, R4, R0
1BE1E8:  CMPNE           R4, R6
1BE1EC:  BNE             loc_1BE1DC
1BE1F0:  CMP             R4, #0
1BE1F4:  BEQ             loc_1BE294
1BE1F8:  DMB             ISH
1BE1FC:  LDREX           R0, [R4]
1BE200:  ADD             R3, R0, #1
1BE204:  STREX           R0, R3, [R4]
1BE208:  CMP             R0, #0
1BE20C:  BNE             loc_1BE1FC
1BE210:  LDR             R0, =(LogLevel_ptr - 0x1BE220)
1BE214:  DMB             ISH
1BE218:  LDR             R0, [PC,R0]; LogLevel
1BE21C:  LDR             R0, [R0]
1BE220:  CMP             R0, #4
1BE224:  BCC             loc_1BE240
1BE228:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BE23C); "ALCdevice_IncRef" ...
1BE22C:  MOV             R2, R4
1BE230:  LDR             R1, =(aPIncreasingRef - 0x1BE240); "%p increasing refcount to %u\n" ...
1BE234:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BE238:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BE23C:  BL              j_al_print
1BE240:  LDR             R0, =(unk_3827A0 - 0x1BE24C)
1BE244:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BE248:  BL              j_LeaveCriticalSection
1BE24C:  LDRB            R0, [R4,#5]
1BE250:  CMP             R0, #0
1BE254:  BEQ             loc_1BE2F8
1BE258:  LDR             R0, =(unk_3827A0 - 0x1BE264)
1BE25C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BE260:  BL              j_LeaveCriticalSection
1BE264:  LDR             R0, =(byte_382798 - 0x1BE270)
1BE268:  LDRB            R0, [PC,R0]; byte_382798
1BE26C:  CMP             R0, #0
1BE270:  BEQ             loc_1BE27C
1BE274:  MOV             R0, #5; sig
1BE278:  BL              raise
1BE27C:  MOVW            R0, #0xA001
1BE280:  STR             R0, [R4,#0x24]
1BE284:  MOV             R0, R4
1BE288:  BL              j_ALCdevice_DecRef
1BE28C:  MOV             R5, #0
1BE290:  B               loc_1BE2D4
1BE294:  LDR             R0, =(unk_3827A0 - 0x1BE2A0)
1BE298:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BE29C:  BL              j_LeaveCriticalSection
1BE2A0:  LDR             R0, =(unk_3827A0 - 0x1BE2AC)
1BE2A4:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BE2A8:  BL              j_LeaveCriticalSection
1BE2AC:  LDR             R0, =(byte_382798 - 0x1BE2B8)
1BE2B0:  LDRB            R0, [PC,R0]; byte_382798
1BE2B4:  CMP             R0, #0
1BE2B8:  BEQ             loc_1BE2C4
1BE2BC:  MOV             R0, #5; sig
1BE2C0:  BL              raise
1BE2C4:  LDR             R0, =(dword_38283C - 0x1BE2D8)
1BE2C8:  MOVW            R1, #0xA001
1BE2CC:  MOV             R5, #0
1BE2D0:  STR             R1, [PC,R0]; dword_38283C
1BE2D4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1BE2E4)
1BE2D8:  LDR             R1, [R11,#var_20]
1BE2DC:  LDR             R0, [PC,R0]; __stack_chk_guard
1BE2E0:  LDR             R0, [R0]
1BE2E4:  SUBS            R0, R0, R1
1BE2E8:  MOVEQ           R0, R5
1BE2EC:  SUBEQ           SP, R11, #0x1C
1BE2F0:  POPEQ           {R4-R11,PC}
1BE2F4:  BL              __stack_chk_fail
1BE2F8:  LDRB            R0, [R4,#4]
1BE2FC:  CMP             R0, #0
1BE300:  BEQ             loc_1BE258
1BE304:  LDRB            R0, [R4,#6]
1BE308:  MOV             R1, #0
1BE30C:  STR             R1, [R4,#0x24]
1BE310:  CMP             R0, #0
1BE314:  BEQ             loc_1BE350
1BE318:  CMP             R5, #0
1BE31C:  LDRNE           R0, [R5]
1BE320:  CMPNE           R0, #0
1BE324:  BNE             loc_1BE360
1BE328:  LDR             R0, =(LogLevel_ptr - 0x1BE338)
1BE32C:  MOVW            R5, #0xA004
1BE330:  LDR             R0, [PC,R0]; LogLevel
1BE334:  LDR             R0, [R0]
1BE338:  CMP             R0, #2
1BE33C:  BCC             loc_1BF014
1BE340:  ADR             R0, aUpdatedevicepa; "UpdateDeviceParams"
1BE344:  ADR             R1, aMissingAttribu; "Missing attributes for loopback device"...
1BE348:  BL              j_al_print
1BE34C:  B               loc_1BF014
1BE350:  CMP             R5, #0
1BE354:  LDRNE           R0, [R5]
1BE358:  CMPNE           R0, #0
1BE35C:  BEQ             loc_1BE5AC
1BE360:  LDR             R0, [R4,#0xB4]
1BE364:  CMP             R0, #0
1BE368:  BGE             loc_1BE388
1BE36C:  MOV             R0, #0x28954
1BE374:  LDR             R0, [R4,R0]
1BE378:  LDR             R1, [R0,#0xC]
1BE37C:  MOV             R0, R4
1BE380:  BLX             R1
1BE384:  LDR             R0, [R4,#0xB4]
1BE388:  LDR             R1, [R4,#0xC]
1BE38C:  BIC             LR, R0, #0x80000000
1BE390:  STR             LR, [R4,#0xB4]
1BE394:  ADD             R2, R5, #4
1BE398:  STR             R1, [SP,#0x48+var_24]
1BE39C:  MOVW            R10, #0x198F
1BE3A0:  LDR             R0, [R4,#0x30]
1BE3A4:  MOVW            R3, #0x1007
1BE3A8:  LDR             R6, [R4,#0x18]
1BE3AC:  MOVW            R12, #0x1991
1BE3B0:  LDR             R7, [R4,#0x1C]
1BE3B4:  STR             R0, [SP,#0x48+var_2C]
1BE3B8:  LDR             R9, [R4,#0x34]
1BE3BC:  LDR             R1, [R4,#0x38]
1BE3C0:  STR             R1, [SP,#0x48+var_28]
1BE3C4:  MOV             R1, #0
1BE3C8:  B               loc_1BE3E0
1BE3CC:  ADD             R2, R2, #8
1BE3D0:  B               loc_1BE3E0
1BE3D4:  LDR             R0, [R2]
1BE3D8:  STR             R0, [SP,#0x48+var_28]
1BE3DC:  B               loc_1BE3CC
1BE3E0:  LDR             R8, [R2,#-4]
1BE3E4:  CMP             R8, R10
1BE3E8:  BLE             loc_1BE430
1BE3EC:  CMP             R8, R12
1BE3F0:  BEQ             loc_1BE460
1BE3F4:  MOVW            R0, #0x1990
1BE3F8:  CMP             R8, R0
1BE3FC:  BNE             loc_1BE4B8
1BE400:  LDRB            R5, [R4,#6]
1BE404:  CMP             R5, #0
1BE408:  BEQ             loc_1BE3CC
1BE40C:  LDR             R6, [R2]
1BE410:  SUB             R5, R6, #0x1500
1BE414:  CMP             R5, #6
1BE418:  BHI             loc_1BE528
1BE41C:  CMP             R5, #2
1BE420:  BEQ             loc_1BE528
1BE424:  ORR             R1, R1, #2
1BE428:  ADD             R2, R2, #8
1BE42C:  B               loc_1BE3E0
1BE430:  CMP             R8, R3
1BE434:  BNE             loc_1BE4A0
1BE438:  LDRB            R0, [R4,#6]
1BE43C:  LDR             R5, [R2]
1BE440:  CMP             R0, #0
1BE444:  STR             R5, [SP,#0x48+var_24]
1BE448:  BEQ             loc_1BE4AC
1BE44C:  CMP             R5, #0x1F40
1BE450:  BCC             loc_1BE528
1BE454:  ORR             R1, R1, #1
1BE458:  ADD             R2, R2, #8
1BE45C:  B               loc_1BE3E0
1BE460:  LDRB            R5, [R4,#6]
1BE464:  CMP             R5, #0
1BE468:  BEQ             loc_1BE3CC
1BE46C:  LDR             R7, [R2]
1BE470:  SUB             R5, R7, #0x1400
1BE474:  CMP             R5, #6
1BE478:  BHI             loc_1BE528
1BE47C:  BHI             loc_1BE528
1BE480:  MOV             R0, #1
1BE484:  MOV             R3, #0x4F ; 'O'
1BE488:  TST             R3, R0,LSL R5
1BE48C:  MOVW            R3, #0x1007
1BE490:  BEQ             loc_1BE528
1BE494:  ORR             R1, R1, #4
1BE498:  ADD             R2, R2, #8
1BE49C:  B               loc_1BE3E0
1BE4A0:  CMP             R8, #0
1BE4A4:  BNE             loc_1BE4B8
1BE4A8:  B               loc_1BE4F4
1BE4AC:  ORR             LR, LR, #2
1BE4B0:  STR             LR, [R4,#0xB4]
1BE4B4:  LDR             R8, [R2,#-4]
1BE4B8:  MOV             R0, #0x20003
1BE4C0:  CMP             R8, R0
1BE4C4:  BEQ             loc_1BE3D4
1BE4C8:  MOVW            R0, #0x1011
1BE4CC:  CMP             R8, R0
1BE4D0:  BNE             loc_1BE3CC
1BE4D4:  LDR             R9, [R2]
1BE4D8:  ADD             R2, R2, #8
1BE4DC:  LDR             R0, [R4,#0x28]
1BE4E0:  CMP             R9, R0
1BE4E4:  MOVHI           R9, R0
1BE4E8:  SUB             R0, R0, R9
1BE4EC:  STR             R0, [SP,#0x48+var_2C]
1BE4F0:  B               loc_1BE3E0
1BE4F4:  LDRB            R0, [R4,#6]
1BE4F8:  CMP             R0, #0
1BE4FC:  BEQ             loc_1BE530
1BE500:  CMP             R1, #7
1BE504:  BEQ             loc_1BE554
1BE508:  LDR             R0, =(LogLevel_ptr - 0x1BE514)
1BE50C:  LDR             R0, [PC,R0]; LogLevel
1BE510:  LDR             R0, [R0]
1BE514:  CMP             R0, #2
1BE518:  BCC             loc_1BE528
1BE51C:  ADR             R0, aUpdatedevicepa; "UpdateDeviceParams"
1BE520:  ADR             R1, aMissingFormatF; "Missing format for loopback device\n"
1BE524:  BL              j_al_print
1BE528:  MOVW            R5, #0xA004
1BE52C:  B               loc_1BF014
1BE530:  LDR             R0, =(aFrequency - 0x1BE540); "frequency" ...
1BE534:  ADD             R2, SP, #0x48+var_24
1BE538:  ADD             R1, PC, R0; "frequency"
1BE53C:  MOV             R0, #0
1BE540:  BL              j_ConfigValueUInt
1BE544:  LDR             R0, [SP,#0x48+var_24]
1BE548:  CMP             R0, #0x1F40
1BE54C:  MOVLS           R0, #0x1F40
1BE550:  STR             R0, [SP,#0x48+var_24]
1BE554:  LDR             R0, =(aSends - 0x1BE564); "sends" ...
1BE558:  ADD             R2, SP, #0x48+var_28
1BE55C:  ADD             R1, PC, R0; "sends"
1BE560:  MOV             R0, #0
1BE564:  BL              j_ConfigValueUInt
1BE568:  LDR             R0, [R4,#0x10]
1BE56C:  LDR             R3, [SP,#0x48+var_24]
1BE570:  LDR             R5, [SP,#0x48+var_28]
1BE574:  LDR             R2, [R4,#0xC]
1BE578:  UMULL           R0, R1, R3, R0
1BE57C:  STR             R6, [R4,#0x18]
1BE580:  STR             R7, [R4,#0x1C]
1BE584:  STR             R3, [R4,#0xC]
1BE588:  CMP             R5, #4
1BE58C:  LDR             R3, [SP,#0x48+var_2C]
1BE590:  STR             R3, [R4,#0x30]
1BE594:  MOV             R3, #0
1BE598:  MOVCS           R5, #4
1BE59C:  STR             R9, [R4,#0x34]
1BE5A0:  STR             R5, [R4,#0x38]
1BE5A4:  BL              sub_2217B4
1BE5A8:  STR             R0, [R4,#0x10]
1BE5AC:  LDR             R0, [R4,#0xB4]
1BE5B0:  CMP             R0, #0
1BE5B4:  BLT             loc_1BEDBC
1BE5B8:  ADD             R10, R4, #8
1BE5BC:  MOV             R0, R10; mutex
1BE5C0:  BL              j_EnterCriticalSection
1BE5C4:  LDR             R0, =(LogLevel_ptr - 0x1BE5D8)
1BE5C8:  LDR             R8, [R4,#0xC]
1BE5CC:  LDR             R9, [R4,#0x18]
1BE5D0:  LDR             R0, [PC,R0]; LogLevel
1BE5D4:  LDR             R0, [R0]
1BE5D8:  CMP             R0, #3
1BE5DC:  BCC             loc_1BE730
1BE5E0:  SUB             R0, R9, #0x1500; switch 7 cases
1BE5E4:  CMP             R0, #6
1BE5E8:  BHI             def_1BE600; jumptable 001BE600 default case
1BE5EC:  LDR             R1, =(aMono - 0x1BE5FC); "Mono" ...
1BE5F0:  MOV             R0, R0,LSL#2
1BE5F4:  ADD             R2, PC, R1; "Mono"
1BE5F8:  ADR             R1, jpt_1BE600
1BE5FC:  LDR             R0, [R0,R1]
1BE600:  ADD             PC, R0, R1; switch jump
1BE604:  DCD loc_1BE680 - 0x1BE604; jump table for switch statement
1BE608:  DCD loc_1BE620 - 0x1BE604; jumptable 001BE600 case 5377
1BE60C:  DCD loc_1BE648 - 0x1BE604; jumptable 001BE600 case 5378
1BE610:  DCD loc_1BE654 - 0x1BE604; jumptable 001BE600 case 5379
1BE614:  DCD loc_1BE660 - 0x1BE604; jumptable 001BE600 case 5380
1BE618:  DCD loc_1BE66C - 0x1BE604; jumptable 001BE600 case 5381
1BE61C:  DCD loc_1BE678 - 0x1BE604; jumptable 001BE600 case 5382
1BE620:  LDR             R0, =(aStereo - 0x1BE62C); jumptable 001BE600 case 5377
1BE624:  ADD             R2, PC, R0; "Stereo"
1BE628:  B               loc_1BE680; jumptable 001BE600 case 5376
1BE62C:  MOV             R0, #0x80001504; jumptable 001BE600 default case
1BE634:  CMP             R9, R0
1BE638:  BNE             loc_1BE648; jumptable 001BE600 case 5378
1BE63C:  LDR             R0, =(a51Side - 0x1BE648); "5.1 Side" ...
1BE640:  ADD             R2, PC, R0; "5.1 Side"
1BE644:  B               loc_1BE680; jumptable 001BE600 case 5376
1BE648:  LDR             R0, =(aUnknownChannel - 0x1BE654); jumptable 001BE600 case 5378
1BE64C:  ADD             R2, PC, R0; "(unknown channels)"
1BE650:  B               loc_1BE680; jumptable 001BE600 case 5376
1BE654:  LDR             R0, =(aQuadraphonic - 0x1BE660); jumptable 001BE600 case 5379
1BE658:  ADD             R2, PC, R0; "Quadraphonic"
1BE65C:  B               loc_1BE680; jumptable 001BE600 case 5376
1BE660:  LDR             R0, =(a51Surround - 0x1BE66C); jumptable 001BE600 case 5380
1BE664:  ADD             R2, PC, R0; "5.1 Surround"
1BE668:  B               loc_1BE680; jumptable 001BE600 case 5376
1BE66C:  LDR             R0, =(a61Surround - 0x1BE678); jumptable 001BE600 case 5381
1BE670:  ADD             R2, PC, R0; "6.1 Surround"
1BE674:  B               loc_1BE680; jumptable 001BE600 case 5376
1BE678:  LDR             R0, =(a71Surround - 0x1BE684); jumptable 001BE600 case 5382
1BE67C:  ADD             R2, PC, R0; "7.1 Surround"
1BE680:  LDR             R0, [R4,#0xB4]; jumptable 001BE600 case 5376
1BE684:  LDR             R7, [R4,#0x1C]
1BE688:  ADR             R3, aRequested; " (requested)"
1BE68C:  LDR             R1, =(byte_8F794 - 0x1BE69C)
1BE690:  TST             R0, #4
1BE694:  ADDEQ           R3, PC, R1; byte_8F794
1BE698:  SUB             R1, R7, #0x1400
1BE69C:  CMP             R1, #6
1BE6A0:  BHI             loc_1BE6F0
1BE6A4:  LDR             R7, =(off_230830 - 0x1BE6B0); "Signed Byte" ...
1BE6A8:  ADD             R7, PC, R7; off_230830
1BE6AC:  LDR             R1, [R7,R1,LSL#2]
1BE6B0:  B               loc_1BE6F8
1BE6B4:  DCB "UpdateDeviceParams",0
1BE6C7:  DCB 0
1BE6C8:  DCB "Missing attributes for loopback device",0xA,0
1BE6F0:  LDR             R1, =(aUnknownType - 0x1BE6FC); "(unknown type)" ...
1BE6F4:  ADD             R1, PC, R1; "(unknown type)"
1BE6F8:  LDR             R12, =(aFormatPreSetup - 0x1BE72C); "Format pre-setup: %s%s, %s, %uhz%s, %u "... ...
1BE6FC:  TST             R0, #2
1BE700:  LDR             R6, [R4,#0x10]
1BE704:  LDR             R7, [R4,#0x14]
1BE708:  LDR             R5, =(byte_8F794 - 0x1BE720)
1BE70C:  STR             R7, [SP,#0x48+var_38]
1BE710:  STR             R6, [SP,#0x48+var_3C]
1BE714:  ADR             R7, aRequested; " (requested)"
1BE718:  ADDEQ           R7, PC, R5; byte_8F794
1BE71C:  STR             R7, [SP,#0x48+var_40]
1BE720:  STMEA           SP, {R1,R8}
1BE724:  ADD             R1, PC, R12; "Format pre-setup: %s%s, %s, %uhz%s, %u "...
1BE728:  ADR             R0, aUpdatedevicepa; "UpdateDeviceParams"
1BE72C:  BL              j_al_print
1BE730:  MOVW            R0, #:lower16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1BE734:  MOV             R1, R4
1BE738:  MOVT            R0, #:upper16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1BE73C:  LDR             R0, [R1,R0]!
1BE740:  STR             R1, [SP,#0x48+var_30]
1BE744:  LDR             R1, [R0,#8]
1BE748:  MOV             R0, R4
1BE74C:  BLX             R1
1BE750:  CMP             R0, #0
1BE754:  BEQ             loc_1BE7D4
1BE758:  LDR             R2, [R4,#0xB4]
1BE75C:  LDR             R0, [R4,#0x18]
1BE760:  ORR             R1, R2, #0x80000000
1BE764:  STR             R1, [R4,#0xB4]
1BE768:  CMP             R0, R9
1BE76C:  BEQ             loc_1BE914
1BE770:  TST             R2, #4
1BE774:  LDRNE           R2, =(LogLevel_ptr - 0x1BE780)
1BE778:  LDRNE           R2, [PC,R2]; LogLevel
1BE77C:  LDRNE           R2, [R2]
1BE780:  CMPNE           R2, #0
1BE784:  BEQ             loc_1BE90C
1BE788:  SUB             R1, R9, #0x1500; switch 7 cases
1BE78C:  CMP             R1, #6
1BE790:  BHI             def_1BE7A8; jumptable 001BE7A8 default case
1BE794:  ADR             R3, jpt_1BE7A8
1BE798:  MOV             R1, R1,LSL#2
1BE79C:  LDR             R2, =(aMono - 0x1BE7AC); "Mono" ...
1BE7A0:  LDR             R1, [R1,R3]
1BE7A4:  ADD             R2, PC, R2; "Mono"
1BE7A8:  ADD             PC, R1, R3; switch jump
1BE7AC:  DCD loc_1BE834 - 0x1BE7AC; jump table for switch statement
1BE7B0:  DCD loc_1BE7C8 - 0x1BE7AC; jumptable 001BE7A8 case 5377
1BE7B4:  DCD loc_1BE7FC - 0x1BE7AC; jumptable 001BE7A8 case 5378
1BE7B8:  DCD loc_1BE808 - 0x1BE7AC; jumptable 001BE7A8 case 5379
1BE7BC:  DCD loc_1BE814 - 0x1BE7AC; jumptable 001BE7A8 case 5380
1BE7C0:  DCD loc_1BE820 - 0x1BE7AC; jumptable 001BE7A8 case 5381
1BE7C4:  DCD loc_1BE82C - 0x1BE7AC; jumptable 001BE7A8 case 5382
1BE7C8:  LDR             R1, =(aStereo - 0x1BE7D4); jumptable 001BE7A8 case 5377
1BE7CC:  ADD             R2, PC, R1; "Stereo"
1BE7D0:  B               loc_1BE834; jumptable 001BE7A8 case 5376
1BE7D4:  MOV             R0, R10; mutex
1BE7D8:  BL              j_LeaveCriticalSection
1BE7DC:  B               loc_1BF010
1BE7E0:  MOV             R1, #0x80001504; jumptable 001BE7A8 default case
1BE7E8:  CMP             R9, R1
1BE7EC:  BNE             loc_1BE7FC; jumptable 001BE7A8 case 5378
1BE7F0:  LDR             R1, =(a51Side - 0x1BE7FC); "5.1 Side" ...
1BE7F4:  ADD             R2, PC, R1; "5.1 Side"
1BE7F8:  B               loc_1BE834; jumptable 001BE7A8 case 5376
1BE7FC:  LDR             R1, =(aUnknownChannel - 0x1BE808); jumptable 001BE7A8 case 5378
1BE800:  ADD             R2, PC, R1; "(unknown channels)"
1BE804:  B               loc_1BE834; jumptable 001BE7A8 case 5376
1BE808:  LDR             R1, =(aQuadraphonic - 0x1BE814); jumptable 001BE7A8 case 5379
1BE80C:  ADD             R2, PC, R1; "Quadraphonic"
1BE810:  B               loc_1BE834; jumptable 001BE7A8 case 5376
1BE814:  LDR             R1, =(a51Surround - 0x1BE820); jumptable 001BE7A8 case 5380
1BE818:  ADD             R2, PC, R1; "5.1 Surround"
1BE81C:  B               loc_1BE834; jumptable 001BE7A8 case 5376
1BE820:  LDR             R1, =(a61Surround - 0x1BE82C); jumptable 001BE7A8 case 5381
1BE824:  ADD             R2, PC, R1; "6.1 Surround"
1BE828:  B               loc_1BE834; jumptable 001BE7A8 case 5376
1BE82C:  LDR             R1, =(a71Surround - 0x1BE838); jumptable 001BE7A8 case 5382
1BE830:  ADD             R2, PC, R1; "7.1 Surround"
1BE834:  SUB             R1, R0, #0x1500; jumptable 001BE7A8 case 5376
1BE838:  CMP             R1, #6
1BE83C:  BHI             def_1BE854; jumptable 001BE854 default case
1BE840:  LDR             R0, =(aMono - 0x1BE84C); "Mono" ...
1BE844:  ADD             R3, PC, R0; "Mono"
1BE848:  MOV             R0, R1,LSL#2
1BE84C:  ADR             R1, jpt_1BE854
1BE850:  LDR             R0, [R0,R1]
1BE854:  ADD             PC, R0, R1; switch jump
1BE858:  DCD loc_1BE8F8 - 0x1BE858; jump table for switch statement
1BE85C:  DCD loc_1BE874 - 0x1BE858; jumptable 001BE854 case 5377
1BE860:  DCD loc_1BE89C - 0x1BE858; jumptable 001BE854 case 5378
1BE864:  DCD loc_1BE8A8 - 0x1BE858; jumptable 001BE854 case 5379
1BE868:  DCD loc_1BE8B4 - 0x1BE858; jumptable 001BE854 case 5380
1BE86C:  DCD loc_1BE8C0 - 0x1BE858; jumptable 001BE854 case 5381
1BE870:  DCD loc_1BE8F0 - 0x1BE858; jumptable 001BE854 case 5382
1BE874:  LDR             R0, =(aStereo - 0x1BE880); jumptable 001BE854 case 5377
1BE878:  ADD             R3, PC, R0; "Stereo"
1BE87C:  B               loc_1BE8F8; jumptable 001BE854 case 5376
1BE880:  MOV             R1, #0x80001504; jumptable 001BE854 default case
1BE888:  CMP             R0, R1
1BE88C:  BNE             loc_1BE89C; jumptable 001BE854 case 5378
1BE890:  LDR             R0, =(a51Side - 0x1BE89C); "5.1 Side" ...
1BE894:  ADD             R3, PC, R0; "5.1 Side"
1BE898:  B               loc_1BE8F8; jumptable 001BE854 case 5376
1BE89C:  LDR             R0, =(aUnknownChannel - 0x1BE8A8); jumptable 001BE854 case 5378
1BE8A0:  ADD             R3, PC, R0; "(unknown channels)"
1BE8A4:  B               loc_1BE8F8; jumptable 001BE854 case 5376
1BE8A8:  LDR             R0, =(aQuadraphonic - 0x1BE8B4); jumptable 001BE854 case 5379
1BE8AC:  ADD             R3, PC, R0; "Quadraphonic"
1BE8B0:  B               loc_1BE8F8; jumptable 001BE854 case 5376
1BE8B4:  LDR             R0, =(a51Surround - 0x1BE8C0); jumptable 001BE854 case 5380
1BE8B8:  ADD             R3, PC, R0; "5.1 Surround"
1BE8BC:  B               loc_1BE8F8; jumptable 001BE854 case 5376
1BE8C0:  LDR             R0, =(a61Surround - 0x1BE8CC); jumptable 001BE854 case 5381
1BE8C4:  ADD             R3, PC, R0; "6.1 Surround"
1BE8C8:  B               loc_1BE8F8; jumptable 001BE854 case 5376
1BE8CC:  DCB "Missing format for loopback device",0xA,0
1BE8F0:  LDR             R0, =(a71Surround - 0x1BE8FC); jumptable 001BE854 case 5382
1BE8F4:  ADD             R3, PC, R0; "7.1 Surround"
1BE8F8:  LDR             R0, =(aFailedToSetSGo - 0x1BE904); jumptable 001BE854 case 5376
1BE8FC:  ADD             R1, PC, R0; "Failed to set %s, got %s instead\n"
1BE900:  ADR             R0, aUpdatedevicepa; "UpdateDeviceParams"
1BE904:  BL              j_al_print
1BE908:  LDR             R1, [R4,#0xB4]
1BE90C:  BIC             R1, R1, #4
1BE910:  STR             R1, [R4,#0xB4]
1BE914:  LDR             R3, [R4,#0xC]
1BE918:  CMP             R3, R8
1BE91C:  BEQ             loc_1BE958
1BE920:  TST             R1, #2
1BE924:  LDRNE           R0, =(LogLevel_ptr - 0x1BE930)
1BE928:  LDRNE           R0, [PC,R0]; LogLevel
1BE92C:  LDRNE           R0, [R0]
1BE930:  CMPNE           R0, #0
1BE934:  BEQ             loc_1BE950
1BE938:  LDR             R0, =(aFailedToSetUhz - 0x1BE948); "Failed to set %uhz, got %uhz instead\n" ...
1BE93C:  MOV             R2, R8
1BE940:  ADD             R1, PC, R0; "Failed to set %uhz, got %uhz instead\n"
1BE944:  ADR             R0, aUpdatedevicepa; "UpdateDeviceParams"
1BE948:  BL              j_al_print
1BE94C:  LDR             R1, [R4,#0xB4]
1BE950:  BIC             R0, R1, #2
1BE954:  STR             R0, [R4,#0xB4]
1BE958:  LDR             R0, =(LogLevel_ptr - 0x1BE964)
1BE95C:  LDR             R0, [PC,R0]; LogLevel
1BE960:  LDR             R0, [R0]
1BE964:  CMP             R0, #3
1BE968:  BCC             loc_1BEA64
1BE96C:  LDR             R0, [R4,#0x18]
1BE970:  SUB             R1, R0, #0x1500; switch 7 cases
1BE974:  CMP             R1, #6
1BE978:  BHI             def_1BE990; jumptable 001BE990 default case
1BE97C:  LDR             R0, =(aMono - 0x1BE988); "Mono" ...
1BE980:  ADD             R2, PC, R0; "Mono"
1BE984:  MOV             R0, R1,LSL#2
1BE988:  ADR             R1, jpt_1BE990
1BE98C:  LDR             R0, [R0,R1]
1BE990:  ADD             PC, R0, R1; switch jump
1BE994:  DCD loc_1BEA10 - 0x1BE994; jump table for switch statement
1BE998:  DCD loc_1BE9B0 - 0x1BE994; jumptable 001BE990 case 5377
1BE99C:  DCD loc_1BE9D8 - 0x1BE994; jumptable 001BE990 case 5378
1BE9A0:  DCD loc_1BE9E4 - 0x1BE994; jumptable 001BE990 case 5379
1BE9A4:  DCD loc_1BE9F0 - 0x1BE994; jumptable 001BE990 case 5380
1BE9A8:  DCD loc_1BE9FC - 0x1BE994; jumptable 001BE990 case 5381
1BE9AC:  DCD loc_1BEA08 - 0x1BE994; jumptable 001BE990 case 5382
1BE9B0:  LDR             R0, =(aStereo - 0x1BE9BC); jumptable 001BE990 case 5377
1BE9B4:  ADD             R2, PC, R0; "Stereo"
1BE9B8:  B               loc_1BEA10; jumptable 001BE990 case 5376
1BE9BC:  MOV             R1, #0x80001504; jumptable 001BE990 default case
1BE9C4:  CMP             R0, R1
1BE9C8:  BNE             loc_1BE9D8; jumptable 001BE990 case 5378
1BE9CC:  LDR             R0, =(a51Side - 0x1BE9D8); "5.1 Side" ...
1BE9D0:  ADD             R2, PC, R0; "5.1 Side"
1BE9D4:  B               loc_1BEA10; jumptable 001BE990 case 5376
1BE9D8:  LDR             R0, =(aUnknownChannel - 0x1BE9E4); jumptable 001BE990 case 5378
1BE9DC:  ADD             R2, PC, R0; "(unknown channels)"
1BE9E0:  B               loc_1BEA10; jumptable 001BE990 case 5376
1BE9E4:  LDR             R0, =(aQuadraphonic - 0x1BE9F0); jumptable 001BE990 case 5379
1BE9E8:  ADD             R2, PC, R0; "Quadraphonic"
1BE9EC:  B               loc_1BEA10; jumptable 001BE990 case 5376
1BE9F0:  LDR             R0, =(a51Surround - 0x1BE9FC); jumptable 001BE990 case 5380
1BE9F4:  ADD             R2, PC, R0; "5.1 Surround"
1BE9F8:  B               loc_1BEA10; jumptable 001BE990 case 5376
1BE9FC:  LDR             R0, =(a61Surround - 0x1BEA08); jumptable 001BE990 case 5381
1BEA00:  ADD             R2, PC, R0; "6.1 Surround"
1BEA04:  B               loc_1BEA10; jumptable 001BE990 case 5376
1BEA08:  LDR             R0, =(a71Surround - 0x1BEA14); jumptable 001BE990 case 5382
1BEA0C:  ADD             R2, PC, R0; "7.1 Surround"
1BEA10:  LDR             R0, [R4,#0x1C]; jumptable 001BE990 case 5376
1BEA14:  SUB             R0, R0, #0x1400
1BEA18:  CMP             R0, #6
1BEA1C:  BHI             loc_1BEA40
1BEA20:  LDR             R1, =(off_230830 - 0x1BEA2C); "Signed Byte" ...
1BEA24:  ADD             R1, PC, R1; off_230830
1BEA28:  LDR             R3, [R1,R0,LSL#2]
1BEA2C:  B               loc_1BEA48
1BEA30:  DCB " (requested)",0
1BEA3D:  DCB 0, 0, 0
1BEA40:  LDR             R0, =(aUnknownType - 0x1BEA4C); "(unknown type)" ...
1BEA44:  ADD             R3, PC, R0; "(unknown type)"
1BEA48:  ADD             R7, R4, #0xC
1BEA4C:  LDR             R6, =(aFormatPostSetu - 0x1BEA60); "Format post-setup: %s, %s, %uhz, %u upd"... ...
1BEA50:  LDM             R7, {R0,R1,R7}
1BEA54:  STMEA           SP, {R0,R1,R7}
1BEA58:  ADD             R1, PC, R6; "Format post-setup: %s, %s, %uhz, %u upd"...
1BEA5C:  ADR             R0, aUpdatedevicepa; "UpdateDeviceParams"
1BEA60:  BL              j_al_print
1BEA64:  MOV             R0, R4
1BEA68:  BL              j_aluInitPanning
1BEA6C:  MOV             R0, #0
1BEA70:  MOV             R1, #0x48 ; 'H'; n
1BEA74:  STR             R0, [R4,#0xA8]
1BEA78:  ADD             R0, R4, #0x104
1BEA7C:  ADD             R0, R0, #0x28800; int
1BEA80:  BL              sub_22178C
1BEA84:  LDRB            R0, [R4,#6]
1BEA88:  CMP             R0, #0
1BEA8C:  BNE             loc_1BEAB4
1BEA90:  ADR             R1, aHrtf; "hrtf"
1BEA94:  MOV             R0, #0
1BEA98:  MOV             R2, #0
1BEA9C:  BL              j_GetConfigValueBool
1BEAA0:  CMP             R0, #0
1BEAA4:  BEQ             loc_1BEAB4
1BEAA8:  MOV             R0, R4
1BEAAC:  BL              j_GetHrtf
1BEAB0:  STR             R0, [R4,#0xA8]
1BEAB4:  LDR             R0, =(LogLevel_ptr - 0x1BEAC0)
1BEAB8:  LDR             R0, [PC,R0]; LogLevel
1BEABC:  LDR             R0, [R0]
1BEAC0:  CMP             R0, #3
1BEAC4:  BCC             loc_1BEAE8
1BEAC8:  LDR             R0, [R4,#0xA8]
1BEACC:  ADR             R1, aDisabled; "disabled"
1BEAD0:  ADR             R2, aEnabled; "enabled"
1BEAD4:  CMP             R0, #0
1BEAD8:  ADR             R0, aUpdatedevicepa_0; "UpdateDeviceParams"
1BEADC:  MOVEQ           R2, R1
1BEAE0:  ADR             R1, aHrtfS; "HRTF %s\n"
1BEAE4:  BL              j_al_print
1BEAE8:  LDR             R0, [R4,#0xA8]
1BEAEC:  CMP             R0, #0
1BEAF0:  BNE             loc_1BEBA4
1BEAF4:  LDR             R0, [R4,#0xB0]
1BEAF8:  SUB             R0, R0, #1
1BEAFC:  CMP             R0, #5
1BEB00:  BHI             loc_1BEBA4
1BEB04:  LDR             R0, [R4,#0xAC]
1BEB08:  CMP             R0, #0
1BEB0C:  BNE             loc_1BEB28
1BEB10:  MOV             R0, #1; nmemb
1BEB14:  MOV             R1, #0x68 ; 'h'; size
1BEB18:  BL              calloc
1BEB1C:  STR             R0, [R4,#0xAC]
1BEB20:  BL              j_bs2b_clear
1BEB24:  LDR             R0, [R4,#0xAC]
1BEB28:  LDR             R1, [R4,#0xC]
1BEB2C:  BL              j_bs2b_set_srate
1BEB30:  LDR             R0, [R4,#0xAC]
1BEB34:  LDR             R1, [R4,#0xB0]
1BEB38:  BL              j_bs2b_set_level
1BEB3C:  LDR             R0, =(LogLevel_ptr - 0x1BEB48)
1BEB40:  LDR             R0, [PC,R0]; LogLevel
1BEB44:  LDR             R0, [R0]
1BEB48:  CMP             R0, #3
1BEB4C:  BCC             loc_1BEBD8
1BEB50:  LDR             R0, =(aBs2bLevelD - 0x1BEB60); "BS2B level %d\n" ...
1BEB54:  LDR             R2, [R4,#0xB0]
1BEB58:  ADD             R1, PC, R0; "BS2B level %d\n"
1BEB5C:  ADR             R0, aUpdatedevicepa_0; "UpdateDeviceParams"
1BEB60:  BL              j_al_print
1BEB64:  B               loc_1BEBD8
1BEB68:  DCB "hrtf",0
1BEB6D:  DCB 0, 0, 0
1BEB70:  DCB "disabled",0
1BEB79:  DCB 0, 0, 0
1BEB7C:  DCB "enabled",0
1BEB84:  DCB "UpdateDeviceParams",0
1BEB97:  DCB 0
1BEB98:  DCB "HRTF %s",0xA,0
1BEBA1:  DCB 0, 0, 0
1BEBA4:  LDR             R0, [R4,#0xAC]; ptr
1BEBA8:  BL              free
1BEBAC:  LDR             R0, =(LogLevel_ptr - 0x1BEBC0)
1BEBB0:  MOV             R1, #0
1BEBB4:  STR             R1, [R4,#0xAC]
1BEBB8:  LDR             R0, [PC,R0]; LogLevel
1BEBBC:  LDR             R0, [R0]
1BEBC0:  CMP             R0, #3
1BEBC4:  BCC             loc_1BEBD8
1BEBC8:  LDR             R0, =(aBs2bDisabled - 0x1BEBD4); "BS2B disabled\n" ...
1BEBCC:  ADD             R1, PC, R0; "BS2B disabled\n"
1BEBD0:  ADR             R0, aUpdatedevicepa_0; "UpdateDeviceParams"
1BEBD4:  BL              j_al_print
1BEBD8:  LDR             R1, [R4,#0xB4]
1BEBDC:  LDR             R0, [R4,#0x18]
1BEBE0:  BIC             R1, R1, #1
1BEBE4:  STR             R1, [R4,#0xB4]
1BEBE8:  MOVW            R1, #0x1503
1BEBEC:  SUB             R1, R0, R1
1BEBF0:  CMP             R1, #4
1BEBF4:  BCS             loc_1BF0C8
1BEBF8:  LDR             R0, =(aStereodup - 0x1BEC08); "stereodup" ...
1BEBFC:  MOV             R2, #1
1BEC00:  ADD             R1, PC, R0; "stereodup"
1BEC04:  MOV             R0, #0
1BEC08:  BL              j_GetConfigValueBool
1BEC0C:  CMP             R0, #0
1BEC10:  LDRNE           R0, [R4,#0xB4]
1BEC14:  ORRNE           R0, R0, #1
1BEC18:  STRNE           R0, [R4,#0xB4]
1BEC1C:  LDR             R0, =(LogLevel_ptr - 0x1BEC2C)
1BEC20:  STR             R10, [SP,#0x48+mutex]
1BEC24:  LDR             R0, [PC,R0]; LogLevel
1BEC28:  LDR             R0, [R0]
1BEC2C:  CMP             R0, #3
1BEC30:  BCC             loc_1BEC58
1BEC34:  LDR             R1, [R4,#0xB4]
1BEC38:  ADR             R3, aDisabled; "disabled"
1BEC3C:  LDR             R0, =(aStereoDuplicat - 0x1BEC50); "Stereo duplication %s\n" ...
1BEC40:  ADR             R2, aEnabled; "enabled"
1BEC44:  TST             R1, #1
1BEC48:  ADD             R1, PC, R0; "Stereo duplication %s\n"
1BEC4C:  ADR             R0, aUpdatedevicepa_0; "UpdateDeviceParams"
1BEC50:  MOVEQ           R2, R3
1BEC54:  BL              j_al_print
1BEC58:  MOV             R0, #0x28950
1BEC60:  LDR             R6, [R4,R0]
1BEC64:  CMP             R6, #0
1BEC68:  BEQ             loc_1BEDB4
1BEC6C:  MOV             R9, #0
1BEC70:  MOV             R8, #0x3F800000
1BEC74:  ADD             R7, R6, #0xB0
1BEC78:  STR             R9, [R6,#0xC8]
1BEC7C:  MOV             R0, R7
1BEC80:  BL              j_ReadLock
1BEC84:  LDR             R0, [R6,#0xA4]
1BEC88:  CMP             R0, #1
1BEC8C:  BLT             loc_1BECE0
1BEC90:  MOV             R10, #0
1BEC94:  LDR             R0, [R6,#0xA0]
1BEC98:  MOV             R1, R4
1BEC9C:  ADD             R0, R0, R10,LSL#3
1BECA0:  LDR             R5, [R0,#4]
1BECA4:  LDR             R0, [R5,#0xC4]
1BECA8:  LDR             R2, [R0,#4]
1BECAC:  BLX             R2
1BECB0:  CMP             R0, #0
1BECB4:  BEQ             loc_1BEFE0
1BECB8:  LDR             R0, [R5,#0xC4]
1BECBC:  MOV             R1, R6
1BECC0:  STR             R9, [R5,#0xC0]
1BECC4:  MOV             R2, R5
1BECC8:  LDR             R3, [R0,#8]
1BECCC:  BLX             R3
1BECD0:  LDR             R0, [R6,#0xA4]
1BECD4:  ADD             R10, R10, #1
1BECD8:  CMP             R10, R0
1BECDC:  BLT             loc_1BEC94
1BECE0:  MOV             R0, R7
1BECE4:  BL              j_ReadUnlock
1BECE8:  ADD             R0, R6, #0x8C
1BECEC:  STR             R0, [SP,#0x48+var_2C]
1BECF0:  BL              j_ReadLock
1BECF4:  LDR             R0, [R6,#0x80]
1BECF8:  CMP             R0, #1
1BECFC:  BLT             loc_1BEDA0
1BED00:  MOV             R10, #0
1BED04:  LDR             R0, [R6,#0x7C]
1BED08:  MOV             R12, R6
1BED0C:  LDR             R1, [R4,#0x38]
1BED10:  MOVW            LR, #0x40D0
1BED14:  ADD             R0, R0, R10,LSL#3
1BED18:  CMP             R1, #3
1BED1C:  LDR             R0, [R0,#4]
1BED20:  BHI             loc_1BED74
1BED24:  ADD             R2, R1, R1,LSL#1
1BED28:  ADD             R2, R0, R2,LSL#2
1BED2C:  MOV             R3, R2
1BED30:  LDR             R6, [R3,#0x80]!
1BED34:  CMP             R6, #0
1BED38:  BEQ             loc_1BED5C
1BED3C:  ADD             R6, R6, LR
1BED40:  DMB             ISH
1BED44:  LDREX           R7, [R6]
1BED48:  SUB             R7, R7, #1
1BED4C:  STREX           R5, R7, [R6]
1BED50:  CMP             R5, #0
1BED54:  BNE             loc_1BED44
1BED58:  DMB             ISH
1BED5C:  ADD             R1, R1, #1
1BED60:  STR             R9, [R3]
1BED64:  CMP             R1, #4
1BED68:  STR             R8, [R2,#0x84]
1BED6C:  STR             R8, [R2,#0x88]
1BED70:  BNE             loc_1BED24
1BED74:  MOVW            R1, #0x1FA0
1BED78:  MOV             R6, R12
1BED7C:  LDR             R2, [R0,R1]
1BED80:  MOVW            R1, #0x1F9C
1BED84:  STR             R9, [R0,R1]
1BED88:  MOV             R1, R6
1BED8C:  BLX             R2
1BED90:  LDR             R0, [R6,#0x80]
1BED94:  ADD             R10, R10, #1
1BED98:  CMP             R10, R0
1BED9C:  BLT             loc_1BED04
1BEDA0:  LDR             R0, [SP,#0x48+var_2C]
1BEDA4:  BL              j_ReadUnlock
1BEDA8:  LDR             R6, [R6,#0x104]
1BEDAC:  CMP             R6, #0
1BEDB0:  BNE             loc_1BEC74
1BEDB4:  LDR             R0, [SP,#0x48+mutex]; mutex
1BEDB8:  BL              j_LeaveCriticalSection
1BEDBC:  MOV             R0, #1; nmemb
1BEDC0:  MOV             R1, #0x108; size
1BEDC4:  MOV             R6, #1
1BEDC8:  BL              calloc
1BEDCC:  MOV             R5, R0
1BEDD0:  CMP             R5, #0
1BEDD4:  BEQ             loc_1BEF74
1BEDD8:  MOV             R0, #0x100
1BEDDC:  STR             R0, [R5,#0xEC]
1BEDE0:  MOV             R0, #0x400; size
1BEDE4:  STR             R6, [R5]
1BEDE8:  BL              malloc
1BEDEC:  CMP             R0, #0
1BEDF0:  STR             R0, [R5,#0xE4]
1BEDF4:  BEQ             loc_1BEF74
1BEDF8:  STR             R4, [R5,#0xFC]
1BEDFC:  DMB             ISH
1BEE00:  LDREX           R0, [R4]
1BEE04:  ADD             R3, R0, #1
1BEE08:  STREX           R0, R3, [R4]
1BEE0C:  CMP             R0, #0
1BEE10:  BNE             loc_1BEE00
1BEE14:  LDR             R0, =(LogLevel_ptr - 0x1BEE24)
1BEE18:  DMB             ISH
1BEE1C:  LDR             R0, [PC,R0]; LogLevel
1BEE20:  LDR             R0, [R0]
1BEE24:  CMP             R0, #4
1BEE28:  BCC             loc_1BEE44
1BEE2C:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BEE40); "ALCdevice_IncRef" ...
1BEE30:  MOV             R2, R4
1BEE34:  LDR             R1, =(aPIncreasingRef - 0x1BEE44); "%p increasing refcount to %u\n" ...
1BEE38:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BEE3C:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BEE40:  BL              j_al_print
1BEE44:  MOVW            R0, #0
1BEE48:  MOV             R6, #0x3F800000
1BEE4C:  MOV             R7, #0
1BEE50:  MOVT            R0, #0xBF80
1BEE54:  STR             R6, [R5,#0x74]
1BEE58:  STR             R6, [R5,#0x78]
1BEE5C:  STR             R7, [R5,#4]
1BEE60:  STR             R7, [R5,#8]
1BEE64:  STR             R7, [R5,#0xC]
1BEE68:  STR             R7, [R5,#0x10]
1BEE6C:  STR             R7, [R5,#0x14]
1BEE70:  STR             R7, [R5,#0x18]
1BEE74:  STR             R7, [R5,#0x1C]
1BEE78:  STR             R7, [R5,#0x20]
1BEE7C:  STR             R0, [R5,#0x24]
1BEE80:  STR             R7, [R5,#0x28]
1BEE84:  STR             R6, [R5,#0x2C]
1BEE88:  STR             R7, [R5,#0x30]
1BEE8C:  STR             R6, [R5,#0x34]
1BEE90:  STR             R7, [R5,#0x38]
1BEE94:  STR             R7, [R5,#0x3C]
1BEE98:  STR             R7, [R5,#0x40]
1BEE9C:  STR             R7, [R5,#0x44]
1BEEA0:  STR             R6, [R5,#0x48]
1BEEA4:  STR             R7, [R5,#0x4C]
1BEEA8:  STR             R7, [R5,#0x50]
1BEEAC:  STR             R7, [R5,#0x54]
1BEEB0:  STR             R7, [R5,#0x58]
1BEEB4:  STR             R6, [R5,#0x5C]
1BEEB8:  STR             R7, [R5,#0x60]
1BEEBC:  STR             R7, [R5,#0x64]
1BEEC0:  STR             R7, [R5,#0x68]
1BEEC4:  STR             R7, [R5,#0x6C]
1BEEC8:  STR             R6, [R5,#0x70]
1BEECC:  STR             R7, [R5,#0xC8]
1BEED0:  STR             R7, [R5,#0xC4]
1BEED4:  STR             R7, [R5,#0xE8]
1BEED8:  LDR             R0, [R5,#0xFC]
1BEEDC:  LDR             R1, [R0,#0x28]
1BEEE0:  ADD             R0, R5, #0x7C ; '|'
1BEEE4:  BL              j_InitUIntMap
1BEEE8:  LDR             R0, [R5,#0xFC]
1BEEEC:  LDR             R1, [R0,#0x2C]
1BEEF0:  ADD             R0, R5, #0xA0
1BEEF4:  BL              j_InitUIntMap
1BEEF8:  LDR             R0, =(aAlExtAlawAlExt - 0x1BEF0C); "AL_EXT_ALAW AL_EXT_DOUBLE AL_EXT_EXPONE"... ...
1BEEFC:  MOVW            R1, #0xD002
1BEF00:  STR             R1, [R5,#0xCC]
1BEF04:  ADD             R0, PC, R0; "AL_EXT_ALAW AL_EXT_DOUBLE AL_EXT_EXPONE"...
1BEF08:  STRB            R7, [R5,#0xD0]
1BEF0C:  STR             R0, [R5,#0x100]
1BEF10:  MOV             R0, #0x43ABA666
1BEF18:  STR             R6, [R5,#0xD4]
1BEF1C:  STR             R6, [R5,#0xD8]
1BEF20:  STR             R0, [R5,#0xDC]
1BEF24:  ADD             R0, R4, #0x950
1BEF28:  ADD             R0, R0, #0x28000
1BEF2C:  STR             R7, [R5,#0xE0]
1BEF30:  B               loc_1BEF3C
1BEF34:  CLREX
1BEF38:  DMB             ISH
1BEF3C:  LDR             R1, [R0]
1BEF40:  STR             R1, [R5,#0x104]
1BEF44:  LDR             R1, [R5,#0x104]
1BEF48:  LDREX           R2, [R0]
1BEF4C:  CMP             R2, R1
1BEF50:  BNE             loc_1BEF34
1BEF54:  DMB             ISH
1BEF58:  STREX           R2, R5, [R0]
1BEF5C:  CMP             R2, #0
1BEF60:  BEQ             loc_1BF054
1BEF64:  LDREX           R2, [R0]
1BEF68:  CMP             R2, R1
1BEF6C:  BEQ             loc_1BEF58
1BEF70:  B               loc_1BEF34
1BEF74:  MOV             R0, #0x28950
1BEF7C:  LDR             R0, [R4,R0]
1BEF80:  CMP             R0, #0
1BEF84:  BNE             loc_1BEFAC
1BEF88:  MOV             R0, #0x28954
1BEF90:  LDR             R0, [R4,R0]
1BEF94:  LDR             R1, [R0,#0xC]
1BEF98:  MOV             R0, R4
1BEF9C:  BLX             R1
1BEFA0:  LDR             R0, [R4,#0xB4]
1BEFA4:  BIC             R0, R0, #0x80000000
1BEFA8:  STR             R0, [R4,#0xB4]
1BEFAC:  LDR             R0, =(unk_3827A0 - 0x1BEFB8)
1BEFB0:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BEFB4:  BL              j_LeaveCriticalSection
1BEFB8:  MOV             R0, R5; ptr
1BEFBC:  BL              free
1BEFC0:  LDR             R0, =(byte_382798 - 0x1BEFCC)
1BEFC4:  LDRB            R0, [PC,R0]; byte_382798
1BEFC8:  CMP             R0, #0
1BEFCC:  BEQ             loc_1BEFD8
1BEFD0:  MOV             R0, #5; sig
1BEFD4:  BL              raise
1BEFD8:  MOVW            R0, #0xA005
1BEFDC:  B               loc_1BE280
1BEFE0:  MOV             R0, R7
1BEFE4:  BL              j_ReadUnlock
1BEFE8:  LDR             R0, [SP,#0x48+mutex]; mutex
1BEFEC:  BL              j_LeaveCriticalSection
1BEFF0:  LDR             R0, [SP,#0x48+var_30]
1BEFF4:  LDR             R0, [R0]
1BEFF8:  LDR             R1, [R0,#0xC]
1BEFFC:  MOV             R0, R4
1BF000:  BLX             R1
1BF004:  LDR             R0, [R4,#0xB4]
1BF008:  BIC             R0, R0, #0x80000000
1BF00C:  STR             R0, [R4,#0xB4]
1BF010:  MOVW            R5, #0xA001
1BF014:  LDR             R0, =(unk_3827A0 - 0x1BF020)
1BF018:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF01C:  BL              j_LeaveCriticalSection
1BF020:  LDR             R0, =(byte_382798 - 0x1BF02C)
1BF024:  LDRB            R0, [PC,R0]; byte_382798
1BF028:  CMP             R0, #0
1BF02C:  BEQ             loc_1BF038
1BF030:  MOV             R0, #5; sig
1BF034:  BL              raise
1BF038:  MOVW            R0, #0xA001
1BF03C:  CMP             R5, R0
1BF040:  STR             R5, [R4,#0x24]
1BF044:  BNE             loc_1BE284
1BF048:  MOV             R0, R4
1BF04C:  BL              j_aluHandleDisconnect
1BF050:  B               loc_1BE284
1BF054:  LDR             R0, =(unk_3827A0 - 0x1BF064)
1BF058:  DMB             ISH
1BF05C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BF060:  BL              j_LeaveCriticalSection
1BF064:  MOV             R0, #0x2894C
1BF06C:  LDR             R1, [R4,R0]
1BF070:  CMP             R1, #0
1BF074:  BEQ             loc_1BF088
1BF078:  LDR             R0, =(unk_38284C - 0x1BF084)
1BF07C:  ADD             R2, PC, R0; unk_38284C
1BF080:  MOV             R0, R5
1BF084:  BL              j_InitializeEffect
1BF088:  MOV             R0, #0
1BF08C:  STR             R0, [R5,#0xC4]
1BF090:  MOV             R0, R4
1BF094:  BL              j_ALCdevice_DecRef
1BF098:  LDR             R0, =(LogLevel_ptr - 0x1BF0A4)
1BF09C:  LDR             R0, [PC,R0]; LogLevel
1BF0A0:  LDR             R0, [R0]
1BF0A4:  CMP             R0, #3
1BF0A8:  BCC             loc_1BE2D4
1BF0AC:  LDR             R0, =(aAlccreateconte_0 - 0x1BF0C0); "alcCreateContext" ...
1BF0B0:  MOV             R2, R5
1BF0B4:  LDR             R1, =(aCreatedContext - 0x1BF0C4); "Created context %p\n" ...
1BF0B8:  ADD             R0, PC, R0; "alcCreateContext"
1BF0BC:  ADD             R1, PC, R1; "Created context %p\n"
1BF0C0:  BL              j_al_print
1BF0C4:  B               loc_1BE2D4
1BF0C8:  MOV             R1, #0x80001504
1BF0D0:  CMP             R0, R1
1BF0D4:  BEQ             loc_1BEBF8
1BF0D8:  B               loc_1BEC1C
