; =========================================================
; Game Engine Function: _ZN12CFireManager15FindNearestFireERK7CVectorbb
; Address            : 0x3F2784 - 0x3F280E
; =========================================================

3F2784:  PUSH            {R4,R6,R7,LR}
3F2786:  ADD             R7, SP, #8
3F2788:  VLDR            D16, [R1]
3F278C:  EOR.W           LR, R2, #1
3F2790:  VLDR            S2, =3.4028e38
3F2794:  EOR.W           R3, R3, #1
3F2798:  VLDR            S0, =0.0
3F279C:  MOVS            R1, #0
3F279E:  MOV.W           R12, #0
3F27A2:  LDRB            R2, [R0,R1]
3F27A4:  TST.W           R2, #1
3F27A8:  BEQ             loc_3F2802
3F27AA:  LSLS            R4, R2, #0x1E
3F27AC:  MOV.W           R4, #0
3F27B0:  IT PL
3F27B2:  MOVPL           R4, #1
3F27B4:  ORRS            R4, R3
3F27B6:  BEQ             loc_3F2802
3F27B8:  LSLS            R2, R2, #0x1C
3F27BA:  MOV.W           R2, #0
3F27BE:  IT PL
3F27C0:  MOVPL           R2, #1
3F27C2:  ORRS.W          R2, R2, LR
3F27C6:  BEQ             loc_3F2802
3F27C8:  ADDS            R2, R0, R1
3F27CA:  LDR             R4, [R2,#0x10]
3F27CC:  CBZ             R4, loc_3F27DA
3F27CE:  LDRB.W          R4, [R4,#0x3A]
3F27D2:  AND.W           R4, R4, #7
3F27D6:  CMP             R4, #3
3F27D8:  BEQ             loc_3F2802
3F27DA:  VLDR            D17, [R2,#4]
3F27DE:  VSUB.F32        D17, D17, D16
3F27E2:  VMUL.F32        D2, D17, D17
3F27E6:  VADD.F32        S4, S4, S5
3F27EA:  VADD.F32        S4, S4, S0
3F27EE:  VMIN.F32        D3, D2, D1
3F27F2:  VCMPE.F32       S4, S2
3F27F6:  VMRS            APSR_nzcv, FPSCR
3F27FA:  VMOV            D1, D3
3F27FE:  IT LT
3F2800:  MOVLT           R12, R2
3F2802:  ADDS            R1, #0x28 ; '('
3F2804:  CMP.W           R1, #0x960
3F2808:  BNE             loc_3F27A2
3F280A:  MOV             R0, R12
3F280C:  POP             {R4,R6,R7,PC}
