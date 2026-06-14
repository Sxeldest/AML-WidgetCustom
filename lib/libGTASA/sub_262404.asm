; =========================================================
; Game Engine Function: sub_262404
; Address            : 0x262404 - 0x2626CE
; =========================================================

262404:  PUSH            {R4,R5,R7,LR}
262406:  ADD             R7, SP, #8
262408:  LDR.W           LR, [R0,#0x154]
26240C:  LDR.W           R12, [R0,#0x1D8]
262410:  VLDR            S0, [R0,#0x124]
262414:  LDRD.W          R5, R4, [R0,#0x13C]
262418:  SUB.W           R3, R12, LR
26241C:  VLDR            S4, [R0,#0x164]
262420:  ANDS            R3, R5
262422:  LDR.W           R5, [R0,#0x130]
262426:  VLDR            S6, [R0,#0xD4]
26242A:  ADD.W           R3, R4, R3,LSL#2
26242E:  LDR.W           R4, [R0,#0x12C]
262432:  VLDR            S8, [R0,#0x120]
262436:  VLDR            S2, [R3]
26243A:  LDR.W           R3, [R0,#0x14C]
26243E:  VMUL.F32        S0, S0, S2
262442:  VLDR            S2, [R1,#8]
262446:  SUB.W           R3, R12, R3
26244A:  ANDS            R3, R4
26244C:  ADD.W           R3, R5, R3,LSL#2
262450:  VADD.F32        S0, S2, S0
262454:  VLDR            S2, [R0,#0x174]
262458:  VSUB.F32        S2, S2, S0
26245C:  VMUL.F32        S2, S4, S2
262460:  VADD.F32        S4, S0, S2
262464:  VLDR            S0, [R0,#0xDC]
262468:  VLDR            S2, [R0,#0x11C]
26246C:  VSTR            S4, [R0,#0x174]
262470:  VLDR            S10, [R3]
262474:  VLDR            S12, [R0,#0x15C]
262478:  VMUL.F32        S2, S2, S10
26247C:  VLDR            S10, [R1]
262480:  LDR.W           R3, [R0,#0x158]
262484:  LDR.W           R4, [R0,#0x144]
262488:  SUB.W           R3, R12, R3
26248C:  LDR.W           R5, [R0,#0x148]
262490:  ANDS            R3, R4
262492:  ADD.W           R3, R5, R3,LSL#2
262496:  VADD.F32        S2, S10, S2
26249A:  VLDR            S10, [R0,#0x16C]
26249E:  VSUB.F32        S10, S10, S2
2624A2:  VMUL.F32        S10, S12, S10
2624A6:  VADD.F32        S10, S2, S10
2624AA:  VLDR            S2, [R0,#0x128]
2624AE:  VSTR            S10, [R0,#0x16C]
2624B2:  VLDR            S12, [R3]
2624B6:  VLDR            S14, [R0,#0x168]
2624BA:  VMUL.F32        S2, S2, S12
2624BE:  VLDR            S12, [R1,#0xC]
2624C2:  LDR.W           R3, [R0,#0x150]
2624C6:  SUB.W           R3, R12, R3
2624CA:  VADD.F32        S2, S12, S2
2624CE:  VLDR            S12, [R0,#0x178]
2624D2:  LDRD.W          R4, R5, [R0,#0x134]
2624D6:  ANDS            R3, R4
2624D8:  ADD.W           R3, R5, R3,LSL#2
2624DC:  VSUB.F32        S12, S12, S2
2624E0:  VMUL.F32        S12, S14, S12
2624E4:  VADD.F32        S12, S2, S12
2624E8:  VSTR            S12, [R0,#0x178]
2624EC:  VLDR            S2, [R3]
2624F0:  VLDR            S14, [R0,#0x160]
2624F4:  VMUL.F32        S2, S8, S2
2624F8:  VLDR            S8, [R1,#4]
2624FC:  VADD.F32        S2, S8, S2
262500:  VLDR            S8, [R0,#0x170]
262504:  LDRD.W          R1, R3, [R0,#0xEC]
262508:  LDR.W           R5, [R0,#0x10C]
26250C:  SUB.W           R5, R12, R5
262510:  ANDS            R5, R1
262512:  AND.W           R1, R1, R12
262516:  VSUB.F32        S8, S8, S2
26251A:  ADD.W           R5, R3, R5,LSL#2
26251E:  ADD.W           R1, R3, R1,LSL#2
262522:  VMUL.F32        S8, S14, S8
262526:  VADD.F32        S2, S2, S8
26252A:  VMUL.F32        S8, S4, S6
26252E:  VSTR            S2, [R0,#0x170]
262532:  VLDR            S14, [R5]
262536:  VSUB.F32        S1, S14, S8
26253A:  VMUL.F32        S0, S0, S14
26253E:  VMUL.F32        S6, S6, S1
262542:  VSUB.F32        S0, S0, S8
262546:  VADD.F32        S4, S4, S6
26254A:  VSTR            S4, [R1]
26254E:  VLDR            S4, [R0,#0xD4]
262552:  LDR.W           R1, [R0,#0x110]
262556:  LDR.W           R3, [R0,#0x1D8]
26255A:  VMUL.F32        S1, S10, S4
26255E:  VLDR            S6, [R0,#0xE0]
262562:  LDRD.W          R5, R4, [R0,#0xF4]
262566:  SUBS            R1, R3, R1
262568:  ANDS            R1, R5
26256A:  ADD.W           R1, R4, R1,LSL#2
26256E:  VLDR            S3, [R1]
262572:  AND.W           R1, R5, R3
262576:  VSUB.F32        S5, S3, S1
26257A:  ADD.W           R1, R4, R1,LSL#2
26257E:  VMUL.F32        S6, S6, S3
262582:  VMUL.F32        S4, S4, S5
262586:  VSUB.F32        S6, S6, S1
26258A:  VADD.F32        S4, S10, S4
26258E:  VNEG.F32        S8, S6
262592:  VSTR            S4, [R1]
262596:  VLDR            S4, [R0,#0xD4]
26259A:  VSUB.F32        S8, S8, S0
26259E:  LDR.W           R1, [R0,#0x114]
2625A2:  LDR.W           R3, [R0,#0x1D8]
2625A6:  VMUL.F32        S5, S12, S4
2625AA:  VLDR            S10, [R0,#0xE4]
2625AE:  LDRD.W          R5, R4, [R0,#0xFC]
2625B2:  SUBS            R1, R3, R1
2625B4:  ANDS            R1, R5
2625B6:  ADD.W           R1, R4, R1,LSL#2
2625BA:  VLDR            S7, [R1]
2625BE:  AND.W           R1, R5, R3
2625C2:  VSUB.F32        S9, S7, S5
2625C6:  ADD.W           R1, R4, R1,LSL#2
2625CA:  VMUL.F32        S10, S10, S7
2625CE:  VMUL.F32        S4, S4, S9
2625D2:  VSUB.F32        S10, S10, S5
2625D6:  VADD.F32        S4, S12, S4
2625DA:  VSTR            S4, [R1]
2625DE:  VLDR            S4, [R0,#0xD4]
2625E2:  VLDR            S12, [R0,#0xE8]
2625E6:  LDRD.W          R1, R3, [R0,#0x104]
2625EA:  VMUL.F32        S14, S2, S4
2625EE:  LDR.W           R5, [R0,#0x118]
2625F2:  LDR.W           R4, [R0,#0x1D8]
2625F6:  SUBS            R5, R4, R5
2625F8:  ANDS            R5, R1
2625FA:  ANDS            R1, R4
2625FC:  ADD.W           R5, R3, R5,LSL#2
262600:  ADD.W           R1, R3, R1,LSL#2
262604:  VLDR            S1, [R5]
262608:  VSUB.F32        S3, S1, S14
26260C:  VMUL.F32        S12, S12, S1
262610:  VSUB.F32        S1, S10, S0
262614:  VMUL.F32        S4, S4, S3
262618:  VSUB.F32        S12, S12, S14
26261C:  VSUB.F32        S14, S6, S10
262620:  VSUB.F32        S3, S0, S6
262624:  VADD.F32        S2, S2, S4
262628:  VSUB.F32        S4, S8, S10
26262C:  VADD.F32        S8, S1, S12
262630:  VADD.F32        S14, S14, S12
262634:  VADD.F32        S1, S3, S12
262638:  VSTR            S2, [R1]
26263C:  VLDR            S3, [R0,#0xD8]
262640:  VLDR            S2, [R0,#0xCC]
262644:  VMUL.F32        S4, S4, S3
262648:  VMUL.F32        S8, S3, S8
26264C:  VMUL.F32        S14, S3, S14
262650:  VMUL.F32        S1, S3, S1
262654:  VADD.F32        S4, S12, S4
262658:  VADD.F32        S6, S6, S8
26265C:  VADD.F32        S0, S0, S14
262660:  VADD.F32        S8, S10, S1
262664:  VMUL.F32        S10, S2, S6
262668:  VMUL.F32        S12, S2, S0
26266C:  VMUL.F32        S14, S2, S8
262670:  VMUL.F32        S2, S4, S2
262674:  VSTR            S12, [R2]
262678:  VSTR            S10, [R2,#4]
26267C:  VSTR            S14, [R2,#8]
262680:  VSTR            S2, [R2,#0xC]
262684:  LDRD.W          R1, R2, [R0,#0x12C]
262688:  LDR.W           R3, [R0,#0x1D8]
26268C:  ANDS            R1, R3
26268E:  ADD.W           R1, R2, R1,LSL#2
262692:  VSTR            S0, [R1]
262696:  LDRD.W          R1, R2, [R0,#0x134]
26269A:  LDR.W           R3, [R0,#0x1D8]
26269E:  ANDS            R1, R3
2626A0:  ADD.W           R1, R2, R1,LSL#2
2626A4:  VSTR            S6, [R1]
2626A8:  LDRD.W          R1, R2, [R0,#0x13C]
2626AC:  LDR.W           R3, [R0,#0x1D8]
2626B0:  ANDS            R1, R3
2626B2:  ADD.W           R1, R2, R1,LSL#2
2626B6:  VSTR            S8, [R1]
2626BA:  LDRD.W          R1, R2, [R0,#0x144]
2626BE:  LDR.W           R0, [R0,#0x1D8]
2626C2:  ANDS            R0, R1
2626C4:  ADD.W           R0, R2, R0,LSL#2
2626C8:  VSTR            S4, [R0]
2626CC:  POP             {R4,R5,R7,PC}
