; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager16ChooseIdentIndexEa
; Address            : 0x3A3700 - 0x3A3866
; =========================================================

3A3700:  PUSH            {R4-R7,LR}
3A3702:  ADD             R7, SP, #0xC
3A3704:  PUSH.W          {R8-R11}
3A3708:  SUB             SP, SP, #4
3A370A:  LDR             R0, =(gRadioIdents_ptr - 0x3A3712)
3A370C:  MOV             R4, R1
3A370E:  ADD             R0, PC; gRadioIdents_ptr
3A3710:  LDR             R0, [R0]; gRadioIdents
3A3712:  LDR.W           R12, [R0,R4,LSL#3]
3A3716:  MOVW            R0, #0x782
3A371A:  CMP             R12, R0
3A371C:  BNE             loc_3A3724
3A371E:  MOV.W           R0, #0xFFFFFFFF
3A3722:  B               loc_3A385E
3A3724:  LDR             R0, =(_ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr - 0x3A3734)
3A3726:  MOV.W           R11, #0
3A372A:  LDR             R1, =(gRadioIdents_ptr - 0x3A3736)
3A372C:  MOVW            R8, #0x44C
3A3730:  ADD             R0, PC; _ZN20CAERadioTrackManager20m_nIdentIndexHistoryE_ptr
3A3732:  ADD             R1, PC; gRadioIdents_ptr
3A3734:  LDR             R0, [R0]; CAERadioTrackManager::m_nIdentIndexHistory ...
3A3736:  LDR             R1, [R1]; gRadioIdents
3A3738:  ADD.W           R9, R0, R4,LSL#5
3A373C:  ADD.W           R0, R1, R4,LSL#3
3A3740:  ADDS            R6, R0, #4
3A3742:  LDR             R0, =(gRadioIdents_ptr - 0x3A3748)
3A3744:  ADD             R0, PC; gRadioIdents_ptr
3A3746:  LDR             R5, [R0]; gRadioIdents
3A3748:  LDR             R0, =(gRadioIdents_ptr - 0x3A374E)
3A374A:  ADD             R0, PC; gRadioIdents_ptr
3A374C:  LDR.W           R10, [R0]; gRadioIdents
3A3750:  LDR             R1, [R6]
3A3752:  MOV             R0, R12
3A3754:  B               loc_3A375C
3A3756:  LDR.W           R0, [R5,R4,LSL#3]; this
3A375A:  LDR             R1, [R6]; int
3A375C:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3A3760:  CMP             R4, #6
3A3762:  IT EQ
3A3764:  CMPEQ           R0, R8
3A3766:  BNE             loc_3A3782
3A3768:  MOV.W           R0, #(elf_hash_bucket+0x56); this
3A376C:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
3A3770:  VMOV            S0, R0
3A3774:  VCMP.F32        S0, #0.0
3A3778:  VMRS            APSR_nzcv, FPSCR
3A377C:  BEQ             loc_3A3756
3A377E:  MOVW            R0, #0x44C
3A3782:  LDR.W           R12, [R10,R4,LSL#3]
3A3786:  ADD.W           LR, R11, #1
3A378A:  LDR             R1, [R6]
3A378C:  MOVS            R3, #1
3A378E:  SUB.W           R2, R1, R12
3A3792:  CMP             R11, R2
3A3794:  BGE             loc_3A37B8
3A3796:  CMP             R2, #2
3A3798:  BLT             loc_3A37B8
3A379A:  SUBS            R3, R2, #1
3A379C:  CMP             R2, #9
3A379E:  IT GT
3A37A0:  MOVGT           R3, #8
3A37A2:  MOVS            R2, #0
3A37A4:  LDR.W           R1, [R9,R2,LSL#2]
3A37A8:  CMP             R0, R1
3A37AA:  BEQ             loc_3A37B6
3A37AC:  ADDS            R2, #1
3A37AE:  CMP             R2, R3
3A37B0:  BLT             loc_3A37A4
3A37B2:  MOVS            R3, #1
3A37B4:  B               loc_3A37B8
3A37B6:  MOVS            R3, #0
3A37B8:  SUBW            R1, R0, #0x711
3A37BC:  CMP             R3, #1
3A37BE:  MOV             R11, LR
3A37C0:  BNE             loc_3A3750
3A37C2:  SUBW            R2, R0, #0x6F6
3A37C6:  CMP             R1, #5
3A37C8:  MOV             R11, LR
3A37CA:  BCC             loc_3A3750
3A37CC:  SUBW            R3, R0, #0x6DA
3A37D0:  CMP             R2, #5
3A37D2:  MOV             R11, LR
3A37D4:  BCC             loc_3A3750
3A37D6:  SUBW            R2, R0, #0x6CD
3A37DA:  CMP             R3, #0xE
3A37DC:  MOV             R11, LR
3A37DE:  BCC             loc_3A3750
3A37E0:  SUBW            R3, R0, #0x6AA
3A37E4:  CMP             R2, #7
3A37E6:  MOV             R11, LR
3A37E8:  BCC             loc_3A3750
3A37EA:  SUBW            R2, R0, #0x614
3A37EE:  CMP             R3, #7
3A37F0:  MOV             R11, LR
3A37F2:  BCC             loc_3A3750
3A37F4:  SUBW            R3, R0, #0x515
3A37F8:  CMP             R2, #0xE
3A37FA:  MOV             R11, LR
3A37FC:  BCC             loc_3A3750
3A37FE:  SUB.W           R2, R0, #0x480
3A3802:  CMP             R3, #0xE
3A3804:  MOV             R11, LR
3A3806:  BCC             loc_3A3750
3A3808:  SUBW            R3, R0, #0x45E
3A380C:  CMP             R2, #6
3A380E:  MOV             R11, LR
3A3810:  BCC             loc_3A3750
3A3812:  SUB.W           R2, R0, #0x3A4
3A3816:  CMP             R3, #7
3A3818:  MOV             R11, LR
3A381A:  BCC             loc_3A3750
3A381C:  SUBW            R3, R0, #0x373
3A3820:  CMP             R2, #7
3A3822:  MOV             R11, LR
3A3824:  BCC             loc_3A3750
3A3826:  SUB.W           R2, R0, #0x350
3A382A:  CMP             R3, #7
3A382C:  MOV             R11, LR
3A382E:  BCC.W           loc_3A3750
3A3832:  SUBW            R3, R0, #0x20F
3A3836:  CMP             R2, #7
3A3838:  MOV             R11, LR
3A383A:  BCC.W           loc_3A3750
3A383E:  SUB.W           R2, R0, #0x126
3A3842:  CMP             R3, #7
3A3844:  MOV             R11, LR
3A3846:  BCC.W           loc_3A3750
3A384A:  SUBW            R1, R0, #0x201
3A384E:  CMP             R2, #7
3A3850:  MOV             R11, LR
3A3852:  BCC.W           loc_3A3750
3A3856:  CMP             R1, #7
3A3858:  MOV             R11, LR
3A385A:  BCC.W           loc_3A3750
3A385E:  ADD             SP, SP, #4
3A3860:  POP.W           {R8-R11}
3A3864:  POP             {R4-R7,PC}
