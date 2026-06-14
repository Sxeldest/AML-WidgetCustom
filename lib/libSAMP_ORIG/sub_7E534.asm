; =========================================================
; Game Engine Function: sub_7E534
; Address            : 0x7E534 - 0x7E6A8
; =========================================================

7E534:  PUSH            {R4-R7,LR}
7E536:  ADD             R7, SP, #0xC
7E538:  PUSH.W          {R8,R9,R11}
7E53C:  LDR             R5, =(byte_1A45F3 - 0x7E542)
7E53E:  ADD             R5, PC; byte_1A45F3
7E540:  LDRB            R0, [R5]
7E542:  CMP             R0, #0
7E544:  BEQ             loc_7E644
7E546:  LDR             R0, =(aSvDbgNetworkFr - 0x7E54C); "[sv:dbg:network:free] : module releasin"... ...
7E548:  ADD             R0, PC; "[sv:dbg:network:free] : module releasin"...
7E54A:  BL              sub_80664
7E54E:  LDR             R0, =(dword_1A45F8 - 0x7E558)
7E550:  MOVS            R2, #0
7E552:  LDR             R1, =(dword_1A45F4 - 0x7E55A)
7E554:  ADD             R0, PC; dword_1A45F8
7E556:  ADD             R1, PC; dword_1A45F4
7E558:  LDR             R0, [R0]
7E55A:  STR             R2, [R1]
7E55C:  CBZ             R0, loc_7E566
7E55E:  LDR             R0, =(dword_1A45F8 - 0x7E564)
7E560:  ADD             R0, PC; dword_1A45F8 ; this
7E562:  BLX             j__ZNSt6__ndk16thread6detachEv; std::thread::detach(void)
7E566:  LDR             R4, =(dword_116E00 - 0x7E56C)
7E568:  ADD             R4, PC; dword_116E00
7E56A:  LDR             R0, [R4]; fd
7E56C:  BLX             close
7E570:  LDR             R0, =(dword_1A4600 - 0x7E57E)
7E572:  MOV.W           R2, #0xFFFFFFFF
7E576:  MOV             R9, R5
7E578:  STR             R2, [R4]
7E57A:  ADD             R0, PC; dword_1A4600
7E57C:  LDRB            R1, [R0]
7E57E:  LSLS            R1, R1, #0x1F
7E580:  BNE             loc_7E588
7E582:  MOVS            R1, #0
7E584:  STRH            R1, [R0]
7E586:  B               loc_7E590
7E588:  LDR             R1, [R0,#(dword_1A4608 - 0x1A4600)]
7E58A:  MOVS            R2, #0
7E58C:  STRB            R2, [R1]
7E58E:  STR             R2, [R0,#(dword_1A4604 - 0x1A4600)]
7E590:  LDR             R1, =(dword_1A4610 - 0x7E59C)
7E592:  MOV.W           R8, #0
7E596:  LDR             R2, =(dword_1A460C - 0x7E5A2)
7E598:  ADD             R1, PC; dword_1A4610
7E59A:  LDRD.W          R0, R1, [R1]; int
7E59E:  ADD             R2, PC; dword_1A460C
7E5A0:  SUBS            R1, R1, R0; n
7E5A2:  STR.W           R8, [R2]
7E5A6:  BLX             sub_10967C
7E5AA:  LDR             R1, =(dword_1A461C - 0x7E5B0)
7E5AC:  ADD             R1, PC; dword_1A461C
7E5AE:  LDRD.W          R0, R1, [R1]; int
7E5B2:  SUBS            R1, R1, R0; n
7E5B4:  BLX             sub_10967C
7E5B8:  LDR             R5, =(dword_1A4680 - 0x7E5BE)
7E5BA:  ADD             R5, PC; dword_1A4680
7E5BC:  B               loc_7E5CE
7E5BE:  ADDS            R1, R6, #1
7E5C0:  SUBS            R0, R1, R0
7E5C2:  IT NE
7E5C4:  MOVNE           R0, R1
7E5C6:  DMB.W           ISH
7E5CA:  STR.W           R0, [R5,#(dword_1A4780 - 0x1A4680)]
7E5CE:  LDR.W           R1, [R5,#(dword_1A4700 - 0x1A4680)]
7E5D2:  DMB.W           ISH
7E5D6:  LDR.W           R2, [R5,#(dword_1A4780 - 0x1A4680)]
7E5DA:  DMB.W           ISH
7E5DE:  LDR             R0, [R5]
7E5E0:  SUBS            R1, R1, R2
7E5E2:  AND.W           R2, R0, R1,ASR#31
7E5E6:  CMN             R2, R1
7E5E8:  BEQ             loc_7E616
7E5EA:  LDR.W           R6, [R5,#(dword_1A4780 - 0x1A4680)]
7E5EE:  LDR             R1, [R5,#(dword_1A4684 - 0x1A4680)]
7E5F0:  ADD.W           R1, R1, R6,LSL#2
7E5F4:  LDR.W           R4, [R1,#0x80]
7E5F8:  STR.W           R8, [R1,#0x80]
7E5FC:  CMP             R4, #0
7E5FE:  BEQ             loc_7E5BE
7E600:  LDR             R0, [R4]; void *
7E602:  CMP             R0, #0
7E604:  ITT NE
7E606:  STRNE           R0, [R4,#4]
7E608:  BLXNE           j__ZdlPv; operator delete(void *)
7E60C:  MOV             R0, R4; void *
7E60E:  BLX             j__ZdlPv; operator delete(void *)
7E612:  LDR             R0, [R5]
7E614:  B               loc_7E5BE
7E616:  LDR             R6, =(dword_1A4800 - 0x7E61C)
7E618:  ADD             R6, PC; dword_1A4800
7E61A:  LDR.W           R1, [R6,#(dword_1A4880 - 0x1A4800)]
7E61E:  DMB.W           ISH
7E622:  LDR.W           R2, [R6,#(dword_1A4900 - 0x1A4800)]
7E626:  DMB.W           ISH
7E62A:  LDR             R0, [R6]
7E62C:  SUBS            R1, R1, R2
7E62E:  AND.W           R2, R0, R1,ASR#31
7E632:  CMN             R2, R1
7E634:  BNE             loc_7E64A
7E636:  LDR             R0, =(aSvDbgNetworkFr_0 - 0x7E63C); "[sv:dbg:network:free] : module released" ...
7E638:  ADD             R0, PC; "[sv:dbg:network:free] : module released"
7E63A:  BL              sub_80664
7E63E:  MOVS            R0, #0
7E640:  STRB.W          R0, [R9]
7E644:  POP.W           {R8,R9,R11}
7E648:  POP             {R4-R7,PC}
7E64A:  MOV.W           R8, #0
7E64E:  B               loc_7E67C
7E650:  ADDS            R1, R5, #1
7E652:  SUBS            R0, R1, R0
7E654:  IT NE
7E656:  MOVNE           R0, R1
7E658:  DMB.W           ISH
7E65C:  STR.W           R0, [R6,#(dword_1A4900 - 0x1A4800)]
7E660:  LDR.W           R1, [R6,#(dword_1A4880 - 0x1A4800)]
7E664:  DMB.W           ISH
7E668:  LDR.W           R2, [R6,#(dword_1A4900 - 0x1A4800)]
7E66C:  DMB.W           ISH
7E670:  LDR             R0, [R6]
7E672:  SUBS            R1, R1, R2
7E674:  AND.W           R2, R0, R1,ASR#31
7E678:  CMN             R2, R1
7E67A:  BEQ             loc_7E636
7E67C:  LDR.W           R5, [R6,#(dword_1A4900 - 0x1A4800)]
7E680:  LDR             R1, [R6,#(dword_1A4804 - 0x1A4800)]
7E682:  ADD.W           R1, R1, R5,LSL#2
7E686:  LDR.W           R4, [R1,#0x80]
7E68A:  STR.W           R8, [R1,#0x80]
7E68E:  CMP             R4, #0
7E690:  BEQ             loc_7E650
7E692:  LDR             R0, [R4]; void *
7E694:  CMP             R0, #0
7E696:  ITT NE
7E698:  STRNE           R0, [R4,#4]
7E69A:  BLXNE           j__ZdlPv; operator delete(void *)
7E69E:  MOV             R0, R4; void *
7E6A0:  BLX             j__ZdlPv; operator delete(void *)
7E6A4:  LDR             R0, [R6]
7E6A6:  B               loc_7E650
