; =========================================================
; Game Engine Function: alcLoopbackOpenDeviceSOFT
; Address            : 0x1C02FC - 0x1C0564
; =========================================================

1C02FC:  PUSH            {R4-R11,LR}
1C0300:  ADD             R11, SP, #0x1C
1C0304:  SUB             SP, SP, #4
1C0308:  LDR             R0, =(unk_382834 - 0x1C0318)
1C030C:  LDR             R1, =(sub_1BBB90 - 0x1C031C)
1C0310:  ADD             R0, PC, R0; unk_382834 ; once_control
1C0314:  ADD             R1, PC, R1; sub_1BBB90 ; init_routine
1C0318:  BL              pthread_once
1C031C:  MOVW            R6, #:lower16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1C0320:  MOV             R0, #1; nmemb
1C0324:  MOVT            R6, #:upper16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1C0328:  ADD             R1, R6, #0x10; size
1C032C:  MOV             R5, #1
1C0330:  BL              calloc
1C0334:  MOV             R4, R0
1C0338:  CMP             R4, #0
1C033C:  BEQ             loc_1C0530
1C0340:  LDR             R0, =(off_23CA00 - 0x1C0350); "loopback" ...
1C0344:  ADD             R10, R6, #4
1C0348:  ADD             R0, PC, R0; off_23CA00
1C034C:  ADD             R0, R0, #0x10
1C0350:  STR             R0, [R4,R10]
1C0354:  ADD             R0, R4, #8
1C0358:  STRB            R5, [R4,#4]
1C035C:  STR             R5, [R4]
1C0360:  STRB            R5, [R4,#6]
1C0364:  BL              j_InitializeCriticalSection
1C0368:  MOV             R9, #0
1C036C:  MOV             R8, R4
1C0370:  MOV             R0, #0x100
1C0374:  MOV             R5, R4
1C0378:  STR             R9, [R4,#0xB4]
1C037C:  MOV             R1, #0xFFFFFFFF
1C0380:  STR             R9, [R4,#0x24]
1C0384:  STR             R9, [R4,#0xAC]
1C0388:  STR             R9, [R4,#0x20]
1C038C:  STR             R9, [R8,#0xB0]!
1C0390:  STR             R9, [R4,R6]
1C0394:  STR             R0, [R5,#0x28]!
1C0398:  MOV             R0, #4
1C039C:  MOV             R7, R5
1C03A0:  MOV             R6, R5
1C03A4:  STR             R0, [R7,#4]!
1C03A8:  STR             R0, [R6,#0x10]!
1C03AC:  ADD             R0, R5, #0x14
1C03B0:  BL              j_InitUIntMap
1C03B4:  ADD             R0, R5, #0x38 ; '8'
1C03B8:  MOV             R1, #0xFFFFFFFF
1C03BC:  BL              j_InitUIntMap
1C03C0:  ADD             R0, R5, #0x5C ; '\'
1C03C4:  MOV             R1, #0xFFFFFFFF
1C03C8:  BL              j_InitUIntMap
1C03CC:  LDR             R0, =(aSources - 0x1C03E4); "sources" ...
1C03D0:  MOVW            R1, #0xAC44
1C03D4:  STR             R1, [R5,#-0x1C]
1C03D8:  MOVW            R2, #0x1501
1C03DC:  ADD             R1, PC, R0; "sources"
1C03E0:  STR             R9, [R5,#-0x18]
1C03E4:  STR             R9, [R5,#-0x14]
1C03E8:  MOVW            R3, #0x1402
1C03EC:  STR             R2, [R5,#-0x10]
1C03F0:  MOV             R0, #0
1C03F4:  MOV             R2, R5
1C03F8:  STR             R3, [R5,#-0xC]
1C03FC:  BL              j_ConfigValueUInt
1C0400:  LDR             R0, [R5]
1C0404:  MOV             R2, R7
1C0408:  CMP             R0, #0
1C040C:  MOVEQ           R0, #0x100
1C0410:  STREQ           R0, [R5]
1C0414:  LDR             R0, =(aSlots - 0x1C0420); "slots" ...
1C0418:  ADD             R1, PC, R0; "slots"
1C041C:  MOV             R0, #0
1C0420:  BL              j_ConfigValueUInt
1C0424:  LDR             R0, [R7]
1C0428:  MOV             R2, R6
1C042C:  CMP             R0, #0
1C0430:  MOVEQ           R0, #4
1C0434:  STREQ           R0, [R7]
1C0438:  LDR             R0, =(aSends - 0x1C0444); "sends" ...
1C043C:  ADD             R1, PC, R0; "sends"
1C0440:  MOV             R0, #0
1C0444:  BL              j_ConfigValueUInt
1C0448:  LDR             R0, [R6]
1C044C:  MOV             R2, R8
1C0450:  CMP             R0, #5
1C0454:  MOVCS           R0, #4
1C0458:  STRCS           R0, [R6]
1C045C:  LDR             R0, =(aCfLevel - 0x1C0468); "cf_level" ...
1C0460:  ADD             R1, PC, R0; "cf_level"
1C0464:  MOV             R0, #0
1C0468:  BL              j_ConfigValueInt
1C046C:  LDR             R0, [R4,#0x28]
1C0470:  MOV             R1, #1
1C0474:  SUB             R0, R0, #1
1C0478:  STR             R0, [R4,#0x30]
1C047C:  STR             R1, [R4,#0x34]
1C0480:  LDR             R0, [R4,R10]
1C0484:  LDR             R2, [R0]
1C0488:  ADR             R1, aLoopback; "Loopback"
1C048C:  MOV             R0, R4
1C0490:  BLX             R2
1C0494:  MOVW            R0, #:lower16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1C0498:  LDR             R1, =(dword_382838 - 0x1C04B4)
1C049C:  LDR             R2, =(dword_382838 - 0x1C04B8)
1C04A0:  MOVT            R0, #:upper16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1C04A4:  LDR             R3, =(dword_382838 - 0x1C04BC)
1C04A8:  ADD             R0, R0, #0xC
1C04AC:  ADD             R1, PC, R1; dword_382838
1C04B0:  ADD             R2, PC, R2; dword_382838
1C04B4:  ADD             R3, PC, R3; dword_382838
1C04B8:  B               loc_1C04C4
1C04BC:  CLREX
1C04C0:  DMB             ISH
1C04C4:  LDR             R7, [R1]
1C04C8:  STR             R7, [R4,R0]
1C04CC:  LDR             R7, [R4,R0]
1C04D0:  LDREX           R6, [R1]
1C04D4:  CMP             R6, R7
1C04D8:  BNE             loc_1C04BC
1C04DC:  DMB             ISH
1C04E0:  STREX           R6, R4, [R2]
1C04E4:  CMP             R6, #0
1C04E8:  BEQ             loc_1C04FC
1C04EC:  LDREX           R6, [R3]
1C04F0:  CMP             R6, R7
1C04F4:  BEQ             loc_1C04E0
1C04F8:  B               loc_1C04BC
1C04FC:  LDR             R0, =(LogLevel_ptr - 0x1C050C)
1C0500:  DMB             ISH
1C0504:  LDR             R0, [PC,R0]; LogLevel
1C0508:  LDR             R0, [R0]
1C050C:  CMP             R0, #2
1C0510:  BLS             loc_1C0558
1C0514:  LDR             R0, =(aAlcloopbackope_0 - 0x1C0528); "alcLoopbackOpenDeviceSOFT" ...
1C0518:  MOV             R2, R4
1C051C:  LDR             R1, =(aCreatedDeviceP - 0x1C052C); "Created device %p\n" ...
1C0520:  ADD             R0, PC, R0; "alcLoopbackOpenDeviceSOFT"
1C0524:  ADD             R1, PC, R1; "Created device %p\n"
1C0528:  BL              j_al_print
1C052C:  B               loc_1C0558
1C0530:  LDR             R0, =(byte_382798 - 0x1C053C)
1C0534:  LDRB            R0, [PC,R0]; byte_382798
1C0538:  CMP             R0, #0
1C053C:  BEQ             loc_1C0548
1C0540:  MOV             R0, #5; sig
1C0544:  BL              raise
1C0548:  LDR             R0, =(dword_38283C - 0x1C055C)
1C054C:  MOVW            R1, #0xA005
1C0550:  MOV             R4, #0
1C0554:  STR             R1, [PC,R0]; dword_38283C
1C0558:  MOV             R0, R4
1C055C:  SUB             SP, R11, #0x1C
1C0560:  POP             {R4-R11,PC}
