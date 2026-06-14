; =========================================================
; Game Engine Function: sub_E24C0
; Address            : 0xE24C0 - 0xE269A
; =========================================================

E24C0:  PUSH            {R4-R7,LR}
E24C2:  ADD             R7, SP, #0xC
E24C4:  PUSH.W          {R8,R9,R11}
E24C8:  VPUSH           {D8}
E24CC:  SUB.W           SP, SP, #0x240
E24D0:  MOV             R9, R0
E24D2:  LDRD.W          R1, R0, [R7,#arg_8]
E24D6:  ADD             R6, SP, #0x260+var_38
E24D8:  ADD.W           R8, SP, #0x260+var_240
E24DC:  STRD.W          R1, R0, [SP,#0x260+var_28]
E24E0:  MOV             R5, R3
E24E2:  MOV             R4, R2
E24E4:  LDRD.W          R3, R2, [R7,#arg_0]
E24E8:  ADD             R1, SP, #0x260+var_30; int
E24EA:  STRD.W          R3, R2, [SP,#0x260+var_30]
E24EE:  MOV             R0, R6; int
E24F0:  MOV             R2, R8; this
E24F2:  BL              sub_E17E4
E24F6:  LDRH.W          R0, [SP,#0x260+var_28+1]
E24FA:  MOV.W           R1, #0x700
E24FE:  LDR             R3, [SP,#0x260+var_34]
E2500:  VMOV            D8, R4, R5
E2504:  CMP.W           R5, #0xFFFFFFFF
E2508:  AND.W           R2, R1, R0,LSL#4
E250C:  BIC.W           R4, R3, #0xFF00
E2510:  ADD.W           R1, R4, R2
E2514:  STR             R1, [SP,#0x260+var_34]
E2516:  BLE             loc_E2522
E2518:  CMP.W           R2, #0x100
E251C:  BEQ             loc_E252A
E251E:  MOV             R4, R1
E2520:  B               loc_E252C
E2522:  VNEG.F64        D8, D8
E2526:  ORR.W           R4, R4, #0x100
E252A:  STR             R4, [SP,#0x260+var_34]
E252C:  VLDR            D16, =+Inf
E2530:  VABS.F64        D17, D8
E2534:  VCMP.F64        D17, D16
E2538:  VMRS            APSR_nzcv, FPSCR
E253C:  BMI             loc_E2542
E253E:  BGT             loc_E2542
E2540:  B               loc_E25EE
E2542:  AND.W           R0, R0, #0xF
E2546:  CMP             R0, #4
E2548:  BNE             loc_E258E
E254A:  ANDS.W          R0, R4, #0xFF00
E254E:  BEQ             loc_E258E
E2550:  LDR             R1, =(unk_91D45 - 0xE255E)
E2552:  UBFX.W          R3, R4, #8, #8
E2556:  LDRD.W          R0, R2, [R9,#8]
E255A:  ADD             R1, PC; unk_91D45
E255C:  LDRB            R4, [R1,R3]
E255E:  ADDS            R1, R0, #1
E2560:  CMP             R2, R1
E2562:  BCS             loc_E2574
E2564:  LDR.W           R0, [R9]
E2568:  LDR             R2, [R0]
E256A:  MOV             R0, R9
E256C:  BLX             R2
E256E:  LDR.W           R0, [R9,#8]
E2572:  ADDS            R1, R0, #1
E2574:  LDR.W           R2, [R9,#4]
E2578:  STR.W           R1, [R9,#8]
E257C:  STRB            R4, [R2,R0]
E257E:  LDRD.W          R1, R0, [SP,#0x260+var_34]
E2582:  BIC.W           R4, R1, #0xFF00
E2586:  STR             R4, [SP,#0x260+var_34]
E2588:  CBZ             R0, loc_E258E
E258A:  SUBS            R0, #1
E258C:  STR             R0, [SP,#0x260+var_30]
E258E:  LDR             R0, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xE25A0); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
E2590:  MOV.W           R1, #0x1F4
E2594:  STR             R1, [SP,#0x260+var_234]
E2596:  ADD.W           R5, R8, #0x10
E259A:  MOVS            R1, #0
E259C:  ADD             R0, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
E259E:  STR             R1, [SP,#0x260+var_238]
E25A0:  UXTB            R1, R4
E25A2:  CMP             R1, #3
E25A4:  ADD.W           R0, R0, #8
E25A8:  STR             R5, [SP,#0x260+var_23C]
E25AA:  STR             R0, [SP,#0x260+var_240]
E25AC:  BNE             loc_E2612
E25AE:  TST.W           R4, #0xFF00
E25B2:  BEQ             loc_E25C6
E25B4:  LDR             R0, =(unk_91D45 - 0xE25BE)
E25B6:  UBFX.W          R1, R4, #8, #8
E25BA:  ADD             R0, PC; unk_91D45
E25BC:  LDRB            R0, [R0,R1]
E25BE:  MOVS            R1, #1
E25C0:  STR             R1, [SP,#0x260+var_238]
E25C2:  STRB.W          R0, [SP,#0x260+var_230]
E25C6:  VMOV            R0, R1, D8
E25CA:  LDR             R3, [SP,#0x260+var_38]
E25CC:  LDR             R2, [SP,#0x260+var_2C]
E25CE:  STRD.W          R4, R8, [SP,#0x260+var_260]
E25D2:  BL              sub_E1894
E25D6:  LDRD.W          R0, R2, [SP,#0x260+var_23C]
E25DA:  STRD.W          R0, R2, [SP,#0x260+var_250]
E25DE:  ADD             R0, SP, #0x260+var_250
E25E0:  ADD             R1, SP, #0x260+var_30
E25E2:  STR             R0, [SP,#0x260+var_260]
E25E4:  MOV             R0, R9
E25E6:  MOV             R3, R2
E25E8:  BL              sub_E1A8C
E25EC:  B               loc_E2676
E25EE:  VCMP.F64        D8, D8
E25F2:  LDRD.W          R0, R1, [SP,#0x260+var_28]
E25F6:  LDRD.W          R2, R3, [SP,#0x260+var_30]
E25FA:  STMEA.W         SP, {R0,R1,R6}
E25FE:  MOVS            R1, #0
E2600:  MOV             R0, R9
E2602:  VMRS            APSR_nzcv, FPSCR
E2606:  IT VS
E2608:  MOVVS           R1, #1
E260A:  BL              sub_DE2CC
E260E:  MOV             R4, R0
E2610:  B               loc_E2682
E2612:  LDR             R2, [SP,#0x260+var_2C]
E2614:  LDRB.W          R0, [SP,#0x260+var_28]
E2618:  CMP             R0, #0
E261A:  MOV             R0, R2
E261C:  IT NE
E261E:  MOVNE           R0, #6
E2620:  CMP.W           R2, #0xFFFFFFFF
E2624:  IT GT
E2626:  MOVGT           R0, R2
E2628:  CMP             R1, #1
E262A:  BNE             loc_E2638
E262C:  MOV             R1, #0x7FFFFFFF; char *
E2630:  CMP             R0, R1
E2632:  BEQ             loc_E2692
E2634:  ADDS            R6, R0, #1
E2636:  B               loc_E2646
E2638:  MOV             R6, R0
E263A:  CMP             R0, #0
E263C:  IT EQ
E263E:  MOVEQ           R6, #1
E2640:  CMP             R1, #2
E2642:  IT EQ
E2644:  MOVEQ           R6, R0
E2646:  VMOV            R0, R1, D8; int
E264A:  LDR             R3, [SP,#0x260+var_38]; int
E264C:  MOV             R2, R6; n
E264E:  STRD.W          R4, R8, [SP,#0x260+var_260]; int
E2652:  BLX             j__ZN3fmt2v86detail12format_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE; fmt::v8::detail::format_float<double>(double,int,fmt::v8::detail::float_specs,fmt::v8::detail::buffer<char> &)
E2656:  LDR             R1, [R7,#arg_10]
E2658:  LDRD.W          R2, R3, [SP,#0x260+var_23C]
E265C:  LDR             R4, [SP,#0x260+var_34]
E265E:  STR             R6, [SP,#0x260+var_38]
E2660:  STR             R0, [SP,#0x260+var_248]
E2662:  STRD.W          R2, R3, [SP,#0x260+var_250]
E2666:  STRD.W          R4, R1, [SP,#0x260+var_260]; int
E266A:  ADD             R1, SP, #0x260+var_250; int
E266C:  ADD             R2, SP, #0x260+var_30; int
E266E:  MOV             R0, R9; int
E2670:  MOV             R3, R6; int
E2672:  BL              sub_E1AF4
E2676:  MOV             R4, R0
E2678:  LDR             R0, [SP,#0x260+var_23C]; void *
E267A:  CMP             R0, R5
E267C:  BEQ             loc_E2682
E267E:  BLX             j__ZdlPv; operator delete(void *)
E2682:  MOV             R0, R4
E2684:  ADD.W           SP, SP, #0x240
E2688:  VPOP            {D8}
E268C:  POP.W           {R8,R9,R11}
E2690:  POP             {R4-R7,PC}
E2692:  LDR             R0, =(aNumberIsTooBig - 0xE2698); "number is too big" ...
E2694:  ADD             R0, PC; "number is too big"
E2696:  BLX             j__ZN3fmt2v86detail18throw_format_errorEPKc; fmt::v8::detail::throw_format_error(char const*)
