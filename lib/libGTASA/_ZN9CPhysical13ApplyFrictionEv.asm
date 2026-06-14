; =========================================================
; Game Engine Function: _ZN9CPhysical13ApplyFrictionEv
; Address            : 0x3FE7C8 - 0x3FE96C
; =========================================================

3FE7C8:  PUSH            {R4,R5,R7,LR}
3FE7CA:  ADD             R7, SP, #8
3FE7CC:  VPUSH           {D8-D9}
3FE7D0:  SUB             SP, SP, #0x30
3FE7D2:  MOV             R4, R0
3FE7D4:  LDRB.W          R0, [R4,#0x44]
3FE7D8:  LSLS            R0, R0, #0x18
3FE7DA:  BMI             loc_3FE7E2
3FE7DC:  VLDR            S0, [R4,#0x5C]
3FE7E0:  B               loc_3FE878
3FE7E2:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FE7EA)
3FE7E4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3FE7F0)
3FE7E6:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FE7E8:  VLDR            S0, =0.001
3FE7EC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3FE7EE:  LDRSH.W         R2, [R4,#0x26]
3FE7F2:  LDR             R5, [R1]; CTimer::ms_fTimeStep ...
3FE7F4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3FE7F6:  VLDR            S2, [R5]
3FE7FA:  LDR.W           R0, [R0,R2,LSL#2]
3FE7FE:  VMUL.F32        S0, S2, S0
3FE802:  VLDR            S2, =0.0
3FE806:  LDR             R0, [R0,#0x2C]
3FE808:  VLDR            S4, [R0,#0x24]
3FE80C:  LDR             R0, [R4,#0x14]
3FE80E:  VMOV            R1, S0
3FE812:  VMUL.F32        S2, S4, S2
3FE816:  ADD.W           R2, R0, #0x30 ; '0'
3FE81A:  CMP             R0, #0
3FE81C:  MOV.W           R0, #0
3FE820:  IT EQ
3FE822:  ADDEQ           R2, R4, #4
3FE824:  VLDR            S0, [R2]
3FE828:  VLDR            S6, [R2,#4]
3FE82C:  VLDR            S8, [R2,#8]
3FE830:  ADD             R2, SP, #0x48+var_44
3FE832:  STRD.W          R0, R0, [SP,#0x48+var_34]
3FE836:  MOV.W           R0, #0x3F800000
3FE83A:  VSUB.F32        S4, S8, S4
3FE83E:  STR             R0, [SP,#0x48+var_2C]
3FE840:  VSUB.F32        S6, S6, S2
3FE844:  MOV             R0, R4
3FE846:  VSUB.F32        S0, S0, S2
3FE84A:  VSTR            S4, [SP,#0x48+var_3C]
3FE84E:  VSTR            S6, [SP,#0x48+var_40]
3FE852:  VSTR            S0, [SP,#0x48+var_44]
3FE856:  BLX             j__ZN9CPhysical13ApplyFrictionEfR9CColPoint; CPhysical::ApplyFriction(float,CColPoint &)
3FE85A:  LDR             R1, [R5]; y
3FE85C:  MOV             R0, #0x3F7AE148; x
3FE864:  BLX             powf
3FE868:  VLDR            S0, [R4,#0x5C]
3FE86C:  VMOV            S2, R0
3FE870:  VMUL.F32        S0, S2, S0
3FE874:  VSTR            S0, [R4,#0x5C]
3FE878:  ADD.W           R1, R4, #0x48 ; 'H'
3FE87C:  ADD.W           R2, R4, #0x60 ; '`'
3FE880:  VLDR            S6, [R4,#0x74]
3FE884:  MOVS            R3, #0
3FE886:  VLD1.32         {D16-D17}, [R1]
3FE88A:  VADD.F32        S0, S6, S0
3FE88E:  VLD1.32         {D18-D19}, [R2]
3FE892:  VADD.F32        Q4, Q9, Q8
3FE896:  VLDR            S2, [R4,#0x58]
3FE89A:  VLDR            S4, [R4,#0x70]
3FE89E:  VMOV.I32        Q8, #0
3FE8A2:  LDRB.W          R0, [R4,#0x3A]
3FE8A6:  VADD.F32        S2, S4, S2
3FE8AA:  STRD.W          R3, R3, [R4,#0x70]
3FE8AE:  VST1.32         {D16-D17}, [R2]
3FE8B2:  VST1.32         {D8-D9}, [R1]
3FE8B6:  AND.W           R1, R0, #7
3FE8BA:  CMP             R1, #2
3FE8BC:  VSTR            S2, [R4,#0x58]
3FE8C0:  VSTR            S0, [R4,#0x5C]
3FE8C4:  BNE             loc_3FE964
3FE8C6:  LDR.W           R1, [R4,#0x5A0]
3FE8CA:  CMP             R1, #9
3FE8CC:  ITT EQ
3FE8CE:  ANDEQ.W         R0, R0, #0xF8
3FE8D2:  CMPEQ           R0, #0x20 ; ' '
3FE8D4:  BNE             loc_3FE964
3FE8D6:  LDR             R0, [R4,#0x44]
3FE8D8:  CMP             R0, #0
3FE8DA:  BLT             loc_3FE964
3FE8DC:  LDR             R0, [R4,#0x14]
3FE8DE:  VLDR            S6, =0.707
3FE8E2:  VLDR            S4, [R0,#0x28]
3FE8E6:  VABS.F32        S4, S4
3FE8EA:  VCMPE.F32       S4, S6
3FE8EE:  VMRS            APSR_nzcv, FPSCR
3FE8F2:  BGE             loc_3FE964
3FE8F4:  VMUL.F32        S4, S17, S17
3FE8F8:  VMUL.F32        S6, S16, S16
3FE8FC:  VMUL.F32        S8, S18, S18
3FE900:  VADD.F32        S4, S6, S4
3FE904:  VLDR            S6, =0.0025
3FE908:  VADD.F32        S4, S4, S8
3FE90C:  VCMPE.F32       S4, S6
3FE910:  VMRS            APSR_nzcv, FPSCR
3FE914:  BGE             loc_3FE964
3FE916:  VMUL.F32        S2, S2, S2
3FE91A:  VMUL.F32        S4, S19, S19
3FE91E:  VMUL.F32        S0, S0, S0
3FE922:  VADD.F32        S2, S4, S2
3FE926:  VADD.F32        S0, S2, S0
3FE92A:  VLDR            S2, =0.0001
3FE92E:  VCMPE.F32       S0, S2
3FE932:  VMRS            APSR_nzcv, FPSCR
3FE936:  BGE             loc_3FE964
3FE938:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FE93E)
3FE93A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FE93C:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FE93E:  LDR             R1, [R0]; y
3FE940:  MOV.W           R0, #0x3F000000; x
3FE944:  BLX             powf
3FE948:  VMOV            S0, R0
3FE94C:  VMUL.F32        S4, S16, S0
3FE950:  VMUL.F32        S2, S0, S17
3FE954:  VMUL.F32        S0, S0, S18
3FE958:  VSTR            S4, [R4,#0x48]
3FE95C:  VSTR            S2, [R4,#0x4C]
3FE960:  VSTR            S0, [R4,#0x50]
3FE964:  ADD             SP, SP, #0x30 ; '0'
3FE966:  VPOP            {D8-D9}
3FE96A:  POP             {R4,R5,R7,PC}
