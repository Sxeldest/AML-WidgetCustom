; =========================================================
; Game Engine Function: _ZN32CTaskComplexExtinguishFireOnFoot15FindNearestFireEP4CPed
; Address            : 0x5121CC - 0x512240
; =========================================================

5121CC:  PUSH            {R4-R7,LR}
5121CE:  ADD             R7, SP, #0xC
5121D0:  PUSH.W          {R11}
5121D4:  LDR             R0, =(gFireManager_ptr - 0x5121E0)
5121D6:  MOV             R5, R1
5121D8:  LDR             R2, [R5,#0x14]
5121DA:  ADDS            R6, R5, #4
5121DC:  ADD             R0, PC; gFireManager_ptr
5121DE:  MOVS            R3, #1; bool
5121E0:  CMP             R2, #0
5121E2:  MOV             R1, R6
5121E4:  LDR             R0, [R0]; gFireManager ; this
5121E6:  IT NE
5121E8:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
5121EC:  MOVS            R2, #0; bool
5121EE:  MOVS            R4, #0
5121F0:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
5121F4:  CBZ             R0, loc_512238
5121F6:  LDR             R1, [R5,#0x14]
5121F8:  VLDR            S0, [R0,#4]
5121FC:  CMP             R1, #0
5121FE:  IT NE
512200:  ADDNE.W         R6, R1, #0x30 ; '0'
512204:  VLDR            D16, [R0,#8]
512208:  VLDR            S2, [R6]
51220C:  VLDR            D17, [R6,#4]
512210:  VSUB.F32        S0, S2, S0
512214:  VSUB.F32        D16, D17, D16
512218:  VMUL.F32        D1, D16, D16
51221C:  VMUL.F32        S0, S0, S0
512220:  VADD.F32        S0, S0, S2
512224:  VADD.F32        S0, S0, S3
512228:  VLDR            S2, =100.0
51222C:  VCMPE.F32       S0, S2
512230:  VMRS            APSR_nzcv, FPSCR
512234:  IT LT
512236:  MOVLT           R4, R0
512238:  MOV             R0, R4
51223A:  POP.W           {R11}
51223E:  POP             {R4-R7,PC}
