; =========================================================
; Game Engine Function: sub_6C2C0
; Address            : 0x6C2C0 - 0x6C65A
; =========================================================

6C2C0:  PUSH            {R4-R7,LR}
6C2C2:  ADD             R7, SP, #0xC
6C2C4:  PUSH.W          {R8-R11}
6C2C8:  SUB             SP, SP, #4
6C2CA:  VPUSH           {D8}
6C2CE:  SUB             SP, SP, #0x20
6C2D0:  LDR             R4, =(byte_1A4438 - 0x6C2D6)
6C2D2:  ADD             R4, PC; byte_1A4438
6C2D4:  LDRB            R0, [R4]
6C2D6:  LDR             R1, =(__stack_chk_guard_ptr - 0x6C2DC)
6C2D8:  ADD             R1, PC; __stack_chk_guard_ptr
6C2DA:  LDR             R1, [R1]; __stack_chk_guard
6C2DC:  LDR             R1, [R1]
6C2DE:  STR             R1, [SP,#0x48+var_2C]
6C2E0:  CBNZ            R0, loc_6C32C
6C2E2:  LDR             R1, =(aSampOrig - 0x6C2EC); "SAMP_ORIG" ...
6C2E4:  MOVS            R0, #4; prio
6C2E6:  LDR             R2, =(aInitializingGa - 0x6C2EE); "Initializing game..." ...
6C2E8:  ADD             R1, PC; "SAMP_ORIG"
6C2EA:  ADD             R2, PC; "Initializing game..."
6C2EC:  BLX             __android_log_print
6C2F0:  LDR             R0, =(aDbgSampLoadMod - 0x6C2F6); "[dbg:samp:load] : module loading..." ...
6C2F2:  ADD             R0, PC; "[dbg:samp:load] : module loading..."
6C2F4:  BL              sub_80664
6C2F8:  LDR             R0, =(off_114BF8 - 0x6C2FE)
6C2FA:  ADD             R0, PC; off_114BF8
6C2FC:  LDR             R0, [R0]; dword_1ABE8C
6C2FE:  LDRD.W          R5, R6, [R0]
6C302:  CMP             R5, R6
6C304:  BEQ             loc_6C318
6C306:  LDR             R0, [R5,#0x10]
6C308:  CMP             R0, #0
6C30A:  ITTT NE
6C30C:  LDRNE           R1, [R0]
6C30E:  LDRNE           R1, [R1,#0x18]
6C310:  BLXNE           R1
6C312:  ADDS            R5, #0x18
6C314:  CMP             R5, R6
6C316:  BNE             loc_6C306
6C318:  LDR             R0, =(off_114BFC - 0x6C320)
6C31A:  MOVS            R5, #1
6C31C:  ADD             R0, PC; off_114BFC
6C31E:  LDR             R1, [R0]; byte_1ABEA4
6C320:  LDR             R0, =(aDbgSampLoadMod_0 - 0x6C326); "[dbg:samp:load] : module loaded" ...
6C322:  ADD             R0, PC; "[dbg:samp:load] : module loaded"
6C324:  STRB            R5, [R1]
6C326:  BL              sub_80664
6C32A:  STRB            R5, [R4]
6C32C:  LDR             R1, =(byte_1A4439 - 0x6C332)
6C32E:  ADD             R1, PC; byte_1A4439
6C330:  LDRB            R0, [R1]
6C332:  LDR             R6, =(dword_1A4434 - 0x6C33C)
6C334:  CMP             R0, #0
6C336:  LDR             R0, =(dword_1A442C - 0x6C33E)
6C338:  ADD             R6, PC; dword_1A4434
6C33A:  ADD             R0, PC; dword_1A442C
6C33C:  BNE.W           loc_6C5DC
6C340:  STR             R0, [SP,#0x48+var_44]
6C342:  MOV             R11, R1
6C344:  LDR             R1, =(aSampOrig - 0x6C350); "SAMP_ORIG" ...
6C346:  MOVS            R0, #4; prio
6C348:  LDR             R2, =(aInitializingNe - 0x6C352); "Initializing netgame..." ...
6C34A:  MOV             R10, R6
6C34C:  ADD             R1, PC; "SAMP_ORIG"
6C34E:  ADD             R2, PC; "Initializing netgame..."
6C350:  BLX             __android_log_print
6C354:  MOV.W           R0, #0x3B8; unsigned int
6C358:  BLX             j__Znwj; operator new(uint)
6C35C:  LDR             R1, =(off_114B70 - 0x6C364); "127.0.0.1" ...
6C35E:  MOV             R4, R0
6C360:  ADD             R1, PC; off_114B70
6C362:  LDR             R5, [R1]; "127.0.0.1"
6C364:  LDRB            R0, [R5]; "127.0.0.1"
6C366:  SUBS            R0, #0x33 ; '3'
6C368:  CMN.W           R0, #4
6C36C:  BHI             loc_6C392
6C36E:  LDR             R0, =(off_114B74 - 0x6C374)
6C370:  ADD             R0, PC; off_114B74
6C372:  LDR             R6, [R1]; "127.0.0.1"
6C374:  LDR             R0, [R0]; unk_1ABEC5 ; int
6C376:  MOV             R1, R6; name
6C378:  BL              sub_8775C
6C37C:  MOV             R5, R0
6C37E:  CBNZ            R0, loc_6C392
6C380:  LDR             R1, =(aSampOrig - 0x6C388); "SAMP_ORIG" ...
6C382:  LDR             R2, =(aFailedToConver - 0x6C38A); "Failed to convert host %s to IP" ...
6C384:  ADD             R1, PC; "SAMP_ORIG"
6C386:  ADD             R2, PC; "Failed to convert host %s to IP"
6C388:  MOVS            R0, #4; prio
6C38A:  MOV             R3, R6
6C38C:  BLX             __android_log_print
6C390:  MOV             R5, R6
6C392:  LDR             R0, =(off_114B78 - 0x6C398)
6C394:  ADD             R0, PC; off_114B78
6C396:  LDR             R0, [R0]; dword_116CE0
6C398:  LDR.W           R9, [R0]
6C39C:  LDR             R1, =(aSampOrig - 0x6C3A4); "SAMP_ORIG" ...
6C39E:  LDR             R2, =(aCnetgameCnetga - 0x6C3A6); "CNetGame::CNetGame()" ...
6C3A0:  ADD             R1, PC; "SAMP_ORIG"
6C3A2:  ADD             R2, PC; "CNetGame::CNetGame()"
6C3A4:  MOVS            R0, #4; prio
6C3A6:  BLX             __android_log_print
6C3AA:  LDR             R0, =(off_114AB0 - 0x6C3B2)
6C3AC:  LDR             R1, =(off_114B3C - 0x6C3B4); "samp_player" ...
6C3AE:  ADD             R0, PC; off_114AB0
6C3B0:  ADD             R1, PC; off_114B3C
6C3B2:  LDR.W           R8, [R0]; dword_1A4408
6C3B6:  LDR             R0, =(off_114C00 - 0x6C3BE)
6C3B8:  LDR             R3, [R1]; "samp_player"
6C3BA:  ADD             R0, PC; off_114C00
6C3BC:  LDR.W           R2, [R8]
6C3C0:  LDR             R0, [R0]; unk_1A443B
6C3C2:  STR             R0, [SP,#0x48+var_48]
6C3C4:  MOV             R0, #0x141949
6C3CC:  ADDS            R6, R2, R0
6C3CE:  MOV             R0, R4
6C3D0:  MOV             R1, R5
6C3D2:  MOV             R2, R9
6C3D4:  BLX             R6
6C3D6:  LDR.W           R0, [R8]
6C3DA:  MOV             R5, #0x23DEEC
6C3E2:  STR.W           R4, [R10]
6C3E6:  ADD             R0, R5
6C3E8:  MOV.W           R1, #0x1000
6C3EC:  ADD.W           R4, R0, #8
6C3F0:  MOVS            R2, #7
6C3F2:  MOV             R6, R10
6C3F4:  MOV             R0, R4
6C3F6:  BL              sub_AF9C0
6C3FA:  CBZ             R0, loc_6C40A
6C3FC:  MOV             R0, R4
6C3FE:  MOV.W           R1, #0x1000
6C402:  MOVS            R2, #3
6C404:  BL              sub_AF9C0
6C408:  B               loc_6C41A
6C40A:  LDR             R1, =(aMemory - 0x6C416); "Memory" ...
6C40C:  MOVS            R0, #4; prio
6C40E:  LDR             R2, =(aProtectaddrPro - 0x6C418); "protectAddr (_PROT_RWX_) failed: 0x%X -"... ...
6C410:  MOV             R3, R4
6C412:  ADD             R1, PC; "Memory"
6C414:  ADD             R2, PC; "protectAddr (_PROT_RWX_) failed: 0x%X -"...
6C416:  BLX             __android_log_print
6C41A:  LDR.W           R0, [R8]
6C41E:  LDR             R1, [R6]
6C420:  MOVS            R6, #1
6C422:  ADD             R0, R5
6C424:  STR             R1, [R0,#8]
6C426:  MOVS            R0, #1; unsigned int
6C428:  BLX             j__Znwj; operator new(uint)
6C42C:  MOV             R4, R0
6C42E:  BL              sub_600B0
6C432:  LDR             R0, =(dword_1A4430 - 0x6C438)
6C434:  ADD             R0, PC; dword_1A4430
6C436:  STR             R4, [R0]
6C438:  MOV             R0, R4
6C43A:  BL              sub_600C0
6C43E:  LDR             R0, =(aFfffffSaMp8080 - 0x6C444); "{FFFFFF}SA-MP {808080}0.3.7 {FFFFFF}Sta"... ...
6C440:  ADD             R0, PC; "{FFFFFF}SA-MP {808080}0.3.7 {FFFFFF}Sta"...
6C442:  BL              sub_6C73C
6C446:  LDR             R0, =(aFfffffUseC8001 - 0x6C44C); "{FFFFFF}Use {C80018}/ccmds {FFFFFF}for "... ...
6C448:  ADD             R0, PC; "{FFFFFF}Use {C80018}/ccmds {FFFFFF}for "...
6C44A:  BL              sub_6C73C
6C44E:  LDR             R0, =(asc_4B4F4 - 0x6C454); " " ...
6C450:  ADD             R0, PC; " "
6C452:  BL              sub_6C73C
6C456:  LDR             R0, =(off_114B48 - 0x6C45C)
6C458:  ADD             R0, PC; off_114B48
6C45A:  LDR             R4, [R0]; dword_1A41D8
6C45C:  LDR             R0, [R4]
6C45E:  BL              sub_692A8
6C462:  LDR             R0, =(off_114B30 - 0x6C468)
6C464:  ADD             R0, PC; off_114B30
6C466:  LDR             R0, [R0]; byte_1A3A01
6C468:  STRB            R6, [R0]
6C46A:  BL              sub_767F0
6C46E:  LDR             R0, =(off_114BDC - 0x6C480)
6C470:  MOVW            R2, #0x9F30
6C474:  VLDR            S0, =3000.0
6C478:  MOVT            R2, #0x6A ; 'j'
6C47C:  ADD             R0, PC; off_114BDC
6C47E:  LDR             R0, [R0]; dword_1A44FC
6C480:  VLDR            S2, [R0]
6C484:  LDR             R0, =(off_114AA8 - 0x6C48E)
6C486:  VDIV.F32        S0, S2, S0
6C48A:  ADD             R0, PC; off_114AA8
6C48C:  LDR             R0, [R0]; dword_1A4404
6C48E:  LDR             R1, [R0]
6C490:  LDR             R0, [R4]
6C492:  ADD             R1, R2
6C494:  VLDR            S2, =0.001
6C498:  VADD.F32        S0, S0, S2
6C49C:  VSTR            S0, [R1]
6C4A0:  CBZ             R0, loc_6C4CC
6C4A2:  LDR             R1, =(off_114C04 - 0x6C4AA)
6C4A4:  LDR             R2, =(off_114C08 - 0x6C4AC)
6C4A6:  ADD             R1, PC; off_114C04
6C4A8:  ADD             R2, PC; off_114C08
6C4AA:  LDR             R1, [R1]; dword_1A4504
6C4AC:  LDR             R3, [R2]; dword_1A4500
6C4AE:  LDR             R2, [R1]
6C4B0:  LDR             R1, [R3]
6C4B2:  BL              sub_69A58
6C4B6:  LDR             R0, =(off_114C0C - 0x6C4BE)
6C4B8:  LDR             R1, =(off_114C10 - 0x6C4C0)
6C4BA:  ADD             R0, PC; off_114C0C
6C4BC:  ADD             R1, PC; off_114C10
6C4BE:  LDR             R0, [R0]; dword_1A450C
6C4C0:  LDR             R1, [R1]; dword_1A4508
6C4C2:  LDR             R2, [R0]
6C4C4:  LDR             R1, [R1]
6C4C6:  LDR             R0, [R4]
6C4C8:  BL              sub_69A82
6C4CC:  LDR             R0, =(off_114B44 - 0x6C4D2)
6C4CE:  ADD             R0, PC; off_114B44
6C4D0:  LDR             R6, [R0]; byte_1A4480
6C4D2:  LDR             R0, [R4]
6C4D4:  LDRB            R1, [R6]
6C4D6:  CBZ             R1, loc_6C4E0
6C4D8:  MOVS            R1, #1
6C4DA:  BL              sub_68F78
6C4DE:  B               loc_6C4F2
6C4E0:  MOVS            R1, #0
6C4E2:  BL              sub_68F78
6C4E6:  LDR             R0, [SP,#0x48+var_44]
6C4E8:  MOVS            R1, #1
6C4EA:  LDR             R0, [R0]
6C4EC:  LDR.W           R0, [R0,#0x88]
6C4F0:  STRB            R1, [R0,#8]
6C4F2:  LDRB            R0, [R6]
6C4F4:  CBZ             R0, loc_6C50E
6C4F6:  LDR             R0, =(off_114B9C - 0x6C500)
6C4F8:  MOVS            R1, #6; size_t
6C4FA:  LDR             R4, [R4]
6C4FC:  ADD             R0, PC; off_114B9C
6C4FE:  LDR             R0, [R0]; unk_1A452C ; char *
6C500:  BLX             strndup
6C504:  MOV             R1, R0
6C506:  MOV             R0, R4
6C508:  BL              sub_69AAC
6C50C:  B               loc_6C52A
6C50E:  LDR             R0, =(off_114B9C - 0x6C516)
6C510:  ADD             R4, SP, #0x48+var_40
6C512:  ADD             R0, PC; off_114B9C
6C514:  LDR             R1, [R0]; unk_1A452C ; s
6C516:  MOV             R0, R4; int
6C518:  BL              sub_63A74
6C51C:  LDR             R0, =(off_114B98 - 0x6C526)
6C51E:  VLD1.64         {D16-D17}, [R4]
6C522:  ADD             R0, PC; off_114B98
6C524:  LDR             R0, [R0]; unk_1A3A88
6C526:  VST1.32         {D16-D17}, [R0]
6C52A:  LDR             R0, =(off_114B80 - 0x6C53C)
6C52C:  MOVW            R6, #:lower16:(loc_E4F34+1)
6C530:  LDR.W           R1, [R8]
6C534:  MOVT            R6, #:upper16:(loc_E4F34+1)
6C538:  ADD             R0, PC; off_114B80
6C53A:  ADD             R1, R6
6C53C:  LDR             R0, [R0]; dword_1A4524
6C53E:  ADDS            R1, #0x30 ; '0'
6C540:  LDR             R0, [R0]
6C542:  BLX             R1
6C544:  LDR             R0, =(off_114B88 - 0x6C54E)
6C546:  LDR.W           R1, [R8]
6C54A:  ADD             R0, PC; off_114B88
6C54C:  ADD             R1, R6
6C54E:  LDR             R4, [R0]; dword_1A4528
6C550:  LDR             R0, [R4]
6C552:  BLX             R1
6C554:  LDR.W           R0, [R8]
6C558:  LDR             R6, [R0,R5]
6C55A:  CBNZ            R6, loc_6C56E
6C55C:  LDR             R1, =(aSampOrig - 0x6C566); "SAMP_ORIG" ...
6C55E:  MOVS            R0, #4; prio
6C560:  LDR             R2, =(aUiPointerIsNul - 0x6C568); "UI pointer is null" ...
6C562:  ADD             R1, PC; "SAMP_ORIG"
6C564:  ADD             R2, PC; "UI pointer is null"
6C566:  BLX             __android_log_print
6C56A:  LDR.W           R0, [R8]
6C56E:  VLDR            S0, [R4]
6C572:  ADD             R0, R5
6C574:  LDR             R1, [R6,#0x60]
6C576:  VCVT.F32.U32    S0, S0
6C57A:  LDR             R4, [R0]
6C57C:  ADDW            R1, R1, #0x8DC
6C580:  VLDR            S2, [R1]
6C584:  VMUL.F32        S16, S2, S0
6C588:  CBZ             R4, loc_6C594
6C58A:  LDR             R1, [R4,#0x60]
6C58C:  MOV             R6, R10
6C58E:  VSTR            S16, [R1,#0x28]
6C592:  B               loc_6C5B6
6C594:  LDR             R1, =(aSampOrig - 0x6C59E); "SAMP_ORIG" ...
6C596:  MOVS            R0, #4; prio
6C598:  LDR             R2, =(aUiPointerIsNul - 0x6C5A0); "UI pointer is null" ...
6C59A:  ADD             R1, PC; "SAMP_ORIG"
6C59C:  ADD             R2, PC; "UI pointer is null"
6C59E:  BLX             __android_log_print
6C5A2:  LDR.W           R0, [R8]
6C5A6:  LDR             R1, [R4,#0x60]
6C5A8:  LDR             R4, [R0,R5]
6C5AA:  VSTR            S16, [R1,#0x28]
6C5AE:  CMP             R4, #0
6C5B0:  BEQ             loc_6C640
6C5B2:  ADD             R0, R5
6C5B4:  MOV             R6, R10
6C5B6:  LDR             R1, [R4,#0x60]
6C5B8:  LDR             R4, [R0]
6C5BA:  VSTR            S16, [R1,#0x20]
6C5BE:  CBNZ            R4, loc_6C5CE
6C5C0:  LDR             R1, =(aSampOrig - 0x6C5CA); "SAMP_ORIG" ...
6C5C2:  MOVS            R0, #4; prio
6C5C4:  LDR             R2, =(aUiPointerIsNul - 0x6C5CC); "UI pointer is null" ...
6C5C6:  ADD             R1, PC; "SAMP_ORIG"
6C5C8:  ADD             R2, PC; "UI pointer is null"
6C5CA:  BLX             __android_log_print
6C5CE:  LDR             R0, [R4,#0x60]
6C5D0:  VSTR            S16, [R0,#0x18]
6C5D4:  MOVS            R0, #1
6C5D6:  STRB.W          R0, [R11]
6C5DA:  LDR             R0, [SP,#0x48+var_44]
6C5DC:  LDR             R0, [R0]
6C5DE:  CMP             R0, #0
6C5E0:  ITTT NE
6C5E2:  LDRNE           R1, [R0]
6C5E4:  LDRNE           R1, [R1,#0x30]
6C5E6:  BLXNE           R1
6C5E8:  LDR             R1, [R6]
6C5EA:  CBZ             R1, loc_6C61E
6C5EC:  LDR             R4, =(dword_1A4430 - 0x6C5F2)
6C5EE:  ADD             R4, PC; dword_1A4430
6C5F0:  LDR             R0, [R4]
6C5F2:  CBZ             R0, loc_6C5FE
6C5F4:  BL              sub_6014C
6C5F8:  LDR             R0, [R4]
6C5FA:  LDR             R1, [R6]
6C5FC:  B               loc_6C600
6C5FE:  MOVS            R0, #0
6C600:  LDR.W           R1, [R1,#0x218]
6C604:  CMP             R1, #5
6C606:  IT NE
6C608:  CMPNE           R0, #0
6C60A:  BEQ             loc_6C61E
6C60C:  LDR             R1, =(off_114A94 - 0x6C612)
6C60E:  ADD             R1, PC; off_114A94
6C610:  LDR             R1, [R1]; byte_1174AF
6C612:  LDRB            R1, [R1]
6C614:  CMP             R1, #0
6C616:  ITT NE
6C618:  MOVNE           R1, #1
6C61A:  BLNE            sub_60318
6C61E:  LDR             R0, [SP,#0x48+var_2C]
6C620:  LDR             R1, =(__stack_chk_guard_ptr - 0x6C626)
6C622:  ADD             R1, PC; __stack_chk_guard_ptr
6C624:  LDR             R1, [R1]; __stack_chk_guard
6C626:  LDR             R1, [R1]
6C628:  CMP             R1, R0
6C62A:  ITTTT EQ
6C62C:  ADDEQ           SP, SP, #0x20 ; ' '
6C62E:  VPOPEQ          {D8}
6C632:  ADDEQ           SP, SP, #4
6C634:  POPEQ.W         {R8-R11}
6C638:  IT EQ
6C63A:  POPEQ           {R4-R7,PC}
6C63C:  BLX             __stack_chk_fail
6C640:  LDR             R1, =(aSampOrig - 0x6C64A); "SAMP_ORIG" ...
6C642:  MOVS            R0, #4; prio
6C644:  LDR             R2, =(aUiPointerIsNul - 0x6C64C); "UI pointer is null" ...
6C646:  ADD             R1, PC; "SAMP_ORIG"
6C648:  ADD             R2, PC; "UI pointer is null"
6C64A:  BLX             __android_log_print
6C64E:  B               loc_6C650
6C650:  MOV             R0, R4; void *
6C652:  BLX             j__ZdlPv; operator delete(void *)
6C656:  BLX             j___cxa_end_cleanup
