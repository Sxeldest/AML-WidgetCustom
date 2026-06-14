; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight18ChooseAttackPlayerEP4CPed
; Address            : 0x4D971C - 0x4D99C6
; =========================================================

4D971C:  PUSH            {R4-R7,LR}
4D971E:  ADD             R7, SP, #0xC
4D9720:  PUSH.W          {R8-R10}
4D9724:  VPUSH           {D8-D14}
4D9728:  MOV             R5, R0
4D972A:  MOV             R4, R1
4D972C:  LDRB.W          R0, [R5,#0x26]
4D9730:  MOVS            R2, #0
4D9732:  LDRSB.W         R1, [R5,#0x24]
4D9736:  MOV.W           R9, #0xFFFFFFFF
4D973A:  SUBS            R0, #0xB
4D973C:  LDR.W           R8, [R5,#0x18]
4D9740:  CMP             R1, #4
4D9742:  MOV.W           R6, #0
4D9746:  UXTB            R0, R0
4D9748:  IT LT
4D974A:  MOVLT           R2, #1
4D974C:  CMP             R0, #3
4D974E:  MOV.W           R0, #0
4D9752:  IT HI
4D9754:  MOVHI           R0, #1
4D9756:  ORRS            R0, R2
4D9758:  IT NE
4D975A:  MOVNE.W         R9, #1
4D975E:  CMP             R1, #4
4D9760:  BLT             loc_4D977A
4D9762:  LDR             R2, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4D976C)
4D9764:  ADD.W           R3, R1, R1,LSL#4
4D9768:  ADD             R2, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4D976A:  LDR             R2, [R2]; CTaskSimpleFight::m_aComboData ...
4D976C:  ADD.W           R2, R2, R3,LSL#3
4D9770:  MOV             R3, #0xFFFFFE64
4D9778:  LDRH            R6, [R2,R3]
4D977A:  SUBS            R1, #5
4D977C:  UXTB            R1, R1
4D977E:  CMP             R1, #2
4D9780:  ITT LS
4D9782:  LDRBLS.W        R1, [R4,#0x736]
4D9786:  ANDLS           R6, R1
4D9788:  CMP             R0, #0
4D978A:  BNE             loc_4D983C
4D978C:  LDR             R0, [R5,#0x1C]
4D978E:  MOVW            R9, #0xFFFF
4D9792:  CBZ             R0, loc_4D97A0
4D9794:  LDRB.W          R0, [R5,#0x25]
4D9798:  SUBS            R0, #3
4D979A:  UXTB            R0, R0
4D979C:  CMP             R0, #2
4D979E:  BCS             loc_4D97EE
4D97A0:  LDR.W           R0, [R4,#0x450]
4D97A4:  CMP             R0, #5
4D97A6:  BLT             loc_4D97BE
4D97A8:  LSLS            R0, R6, #0x1C
4D97AA:  MOV.W           R9, #4
4D97AE:  IT PL
4D97B0:  STRBPL.W        R9, [R5,#0x24]
4D97B4:  CMP.W           R8, #0
4D97B8:  BNE.W           loc_4D9948
4D97BC:  B               loc_4D9844
4D97BE:  MOV             R0, R5; this
4D97C0:  MOV             R1, R4; CPed *
4D97C2:  BLX             j__ZN16CTaskSimpleFight18FindTargetOnGroundEP4CPed; CTaskSimpleFight::FindTargetOnGround(CPed *)
4D97C6:  CMP             R0, #1
4D97C8:  BNE.W           loc_4D9956
4D97CC:  LDR             R0, [R5,#0x1C]
4D97CE:  CMP             R0, #0
4D97D0:  ITTT NE
4D97D2:  LDRBNE.W        R0, [R5,#0x26]
4D97D6:  LDRBNE.W        R1, [R5,#0x27]
4D97DA:  CMPNE           R0, R1
4D97DC:  BNE.W           loc_4D9948
4D97E0:  LSLS            R0, R6, #0x1D
4D97E2:  BMI.W           loc_4D9966
4D97E6:  MOVS            R0, #4
4D97E8:  STRB.W          R0, [R5,#0x24]
4D97EC:  B               loc_4D9980
4D97EE:  MOV             R0, R4
4D97F0:  MOVS            R1, #1
4D97F2:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4D97F6:  MOV.W           R10, #2
4D97FA:  TST.W           R6, #2
4D97FE:  MOV             R0, R5; this
4D9800:  MOV             R1, R4; CPed *
4D9802:  IT EQ
4D9804:  ANDEQ.W         R10, R6, #1
4D9808:  BLX             j__ZN16CTaskSimpleFight18FindTargetOnGroundEP4CPed; CTaskSimpleFight::FindTargetOnGround(CPed *)
4D980C:  CBNZ            R0, loc_4D983C
4D980E:  LDRB.W          R0, [R5,#0x26]
4D9812:  LDRB.W          R1, [R5,#0x27]
4D9816:  CMP             R0, R1
4D9818:  BEQ             loc_4D982C
4D981A:  LDR             R3, =(CHAIN_COUNT_LIMIT_ptr - 0x4D9824)
4D981C:  LDRSB.W         R2, [R5,#0x15]
4D9820:  ADD             R3, PC; CHAIN_COUNT_LIMIT_ptr
4D9822:  LDR             R3, [R3]; CHAIN_COUNT_LIMIT
4D9824:  LDR             R3, [R3]
4D9826:  CMP             R3, R2
4D9828:  BGE.W           loc_4D9986
4D982C:  LDRSB.W         R0, [R5,#0x25]
4D9830:  UXTH.W          R1, R10
4D9834:  CMP             R0, R1
4D9836:  IT LT
4D9838:  ADDLT.W         R9, R0, #1
4D983C:  CMP.W           R8, #0
4D9840:  BNE.W           loc_4D9948
4D9844:  VMOV.F32        S20, #4.0
4D9848:  LDR.W           R0, [R4,#0x440]
4D984C:  VLDR            S16, =-1000.0
4D9850:  ADDW            R8, R4, #0x55C
4D9854:  VLDR            S18, =1000.0
4D9858:  ADD.W           R5, R0, #0x130
4D985C:  VLDR            S22, =3.1416
4D9860:  MOVS            R6, #0
4D9862:  VLDR            S24, =-6.2832
4D9866:  VLDR            S26, =-3.1416
4D986A:  VLDR            S28, =6.2832
4D986E:  LDR.W           R0, [R5,R6,LSL#2]; this
4D9872:  CMP             R0, #0
4D9874:  BEQ             loc_4D992C
4D9876:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4D987A:  CMP             R0, #1
4D987C:  BNE             loc_4D992C
4D987E:  LDR.W           R0, [R5,R6,LSL#2]
4D9882:  LDR             R1, [R4,#0x14]
4D9884:  LDR             R2, [R0,#0x14]
4D9886:  ADD.W           R3, R1, #0x30 ; '0'
4D988A:  CMP             R1, #0
4D988C:  IT EQ
4D988E:  ADDEQ           R3, R4, #4
4D9890:  ADD.W           R1, R2, #0x30 ; '0'
4D9894:  CMP             R2, #0
4D9896:  VLDR            S2, [R3]
4D989A:  VLDR            S0, [R3,#4]
4D989E:  VLDR            S4, [R3,#8]
4D98A2:  IT EQ
4D98A4:  ADDEQ           R1, R0, #4
4D98A6:  VLDR            S6, [R1]
4D98AA:  VLDR            S8, [R1,#4]
4D98AE:  VSUB.F32        S2, S6, S2
4D98B2:  VLDR            S10, [R1,#8]
4D98B6:  VSUB.F32        S0, S8, S0
4D98BA:  VSUB.F32        S4, S10, S4
4D98BE:  VMUL.F32        S8, S2, S2
4D98C2:  VMUL.F32        S6, S0, S0
4D98C6:  VMUL.F32        S4, S4, S4
4D98CA:  VADD.F32        S6, S8, S6
4D98CE:  VADD.F32        S4, S6, S4
4D98D2:  VCMPE.F32       S4, S20
4D98D6:  VMRS            APSR_nzcv, FPSCR
4D98DA:  BGE             loc_4D992C
4D98DC:  VMOV            R0, S2
4D98E0:  VMOV            R1, S0; x
4D98E4:  EOR.W           R0, R0, #0x80000000; y
4D98E8:  BLX             atan2f
4D98EC:  VMOV            S0, R0
4D98F0:  VLDR            S2, [R8]
4D98F4:  VSUB.F32        S2, S0, S2
4D98F8:  VCMPE.F32       S2, S22
4D98FC:  VMRS            APSR_nzcv, FPSCR
4D9900:  BLE             loc_4D9908
4D9902:  VADD.F32        S2, S2, S24
4D9906:  B               loc_4D9916
4D9908:  VCMPE.F32       S2, S26
4D990C:  VMRS            APSR_nzcv, FPSCR
4D9910:  IT LT
4D9912:  VADDLT.F32      S2, S2, S28
4D9916:  VABS.F32        S2, S2
4D991A:  VCMPE.F32       S2, S18
4D991E:  VMRS            APSR_nzcv, FPSCR
4D9922:  ITT LT
4D9924:  VMOVLT.F32      S16, S0
4D9928:  VMOVLT.F32      S18, S2
4D992C:  ADDS            R6, #1
4D992E:  CMP             R6, #0x10
4D9930:  BNE             loc_4D986E
4D9932:  VMOV.F32        S0, #-10.0
4D9936:  VCMPE.F32       S16, S0
4D993A:  VMRS            APSR_nzcv, FPSCR
4D993E:  ITT GT
4D9940:  ADDGT.W         R0, R4, #0x560
4D9944:  VSTRGT          S16, [R0]
4D9948:  SXTH.W          R0, R9
4D994C:  VPOP            {D8-D14}
4D9950:  POP.W           {R8-R10}
4D9954:  POP             {R4-R7,PC}
4D9956:  MOV.W           R9, #0
4D995A:  STRB.W          R9, [R5,#0x15]
4D995E:  CMP.W           R8, #0
4D9962:  BNE             loc_4D9948
4D9964:  B               loc_4D9844
4D9966:  LDR             R0, [R5,#0x18]
4D9968:  CBZ             R0, loc_4D9980
4D996A:  LDRB.W          R1, [R0,#0x3A]
4D996E:  AND.W           R1, R1, #7
4D9972:  CMP             R1, #3
4D9974:  BNE             loc_4D9980
4D9976:  LDRB.W          R0, [R0,#0x487]
4D997A:  LSLS            R0, R0, #0x1D
4D997C:  BMI.W           loc_4D97E6
4D9980:  MOV.W           R9, #3
4D9984:  B               loc_4D9948
4D9986:  UXTB            R2, R2
4D9988:  SXTB            R0, R0
4D998A:  ADDS            R2, #1
4D998C:  STRB            R2, [R5,#0x15]
4D998E:  LDRSB.W         R2, [R5,#0x25]
4D9992:  SXTB            R1, R1
4D9994:  SUBS            R0, R0, R1
4D9996:  ADD             R0, R2
4D9998:  TST.W           R0, #1
4D999C:  BNE             loc_4D99AA
4D999E:  AND.W           R0, R0, #2
4D99A2:  MOVS            R1, #2
4D99A4:  SUB.W           R9, R1, R0,LSR#1
4D99A8:  B               loc_4D99AE
4D99AA:  MOV.W           R9, #0
4D99AE:  UXTH.W          R0, R10
4D99B2:  UXTH.W          R1, R9
4D99B6:  CMP             R1, R0
4D99B8:  IT HI
4D99BA:  MOVHI.W         R9, #0
4D99BE:  CMP.W           R8, #0
4D99C2:  BNE             loc_4D9948
4D99C4:  B               loc_4D9844
