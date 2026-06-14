; =========================================================
; Game Engine Function: _ZN13CMonsterTruck20SetupSuspensionLinesEv
; Address            : 0x574524 - 0x5747C2
; =========================================================

574524:  PUSH            {R4-R7,LR}
574526:  ADD             R7, SP, #0xC
574528:  PUSH.W          {R8-R11}
57452C:  SUB             SP, SP, #4
57452E:  VPUSH           {D8-D11}
574532:  SUB             SP, SP, #0x38; float
574534:  MOV             R4, R0
574536:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x574544)
574538:  LDRSH.W         R1, [R4,#0x26]
57453C:  VMOV.F32        S16, #0.5
574540:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
574542:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
574544:  LDR.W           R0, [R0,R1,LSL#2]
574548:  VLDR            S0, [R0,#0x58]
57454C:  STR             R0, [SP,#0x78+var_5C]
57454E:  VMUL.F32        S0, S0, S16
574552:  LDR             R0, [R0,#0x2C]
574554:  STR             R0, [SP,#0x78+var_64]
574556:  LDR.W           R10, [R0,#0x2C]
57455A:  ADDW            R0, R4, #0x9AC
57455E:  STR             R0, [SP,#0x78+var_60]
574560:  VSTR            S0, [R0]
574564:  LDR.W           R0, [R10,#0x10]; this
574568:  LDRB.W          R1, [R10,#7]
57456C:  CBZ             R0, loc_57457A
57456E:  LSLS            R1, R1, #0x1F; void *
574570:  BNE             loc_574592
574572:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
574576:  LDRB.W          R1, [R10,#7]; unsigned int
57457A:  MOVS            R0, #4
57457C:  STRB.W          R0, [R10,#6]
574580:  ORR.W           R0, R1, #1
574584:  STRB.W          R0, [R10,#7]
574588:  MOVS            R0, #0x90; byte_count
57458A:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
57458E:  STR.W           R0, [R10,#0x10]
574592:  VMOV.F32        S18, #1.0
574596:  ADDW            R11, R4, #0x89C
57459A:  VMOV.F32        S20, #-1.0
57459E:  ADD             R6, SP, #0x78+var_58
5745A0:  VLDR            S22, =0.6
5745A4:  MOVS            R0, #0
5745A6:  MOV.W           R5, #0xFFFFFFFF
5745AA:  MOV.W           R8, #0x11
5745AE:  STRD.W          R0, R0, [SP,#0x78+var_4C]
5745B2:  STR             R0, [SP,#0x78+var_44]
5745B4:  STR.W           R11, [SP,#0x78+var_68]
5745B8:  ADD.W           R9, R5, #1
5745BC:  LDR             R0, [SP,#0x78+var_5C]; this
5745BE:  MOV             R2, R6; CVector *
5745C0:  MOVS            R3, #0; bool
5745C2:  MOV             R1, R9; int
5745C4:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
5745C8:  CMP.W           R9, #2
5745CC:  VMOV.F32        S0, S18
5745D0:  IT LT
5745D2:  VMOVLT.F32      S0, S20
5745D6:  LDR             R0, [SP,#0x78+var_60]
5745D8:  VSTR            S0, [SP,#0x78+var_4C]
5745DC:  MOVS            R2, #0x3C ; '<'
5745DE:  ADD             R3, SP, #0x78+var_4C; CVector *
5745E0:  VLDR            S0, [R0]
5745E4:  LDR.W           R0, [R10,#0x10]
5745E8:  VMOV            R1, S0; float
5745EC:  STR             R2, [SP,#0x78+var_74]; char
5745EE:  VMUL.F32        S0, S0, S22
5745F2:  ADD             R0, R8
5745F4:  MOVS            R2, #0xD
5745F6:  SUBS            R0, #0x11; this
5745F8:  STR             R2, [SP,#0x78+var_70]; unsigned __int8
5745FA:  MOVS            R2, #0xFF
5745FC:  STR             R2, [SP,#0x78+var_6C]; unsigned __int8
5745FE:  MOV             R2, R6; CVector *
574600:  VSTR            S0, [SP,#0x78+var_78]
574604:  BLX             j__ZN8CColDisk3SetEfRK7CVectorS2_fhhh; CColDisk::Set(float,CVector const&,CVector const&,float,uchar,uchar,uchar)
574608:  CMP             R5, #2
57460A:  BHI             loc_57462C
57460C:  MOVW            R0, #0xFFF8
574610:  MOVW            R2, #:lower16:(aZn22ctaskcompl_53+6); "TaskComplexSeekEntityI32CEntitySeekPosC"...
574614:  MOVT            R0, #0xFF
574618:  LDR.W           R1, [R10,#0x10]
57461C:  AND.W           R0, R0, R5,LSL#3
574620:  MOVT            R2, #:upper16:(aZn22ctaskcompl_53+6); "TaskComplexSeekEntityI32CEntitySeekPosC"...
574624:  LSR.W           R0, R2, R0
574628:  STRB.W          R0, [R1,R8]
57462C:  LDR.W           R0, [R4,#0x388]
574630:  ADD.W           R8, R8, #0x24 ; '$'
574634:  VLDR            S0, [SP,#0x78+var_50]
574638:  CMP             R5, #2
57463A:  MOV             R5, R9
57463C:  VLDR            S2, [R0,#0xB8]
574640:  VADD.F32        S2, S0, S2
574644:  VSTR            S2, [R11,#-0x10]
574648:  LDR.W           R0, [R4,#0x388]
57464C:  VLDR            S2, [R0,#0xBC]
574650:  VADD.F32        S0, S0, S2
574654:  VSTR            S0, [R11]
574658:  ADD.W           R11, R11, #4
57465C:  BNE             loc_5745B8
57465E:  VMOV.F32        S0, #-4.0
574662:  LDR.W           R0, [R4,#0x388]
574666:  ADDW            R1, R4, #0x84C
57466A:  VLDR            S2, [R0,#0xAC]
57466E:  LDR             R0, [SP,#0x78+var_68]
574670:  VMUL.F32        S0, S2, S0
574674:  VLDR            S2, [R0]
574678:  ADDW            R0, R4, #0x88C
57467C:  VLDR            S4, [R0]
574680:  LDR             R0, [SP,#0x78+var_60]
574682:  VSUB.F32        S2, S4, S2
574686:  VDIV.F32        S0, S18, S0
57468A:  VADD.F32        S0, S0, S18
57468E:  VMUL.F32        S0, S2, S0
574692:  VLDR            S2, [R0]
574696:  ADDW            R0, R4, #0x8AC
57469A:  VSUB.F32        S0, S0, S4
57469E:  VADD.F32        S0, S2, S0
5746A2:  VSTR            S0, [R0]
5746A6:  ADD.W           R0, R4, #0x8B0
5746AA:  VSUB.F32        S2, S0, S2
5746AE:  VSTR            S0, [R0]
5746B2:  MOV.W           R0, #0x3F800000
5746B6:  LDR             R2, [SP,#0x78+var_5C]
5746B8:  VLDR            S4, [R2,#0x58]
5746BC:  STR.W           R0, [R4,#0x7E8]
5746C0:  VMUL.F32        S4, S4, S16
5746C4:  VSUB.F32        S4, S4, S0
5746C8:  VSTR            S4, [R1]
5746CC:  ADD.W           R1, R4, #0x850
5746D0:  VLDR            S4, [R2,#0x58]
5746D4:  STR.W           R0, [R4,#0x7EC]
5746D8:  VMUL.F32        S4, S4, S16
5746DC:  VSUB.F32        S4, S4, S0
5746E0:  VSTR            S4, [R1]
5746E4:  ADDW            R1, R4, #0x854
5746E8:  VLDR            S4, [R2,#0x58]
5746EC:  STR.W           R0, [R4,#0x7F0]
5746F0:  VMUL.F32        S4, S4, S16
5746F4:  VSUB.F32        S4, S4, S0
5746F8:  VSTR            S4, [R1]
5746FC:  VLDR            S4, [R2,#0x58]
574700:  STR.W           R0, [R4,#0x7F4]
574704:  ADDW            R0, R4, #0x858
574708:  VMUL.F32        S4, S4, S16
57470C:  VSUB.F32        S4, S4, S0
574710:  VSTR            S4, [R0]
574714:  LDR             R1, [SP,#0x78+var_64]
574716:  VLDR            S0, [R1,#8]
57471A:  MOV             R0, R1
57471C:  VCMPE.F32       S2, S0
574720:  VMRS            APSR_nzcv, FPSCR
574724:  ITT LT
574726:  VSTRLT          S2, [R1,#8]
57472A:  VMOVLT.F32      S0, S2
57472E:  VLDR            S2, [R1]
574732:  VLDR            S4, [R1,#4]
574736:  VMUL.F32        S0, S0, S0
57473A:  VLDR            S6, [R1,#0xC]
57473E:  VMUL.F32        S2, S2, S2
574742:  VLDR            S8, [R1,#0x10]
574746:  VMUL.F32        S4, S4, S4
57474A:  VMUL.F32        S6, S6, S6
57474E:  VLDR            S10, [R1,#0x14]
574752:  VMUL.F32        S8, S8, S8
574756:  VMUL.F32        S10, S10, S10
57475A:  VADD.F32        S2, S2, S4
57475E:  VADD.F32        S6, S6, S8
574762:  VADD.F32        S0, S2, S0
574766:  VADD.F32        S4, S6, S10
57476A:  VSQRT.F32       S0, S0
57476E:  VSQRT.F32       S2, S4
574772:  VCMPE.F32       S0, S2
574776:  VMRS            APSR_nzcv, FPSCR
57477A:  IT LE
57477C:  ADDLE           R0, #0xC
57477E:  VLDR            S0, [R0]
574782:  VLDR            S2, [R0,#4]
574786:  VMUL.F32        S0, S0, S0
57478A:  VLDR            S4, [R0,#8]
57478E:  VMUL.F32        S2, S2, S2
574792:  VMUL.F32        S4, S4, S4
574796:  VADD.F32        S0, S0, S2
57479A:  VLDR            S2, [R1,#0x24]
57479E:  VADD.F32        S0, S0, S4
5747A2:  VSQRT.F32       S0, S0
5747A6:  VCMPE.F32       S2, S0
5747AA:  VMRS            APSR_nzcv, FPSCR
5747AE:  IT LT
5747B0:  VSTRLT          S0, [R1,#0x24]
5747B4:  ADD             SP, SP, #0x38 ; '8'
5747B6:  VPOP            {D8-D11}
5747BA:  ADD             SP, SP, #4
5747BC:  POP.W           {R8-R11}
5747C0:  POP             {R4-R7,PC}
