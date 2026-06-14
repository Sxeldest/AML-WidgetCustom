; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager27ChooseDJBanterIndexFromListEaPA2_i
; Address            : 0x3A4434 - 0x3A456A
; =========================================================

3A4434:  PUSH            {R4-R7,LR}
3A4436:  ADD             R7, SP, #0xC
3A4438:  PUSH.W          {R8-R11}
3A443C:  SUB             SP, SP, #0xC
3A443E:  MOV             R9, R1
3A4440:  MOV             R4, R2
3A4442:  LDR.W           R0, [R4,R9,LSL#3]
3A4446:  MOVW            R1, #0x782
3A444A:  CMP             R0, R1
3A444C:  BEQ.W           loc_3A455E
3A4450:  ADD.W           R1, R4, R9,LSL#3
3A4454:  LDR             R1, [R1,#4]
3A4456:  SUBS            R5, R1, R0
3A4458:  MOVS            R0, #0; this
3A445A:  MOV             R1, R5; int
3A445C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3A4460:  MOV             R10, R0
3A4462:  CMP             R5, #0
3A4464:  BLT             loc_3A455E
3A4466:  LDR             R0, =(_ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr - 0x3A4476)
3A4468:  RSB.W           R2, R9, R9,LSL#4
3A446C:  LDR             R1, =(gRadioDJBanterGN_ptr - 0x3A447C)
3A446E:  ADD.W           R8, R5, #1
3A4472:  ADD             R0, PC; _ZN20CAERadioTrackManager23m_nDJBanterIndexHistoryE_ptr
3A4474:  LDR.W           R4, [R4,R9,LSL#3]
3A4478:  ADD             R1, PC; gRadioDJBanterGN_ptr
3A447A:  LDR             R0, [R0]; CAERadioTrackManager::m_nDJBanterIndexHistory ...
3A447C:  LDR             R1, [R1]; gRadioDJBanterGN
3A447E:  ADD.W           R6, R0, R2,LSL#2
3A4482:  ADD.W           R0, R1, R9,LSL#3
3A4486:  LDR             R1, =(gRadioDJBanterGN_ptr - 0x3A4490)
3A4488:  ADDS            R0, #4
3A448A:  STR             R0, [SP,#0x28+var_20]
3A448C:  ADD             R1, PC; gRadioDJBanterGN_ptr
3A448E:  MOVS            R0, #0
3A4490:  LDR             R1, [R1]; gRadioDJBanterGN
3A4492:  STR             R1, [SP,#0x28+var_24]
3A4494:  MOV             R11, R0
3A4496:  ADD.W           R0, R11, R10
3A449A:  MOV             R1, R8
3A449C:  BLX             __aeabi_idivmod
3A44A0:  ADDS            R0, R1, R4
3A44A2:  CMP.W           R11, #0xE
3A44A6:  BGT             loc_3A44D0
3A44A8:  LDR             R1, [SP,#0x28+var_24]
3A44AA:  LDR             R2, [SP,#0x28+var_20]
3A44AC:  LDR.W           R1, [R1,R9,LSL#3]
3A44B0:  LDR             R2, [R2]
3A44B2:  SUBS            R2, R2, R1
3A44B4:  CMP             R2, #2
3A44B6:  BLT             loc_3A44D0
3A44B8:  SUBS            R1, R2, #1
3A44BA:  CMP             R2, #0x10
3A44BC:  IT GT
3A44BE:  MOVGT           R1, #0xF
3A44C0:  MOVS            R2, #0
3A44C2:  LDR.W           R3, [R6,R2,LSL#2]
3A44C6:  CMP             R0, R3
3A44C8:  BEQ             loc_3A4550
3A44CA:  ADDS            R2, #1
3A44CC:  CMP             R2, R1
3A44CE:  BLT             loc_3A44C2
3A44D0:  MOVS            R1, #1
3A44D2:  CMP             R1, #1
3A44D4:  BNE             loc_3A4556
3A44D6:  SUBW            R1, R0, #0x711
3A44DA:  CMP             R1, #5
3A44DC:  BCC             loc_3A4556
3A44DE:  SUBW            R1, R0, #0x6F6
3A44E2:  CMP             R1, #5
3A44E4:  ITT CS
3A44E6:  SUBWCS          R1, R0, #0x6DA
3A44EA:  CMPCS           R1, #0xE
3A44EC:  BCC             loc_3A4556
3A44EE:  SUBW            R1, R0, #0x6CD
3A44F2:  CMP             R1, #7
3A44F4:  ITT CS
3A44F6:  SUBWCS          R1, R0, #0x6AA
3A44FA:  CMPCS           R1, #7
3A44FC:  BCC             loc_3A4556
3A44FE:  SUBW            R1, R0, #0x614
3A4502:  CMP             R1, #0xE
3A4504:  ITT CS
3A4506:  SUBWCS          R1, R0, #0x515
3A450A:  CMPCS           R1, #0xE
3A450C:  BCC             loc_3A4556
3A450E:  SUB.W           R1, R0, #0x480
3A4512:  CMP             R1, #6
3A4514:  ITT CS
3A4516:  SUBWCS          R1, R0, #0x45E
3A451A:  CMPCS           R1, #7
3A451C:  BCC             loc_3A4556
3A451E:  SUB.W           R1, R0, #0x3A4
3A4522:  CMP             R1, #7
3A4524:  ITT CS
3A4526:  SUBWCS          R1, R0, #0x373
3A452A:  CMPCS           R1, #7
3A452C:  BCC             loc_3A4556
3A452E:  SUB.W           R1, R0, #0x350
3A4532:  CMP             R1, #7
3A4534:  ITT CS
3A4536:  SUBWCS          R1, R0, #0x20F
3A453A:  CMPCS           R1, #7
3A453C:  BCC             loc_3A4556
3A453E:  SUB.W           R1, R0, #0x126
3A4542:  CMP             R1, #7
3A4544:  ITT CS
3A4546:  SUBWCS          R1, R0, #0x201
3A454A:  CMPCS           R1, #7
3A454C:  BCS             loc_3A4562
3A454E:  B               loc_3A4556
3A4550:  MOVS            R1, #0
3A4552:  CMP             R1, #1
3A4554:  BEQ             loc_3A44D6
3A4556:  ADD.W           R0, R11, #1
3A455A:  CMP             R11, R5
3A455C:  BLT             loc_3A4494
3A455E:  MOV.W           R0, #0xFFFFFFFF
3A4562:  ADD             SP, SP, #0xC
3A4564:  POP.W           {R8-R11}
3A4568:  POP             {R4-R7,PC}
