; =========================================================
; Game Engine Function: _ZN23CWidgetButtonHydraulics6UpdateEv
; Address            : 0x2B54E0 - 0x2B583C
; =========================================================

2B54E0:  PUSH            {R4,R5,R7,LR}
2B54E2:  ADD             R7, SP, #8
2B54E4:  VPUSH           {D8}
2B54E8:  SUB             SP, SP, #0x10
2B54EA:  MOV             R4, R0
2B54EC:  BLX             j__ZN13CWidgetButton6UpdateEv; CWidgetButton::Update(void)
2B54F0:  MOVS            R0, #1
2B54F2:  MOVS            R1, #0; bool
2B54F4:  STRB.W          R0, [R4,#0xAD]
2B54F8:  MOV.W           R0, #0xFFFFFFFF; int
2B54FC:  MOVS            R5, #0
2B54FE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2B5502:  CBZ             R0, loc_2B5518
2B5504:  LDRB.W          R0, [R0,#0x392]
2B5508:  LSLS            R0, R0, #0x1E
2B550A:  BMI             loc_2B5522
2B550C:  MOVS            R0, #0
2B550E:  STR.W           R0, [R4,#0xA8]
2B5512:  STRH.W          R0, [R4,#0xAC]
2B5516:  B               loc_2B5818
2B5518:  STR.W           R5, [R4,#0xA8]
2B551C:  STRH.W          R5, [R4,#0xAC]
2B5520:  B               loc_2B5818
2B5522:  MOVS            R0, #0; this
2B5524:  MOVS            R5, #0
2B5526:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
2B552A:  BLX             j__ZN4CPad14GetExitVehicleEv; CPad::GetExitVehicle(void)
2B552E:  CMP             R0, #1
2B5530:  MOV.W           R1, #0
2B5534:  ITT EQ
2B5536:  STREQ.W         R5, [R4,#0xA8]
2B553A:  STRHEQ.W        R5, [R4,#0xAC]
2B553E:  LDR             R0, [R4]
2B5540:  LDR             R2, [R0,#0x34]
2B5542:  MOV             R0, R4
2B5544:  BLX             R2
2B5546:  CMP             R0, #1
2B5548:  BNE             loc_2B5592
2B554A:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2B554E:  CBNZ            R0, loc_2B5562
2B5550:  MOVW            R1, #0xA3D
2B5554:  MOV             R0, R4; this
2B5556:  MOVT            R1, #0x3ED7; float
2B555A:  BLX             j__ZN7CWidget16GetNumTapsInTimeEf; CWidget::GetNumTapsInTime(float)
2B555E:  CMP             R0, #1
2B5560:  BLT             loc_2B5592
2B5562:  LDRB.W          R0, [R4,#0xAC]
2B5566:  LDR             R2, =(dword_685F68 - 0x2B5580)
2B5568:  CMP             R0, #0
2B556A:  EOR.W           R1, R0, #1
2B556E:  STRB.W          R1, [R4,#0xAC]
2B5572:  ITT NE
2B5574:  MOVNE           R0, #0
2B5576:  STRNE.W         R0, [R4,#0xA8]
2B557A:  LDR             R0, =(byte_6FA2F5 - 0x2B5584)
2B557C:  ADD             R2, PC; dword_685F68
2B557E:  LDR             R1, =(byte_6FA2F4 - 0x2B5586)
2B5580:  ADD             R0, PC; byte_6FA2F5
2B5582:  ADD             R1, PC; byte_6FA2F4
2B5584:  MOVS            R3, #0
2B5586:  STRB            R3, [R0]
2B5588:  MOV.W           R0, #0xFFFFFFFF
2B558C:  STRB            R3, [R1]
2B558E:  STR             R0, [R2]
2B5590:  B               loc_2B5818
2B5592:  LDR             R0, [R4]
2B5594:  MOVS            R1, #0
2B5596:  LDR             R2, [R0,#0x50]
2B5598:  MOV             R0, R4
2B559A:  BLX             R2
2B559C:  LDR             R1, =(dword_685F68 - 0x2B55A4)
2B559E:  CMP             R0, #0
2B55A0:  ADD             R1, PC; dword_685F68
2B55A2:  LDR             R1, [R1]
2B55A4:  IT EQ
2B55A6:  ADDSEQ.W        R0, R1, #1
2B55AA:  BEQ.W           loc_2B5818
2B55AE:  LDR             R0, =(byte_6FA2F4 - 0x2B55B4)
2B55B0:  ADD             R0, PC; byte_6FA2F4
2B55B2:  LDRB            R0, [R0]
2B55B4:  CBNZ            R0, loc_2B55F2
2B55B6:  LDR             R0, =(dword_685F68 - 0x2B55C4)
2B55B8:  VMOV.F32        S8, #0.5
2B55BC:  LDR             R1, [R4,#0x78]; int
2B55BE:  MOVS            R2, #1
2B55C0:  ADD             R0, PC; dword_685F68
2B55C2:  STR             R1, [R0]
2B55C4:  VLDR            S0, [R4,#0x20]
2B55C8:  VLDR            S4, [R4,#0x28]
2B55CC:  VLDR            S2, [R4,#0x24]
2B55D0:  VLDR            S6, [R4,#0x2C]
2B55D4:  VADD.F32        S0, S0, S4
2B55D8:  LDR             R0, =(byte_6FA2F4 - 0x2B55E2)
2B55DA:  VADD.F32        S2, S2, S6
2B55DE:  ADD             R0, PC; byte_6FA2F4
2B55E0:  VMUL.F32        S0, S0, S8
2B55E4:  VMUL.F32        S2, S2, S8
2B55E8:  VSTR            S0, [R4,#0xB8]
2B55EC:  VSTR            S2, [R4,#0xBC]
2B55F0:  STRB            R2, [R0]
2B55F2:  ADD             R0, SP, #0x20+var_18; this
2B55F4:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2B55F8:  VLDR            S0, [SP,#0x20+var_18]
2B55FC:  VMOV.F32        S16, #2.5
2B5600:  VABS.F32        S0, S0
2B5604:  VCMPE.F32       S0, S16
2B5608:  VMRS            APSR_nzcv, FPSCR
2B560C:  BGT             loc_2B562C
2B560E:  LDR             R0, =(dword_685F68 - 0x2B5614)
2B5610:  ADD             R0, PC; dword_685F68
2B5612:  LDR             R1, [R0]; int
2B5614:  MOV             R0, SP; this
2B5616:  BLX             j__ZN15CTouchInterface13GetTouchDeltaEi; CTouchInterface::GetTouchDelta(int)
2B561A:  VLDR            S0, [SP,#0x20+var_1C]
2B561E:  VABS.F32        S0, S0
2B5622:  VCMPE.F32       S0, S16
2B5626:  VMRS            APSR_nzcv, FPSCR
2B562A:  BLE             loc_2B5634
2B562C:  LDR             R0, =(byte_6FA2F5 - 0x2B5634)
2B562E:  MOVS            R1, #1
2B5630:  ADD             R0, PC; byte_6FA2F5
2B5632:  STRB            R1, [R0]
2B5634:  LDR             R0, [R4]
2B5636:  MOVS            R1, #0
2B5638:  LDR             R2, [R0,#0x50]
2B563A:  MOV             R0, R4
2B563C:  BLX             R2
2B563E:  CMP             R0, #1
2B5640:  BNE             loc_2B564E
2B5642:  LDR             R0, =(byte_6FA2F5 - 0x2B5648)
2B5644:  ADD             R0, PC; byte_6FA2F5
2B5646:  LDRB            R0, [R0]
2B5648:  CMP             R0, #1
2B564A:  BNE.W           loc_2B5800
2B564E:  LDR             R5, =(dword_685F68 - 0x2B5656)
2B5650:  ADD             R0, SP, #0x20+var_18; this
2B5652:  ADD             R5, PC; dword_685F68
2B5654:  LDR             R1, [R5]; int
2B5656:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B565A:  LDR             R0, [SP,#0x20+var_18]
2B565C:  STR.W           R0, [R4,#0xC0]
2B5660:  ADD             R0, SP, #0x20+var_18; this
2B5662:  LDR             R1, [R5]; int
2B5664:  BLX             j__ZN15CTouchInterface16GetTouchPositionEi; CTouchInterface::GetTouchPosition(int)
2B5668:  LDR             R0, [SP,#0x20+var_14]
2B566A:  STR.W           R0, [R4,#0xC4]
2B566E:  VLDR            S0, [R4,#0xB8]
2B5672:  VLDR            S4, [R4,#0xC0]
2B5676:  VMOV            S6, R0
2B567A:  VLDR            S2, [R4,#0xBC]
2B567E:  VSUB.F32        S0, S4, S0
2B5682:  VSUB.F32        S2, S6, S2
2B5686:  VMOV            R0, S0
2B568A:  VMOV            R1, S2; x
2B568E:  EOR.W           R0, R0, #0x80000000; y
2B5692:  BLX             atan2f
2B5696:  VLDR            S0, =180.0
2B569A:  VMOV            S2, R0
2B569E:  LDR             R1, =(unk_6FA2F8 - 0x2B56AC)
2B56A0:  VMUL.F32        S0, S2, S0
2B56A4:  VLDR            S2, =3.1416
2B56A8:  ADD             R1, PC; unk_6FA2F8
2B56AA:  STR.W           R0, [R4,#0xB0]
2B56AE:  VDIV.F32        S0, S0, S2
2B56B2:  VLDR            S2, [R1]
2B56B6:  VCMP.F32        S2, S0
2B56BA:  VMRS            APSR_nzcv, FPSCR
2B56BE:  BEQ             loc_2B56D2
2B56C0:  LDR             R0, =(dword_6FA2FC - 0x2B56CA)
2B56C2:  MOVS            R2, #0
2B56C4:  LDR             R1, =(unk_6FA2F8 - 0x2B56CC)
2B56C6:  ADD             R0, PC; dword_6FA2FC
2B56C8:  ADD             R1, PC; unk_6FA2F8
2B56CA:  STR             R2, [R0]
2B56CC:  VSTR            S0, [R1]
2B56D0:  B               loc_2B5708
2B56D2:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x2B56DC)
2B56D4:  VLDR            S2, =50.0
2B56D8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
2B56DA:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
2B56DC:  VLDR            S4, [R0]
2B56E0:  LDR             R0, =(dword_6FA2FC - 0x2B56EA)
2B56E2:  VDIV.F32        S2, S4, S2
2B56E6:  ADD             R0, PC; dword_6FA2FC
2B56E8:  VLDR            S4, [R0]
2B56EC:  VADD.F32        S2, S4, S2
2B56F0:  VMOV.F32        S4, #2.0
2B56F4:  VSTR            S2, [R0]
2B56F8:  VCMPE.F32       S2, S4
2B56FC:  VMRS            APSR_nzcv, FPSCR
2B5700:  ITT GT
2B5702:  MOVGT           R0, #1
2B5704:  STRBGT.W        R0, [R4,#0xAC]
2B5708:  VLDR            S2, =22.5
2B570C:  VCMPE.F32       S0, S2
2B5710:  VMRS            APSR_nzcv, FPSCR
2B5714:  BGE             loc_2B5728
2B5716:  VLDR            S4, =-22.5
2B571A:  VCMPE.F32       S0, S4
2B571E:  VMRS            APSR_nzcv, FPSCR
2B5722:  BLE             loc_2B5728
2B5724:  MOVS            R0, #2
2B5726:  B               loc_2B57FC
2B5728:  VCMPE.F32       S0, S2
2B572C:  VMRS            APSR_nzcv, FPSCR
2B5730:  BLE             loc_2B5744
2B5732:  VLDR            S2, =67.5
2B5736:  VCMPE.F32       S0, S2
2B573A:  VMRS            APSR_nzcv, FPSCR
2B573E:  BGE             loc_2B5744
2B5740:  MOVS            R0, #7
2B5742:  B               loc_2B57FC
2B5744:  VLDR            S2, =67.5
2B5748:  VCMPE.F32       S0, S2
2B574C:  VMRS            APSR_nzcv, FPSCR
2B5750:  BLE             loc_2B5764
2B5752:  VLDR            S2, =112.5
2B5756:  VCMPE.F32       S0, S2
2B575A:  VMRS            APSR_nzcv, FPSCR
2B575E:  BGE             loc_2B5764
2B5760:  MOVS            R0, #3
2B5762:  B               loc_2B57FC
2B5764:  VLDR            S2, =112.5
2B5768:  VCMPE.F32       S0, S2
2B576C:  VMRS            APSR_nzcv, FPSCR
2B5770:  BLE             loc_2B5784
2B5772:  VLDR            S2, =157.5
2B5776:  VCMPE.F32       S0, S2
2B577A:  VMRS            APSR_nzcv, FPSCR
2B577E:  BGE             loc_2B5784
2B5780:  MOVS            R0, #5
2B5782:  B               loc_2B57FC
2B5784:  VLDR            S2, =157.5
2B5788:  MOVS            R0, #1
2B578A:  VCMPE.F32       S0, S2
2B578E:  VMRS            APSR_nzcv, FPSCR
2B5792:  BGT             loc_2B57FC
2B5794:  VLDR            S2, =-157.5
2B5798:  VCMPE.F32       S0, S2
2B579C:  VMRS            APSR_nzcv, FPSCR
2B57A0:  BLT             loc_2B57FC
2B57A2:  VCMPE.F32       S0, S2
2B57A6:  VMRS            APSR_nzcv, FPSCR
2B57AA:  BLE             loc_2B57BE
2B57AC:  VLDR            S2, =-112.5
2B57B0:  VCMPE.F32       S0, S2
2B57B4:  VMRS            APSR_nzcv, FPSCR
2B57B8:  BGE             loc_2B57BE
2B57BA:  MOVS            R0, #6
2B57BC:  B               loc_2B57FC
2B57BE:  VLDR            S2, =-112.5
2B57C2:  VCMPE.F32       S0, S2
2B57C6:  VMRS            APSR_nzcv, FPSCR
2B57CA:  BLE             loc_2B57DE
2B57CC:  VLDR            S2, =-67.5
2B57D0:  VCMPE.F32       S0, S2
2B57D4:  VMRS            APSR_nzcv, FPSCR
2B57D8:  BGE             loc_2B57DE
2B57DA:  MOVS            R0, #4
2B57DC:  B               loc_2B57FC
2B57DE:  VLDR            S2, =-67.5
2B57E2:  VCMPE.F32       S0, S2
2B57E6:  VMRS            APSR_nzcv, FPSCR
2B57EA:  BLE             loc_2B5800
2B57EC:  VLDR            S2, =-22.5
2B57F0:  VCMPE.F32       S0, S2
2B57F4:  VMRS            APSR_nzcv, FPSCR
2B57F8:  BGE             loc_2B5800
2B57FA:  MOVS            R0, #8
2B57FC:  STR.W           R0, [R4,#0xA8]
2B5800:  LDR             R0, [R4]
2B5802:  MOVS            R1, #0
2B5804:  LDR             R2, [R0,#0x50]
2B5806:  MOV             R0, R4
2B5808:  BLX             R2
2B580A:  CBNZ            R0, loc_2B5818
2B580C:  LDR             R0, =(dword_685F68 - 0x2B5812)
2B580E:  ADD             R0, PC; dword_685F68
2B5810:  LDR             R0, [R0]; this
2B5812:  BLX             j__ZN15CTouchInterface11IsTouchDownEi; CTouchInterface::IsTouchDown(int)
2B5816:  CBZ             R0, loc_2B5820
2B5818:  ADD             SP, SP, #0x10
2B581A:  VPOP            {D8}
2B581E:  POP             {R4,R5,R7,PC}
2B5820:  LDRB.W          R0, [R4,#0xAC]
2B5824:  LDR             R1, =(byte_6FA2F4 - 0x2B5836)
2B5826:  CMP             R0, #0
2B5828:  LDR             R2, =(dword_685F68 - 0x2B583A)
2B582A:  ITT EQ
2B582C:  MOVEQ           R0, #0
2B582E:  STREQ.W         R0, [R4,#0xA8]
2B5832:  ADD             R1, PC; byte_6FA2F4
2B5834:  LDR             R0, =(byte_6FA2F5 - 0x2B583C)
2B5836:  ADD             R2, PC; dword_685F68
2B5838:  ADD             R0, PC; byte_6FA2F5
2B583A:  B               loc_2B5584
