; =========================================================
; Game Engine Function: _ZN6CRadar13ClipRadarPolyEP9CVector2DPKS0_
; Address            : 0x443460 - 0x443782
; =========================================================

443460:  PUSH            {R4-R7,LR}
443462:  ADD             R7, SP, #0xC
443464:  PUSH.W          {R8-R11}
443468:  SUB             SP, SP, #4
44346A:  VPUSH           {D8-D11}
44346E:  SUB             SP, SP, #0x48
443470:  MOV             R8, R0
443472:  ADR             R0, dword_443790
443474:  VLD1.64         {D8-D9}, [R0@128]
443478:  ADR             R0, dword_4437A0
44347A:  VMOV.F32        S0, #-1.0
44347E:  MOV             R9, R1
443480:  VLD1.64         {D10-D11}, [R0@128]
443484:  ADD             R0, SP, #0x88+var_64
443486:  VST1.32         {D10-D11}, [R0]!
44348A:  VST1.32         {D8-D9}, [R0]
44348E:  MOVS            R0, #0
443490:  VLDR            S4, [R9]
443494:  VCMPE.F32       S4, S0
443498:  VMRS            APSR_nzcv, FPSCR
44349C:  BLT             loc_4434CE
44349E:  VMOV.F32        S2, #1.0
4434A2:  VCMPE.F32       S4, S2
4434A6:  VMRS            APSR_nzcv, FPSCR
4434AA:  BGT             loc_4434CE
4434AC:  VLDR            S4, [R9,#4]
4434B0:  MOVS            R1, #0
4434B2:  MOVS            R0, #0
4434B4:  VCMPE.F32       S4, S0
4434B8:  VMRS            APSR_nzcv, FPSCR
4434BC:  VCMPE.F32       S4, S2
4434C0:  IT GE
4434C2:  MOVGE           R1, #1
4434C4:  VMRS            APSR_nzcv, FPSCR
4434C8:  IT LE
4434CA:  MOVLE           R0, #1
4434CC:  ANDS            R0, R1
4434CE:  STRB.W          R0, [SP,#0x88+var_44]
4434D2:  MOVS            R1, #0
4434D4:  VLDR            S4, [R9,#8]
4434D8:  VCMPE.F32       S4, S0
4434DC:  VMRS            APSR_nzcv, FPSCR
4434E0:  BLT             loc_443512
4434E2:  VMOV.F32        S2, #1.0
4434E6:  VCMPE.F32       S4, S2
4434EA:  VMRS            APSR_nzcv, FPSCR
4434EE:  BGT             loc_443512
4434F0:  VLDR            S4, [R9,#0xC]
4434F4:  MOVS            R2, #0
4434F6:  MOVS            R1, #0
4434F8:  VCMPE.F32       S4, S0
4434FC:  VMRS            APSR_nzcv, FPSCR
443500:  VCMPE.F32       S4, S2
443504:  IT GE
443506:  MOVGE           R2, #1
443508:  VMRS            APSR_nzcv, FPSCR
44350C:  IT LE
44350E:  MOVLE           R1, #1
443510:  ANDS            R1, R2
443512:  STRB.W          R1, [SP,#0x88+var_43]
443516:  MOVS            R1, #0
443518:  VLDR            S4, [R9,#0x10]
44351C:  VCMPE.F32       S4, S0
443520:  VMRS            APSR_nzcv, FPSCR
443524:  BLT             loc_443556
443526:  VMOV.F32        S2, #1.0
44352A:  VCMPE.F32       S4, S2
44352E:  VMRS            APSR_nzcv, FPSCR
443532:  BGT             loc_443556
443534:  VLDR            S4, [R9,#0x14]
443538:  MOVS            R2, #0
44353A:  MOVS            R1, #0
44353C:  VCMPE.F32       S4, S0
443540:  VMRS            APSR_nzcv, FPSCR
443544:  VCMPE.F32       S4, S2
443548:  IT GE
44354A:  MOVGE           R2, #1
44354C:  VMRS            APSR_nzcv, FPSCR
443550:  IT LE
443552:  MOVLE           R1, #1
443554:  ANDS            R1, R2
443556:  STRB.W          R1, [SP,#0x88+var_42]
44355A:  MOVS            R1, #0
44355C:  VLDR            S4, [R9,#0x18]
443560:  VCMPE.F32       S4, S0
443564:  VMRS            APSR_nzcv, FPSCR
443568:  BLT             loc_44359A
44356A:  VMOV.F32        S2, #1.0
44356E:  VCMPE.F32       S4, S2
443572:  VMRS            APSR_nzcv, FPSCR
443576:  BGT             loc_44359A
443578:  VLDR            S4, [R9,#0x1C]
44357C:  MOVS            R2, #0
44357E:  MOVS            R1, #0
443580:  VCMPE.F32       S4, S0
443584:  VMRS            APSR_nzcv, FPSCR
443588:  VCMPE.F32       S4, S2
44358C:  IT GE
44358E:  MOVGE           R2, #1
443590:  VMRS            APSR_nzcv, FPSCR
443594:  IT LE
443596:  MOVLE           R1, #1
443598:  ANDS            R1, R2
44359A:  ADD             R4, SP, #0x88+var_44
44359C:  MOV.W           LR, #0xFFFFFFFF
4435A0:  MOV.W           R11, #0
4435A4:  MOVS            R5, #0
4435A6:  STRB.W          R1, [SP,#0x88+var_41]
4435AA:  ADD.W           R1, R9, #0x18
4435AE:  STR             R1, [SP,#0x88+var_88]
4435B0:  STRD.W          R9, R8, [SP,#0x88+var_84]
4435B4:  LSLS            R0, R0, #0x18
4435B6:  BNE.W           loc_4436D6
4435BA:  ADD.W           R1, R11, #3
4435BE:  ADD.W           R4, R9, R11,LSL#3
4435C2:  AND.W           R1, R1, #3
4435C6:  ADD.W           R0, R8, R5,LSL#3
4435CA:  MOV             R6, LR
4435CC:  ADD.W           R2, R9, R1,LSL#3
4435D0:  MOV             R1, R4
4435D2:  BLX             j__Z21LineRadarBoxCollisionR9CVector2DRKS_S2_; LineRadarBoxCollision(CVector2D &,CVector2D const&,CVector2D const&)
4435D6:  MOV             R1, R9
4435D8:  MOV             R9, R0
4435DA:  ADDS.W          R0, R9, #1
4435DE:  STR             R0, [SP,#0x88+var_70]
4435E0:  MOV             R0, R8
4435E2:  MOV             R8, R9
4435E4:  STR             R6, [SP,#0x88+var_74]
4435E6:  IT EQ
4435E8:  MOVEQ           R8, R6
4435EA:  ADD.W           R6, R5, #1
4435EE:  ADD.W           R10, R11, #1
4435F2:  AND.W           R2, R10, #3
4435F6:  IT NE
4435F8:  MOVNE           R5, R6
4435FA:  ADD.W           R0, R0, R5,LSL#3
4435FE:  ADD.W           R2, R1, R2,LSL#3
443602:  MOV             R1, R4
443604:  STR             R0, [SP,#0x88+var_7C]
443606:  BLX             j__Z21LineRadarBoxCollisionR9CVector2DRKS_S2_; LineRadarBoxCollision(CVector2D &,CVector2D const&,CVector2D const&)
44360A:  STR             R0, [SP,#0x88+var_78]
44360C:  ADDS            R0, #1
44360E:  BEQ             loc_44361E
443610:  LDR             R0, [SP,#0x88+var_70]
443612:  CBZ             R0, loc_44362E
443614:  MOV             LR, R9
443616:  LDRD.W          R9, R8, [SP,#0x88+var_84]
44361A:  ADD             R4, SP, #0x88+var_44
44361C:  B               loc_4436C2
44361E:  MOV             LR, R8
443620:  LDRD.W          R9, R8, [SP,#0x88+var_84]
443624:  ADD             R4, SP, #0x88+var_44
443626:  CMP.W           R10, #4
44362A:  BNE             loc_4436CA
44362C:  B               loc_4436F6
44362E:  ADDS.W          R0, R8, #1
443632:  LDRD.W          R9, R8, [SP,#0x88+var_84]
443636:  LDR.W           LR, [SP,#0x88+var_74]
44363A:  ADD             R1, SP, #0x88+var_64
44363C:  BNE             loc_443672
44363E:  LDR             R6, [SP,#0x88+var_88]
443640:  MOVS            R0, #3
443642:  CMP             R0, R11
443644:  BLT             loc_44366E
443646:  SUBS            R4, R0, #1
443648:  CMP             R0, #0
44364A:  MOV             R1, R6
44364C:  MOV             R0, R4
44364E:  IT EQ
443650:  MOVEQ           R0, #3
443652:  ADD.W           R2, R9, R0,LSL#3
443656:  ADD             R0, SP, #0x88+var_6C
443658:  BLX             j__Z21LineRadarBoxCollisionR9CVector2DRKS_S2_; LineRadarBoxCollision(CVector2D &,CVector2D const&,CVector2D const&)
44365C:  MOV             LR, R0
44365E:  ADDS.W          R0, LR, #1
443662:  ADD             R1, SP, #0x88+var_64
443664:  SUB.W           R6, R6, #8
443668:  MOV             R0, R4
44366A:  BEQ             loc_443642
44366C:  B               loc_443672
44366E:  MOV.W           LR, #0xFFFFFFFF
443672:  LDR.W           R11, [R8,R5,LSL#3]
443676:  LDR             R0, [SP,#0x88+var_7C]
443678:  STR.W           R11, [SP,#0x88+var_6C]
44367C:  LDR.W           R12, [R0,#4]
443680:  LDR             R0, [SP,#0x88+var_78]
443682:  STR.W           R12, [SP,#0x88+var_68]
443686:  CMP             LR, R0
443688:  BNE             loc_443690
44368A:  MOV             R6, R5
44368C:  ADD             R4, SP, #0x88+var_44
44368E:  B               loc_4436B6
443690:  ADD             R4, SP, #0x88+var_44
443692:  MOV             R2, LR
443694:  MOV             R6, R5
443696:  LDR.W           R3, [R1,R2,LSL#3]
44369A:  ADD.W           R5, R8, R6,LSL#3
44369E:  STR.W           R3, [R8,R6,LSL#3]
4436A2:  ADD.W           R3, R1, R2,LSL#3
4436A6:  ADDS            R2, #1
4436A8:  AND.W           R2, R2, #3
4436AC:  ADDS            R6, #1
4436AE:  LDR             R3, [R3,#4]
4436B0:  CMP             R2, R0
4436B2:  STR             R3, [R5,#4]
4436B4:  BNE             loc_443696
4436B6:  ADD.W           R0, R8, R6,LSL#3
4436BA:  STR.W           R11, [R8,R6,LSL#3]
4436BE:  STR.W           R12, [R0,#4]
4436C2:  ADDS            R5, R6, #1
4436C4:  CMP.W           R10, #4
4436C8:  BEQ             loc_4436F6
4436CA:  LDRB.W          R0, [R4,R10]
4436CE:  MOV             R11, R10
4436D0:  LSLS            R0, R0, #0x18
4436D2:  BEQ.W           loc_4435BA
4436D6:  LDR.W           R0, [R9,R11,LSL#3]
4436DA:  ADD.W           R1, R8, R5,LSL#3
4436DE:  ADD.W           R10, R11, #1
4436E2:  STR.W           R0, [R8,R5,LSL#3]
4436E6:  ADD.W           R0, R9, R11,LSL#3
4436EA:  ADDS            R5, #1
4436EC:  LDR             R0, [R0,#4]
4436EE:  STR             R0, [R1,#4]
4436F0:  CMP.W           R10, #4
4436F4:  BNE             loc_4436CA
4436F6:  CBNZ            R5, loc_443772
4436F8:  VLDR            S2, [R9]
4436FC:  VLDR            S6, [R9,#8]
443700:  VLDR            S0, [R9,#4]
443704:  VLDR            S4, [R9,#0xC]
443708:  VSUB.F32        S8, S2, S6
44370C:  VSUB.F32        S10, S0, S4
443710:  VDIV.F32        S12, S10, S8
443714:  VLDR            S8, [R9,#0x18]
443718:  VLDR            S10, [R9,#0x1C]
44371C:  VMUL.F32        S14, S12, S8
443720:  VMUL.F32        S12, S2, S12
443724:  VSUB.F32        S14, S14, S10
443728:  VSUB.F32        S12, S12, S0
44372C:  VMUL.F32        S12, S12, S14
443730:  VCMPE.F32       S12, #0.0
443734:  VMRS            APSR_nzcv, FPSCR
443738:  BGE             loc_443770
44373A:  VSUB.F32        S8, S2, S8
44373E:  VSUB.F32        S10, S0, S10
443742:  VDIV.F32        S8, S10, S8
443746:  VMUL.F32        S6, S6, S8
44374A:  VMUL.F32        S2, S2, S8
44374E:  VSUB.F32        S4, S6, S4
443752:  VSUB.F32        S0, S2, S0
443756:  VMUL.F32        S0, S0, S4
44375A:  VCMPE.F32       S0, #0.0
44375E:  VMRS            APSR_nzcv, FPSCR
443762:  BGE             loc_443770
443764:  VST1.32         {D10-D11}, [R8]!
443768:  MOVS            R5, #4
44376A:  VST1.32         {D8-D9}, [R8]
44376E:  B               loc_443772
443770:  MOVS            R5, #0
443772:  MOV             R0, R5
443774:  ADD             SP, SP, #0x48 ; 'H'
443776:  VPOP            {D8-D11}
44377A:  ADD             SP, SP, #4
44377C:  POP.W           {R8-R11}
443780:  POP             {R4-R7,PC}
