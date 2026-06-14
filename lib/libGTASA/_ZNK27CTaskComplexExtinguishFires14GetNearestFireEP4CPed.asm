; =========================================================
; Game Engine Function: _ZNK27CTaskComplexExtinguishFires14GetNearestFireEP4CPed
; Address            : 0x5479E0 - 0x547A60
; =========================================================

5479E0:  PUSH            {R4-R7,LR}
5479E2:  ADD             R7, SP, #0xC
5479E4:  PUSH.W          {R11}
5479E8:  LDR             R0, =(gFireManager_ptr - 0x5479F4)
5479EA:  MOV             R4, R1
5479EC:  LDR             R2, [R4,#0x14]
5479EE:  ADDS            R6, R4, #4
5479F0:  ADD             R0, PC; gFireManager_ptr
5479F2:  MOVS            R3, #0; bool
5479F4:  CMP             R2, #0
5479F6:  MOV             R1, R6
5479F8:  LDR             R0, [R0]; gFireManager ; this
5479FA:  IT NE
5479FC:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
547A00:  MOVS            R2, #0; bool
547A02:  MOVS            R5, #0
547A04:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
547A08:  CBZ             R0, loc_547A58
547A0A:  LDR             R1, [R4,#0x14]
547A0C:  VLDR            S0, [R0,#4]
547A10:  CMP             R1, #0
547A12:  IT NE
547A14:  ADDNE.W         R6, R1, #0x30 ; '0'
547A18:  VLDR            D16, [R0,#8]
547A1C:  VLDR            S2, [R6]
547A20:  VLDR            D17, [R6,#4]
547A24:  VSUB.F32        S0, S2, S0
547A28:  LDR             R1, =(_ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr - 0x547A32)
547A2A:  VSUB.F32        D16, D17, D16
547A2E:  ADD             R1, PC; _ZN18CNearbyFireScanner19ms_fNearbyFireRangeE_ptr
547A30:  LDR             R1, [R1]; CNearbyFireScanner::ms_fNearbyFireRange ...
547A32:  VMUL.F32        D1, D16, D16
547A36:  VMUL.F32        S0, S0, S0
547A3A:  VLDR            S4, [R1]
547A3E:  VMUL.F32        S4, S4, S4
547A42:  VADD.F32        S0, S0, S2
547A46:  VADD.F32        S0, S0, S3
547A4A:  VCMPE.F32       S0, S4
547A4E:  VMRS            APSR_nzcv, FPSCR
547A52:  IT GT
547A54:  MOVGT           R0, #0
547A56:  MOV             R5, R0
547A58:  MOV             R0, R5
547A5A:  POP.W           {R11}
547A5E:  POP             {R4-R7,PC}
