; =========================================================
; Game Engine Function: _ZN8CGarages17Init_AfterRestartEv
; Address            : 0x30E524 - 0x30E658
; =========================================================

30E524:  PUSH            {R4-R7,LR}
30E526:  ADD             R7, SP, #0xC
30E528:  PUSH.W          {R8}
30E52C:  VPUSH           {D8-D9}
30E530:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x30E536)
30E532:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
30E534:  LDR             R0, [R0]; CGarages::NumGarages ...
30E536:  LDR             R0, [R0]; CGarages::NumGarages
30E538:  CMP             R0, #0
30E53A:  BEQ.W           loc_30E5DA
30E53E:  LDR             R0, =(_ZN8CGarages8aGaragesE_ptr - 0x30E550)
30E540:  VMOV.F32        S16, #1.0
30E544:  VLDR            S18, =0.0
30E548:  MOV.W           R8, #0
30E54C:  ADD             R0, PC; _ZN8CGarages8aGaragesE_ptr
30E54E:  MOVS            R5, #0
30E550:  LDR             R0, [R0]; CGarages::aGarages ...
30E552:  ADD.W           R4, R0, #0x50 ; 'P'
30E556:  LDR             R0, =(_ZN8CGarages10NumGaragesE_ptr - 0x30E55C)
30E558:  ADD             R0, PC; _ZN8CGarages10NumGaragesE_ptr
30E55A:  LDR             R6, [R0]; CGarages::NumGarages ...
30E55C:  LDRB.W          R1, [R4,#-1]
30E560:  LDRB.W          R0, [R4,#-2]
30E564:  STRB.W          R8, [R4,#-3]
30E568:  STR.W           R8, [R4,#-0x14]
30E56C:  AND.W           R0, R0, #0x39 ; '9'
30E570:  STRB.W          R1, [R4,#-4]
30E574:  SUBS            R1, #1; switch 45 cases
30E576:  CMP             R1, #0x2C ; ','
30E578:  ORR.W           R0, R0, #0x40 ; '@'
30E57C:  STRB.W          R0, [R4,#-2]
30E580:  BHI             def_30E588; jumptable 0030E588 default case, case 13
30E582:  MOVS            R0, #1
30E584:  VMOV.F32        S0, S16
30E588:  TBB.W           [PC,R1]; switch jump
30E58C:  DCB 0x17; jump table for switch statement
30E58D:  DCB 0x1A
30E58E:  DCB 0x1A
30E58F:  DCB 0x1A
30E590:  DCB 0x1A
30E591:  DCB 0x17
30E592:  DCB 0x17
30E593:  DCB 0x17
30E594:  DCB 0x17
30E595:  DCB 0x17
30E596:  DCB 0x17
30E597:  DCB 0x17
30E598:  DCB 0x1E
30E599:  DCB 0x17
30E59A:  DCB 0x17
30E59B:  DCB 0x17
30E59C:  DCB 0x17
30E59D:  DCB 0x17
30E59E:  DCB 0x17
30E59F:  DCB 0x17
30E5A0:  DCB 0x17
30E5A1:  DCB 0x17
30E5A2:  DCB 0x17
30E5A3:  DCB 0x17
30E5A4:  DCB 0x17
30E5A5:  DCB 0x17
30E5A6:  DCB 0x17
30E5A7:  DCB 0x17
30E5A8:  DCB 0x17
30E5A9:  DCB 0x17
30E5AA:  DCB 0x17
30E5AB:  DCB 0x17
30E5AC:  DCB 0x17
30E5AD:  DCB 0x17
30E5AE:  DCB 0x17
30E5AF:  DCB 0x17
30E5B0:  DCB 0x17
30E5B1:  DCB 0x17
30E5B2:  DCB 0x17
30E5B3:  DCB 0x17
30E5B4:  DCB 0x17
30E5B5:  DCB 0x17
30E5B6:  DCB 0x17
30E5B7:  DCB 0x17
30E5B8:  DCB 0x17
30E5B9:  ALIGN 2
30E5BA:  VMOV.F32        S0, S18; jumptable 0030E588 cases 1,6-12,14-45
30E5BE:  MOVS            R0, #0
30E5C0:  VSTR            S0, [R4,#-0x18]; jumptable 0030E588 cases 2-5
30E5C4:  STRB.W          R0, [R4,#-3]
30E5C8:  MOV             R0, R4; jumptable 0030E588 default case, case 13
30E5CA:  BLX             j__ZN18CAEDoorAudioEntity5ResetEv; CAEDoorAudioEntity::Reset(void)
30E5CE:  LDR             R0, [R6]; CGarages::NumGarages
30E5D0:  ADDS            R5, #1
30E5D2:  ADDS            R4, #0xD8
30E5D4:  CMP             R5, R0
30E5D6:  BCC.W           loc_30E55C
30E5DA:  LDR             R0, =(_ZN8CGarages10NoRespraysE_ptr - 0x30E5EC)
30E5DC:  MOVW            R12, #0x1012
30E5E0:  MOVW            R3, #0x1112
30E5E4:  MOVW            R6, #0x1212
30E5E8:  ADD             R0, PC; _ZN8CGarages10NoRespraysE_ptr
30E5EA:  MOVW            R5, #0x1312
30E5EE:  MOVS            R4, #0
30E5F0:  LDR             R1, [R0]; CGarages::NoResprays ...
30E5F2:  MOVS            R0, #0
30E5F4:  STRB            R0, [R1]; CGarages::NoResprays
30E5F6:  LDR             R1, =(_ZN8CGarages16aCarsInSafeHouseE_ptr - 0x30E5FC)
30E5F8:  ADD             R1, PC; _ZN8CGarages16aCarsInSafeHouseE_ptr
30E5FA:  LDR             R1, [R1]; CGarages::aCarsInSafeHouse ...
30E5FC:  ADDS            R2, R1, R4
30E5FE:  ADDS            R4, #0x40 ; '@'
30E600:  CMP.W           R4, #0x100
30E604:  STRH.W          R0, [R2,R12]
30E608:  STRH            R0, [R2,R3]
30E60A:  STRH            R0, [R2,R6]
30E60C:  STRH            R0, [R2,R5]
30E60E:  STRH.W          R0, [R2,#0x112]
30E612:  STRH            R0, [R2,#0x12]
30E614:  STRH.W          R0, [R2,#0x212]
30E618:  STRH.W          R0, [R2,#0x312]
30E61C:  STRH.W          R0, [R2,#0x412]
30E620:  STRH.W          R0, [R2,#0x512]
30E624:  STRH.W          R0, [R2,#0x612]
30E628:  STRH.W          R0, [R2,#0x712]
30E62C:  STRH.W          R0, [R2,#0x812]
30E630:  STRH.W          R0, [R2,#0xA12]
30E634:  STRH.W          R0, [R2,#0x912]
30E638:  STRH.W          R0, [R2,#0xB12]
30E63C:  STRH.W          R0, [R2,#0xC12]
30E640:  STRH.W          R0, [R2,#0xD12]
30E644:  STRH.W          R0, [R2,#0xE12]
30E648:  STRH.W          R0, [R2,#0xF12]
30E64C:  BNE             loc_30E5FC
30E64E:  VPOP            {D8-D9}
30E652:  POP.W           {R8}
30E656:  POP             {R4-R7,PC}
