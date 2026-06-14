; =========================================================
; Game Engine Function: _ZN8CVehicle30SpecialEntityPreCollisionStuffEP9CPhysicalbRbS2_S2_S2_
; Address            : 0x5824DC - 0x5827B6
; =========================================================

5824DC:  PUSH            {R4-R7,LR}
5824DE:  ADD             R7, SP, #0xC
5824E0:  PUSH.W          {R8-R10}
5824E4:  SUB             SP, SP, #0x68
5824E6:  MOV             R4, R1
5824E8:  MOV             R6, R0
5824EA:  LDRB.W          R0, [R4,#0x3A]
5824EE:  MOV             R8, R3
5824F0:  MOV             R5, R2
5824F2:  AND.W           R0, R0, #7
5824F6:  CMP             R0, #3
5824F8:  BNE             loc_58250A
5824FA:  LDRB.W          R0, [R4,#0x48B]
5824FE:  LSLS            R0, R0, #0x18
582500:  BPL             loc_58250A
582502:  LDR.W           R0, [R4,#0x590]
582506:  CMP             R0, R6
582508:  BEQ             loc_5825A6
58250A:  LDRB.W          R0, [R6,#0x47]
58250E:  LSLS            R0, R0, #0x1F
582510:  BEQ             loc_58252A
582512:  LDRB.W          R0, [R6,#0x3A]
582516:  MOVS            R1, #8
582518:  ORR.W           R0, R1, R0,LSR#3
58251C:  CMP             R0, #8
58251E:  BEQ             loc_58252A
582520:  MOV             R0, R4; this
582522:  BLX             j__ZN7CEntity24DoesNotCollideWithFlyersEv; CEntity::DoesNotCollideWithFlyers(void)
582526:  CMP             R0, #1
582528:  BEQ             loc_5825A6
58252A:  LDR.W           R0, [R6,#0x12C]
58252E:  LDR.W           R9, [R7,#arg_0]
582532:  CMP             R0, R4
582534:  ITT NE
582536:  LDRNE.W         R0, [R4,#0x12C]
58253A:  CMPNE           R0, R6
58253C:  BNE             loc_58254E
58253E:  MOVS            R0, #1
582540:  STRB.W          R0, [R9]
582544:  LDR             R0, [R6,#0x44]
582546:  ORR.W           R0, R0, #0x1000
58254A:  STR             R0, [R6,#0x44]
58254C:  B               loc_5825AC
58254E:  LDR.W           R0, [R6,#0x100]
582552:  CMP             R0, R4
582554:  BEQ             loc_58259E
582556:  LDR.W           R0, [R4,#0x100]
58255A:  CMP             R0, R6
58255C:  BEQ             loc_5825B4
58255E:  LDR             R0, [R6,#0x44]
582560:  TST.W           R0, #4
582564:  BEQ             loc_58256E
582566:  LDRB.W          R1, [R4,#0x44]
58256A:  LSLS            R1, R1, #0x1D
58256C:  BMI             loc_5825A6
58256E:  LDR             R1, [R6,#0x1C]
582570:  ANDS.W          R1, R1, #0x10
582574:  BEQ             loc_58258C
582576:  LDRB.W          R2, [R4,#0x3A]
58257A:  AND.W           R2, R2, #7
58257E:  CMP             R2, #2
582580:  BNE             loc_58258C
582582:  LDR             R2, [R4,#0x44]
582584:  AND.W           R2, R2, #0xC
582588:  CMP             R2, #4
58258A:  BEQ             loc_58253E
58258C:  LDRB.W          R2, [R4,#0x44]
582590:  LDR.W           R10, [R7,#arg_8]
582594:  TST.W           R2, #0xE0
582598:  BEQ             loc_5825BC
58259A:  CMP             R5, #1
58259C:  BNE             loc_5825F4
58259E:  MOVS            R0, #1
5825A0:  STRB.W          R0, [R9]
5825A4:  B               loc_5825AC
5825A6:  MOVS            R0, #1
5825A8:  STRB.W          R0, [R8]
5825AC:  ADD             SP, SP, #0x68 ; 'h'
5825AE:  POP.W           {R8-R10}
5825B2:  POP             {R4-R7,PC}
5825B4:  MOVS            R0, #1
5825B6:  STRB.W          R0, [R8]
5825BA:  B               loc_582544
5825BC:  LDRB.W          R2, [R4,#0x3A]
5825C0:  LDR             R5, [R7,#arg_4]
5825C2:  AND.W           R3, R2, #7
5825C6:  CMP             R3, #4
5825C8:  BNE             loc_5825FE
5825CA:  LDR.W           R0, [R4,#0x144]
5825CE:  TST.W           R0, #0x100
5825D2:  BEQ             loc_58265E
5825D4:  LDR             R2, [R4,#0x14]
5825D6:  VLDR            S0, =0.66
5825DA:  VLDR            S2, [R2,#0x28]
5825DE:  VCMPE.F32       S2, S0
5825E2:  VMRS            APSR_nzcv, FPSCR
5825E6:  BGE             loc_58265E
5825E8:  MOVS            R0, #1
5825EA:  STRB.W          R0, [R8]
5825EE:  STR.W           R6, [R4,#0x12C]
5825F2:  B               loc_582794
5825F4:  CBNZ            R1, loc_582656
5825F6:  LDRB            R0, [R4,#0x1C]
5825F8:  LSLS            R0, R0, #0x1B
5825FA:  BPL             loc_5825AC
5825FC:  B               loc_582656
5825FE:  LDRSH.W         R1, [R4,#0x26]
582602:  MOVW            R3, #0x1B9
582606:  CMP             R1, R3
582608:  BEQ             loc_58253E
58260A:  CMP.W           R1, #0x234
58260E:  ITT NE
582610:  MOVWNE          R3, #0x252
582614:  CMPNE           R1, R3
582616:  BEQ.W           loc_58253E
58261A:  LDRSH.W         R1, [R6,#0x26]
58261E:  MOVW            R3, #0x1B9
582622:  CMP             R1, R3
582624:  ITT NE
582626:  MOVWNE          R3, #0x252
58262A:  CMPNE           R1, R3
58262C:  BEQ             loc_582634
58262E:  CMP.W           R1, #0x234
582632:  BNE             loc_58263E
582634:  AND.W           R1, R2, #6
582638:  CMP             R1, #2
58263A:  BEQ.W           loc_58253E
58263E:  LDR.W           R1, [R6,#0x4D0]
582642:  CMP             R1, R4
582644:  ITT NE
582646:  LDRNE.W         R1, [R6,#0x4D4]
58264A:  CMPNE           R1, R4
58264C:  BNE.W           loc_5827AA
582650:  ORR.W           R0, R0, #0x1000
582654:  STR             R0, [R6,#0x44]
582656:  MOVS            R0, #1
582658:  STRB.W          R0, [R10]
58265C:  B               loc_5825AC
58265E:  LDRH            R2, [R4,#0x26]
582660:  SUB.W           R2, R2, #0x176
582664:  UXTH            R2, R2
582666:  CMP             R2, #7
582668:  BHI             loc_582672
58266A:  MOVS            R0, #1
58266C:  STRB.W          R0, [R8]
582670:  B               loc_582794
582672:  LDRB.W          R2, [R4,#0x140]
582676:  CMP             R2, #3
582678:  BEQ             loc_58268A
58267A:  ANDS.W          R0, R0, #0x40 ; '@'
58267E:  BNE             loc_58268A
582680:  LDR             R0, [R4,#0x1C]
582682:  TST.W           R0, #0x40004
582686:  BNE.W           loc_582794
58268A:  LDRSH.W         R0, [R6,#0x26]
58268E:  CMP.W           R0, #0x196
582692:  ITT NE
582694:  MOVWNE          R2, #0x212
582698:  CMPNE           R0, R2
58269A:  BEQ             loc_5826A2
58269C:  CMP.W           R0, #0x1E6
5826A0:  BNE             loc_5826B2
5826A2:  CBNZ            R1, loc_5826AA
5826A4:  LDRB            R0, [R4,#0x1C]
5826A6:  LSLS            R0, R0, #0x1B
5826A8:  BPL             loc_582794
5826AA:  MOVS            R0, #1
5826AC:  STRB.W          R0, [R10]
5826B0:  B               loc_582794
5826B2:  LDRB.W          R0, [R4,#0x148]
5826B6:  CMP             R0, #0x13
5826B8:  BHI             loc_582794
5826BA:  LDR.W           R0, [R6,#0x5A0]
5826BE:  CMP             R0, #9
5826C0:  BEQ             loc_582794
5826C2:  MOV             R0, R4; this
5826C4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5826C8:  VMOV.F32        S0, #1.0
5826CC:  VLDR            S2, [R0,#0xC]
5826D0:  VCMPE.F32       S2, S0
5826D4:  VMRS            APSR_nzcv, FPSCR
5826D8:  BGE             loc_582794
5826DA:  VLDR            S2, [R0,#0x10]
5826DE:  VCMPE.F32       S2, S0
5826E2:  VMRS            APSR_nzcv, FPSCR
5826E6:  BGE             loc_582794
5826E8:  VLDR            S2, [R0,#0x14]
5826EC:  VCMPE.F32       S2, S0
5826F0:  VMRS            APSR_nzcv, FPSCR
5826F4:  BGE             loc_582794
5826F6:  MOVS            R1, #0
5826F8:  ADD             R2, SP, #0x80+var_70
5826FA:  STRD.W          R1, R1, [SP,#0x80+var_20]
5826FE:  VLDR            S0, [R0]
582702:  VLDR            S6, [R0,#0xC]
582706:  VLDR            S2, [R0,#4]
58270A:  VLDR            S8, [R0,#0x10]
58270E:  VSUB.F32        S0, S6, S0
582712:  VLDR            S4, [R0,#8]
582716:  VLDR            S10, [R0,#0x14]
58271A:  VSUB.F32        S2, S8, S2
58271E:  MOV             R0, SP
582720:  VSUB.F32        S4, S10, S4
582724:  VSTR            S2, [SP,#0x80+var_70+4]
582728:  VSTR            S0, [SP,#0x80+var_70]
58272C:  VSTR            S4, [SP,#0x80+var_68]
582730:  LDR             R1, [R4,#0x14]
582732:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
582736:  VLDR            D16, [SP,#0x80+var_80]
58273A:  LDR             R0, [SP,#0x80+var_78]
58273C:  STR             R0, [SP,#0x80+var_68]
58273E:  VSTR            D16, [SP,#0x80+var_70]
582742:  LDR             R0, [R6,#0x14]; CMatrix *
582744:  VLDR            S0, [SP,#0x80+var_68]
582748:  ADD.W           R1, R0, #0x30 ; '0'
58274C:  CMP             R0, #0
58274E:  IT EQ
582750:  ADDEQ           R1, R6, #4
582752:  VLDR            S2, [R1,#8]
582756:  VCMPE.F32       S2, S0
58275A:  VMRS            APSR_nzcv, FPSCR
58275E:  BGT             loc_582788
582760:  ADD             R6, SP, #0x80+var_60
582762:  MOV             R1, R6; CMatrix *
582764:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
582768:  MOV             R1, R0
58276A:  MOV             R0, R6
58276C:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
582770:  ADD             R2, SP, #0x80+var_70
582772:  MOV             R0, SP
582774:  MOV             R1, R6
582776:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
58277A:  VLDR            S0, [SP,#0x80+var_78]
58277E:  VCMPE.F32       S0, #0.0
582782:  VMRS            APSR_nzcv, FPSCR
582786:  BGE             loc_58278E
582788:  MOVS            R0, #1
58278A:  STRB.W          R0, [R9]
58278E:  ADD             R0, SP, #0x80+var_60; this
582790:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
582794:  LDRB.W          R0, [R9]
582798:  LDRB.W          R1, [R8]
58279C:  LDRB.W          R2, [R10]
5827A0:  ORRS            R0, R1
5827A2:  ORRS            R0, R2
5827A4:  LSLS            R0, R0, #0x18
5827A6:  BNE.W           loc_5825AC
5827AA:  LDRB            R0, [R4,#0x1C]
5827AC:  LSLS            R0, R0, #0x1B
5827AE:  ITT MI
5827B0:  MOVMI           R0, #1
5827B2:  STRBMI          R0, [R5]
5827B4:  B               loc_5825AC
