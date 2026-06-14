; =========================================================
; Game Engine Function: sub_10A534
; Address            : 0x10A534 - 0x10A728
; =========================================================

10A534:  PUSH            {R4-R7,LR}
10A536:  ADD             R7, SP, #0xC
10A538:  PUSH.W          {R8-R10}
10A53C:  SUB             SP, SP, #0x18
10A53E:  MOV             R4, R0
10A540:  LDR             R0, [R0,#4]; this
10A542:  CBZ             R0, loc_10A592
10A544:  LDR             R1, [R0,#4]
10A546:  ADDS            R1, #1
10A548:  BEQ             loc_10A592
10A54A:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10A54E:  STR             R0, [SP,#0x30+var_28]
10A550:  CBZ             R0, loc_10A592
10A552:  MOV             R5, R0
10A554:  LDR             R0, [R4]
10A556:  STR             R0, [SP,#0x30+var_2C]
10A558:  CBZ             R0, loc_10A56A
10A55A:  LDR             R1, =(aActivateHud08x - 0x10A562); "Activate HUD - {:08X}" ...
10A55C:  STR             R0, [SP,#0x30+var_20]
10A55E:  ADD             R1, PC; "Activate HUD - {:08X}"
10A560:  ADD             R3, SP, #0x30+var_20
10A562:  MOVS            R0, #1
10A564:  MOVS            R2, #0x15
10A566:  BL              sub_10B6E4
10A56A:  ADDS            R0, R5, #4
10A56C:  DMB.W           ISH
10A570:  LDREX.W         R1, [R0]
10A574:  SUBS            R2, R1, #1
10A576:  STREX.W         R3, R2, [R0]
10A57A:  CMP             R3, #0
10A57C:  BNE             loc_10A570
10A57E:  DMB.W           ISH
10A582:  CBNZ            R1, loc_10A592
10A584:  LDR             R0, [R5]
10A586:  LDR             R1, [R0,#8]
10A588:  MOV             R0, R5
10A58A:  BLX             R1
10A58C:  MOV             R0, R5; this
10A58E:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A592:  LDR             R6, =(dword_263080 - 0x10A598)
10A594:  ADD             R6, PC; dword_263080
10A596:  LDR             R0, [R6,#(dword_263084 - 0x263080)]; this
10A598:  CBZ             R0, loc_10A5DE
10A59A:  LDR             R1, [R0,#4]
10A59C:  ADDS            R1, #1
10A59E:  BEQ             loc_10A5DE
10A5A0:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10A5A4:  STR             R0, [SP,#0x30+var_28]
10A5A6:  CBZ             R0, loc_10A5DE
10A5A8:  MOV             R5, R0
10A5AA:  LDR             R0, [R6]
10A5AC:  STR             R0, [SP,#0x30+var_2C]
10A5AE:  CBZ             R0, loc_10A5B6
10A5B0:  LDR             R1, [R0]
10A5B2:  LDR             R1, [R1,#0xC]
10A5B4:  BLX             R1
10A5B6:  ADDS            R0, R5, #4
10A5B8:  DMB.W           ISH
10A5BC:  LDREX.W         R1, [R0]
10A5C0:  SUBS            R2, R1, #1
10A5C2:  STREX.W         R3, R2, [R0]
10A5C6:  CMP             R3, #0
10A5C8:  BNE             loc_10A5BC
10A5CA:  DMB.W           ISH
10A5CE:  CBNZ            R1, loc_10A5DE
10A5D0:  LDR             R0, [R5]
10A5D2:  LDR             R1, [R0,#8]
10A5D4:  MOV             R0, R5
10A5D6:  BLX             R1
10A5D8:  MOV             R0, R5; this
10A5DA:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A5DE:  LDR             R0, [R4,#4]; this
10A5E0:  CMP             R0, #0
10A5E2:  BEQ             loc_10A6B0
10A5E4:  LDR             R1, [R0,#4]
10A5E6:  ADDS            R1, #1
10A5E8:  BEQ             loc_10A6B0
10A5EA:  MOVS            R1, #0
10A5EC:  STR             R1, [SP,#0x30+var_20]
10A5EE:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
10A5F2:  MOV             R8, R0
10A5F4:  CMP             R0, #0
10A5F6:  STR             R0, [SP,#0x30+var_1C]
10A5F8:  BEQ             loc_10A6BE
10A5FA:  LDR             R5, [R4]
10A5FC:  STR             R5, [SP,#0x30+var_20]
10A5FE:  CMP             R5, #0
10A600:  BEQ             loc_10A6BE
10A602:  LDR             R0, [R5]
10A604:  LDR             R2, [R0,#0x48]
10A606:  ADD             R0, SP, #0x30+var_2C
10A608:  MOV             R1, R5
10A60A:  BLX             R2
10A60C:  LDR             R1, =(aActivateHud - 0x10A612); "Activate HUD - {}" ...
10A60E:  ADD             R1, PC; "Activate HUD - {}"
10A610:  ADD             R3, SP, #0x30+var_2C
10A612:  MOVS            R0, #1
10A614:  MOVS            R2, #0x11
10A616:  BL              sub_10B7B4
10A61A:  LDRB.W          R0, [SP,#0x30+var_2C]
10A61E:  LSLS            R0, R0, #0x1F
10A620:  ITT NE
10A622:  LDRNE           R0, [SP,#0x30+var_24]; void *
10A624:  BLXNE           j__ZdlPv; operator delete(void *)
10A628:  LDR             R0, =(off_23494C - 0x10A63A)
10A62A:  MOV             R10, #0x9FC900
10A632:  VLDR            S2, =1620.0
10A636:  ADD             R0, PC; off_23494C
10A638:  LDR.W           R9, [R0]; dword_23DF24
10A63C:  LDR.W           R0, [R9]
10A640:  ADD             R0, R10
10A642:  VLDR            S0, [R0,#4]
10A646:  LDR             R0, [R5]
10A648:  VCVT.F32.S32    S0, S0
10A64C:  LDR             R2, [R0,#0x14]
10A64E:  VDIV.F32        S0, S0, S2
10A652:  VMOV            R1, S0
10A656:  MOV             R0, R5
10A658:  BLX             R2
10A65A:  LDR.W           R0, [R9]
10A65E:  ADD             R0, R10
10A660:  VLDR            S0, [R0]
10A664:  VLDR            S2, [R0,#4]
10A668:  VCVT.F32.S32    S0, S0
10A66C:  LDR             R0, [R5]
10A66E:  VCVT.F32.S32    S2, S2
10A672:  LDR             R3, [R0,#0x1C]
10A674:  VMOV            R1, S0
10A678:  VMOV            R2, S2
10A67C:  MOV             R0, R5
10A67E:  BLX             R3
10A680:  LDR             R0, =(off_234B14 - 0x10A68A)
10A682:  MOVS            R3, #0; s2d
10A684:  LDR             R1, =(_ZTI10ICustomHud - 0x10A68C); `typeinfo for'ICustomHud ...
10A686:  ADD             R0, PC; off_234B14
10A688:  ADD             R1, PC; lpstype
10A68A:  LDR             R2, [R0]; lpdtype
10A68C:  MOV             R0, R5; lpsrc
10A68E:  BLX             j___dynamic_cast
10A692:  CBZ             R0, loc_10A6A6
10A694:  MOV             R9, R0
10A696:  BL              sub_10B56C
10A69A:  MOV             R1, R0
10A69C:  LDR.W           R0, [R9]
10A6A0:  LDR             R2, [R0,#0x4C]
10A6A2:  MOV             R0, R9
10A6A4:  BLX             R2
10A6A6:  LDR             R0, [R5]
10A6A8:  LDR             R1, [R0,#8]
10A6AA:  MOV             R0, R5
10A6AC:  BLX             R1
10A6AE:  B               loc_10A6D0
10A6B0:  LDR             R1, =(aActivateDefaul - 0x10A6BA); "Activate default HUD" ...
10A6B2:  MOVS            R0, #1; int
10A6B4:  MOVS            R2, #0x14
10A6B6:  ADD             R1, PC; "Activate default HUD"
10A6B8:  BL              sub_ED4F8
10A6BC:  B               loc_10A6FC
10A6BE:  LDR             R1, =(aActivateDefaul - 0x10A6C4); "Activate default HUD" ...
10A6C0:  ADD             R1, PC; "Activate default HUD"
10A6C2:  MOVS            R0, #1; int
10A6C4:  MOVS            R2, #0x14
10A6C6:  BL              sub_ED4F8
10A6CA:  CMP.W           R8, #0
10A6CE:  BEQ             loc_10A6FC
10A6D0:  ADD.W           R0, R8, #4
10A6D4:  DMB.W           ISH
10A6D8:  LDREX.W         R1, [R0]
10A6DC:  SUBS            R2, R1, #1
10A6DE:  STREX.W         R3, R2, [R0]
10A6E2:  CMP             R3, #0
10A6E4:  BNE             loc_10A6D8
10A6E6:  DMB.W           ISH
10A6EA:  CBNZ            R1, loc_10A6FC
10A6EC:  LDR.W           R0, [R8]
10A6F0:  LDR             R1, [R0,#8]
10A6F2:  MOV             R0, R8
10A6F4:  BLX             R1
10A6F6:  MOV             R0, R8; this
10A6F8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A6FC:  LDRD.W          R0, R1, [R4]
10A700:  CBZ             R1, loc_10A714
10A702:  ADD.W           R2, R1, #8
10A706:  LDREX.W         R3, [R2]
10A70A:  ADDS            R3, #1
10A70C:  STREX.W         R5, R3, [R2]
10A710:  CMP             R5, #0
10A712:  BNE             loc_10A706
10A714:  STR             R0, [R6]
10A716:  LDR             R0, [R6,#(dword_263084 - 0x263080)]; this
10A718:  STR             R1, [R6,#(dword_263084 - 0x263080)]
10A71A:  CBZ             R0, loc_10A720
10A71C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A720:  ADD             SP, SP, #0x18
10A722:  POP.W           {R8-R10}
10A726:  POP             {R4-R7,PC}
