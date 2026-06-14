; =========================================================
; Game Engine Function: _ZNK27CTaskComplexFollowNodeRoute18CanGoStraightThereERK4CPedRK7CVectorS5_f
; Address            : 0x5207BC - 0x520830
; =========================================================

5207BC:  PUSH            {R7,LR}; int
5207BE:  MOV             R7, SP
5207C0:  VLDR            S0, [R3]
5207C4:  MOV.W           R12, #0
5207C8:  VLDR            S2, [R2]
5207CC:  VLDR            D16, [R3,#4]
5207D0:  VSUB.F32        S0, S2, S0
5207D4:  VLDR            D17, [R2,#4]
5207D8:  VSUB.F32        D16, D17, D16
5207DC:  VMUL.F32        D1, D16, D16
5207E0:  VMUL.F32        S0, S0, S0
5207E4:  VADD.F32        S0, S0, S2
5207E8:  VADD.F32        S0, S0, S3
5207EC:  VLDR            S2, [R7,#8+arg_0]
5207F0:  VSQRT.F32       S0, S0
5207F4:  VCMPE.F32       S0, S2
5207F8:  VMRS            APSR_nzcv, FPSCR
5207FC:  BGT             loc_52082C
5207FE:  LDRB.W          R1, [R1,#0x491]
520802:  CMP.W           R12, R1,LSR#7
520806:  ITTT NE
520808:  MOVNE.W         R12, #1
52080C:  MOVNE           R0, R12
52080E:  POPNE           {R7,PC}
520810:  LDR.W           R12, [R0,#0x24]
520814:  MOV             R0, R2; this
520816:  MOV             R1, R3; CVector *
520818:  MOVS            R3, #4; float
52081A:  MOV             R2, R12; CVector *
52081C:  BLX             j__ZN20CPedGeometryAnalyser17IsWanderPathClearERK7CVectorS2_fi; CPedGeometryAnalyser::IsWanderPathClear(CVector const&,CVector const&,float,int)
520820:  MOV.W           R12, #0
520824:  CMP             R0, #4
520826:  IT EQ
520828:  MOVEQ.W         R12, #1
52082C:  MOV             R0, R12
52082E:  POP             {R7,PC}
