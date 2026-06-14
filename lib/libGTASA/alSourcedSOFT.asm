; =========================================================
; Game Engine Function: alSourcedSOFT
; Address            : 0x2574D4 - 0x257600
; =========================================================

2574D4:  PUSH            {R4-R7,LR}
2574D6:  ADD             R7, SP, #0xC
2574D8:  PUSH.W          {R8,R9,R11}
2574DC:  SUB             SP, SP, #8
2574DE:  MOV             R8, R3
2574E0:  MOV             R9, R2
2574E2:  MOV             R5, R1
2574E4:  MOV             R6, R0
2574E6:  BLX             j_GetContextRef
2574EA:  MOV             R4, R0
2574EC:  CMP             R4, #0
2574EE:  BEQ.W           loc_2575F8
2574F2:  ADD.W           R0, R4, #8
2574F6:  MOV             R1, R6
2574F8:  BLX             j_LookupUIntMapKey
2574FC:  CMP             R0, #0
2574FE:  BEQ             loc_25754C
257500:  CMP.W           R5, #0xC000
257504:  BGE.W           loc_257582
257508:  MOVW            R1, #0x1001
25750C:  SUBS            R1, R5, R1
25750E:  CMP             R1, #0x32 ; '2'; switch 51 cases
257510:  BHI.W           def_257514; jumptable 00257514 default case
257514:  TBB.W           [PC,R1]; switch jump
257518:  DCB 0x40; jump table for switch statement
257519:  DCB 0x40
25751A:  DCB 0x40
25751B:  DCB 0x50
25751C:  DCB 0x50
25751D:  DCB 0x50
25751E:  DCB 0x40
25751F:  DCB 0x50
257520:  DCB 0x40
257521:  DCB 0x40
257522:  DCB 0x50
257523:  DCB 0x50
257524:  DCB 0x40
257525:  DCB 0x40
257526:  DCB 0x50
257527:  DCB 0x40
257528:  DCB 0x50
257529:  DCB 0x50
25752A:  DCB 0x50
25752B:  DCB 0x50
25752C:  DCB 0x40
25752D:  DCB 0x40
25752E:  DCB 0x50
25752F:  DCB 0x50
257530:  DCB 0x50
257531:  DCB 0x50
257532:  DCB 0x50
257533:  DCB 0x50
257534:  DCB 0x50
257535:  DCB 0x50
257536:  DCB 0x50
257537:  DCB 0x40
257538:  DCB 0x40
257539:  DCB 0x40
25753A:  DCB 0x40
25753B:  DCB 0x40
25753C:  DCB 0x40
25753D:  DCB 0x40
25753E:  DCB 0x40
25753F:  DCB 0x50
257540:  DCB 0x50
257541:  DCB 0x50
257542:  DCB 0x50
257543:  DCB 0x50
257544:  DCB 0x50
257545:  DCB 0x50
257546:  DCB 0x50
257547:  DCB 0x50
257548:  DCB 0x50
257549:  DCB 0x50
25754A:  DCB 0x40
25754B:  ALIGN 2
25754C:  LDR             R0, =(TrapALError_ptr - 0x257552)
25754E:  ADD             R0, PC; TrapALError_ptr
257550:  LDR             R0, [R0]; TrapALError
257552:  LDRB            R0, [R0]
257554:  CMP             R0, #0
257556:  ITT NE
257558:  MOVNE           R0, #5; sig
25755A:  BLXNE           raise
25755E:  LDREX.W         R0, [R4,#0x50]
257562:  CMP             R0, #0
257564:  BNE             loc_2575EA
257566:  ADD.W           R0, R4, #0x50 ; 'P'
25756A:  MOVW            R1, #0xA001
25756E:  DMB.W           ISH
257572:  STREX.W         R2, R1, [R0]
257576:  CBZ             R2, loc_2575EE
257578:  LDREX.W         R2, [R0]
25757C:  CMP             R2, #0
25757E:  BEQ             loc_257572
257580:  B               loc_2575EA
257582:  SUB.W           R1, R5, #0x20000
257586:  SUBS            R1, #7
257588:  CMP             R1, #6
25758A:  BCC             loc_257598; jumptable 00257514 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
25758C:  CMP.W           R5, #0xC000
257590:  IT NE
257592:  CMPNE.W         R5, #0xD000
257596:  BNE             loc_2575B8; jumptable 00257514 cases 3-5,7,10,11,14,16-19,22-30,39-49
257598:  VMOV            D16, R9, R8; jumptable 00257514 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
25759C:  ADD             R3, SP, #0x20+var_1C
25759E:  MOV             R1, R4
2575A0:  MOV             R2, R5
2575A2:  VCVT.F32.F64    S0, D16
2575A6:  VSTR            S0, [SP,#0x20+var_1C]
2575AA:  BL              sub_256840
2575AE:  B               loc_2575F2
2575B0:  MOVW            R1, #0x202; jumptable 00257514 default case
2575B4:  CMP             R5, R1
2575B6:  BEQ             loc_257598; jumptable 00257514 cases 0-2,6,8,9,12,13,15,20,21,31-38,50
2575B8:  LDR             R0, =(TrapALError_ptr - 0x2575BE); jumptable 00257514 cases 3-5,7,10,11,14,16-19,22-30,39-49
2575BA:  ADD             R0, PC; TrapALError_ptr
2575BC:  LDR             R0, [R0]; TrapALError
2575BE:  LDRB            R0, [R0]
2575C0:  CMP             R0, #0
2575C2:  ITT NE
2575C4:  MOVNE           R0, #5; sig
2575C6:  BLXNE           raise
2575CA:  LDREX.W         R0, [R4,#0x50]
2575CE:  CBNZ            R0, loc_2575EA
2575D0:  ADD.W           R0, R4, #0x50 ; 'P'
2575D4:  MOVW            R1, #0xA002
2575D8:  DMB.W           ISH
2575DC:  STREX.W         R2, R1, [R0]
2575E0:  CBZ             R2, loc_2575EE
2575E2:  LDREX.W         R2, [R0]
2575E6:  CMP             R2, #0
2575E8:  BEQ             loc_2575DC
2575EA:  CLREX.W
2575EE:  DMB.W           ISH
2575F2:  MOV             R0, R4
2575F4:  BLX             j_ALCcontext_DecRef
2575F8:  ADD             SP, SP, #8
2575FA:  POP.W           {R8,R9,R11}
2575FE:  POP             {R4-R7,PC}
