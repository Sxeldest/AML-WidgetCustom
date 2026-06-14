; =========================================================
; Game Engine Function: _ZN8CVehicle31SpecialEntityCalcCollisionStepsERbS0_
; Address            : 0x5827BC - 0x582976
; =========================================================

5827BC:  PUSH            {R4-R7,LR}
5827BE:  ADD             R7, SP, #0xC
5827C0:  PUSH.W          {R11}
5827C4:  VPUSH           {D8-D9}
5827C8:  MOV             R6, R0
5827CA:  MOV             R4, R2
5827CC:  LDRB.W          R0, [R6,#0x44]
5827D0:  MOV             R5, R1
5827D2:  LSLS            R0, R0, #0x1D
5827D4:  BMI             loc_582816
5827D6:  VLDR            S0, [R6,#0x48]
5827DA:  VLDR            S2, [R6,#0x4C]
5827DE:  VMUL.F32        S0, S0, S0
5827E2:  VLDR            S4, [R6,#0x50]
5827E6:  VMUL.F32        S2, S2, S2
5827EA:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5827F4)
5827EC:  VMUL.F32        S4, S4, S4
5827F0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5827F2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5827F4:  VADD.F32        S0, S0, S2
5827F8:  VLDR            S2, [R0]
5827FC:  VADD.F32        S0, S0, S4
582800:  VMUL.F32        S0, S2, S0
582804:  VMUL.F32        S0, S2, S0
582808:  VLDR            S2, =0.16
58280C:  VCMPE.F32       S0, S2
582810:  VMRS            APSR_nzcv, FPSCR
582814:  BGE             loc_582822
582816:  MOVS            R0, #1
582818:  VPOP            {D8-D9}
58281C:  POP.W           {R11}
582820:  POP             {R4-R7,PC}
582822:  VSQRT.F32       S16, S0
582826:  LDRB.W          R0, [R6,#0x3A]
58282A:  CMP             R0, #7
58282C:  BHI             loc_582840
58282E:  LDR.W           R0, [R6,#0x5A0]
582832:  ADR             R1, dword_58298C
582834:  CMP             R0, #9
582836:  IT EQ
582838:  ADDEQ           R1, #4
58283A:  VLDR            S18, [R1]
58283E:  B               loc_582856
582840:  VLDR            S2, =0.32
582844:  ADR             R0, dword_582984
582846:  VCMPE.F32       S0, S2
58284A:  VMRS            APSR_nzcv, FPSCR
58284E:  IT GT
582850:  ADDGT           R0, #4
582852:  VLDR            S18, [R0]
582856:  MOV             R0, R6; this
582858:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
58285C:  LDR             R1, [R6,#0x14]
58285E:  VLDR            S0, [R6,#0x48]
582862:  VLDR            S2, [R6,#0x4C]
582866:  VLDR            S6, [R1]
58286A:  VLDR            S8, [R1,#4]
58286E:  VLDR            S12, [R1,#0x10]
582872:  VMUL.F32        S6, S0, S6
582876:  VLDR            S14, [R1,#0x14]
58287A:  VMUL.F32        S8, S2, S8
58287E:  VMUL.F32        S12, S0, S12
582882:  VLDR            S3, [R1,#0x20]
582886:  VMUL.F32        S14, S2, S14
58288A:  VLDR            S5, [R1,#0x24]
58288E:  VMUL.F32        S0, S0, S3
582892:  VLDR            S4, [R6,#0x50]
582896:  VMUL.F32        S2, S2, S5
58289A:  VLDR            S10, [R1,#8]
58289E:  VLDR            S1, [R1,#0x18]
5828A2:  VMUL.F32        S10, S4, S10
5828A6:  VLDR            S7, [R1,#0x28]
5828AA:  VADD.F32        S6, S6, S8
5828AE:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5828C0)
5828B0:  VMUL.F32        S8, S4, S1
5828B4:  VLDR            S1, [R0,#0x14]
5828B8:  VADD.F32        S12, S12, S14
5828BC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5828BE:  VMUL.F32        S4, S4, S7
5828C2:  VLDR            S14, [R0,#0x10]
5828C6:  VADD.F32        S0, S0, S2
5828CA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5828CC:  VADD.F32        S2, S6, S10
5828D0:  VLDR            S3, [R1]
5828D4:  VLDR            S10, [R0,#8]
5828D8:  VADD.F32        S6, S12, S8
5828DC:  VLDR            S8, [R0,#4]
5828E0:  VLDR            S12, [R0,#0xC]
5828E4:  VSUB.F32        S10, S1, S10
5828E8:  VADD.F32        S0, S0, S4
5828EC:  LDR.W           R1, [R6,#0x5A0]
5828F0:  VSUB.F32        S8, S14, S8
5828F4:  CMP             R1, #9
5828F6:  VABS.F32        S2, S2
5828FA:  VABS.F32        S4, S6
5828FE:  VLDR            S6, [R0]
582902:  VABS.F32        S0, S0
582906:  VSUB.F32        S6, S12, S6
58290A:  VDIV.F32        S12, S16, S18
58290E:  VMUL.F32        S4, S3, S4
582912:  VMUL.F32        S2, S3, S2
582916:  VMUL.F32        S0, S3, S0
58291A:  VMOV            R0, S12; x
58291E:  VMOV.F32        S18, #1.0
582922:  VDIV.F32        S4, S4, S8
582926:  VDIV.F32        S2, S2, S6
58292A:  VDIV.F32        S0, S0, S10
58292E:  VMAX.F32        D16, D2, D1
582932:  VMOV.F32        S6, #1.5
582936:  VMAX.F32        D8, D16, D0
58293A:  VMUL.F32        S0, S16, S6
58293E:  IT EQ
582940:  VMOVEQ.F32      S16, S0
582944:  BLX             ceilf
582948:  VMOV            S0, R0
58294C:  VCMPE.F32       S16, S18
582950:  VCVT.U32.F32    S0, S0
582954:  VMRS            APSR_nzcv, FPSCR
582958:  VMOV            R0, S0
58295C:  BLT             loc_582970
58295E:  VMOV.F32        S0, #2.0
582962:  MOV             R5, R4
582964:  VCMPE.F32       S16, S0
582968:  VMRS            APSR_nzcv, FPSCR
58296C:  BGE.W           loc_582818
582970:  MOVS            R1, #1
582972:  STRB            R1, [R5]
582974:  B               loc_582818
