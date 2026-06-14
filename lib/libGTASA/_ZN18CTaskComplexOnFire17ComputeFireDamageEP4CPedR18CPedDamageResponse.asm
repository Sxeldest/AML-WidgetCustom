; =========================================================
; Game Engine Function: _ZN18CTaskComplexOnFire17ComputeFireDamageEP4CPedR18CPedDamageResponse
; Address            : 0x4EF81C - 0x4EF892
; =========================================================

4EF81C:  PUSH            {R4-R7,LR}
4EF81E:  ADD             R7, SP, #0xC
4EF820:  PUSH.W          {R11}
4EF824:  SUB             SP, SP, #0x20
4EF826:  MOV             R5, R0
4EF828:  MOV             R4, R1
4EF82A:  LDRB.W          R0, [R5,#0x46]
4EF82E:  LSLS            R0, R0, #0x1C
4EF830:  BMI             loc_4EF88A
4EF832:  LDR.W           R1, [R5,#0x738]
4EF836:  ADDW            R3, R5, #0x73C
4EF83A:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4EF852)
4EF83C:  ADD             R6, SP, #0x30+var_24
4EF83E:  CMP             R1, #0
4EF840:  VLDR            S0, =500.0
4EF844:  ITE NE
4EF846:  LDRNE           R1, [R1,#0x14]
4EF848:  MOVEQ           R1, #0
4EF84A:  VLDR            S2, [R3]
4EF84E:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4EF850:  MOVS            R0, #0
4EF852:  VMUL.F32        S0, S2, S0
4EF856:  MOVS            R3, #3
4EF858:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4EF85A:  VLDR            S2, [R2]
4EF85E:  STRD.W          R3, R0, [SP,#0x30+var_30]
4EF862:  MOV             R0, R6
4EF864:  MOVS            R3, #0x25 ; '%'
4EF866:  VMUL.F32        S0, S0, S2
4EF86A:  VLDR            S2, =1000.0
4EF86E:  VDIV.F32        S0, S0, S2
4EF872:  VMOV            R2, S0
4EF876:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
4EF87A:  MOV             R1, R5; this
4EF87C:  MOV             R2, R4
4EF87E:  MOVS            R3, #0
4EF880:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
4EF884:  MOV             R0, R6; this
4EF886:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
4EF88A:  ADD             SP, SP, #0x20 ; ' '
4EF88C:  POP.W           {R11}
4EF890:  POP             {R4-R7,PC}
