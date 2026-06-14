; =========================================================
; Game Engine Function: _ZN11CAutomobile23AddMovingCollisionSpeedER7CVector
; Address            : 0x550498 - 0x55067C
; =========================================================

550498:  PUSH            {R4-R7,LR}
55049A:  ADD             R7, SP, #0xC
55049C:  PUSH.W          {R8}
5504A0:  SUB             SP, SP, #0x38
5504A2:  MOV             R4, R0
5504A4:  MOVS            R0, #0
5504A6:  STRD.W          R0, R0, [R4]
5504AA:  MOV             R5, R1
5504AC:  STR             R0, [R4,#8]
5504AE:  MOV             R8, R2
5504B0:  LDRB.W          R1, [R5,#0x3A]
5504B4:  CMP.W           R0, R1,LSR#3
5504B8:  ITT NE
5504BA:  LSRNE           R1, R1, #3
5504BC:  CMPNE           R1, #9
5504BE:  BEQ             loc_5504DC
5504C0:  LDRB.W          R1, [R5,#0x4A8]
5504C4:  CMP             R1, #2
5504C6:  BNE.W           loc_550674
5504CA:  LDRH.W          R1, [R5,#0x880]
5504CE:  CMP             R1, #0
5504D0:  ITT EQ
5504D2:  LDRHEQ.W        R1, [R5,#0x882]
5504D6:  CMPEQ           R1, #0
5504D8:  BEQ.W           loc_550674
5504DC:  STRD.W          R0, R0, [SP,#0x48+var_20]
5504E0:  STR             R0, [SP,#0x48+var_18]
5504E2:  LDRH.W          R0, [R5,#0x880]
5504E6:  LDRH.W          R1, [R5,#0x882]
5504EA:  ADD.W           R2, R0, #0x64 ; 'd'
5504EE:  SUBS            R2, R2, R1
5504F0:  CMP             R2, #0xC8
5504F2:  BHI.W           loc_550674
5504F6:  LDRSH.W         R3, [R5,#0x26]
5504FA:  UXTH            R2, R3
5504FC:  CMP.W           R2, #0x196
550500:  BNE             loc_55051C
550502:  LDR.W           R6, [R5,#0x6B4]
550506:  CBZ             R6, loc_55051C
550508:  LDR             R2, =(_ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr - 0x550510)
55050A:  LDR             R3, [R6,#0x48]
55050C:  ADD             R2, PC; _ZN13CMonsterTruck20DUMPER_COL_ANGLEMULTE_ptr
55050E:  VLDR            D16, [R6,#0x40]
550512:  STR             R3, [SP,#0x48+var_18]
550514:  LDR             R2, [R2]; CMonsterTruck::DUMPER_COL_ANGLEMULT ...
550516:  VLDR            S0, [R2]
55051A:  B               loc_550576
55051C:  CMP.W           R3, #0x1E6
550520:  BEQ             loc_55053C
550522:  MOVW            R6, #0x1BB
550526:  CMP             R3, R6
550528:  BNE             loc_550554
55052A:  LDR             R3, =(PACKER_COL_PIVOT_ptr - 0x550534)
55052C:  VLDR            S0, =-0.0001
550530:  ADD             R3, PC; PACKER_COL_PIVOT_ptr
550532:  LDR             R3, [R3]; PACKER_COL_PIVOT
550534:  VLDR            D16, [R3]
550538:  LDR             R3, [R3,#(dword_A01CE0 - 0xA01CD8)]
55053A:  B               loc_55054C
55053C:  LDR.W           R3, [R5,#0x6AC]
550540:  CBZ             R3, loc_550554
550542:  VLDR            D16, [R3,#0x40]
550546:  LDR             R3, [R3,#0x48]
550548:  VLDR            S0, =0.0002
55054C:  STR             R3, [SP,#0x48+var_18]
55054E:  VSTR            D16, [SP,#0x48+var_20]
550552:  B               loc_550580
550554:  CMP.W           R2, #0x250
550558:  BNE             loc_55057C
55055A:  LDR.W           R2, [R5,#0x6BC]
55055E:  CMP             R2, #0
550560:  BEQ.W           loc_550674
550564:  LDR             R3, =(_ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr - 0x55056E)
550566:  VLDR            D16, [R2,#0x40]
55056A:  ADD             R3, PC; _ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr
55056C:  LDR             R2, [R2,#0x48]
55056E:  STR             R2, [SP,#0x48+var_18]
550570:  LDR             R3, [R3]; CPlane::ANDROM_COL_ANGLE_MULT ...
550572:  VLDR            S0, [R3]
550576:  VSTR            D16, [SP,#0x48+var_20]
55057A:  B               loc_5505DA
55057C:  VLDR            S0, =0.0
550580:  MOVW            R3, #0x212
550584:  CMP             R2, R3
550586:  BNE             loc_5505DA
550588:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x550596)
55058A:  VMOV            S4, R0
55058E:  VLDR            S0, =0.0012
550592:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
550594:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
550596:  VLDR            S2, [R2]
55059A:  VDIV.F32        S0, S0, S2
55059E:  VMOV            S2, R1
5505A2:  VCVT.F32.U32    S2, S2
5505A6:  VCVT.F32.U32    S4, S4
5505AA:  LDR             R0, [R5,#0x14]
5505AC:  VLDR            S6, [R0,#0x28]
5505B0:  VSUB.F32        S2, S4, S2
5505B4:  VLDR            S4, [R0,#0x24]
5505B8:  VMUL.F32        S0, S2, S0
5505BC:  VLDR            S2, [R0,#0x20]
5505C0:  VMUL.F32        S2, S2, S0
5505C4:  VMUL.F32        S4, S0, S4
5505C8:  VMUL.F32        S0, S0, S6
5505CC:  VSTR            S2, [R4]
5505D0:  VSTR            S4, [R4,#4]
5505D4:  VSTR            S0, [R4,#8]
5505D8:  B               loc_550674
5505DA:  VCMP.F32        S0, #0.0
5505DE:  VMRS            APSR_nzcv, FPSCR
5505E2:  BEQ             loc_550674
5505E4:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5505F0)
5505E6:  VMOV            S4, R0
5505EA:  ADD             R0, SP, #0x48+var_30; CMatrix *
5505EC:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5505EE:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
5505F0:  VLDR            S2, [R2]
5505F4:  MOV             R2, R4
5505F6:  VDIV.F32        S0, S0, S2
5505FA:  VMOV            S2, R1
5505FE:  VCVT.F32.U32    S2, S2
550602:  VCVT.F32.U32    S4, S4
550606:  VSUB.F32        S2, S4, S2
55060A:  VMUL.F32        S0, S2, S0
55060E:  VSTR            S0, [R4]
550612:  LDR             R1, [R5,#0x14]; CVector *
550614:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
550618:  VLDR            D16, [SP,#0x48+var_30]
55061C:  ADD             R2, SP, #0x48+var_20
55061E:  LDR             R0, [SP,#0x48+var_28]
550620:  STR             R0, [R4,#8]
550622:  MOV             R0, SP; CMatrix *
550624:  VSTR            D16, [R4]
550628:  LDR             R1, [R5,#0x14]; CVector *
55062A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
55062E:  VLDR            S0, [R8]
550632:  ADD             R0, SP, #0x48+var_30; CVector *
550634:  VLDR            S6, [SP,#0x48+var_48]
550638:  ADD             R2, SP, #0x48+var_3C
55063A:  VLDR            S2, [R8,#4]
55063E:  MOV             R1, R4; CVector *
550640:  VLDR            S8, [SP,#0x48+var_44]
550644:  VSUB.F32        S0, S0, S6
550648:  VLDR            S4, [R8,#8]
55064C:  VLDR            S10, [SP,#0x48+var_40]
550650:  VSUB.F32        S2, S2, S8
550654:  VSUB.F32        S4, S4, S10
550658:  VSTR            S0, [SP,#0x48+var_3C]
55065C:  VSTR            S2, [SP,#0x48+var_38]
550660:  VSTR            S4, [SP,#0x48+var_34]
550664:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
550668:  VLDR            D16, [SP,#0x48+var_30]
55066C:  LDR             R0, [SP,#0x48+var_28]
55066E:  STR             R0, [R4,#8]
550670:  VSTR            D16, [R4]
550674:  ADD             SP, SP, #0x38 ; '8'
550676:  POP.W           {R8}
55067A:  POP             {R4-R7,PC}
