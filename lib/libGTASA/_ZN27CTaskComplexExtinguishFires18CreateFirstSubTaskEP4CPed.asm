; =========================================================
; Game Engine Function: _ZN27CTaskComplexExtinguishFires18CreateFirstSubTaskEP4CPed
; Address            : 0x547A68 - 0x547B22
; =========================================================

547A68:  PUSH            {R4-R7,LR}
547A6A:  ADD             R7, SP, #0xC
547A6C:  PUSH.W          {R8,R9,R11}
547A70:  SUB             SP, SP, #0x10; float
547A72:  MOV             R8, R0
547A74:  LDR             R0, =(gFireManager_ptr - 0x547A7E)
547A76:  MOV             R5, R1
547A78:  ADDS            R4, R5, #4
547A7A:  ADD             R0, PC; gFireManager_ptr
547A7C:  LDR             R2, [R5,#0x14]
547A7E:  MOV             R1, R4
547A80:  MOVS            R3, #0; bool
547A82:  LDR             R0, [R0]; gFireManager ; this
547A84:  CMP             R2, #0
547A86:  IT NE
547A88:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
547A8C:  MOVS            R2, #0; bool
547A8E:  MOV.W           R9, #0
547A92:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
547A96:  MOV             R6, R0
547A98:  CBZ             R6, loc_547AE4
547A9A:  LDR             R0, [R5,#0x14]
547A9C:  VLDR            S0, [R6,#4]
547AA0:  CMP             R0, #0
547AA2:  IT NE
547AA4:  ADDNE.W         R4, R0, #0x30 ; '0'
547AA8:  VLDR            D16, [R6,#8]
547AAC:  VLDR            S2, [R4]
547AB0:  VLDR            D17, [R4,#4]
547AB4:  VSUB.F32        S0, S2, S0
547AB8:  LDR             R0, =(_ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr - 0x547AC2)
547ABA:  VSUB.F32        D16, D17, D16
547ABE:  ADD             R0, PC; _ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr
547AC0:  LDR             R0, [R0]; CNearbyFireScanner::ms_fNearbyFireRange ...
547AC2:  VMUL.F32        D1, D16, D16
547AC6:  VMUL.F32        S0, S0, S0
547ACA:  VLDR            S4, [R0]
547ACE:  VMUL.F32        S4, S4, S4
547AD2:  VADD.F32        S0, S0, S2
547AD6:  VADD.F32        S0, S0, S3
547ADA:  VCMPE.F32       S0, S4
547ADE:  VMRS            APSR_nzcv, FPSCR
547AE2:  BLE             loc_547AEA
547AE4:  STR.W           R9, [R8,#0xC]
547AE8:  B               loc_547B18
547AEA:  MOVS            R0, #word_28; this
547AEC:  STR.W           R6, [R8,#0xC]
547AF0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547AF4:  MOV             R9, R0
547AF6:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x547B00)
547AF8:  MOVS            R1, #0
547AFA:  ADDS            R2, R6, #4; CVector *
547AFC:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
547AFE:  STRD.W          R1, R1, [SP,#0x28+var_24]; bool
547B02:  MOVS            R1, #6; int
547B04:  MOV.W           R3, #0x3FC00000; float
547B08:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
547B0A:  VLDR            S0, [R0]
547B0E:  MOV             R0, R9; this
547B10:  VSTR            S0, [SP,#0x28+var_28]
547B14:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
547B18:  MOV             R0, R9
547B1A:  ADD             SP, SP, #0x10
547B1C:  POP.W           {R8,R9,R11}
547B20:  POP             {R4-R7,PC}
