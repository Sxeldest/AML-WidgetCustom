; =========================================================
; Game Engine Function: sub_FD41C
; Address            : 0xFD41C - 0xFD582
; =========================================================

FD41C:  PUSH            {R4-R7,LR}
FD41E:  ADD             R7, SP, #0xC
FD420:  PUSH.W          {R8,R9,R11}
FD424:  VPUSH           {D8}
FD428:  SUB             SP, SP, #0x20
FD42A:  MOV             R4, R0
FD42C:  LDR             R0, =(dword_2473E8 - 0xFD434)
FD42E:  STR             R4, [SP,#0x40+var_24]
FD430:  ADD             R0, PC; dword_2473E8
FD432:  STR             R4, [R0]
FD434:  BL              sub_1082E4
FD438:  CMP             R0, R4
FD43A:  BEQ.W           loc_FD552
FD43E:  LDR             R0, =(off_23496C - 0xFD444)
FD440:  ADD             R0, PC; off_23496C
FD442:  LDR             R6, [R0]; dword_23DEF4
FD444:  LDR             R0, [R6]
FD446:  CMP             R0, #0
FD448:  BEQ             loc_FD50E
FD44A:  LDR.W           R0, [R0,#0x3B0]
FD44E:  LDR             R0, [R0]
FD450:  CMP             R0, #0
FD452:  BEQ             loc_FD50E
FD454:  MOV             R1, R4
FD456:  MOVS            R2, #1
FD458:  BL              sub_148F74
FD45C:  MOV             R5, R0
FD45E:  MOVW            R0, #0xFFFF
FD462:  CMP             R5, R0
FD464:  BEQ             loc_FD50E
FD466:  BL              sub_1082E4
FD46A:  CMP             R0, #0
FD46C:  BEQ             loc_FD50E
FD46E:  CMP.W           R5, #0x3EC
FD472:  BHI             loc_FD50E
FD474:  LDR             R0, [R6]
FD476:  LDR.W           R0, [R0,#0x3B0]
FD47A:  LDR             R0, [R0]
FD47C:  ADDS            R1, R0, R5
FD47E:  LDRB.W          R1, [R1,#0xFB4]
FD482:  CMP             R1, #0
FD484:  BEQ             loc_FD50E
FD486:  ADD.W           R0, R0, R5,LSL#2
FD48A:  LDR             R0, [R0,#4]
FD48C:  CMP             R0, #0
FD48E:  BEQ             loc_FD50E
FD490:  LDR             R5, [R0]
FD492:  CBZ             R5, loc_FD50E
FD494:  MOV             R0, R5
FD496:  BL              sub_FD5B0
FD49A:  CBNZ            R0, loc_FD50E
FD49C:  LDR.W           R0, [R5,#0x128]
FD4A0:  CBZ             R0, loc_FD50E
FD4A2:  LDR             R0, [R0,#0x5C]
FD4A4:  CBZ             R0, loc_FD50E
FD4A6:  BL              sub_1082E4
FD4AA:  MOV             R8, R0
FD4AC:  BL              sub_1082E4
FD4B0:  LDRB.W          R0, [R0,#0x485]
FD4B4:  LSLS            R0, R0, #0x1F
FD4B6:  BEQ             loc_FD4C0
FD4B8:  BL              sub_1082E4
FD4BC:  LDR.W           R8, [R0,#0x590]
FD4C0:  LDR.W           R0, [R5,#0x128]
FD4C4:  LDR.W           R9, [R0,#0x5C]
FD4C8:  BL              sub_163768
FD4CC:  MOV             R6, R0
FD4CE:  LDRH.W          R0, [R8,#0x26]
FD4D2:  LDR.W           R0, [R6,R0,LSL#2]
FD4D6:  BL              sub_1637F0
FD4DA:  LDRH.W          R1, [R9,#0x26]
FD4DE:  VLDR            S16, [R0,#0x24]
FD4E2:  LDR.W           R0, [R6,R1,LSL#2]
FD4E6:  BL              sub_1637F0
FD4EA:  VLDR            S0, [R0,#0x24]
FD4EE:  MOV             R0, R5
FD4F0:  VADD.F32        S16, S16, S0
FD4F4:  BL              sub_14B4F8
FD4F8:  VMOV            S0, R0
FD4FC:  VCMP.F32        S0, S16
FD500:  VMRS            APSR_nzcv, FPSCR
FD504:  BLE             loc_FD50E
FD506:  LDRB.W          R0, [R9,#0x45]
FD50A:  LSLS            R0, R0, #0x1E
FD50C:  BMI             loc_FD576
FD50E:  MOV             R0, R4
FD510:  BL              sub_108D44
FD514:  LDR             R1, =(off_234A74 - 0xFD51E)
FD516:  ADD             R3, SP, #0x40+var_24
FD518:  MOV             R4, SP
FD51A:  ADD             R1, PC; off_234A74
FD51C:  LDR             R5, [R1]; dword_2402E4
FD51E:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZ25CPed__ProcessControl_hookP9_PED_TYPEE3$_3NS_9allocatorIS4_EEFvvEEE - 0xFD52C); `vtable for'std::__function::__func<CPed__ProcessControl_hook(_PED_TYPE *)::$_3,std::allocator<CPed__ProcessControl_hook(_PED_TYPE *)::$_3>,void ()(void)> ...
FD520:  STR             R3, [SP,#0x40+var_38]
FD522:  SUB.W           R3, R7, #-var_25
FD526:  LDR             R2, [R5]
FD528:  ADD             R1, PC; `vtable for'std::__function::__func<CPed__ProcessControl_hook(_PED_TYPE *)::$_3,std::allocator<CPed__ProcessControl_hook(_PED_TYPE *)::$_3>,void ()(void)>
FD52A:  STR             R3, [SP,#0x40+var_3C]
FD52C:  STRB.W          R0, [R7,#var_25]
FD530:  LDR             R6, [R2]
FD532:  STR             R0, [R2]
FD534:  ADD.W           R0, R1, #8
FD538:  STR             R0, [SP,#0x40+var_40]
FD53A:  STR             R4, [SP,#0x40+var_30]
FD53C:  MOV             R0, R4
FD53E:  BL              sub_100FF0
FD542:  LDR             R0, [SP,#0x40+var_30]
FD544:  LDR             R1, [R5]
FD546:  CMP             R4, R0
FD548:  STR             R6, [R1]
FD54A:  BEQ             loc_FD56C
FD54C:  CBZ             R0, loc_FD576
FD54E:  MOVS            R1, #5
FD550:  B               loc_FD56E
FD552:  LDR             R0, =(dword_247514 - 0xFD558)
FD554:  ADD             R0, PC; dword_247514
FD556:  LDR             R1, [R0]
FD558:  MOV             R0, R4
FD55A:  ADD             SP, SP, #0x20 ; ' '
FD55C:  VPOP            {D8}
FD560:  POP.W           {R8,R9,R11}
FD564:  POP.W           {R4-R7,LR}
FD568:  B.W             sub_126C48
FD56C:  MOVS            R1, #4
FD56E:  LDR             R2, [R0]
FD570:  LDR.W           R1, [R2,R1,LSL#2]
FD574:  BLX             R1
FD576:  ADD             SP, SP, #0x20 ; ' '
FD578:  VPOP            {D8}
FD57C:  POP.W           {R8,R9,R11}
FD580:  POP             {R4-R7,PC}
