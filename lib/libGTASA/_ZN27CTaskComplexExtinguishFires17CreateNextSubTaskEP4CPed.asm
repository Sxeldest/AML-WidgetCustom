; =========================================================
; Game Engine Function: _ZN27CTaskComplexExtinguishFires17CreateNextSubTaskEP4CPed
; Address            : 0x547838 - 0x5479D0
; =========================================================

547838:  PUSH            {R4-R7,LR}
54783A:  ADD             R7, SP, #0xC
54783C:  PUSH.W          {R8}
547840:  SUB             SP, SP, #0x10
547842:  MOV             R5, R0
547844:  MOV             R8, R1
547846:  LDR             R0, [R5,#8]
547848:  LDR             R1, [R0]
54784A:  LDR             R1, [R1,#0x14]
54784C:  BLX             R1
54784E:  CMP             R0, #0xCB
547850:  IT NE
547852:  CMPNE.W         R0, #0x3FC
547856:  BEQ             loc_547912
547858:  MOVW            R1, #0x387
54785C:  CMP             R0, R1
54785E:  BNE.W           loc_5479AC
547862:  LDR             R0, =(gFireManager_ptr - 0x547872)
547864:  ADD.W           R4, R8, #4
547868:  LDR.W           R2, [R8,#0x14]
54786C:  MOVS            R3, #0; bool
54786E:  ADD             R0, PC; gFireManager_ptr
547870:  MOV             R1, R4
547872:  CMP             R2, #0
547874:  MOV.W           R6, #0
547878:  LDR             R0, [R0]; gFireManager ; this
54787A:  IT NE
54787C:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
547880:  MOVS            R2, #0; bool
547882:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
547886:  CBZ             R0, loc_5478D8
547888:  LDR.W           R1, [R8,#0x14]
54788C:  VLDR            S0, [R0,#4]
547890:  CMP             R1, #0
547892:  IT NE
547894:  ADDNE.W         R4, R1, #0x30 ; '0'
547898:  VLDR            D16, [R0,#8]
54789C:  VLDR            S2, [R4]
5478A0:  VLDR            D17, [R4,#4]
5478A4:  VSUB.F32        S0, S2, S0
5478A8:  LDR             R1, =(_ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr - 0x5478B2)
5478AA:  VSUB.F32        D16, D17, D16
5478AE:  ADD             R1, PC; _ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr
5478B0:  LDR             R1, [R1]; unsigned int
5478B2:  VMUL.F32        D1, D16, D16
5478B6:  VMUL.F32        S0, S0, S0
5478BA:  VLDR            S4, [R1]
5478BE:  VMUL.F32        S4, S4, S4
5478C2:  VADD.F32        S0, S0, S2
5478C6:  VADD.F32        S0, S0, S3
5478CA:  VCMPE.F32       S0, S4
5478CE:  VMRS            APSR_nzcv, FPSCR
5478D2:  IT GT
5478D4:  MOVGT           R0, #0
5478D6:  MOV             R6, R0
5478D8:  LDR             R0, [R5,#0xC]
5478DA:  CMP             R0, R6
5478DC:  BNE             loc_547998
5478DE:  LDRSB.W         R0, [R8,#0x71C]
5478E2:  RSB.W           R0, R0, R0,LSL#3
5478E6:  ADD.W           R0, R8, R0,LSL#2
5478EA:  LDR.W           R0, [R0,#0x5A4]
5478EE:  CMP             R0, #0x2A ; '*'
5478F0:  BNE             loc_5479B6
5478F2:  MOVS            R0, #off_3C; this
5478F4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5478F8:  MOVS            R2, #1
5478FA:  MOVS            R3, #5
5478FC:  STRD.W          R3, R2, [SP,#0x20+var_20]; signed __int8
547900:  MOV.W           R1, #0xFFFFFFFF
547904:  ADDS            R2, R6, #4; CVector *
547906:  STR             R1, [SP,#0x20+var_18]; int
547908:  MOVS            R1, #0; CEntity *
54790A:  MOVS            R3, #0; CVector *
54790C:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
547910:  B               loc_5479AE
547912:  LDR             R0, =(gFireManager_ptr - 0x547922)
547914:  ADD.W           R4, R8, #4
547918:  LDR.W           R2, [R8,#0x14]
54791C:  MOVS            R3, #0; bool
54791E:  ADD             R0, PC; gFireManager_ptr
547920:  MOV             R1, R4
547922:  CMP             R2, #0
547924:  MOV.W           R6, #0
547928:  LDR             R0, [R0]; gFireManager ; this
54792A:  IT NE
54792C:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
547930:  MOVS            R2, #0; bool
547932:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
547936:  CBZ             R0, loc_547988
547938:  LDR.W           R1, [R8,#0x14]
54793C:  VLDR            S0, [R0,#4]
547940:  CMP             R1, #0
547942:  IT NE
547944:  ADDNE.W         R4, R1, #0x30 ; '0'
547948:  VLDR            D16, [R0,#8]
54794C:  VLDR            S2, [R4]
547950:  VLDR            D17, [R4,#4]
547954:  VSUB.F32        S0, S2, S0
547958:  LDR             R1, =(_ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr - 0x547962)
54795A:  VSUB.F32        D16, D17, D16
54795E:  ADD             R1, PC; _ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr
547960:  LDR             R1, [R1]; CNearbyFireScanner::ms_fNearbyFireRange ...
547962:  VMUL.F32        D1, D16, D16
547966:  VMUL.F32        S0, S0, S0
54796A:  VLDR            S4, [R1]
54796E:  VMUL.F32        S4, S4, S4
547972:  VADD.F32        S0, S0, S2
547976:  VADD.F32        S0, S0, S3
54797A:  VCMPE.F32       S0, S4
54797E:  VMRS            APSR_nzcv, FPSCR
547982:  IT GT
547984:  MOVGT           R0, #0
547986:  MOV             R6, R0
547988:  LDR             R0, [R5,#0xC]
54798A:  CMP             R6, R0
54798C:  BNE             loc_547998
54798E:  MOV             R0, R6; this
547990:  BLX             j__ZN5CFire10ExtinguishEv; CFire::Extinguish(void)
547994:  MOVS            R0, #0
547996:  STR             R0, [R5,#0xC]
547998:  LDR             R0, [R5]
54799A:  MOV             R1, R8
54799C:  LDR             R2, [R0,#0x2C]
54799E:  MOV             R0, R5
5479A0:  ADD             SP, SP, #0x10
5479A2:  POP.W           {R8}
5479A6:  POP.W           {R4-R7,LR}
5479AA:  BX              R2
5479AC:  MOVS            R0, #0
5479AE:  ADD             SP, SP, #0x10
5479B0:  POP.W           {R8}
5479B4:  POP             {R4-R7,PC}
5479B6:  MOVS            R0, #dword_20; this
5479B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5479BC:  MOV.W           R1, #0x41000000
5479C0:  MOVS            R2, #0; bool
5479C2:  STR             R1, [SP,#0x20+var_20]; float
5479C4:  MOV.W           R1, #0x7D0; int
5479C8:  MOVS            R3, #0; bool
5479CA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5479CE:  B               loc_5479AE
