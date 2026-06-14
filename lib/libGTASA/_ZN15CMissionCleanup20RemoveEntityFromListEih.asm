; =========================================================
; Game Engine Function: _ZN15CMissionCleanup20RemoveEntityFromListEih
; Address            : 0x32754C - 0x327658
; =========================================================

32754C:  PUSH            {R4-R7,LR}
32754E:  ADD             R7, SP, #0xC
327550:  PUSH.W          {R8-R11}
327554:  SUB             SP, SP, #0xC
327556:  MOV             R8, R0
327558:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x327564)
32755A:  MOV             R5, R1
32755C:  ADD.W           R6, R8, #4
327560:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
327562:  MOV             R4, R2
327564:  MOV.W           R9, R5,LSR#8
327568:  MOV.W           R10, #0
32756C:  LDR.W           LR, [R0]; CPools::ms_pObjectPool ...
327570:  MOV.W           R11, #0
327574:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x32757A)
327576:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
327578:  LDR.W           R12, [R0]; CPools::ms_pPedPool ...
32757C:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x327582)
32757E:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
327580:  LDR             R3, [R0]; CPools::ms_pVehiclePool ...
327582:  LDRB.W          R0, [R6,#-4]
327586:  CMP             R0, R4
327588:  ITT EQ
32758A:  LDREQ           R0, [R6]
32758C:  CMPEQ           R0, R5
32758E:  BNE             loc_327642
327590:  CMP             R4, #3
327592:  BEQ             loc_3275B6
327594:  CMP             R4, #2
327596:  BEQ             loc_3275D2
327598:  CMP             R4, #1
32759A:  BNE             loc_327630
32759C:  CMP             R5, #0
32759E:  BLT             loc_327630
3275A0:  LDR             R0, [R3]; CPools::ms_pVehiclePool
3275A2:  UXTB            R2, R5
3275A4:  LDR             R1, [R0,#4]
3275A6:  LDRB.W          R1, [R1,R9]
3275AA:  CMP             R1, R2
3275AC:  BNE             loc_327630
3275AE:  LDR             R0, [R0]
3275B0:  MOVW            R1, #0xA2C
3275B4:  B               loc_3275EC
3275B6:  CMP             R5, #0
3275B8:  BLT             loc_327630
3275BA:  LDR.W           R0, [LR]; CPools::ms_pObjectPool
3275BE:  UXTB            R2, R5
3275C0:  LDR             R1, [R0,#4]
3275C2:  LDRB.W          R1, [R1,R9]
3275C6:  CMP             R1, R2
3275C8:  BNE             loc_327630
3275CA:  LDR             R0, [R0]
3275CC:  MOV.W           R1, #0x1A4
3275D0:  B               loc_3275EC
3275D2:  CMP             R5, #0
3275D4:  BLT             loc_327630
3275D6:  LDR.W           R0, [R12]; CPools::ms_pPedPool
3275DA:  UXTB            R2, R5
3275DC:  LDR             R1, [R0,#4]
3275DE:  LDRB.W          R1, [R1,R9]
3275E2:  CMP             R1, R2
3275E4:  BNE             loc_327630
3275E6:  LDR             R0, [R0]
3275E8:  MOVW            R1, #0x7CC
3275EC:  MLA.W           R0, R9, R1, R0; this
3275F0:  CMP             R0, #0
3275F2:  ITTT NE
3275F4:  MOVNE           R1, R0
3275F6:  LDRNE.W         R2, [R1,#0x1C]!
3275FA:  TSTNE.W         R2, #0x40000
3275FE:  BEQ             loc_327630
327600:  STR             R3, [SP,#0x28+var_24]
327602:  TST.W           R2, #4
327606:  LDR             R3, [R1,#4]
327608:  STR             R3, [SP,#0x28+var_28]
32760A:  BIC.W           R3, R2, #0x40000
32760E:  STR.W           R12, [SP,#0x28+var_20]
327612:  STR             R3, [R1]
327614:  LDR             R3, [SP,#0x28+var_28]
327616:  LDR.W           R12, [SP,#0x28+var_20]
32761A:  STR             R3, [R1,#4]
32761C:  LDR             R3, [SP,#0x28+var_24]
32761E:  BNE             loc_327630
327620:  STR.W           LR, [SP,#0x28+var_28]
327624:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
327628:  LDR.W           R12, [SP,#0x28+var_20]
32762C:  LDRD.W          LR, R3, [SP,#0x28+var_28]
327630:  STRB.W          R10, [R6,#-4]
327634:  STR.W           R10, [R6]
327638:  LDRB.W          R0, [R8,#0x258]
32763C:  SUBS            R0, #1
32763E:  STRB.W          R0, [R8,#0x258]
327642:  ADD.W           R11, R11, #1
327646:  ADDS            R6, #8
327648:  UXTH.W          R0, R11
32764C:  CMP             R0, #0x4B ; 'K'
32764E:  BCC             loc_327582
327650:  ADD             SP, SP, #0xC
327652:  POP.W           {R8-R11}
327656:  POP             {R4-R7,PC}
