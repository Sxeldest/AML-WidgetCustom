; =========================================================
; Game Engine Function: _ZN8CCarCtrl29SteerAIHeliTowardsTargetCoorsEP11CAutomobile
; Address            : 0x2F5794 - 0x2F5844
; =========================================================

2F5794:  PUSH            {R4,R5,R7,LR}
2F5796:  ADD             R7, SP, #8
2F5798:  SUB             SP, SP, #8
2F579A:  MOV             R4, R0
2F579C:  ADDW            R0, R4, #0x968
2F57A0:  VLDR            S0, [R0]
2F57A4:  VCMPE.F32       S0, #0.0
2F57A8:  VMRS            APSR_nzcv, FPSCR
2F57AC:  BGE             loc_2F5826
2F57AE:  LDR             R0, [R4,#0x14]
2F57B0:  ADDS            R5, R4, #4
2F57B2:  VLDR            S0, [R4,#0x3F0]
2F57B6:  CMP             R0, #0
2F57B8:  MOV             R1, R5
2F57BA:  VLDR            S2, [R4,#0x3F4]
2F57BE:  IT NE
2F57C0:  ADDNE.W         R1, R0, #0x30 ; '0'
2F57C4:  VLDR            S4, [R1]
2F57C8:  VLDR            S6, [R1,#4]
2F57CC:  VSUB.F32        S0, S0, S4
2F57D0:  VSUB.F32        S2, S2, S6
2F57D4:  VMOV            R0, S0; this
2F57D8:  VMOV            R1, S2; float
2F57DC:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F57E0:  MOV             R1, R0; CHeli *
2F57E2:  LDR             R0, [R4,#0x14]
2F57E4:  VLDR            S0, [R4,#0x3F0]
2F57E8:  MOVS            R3, #1; float
2F57EA:  CMP             R0, #0
2F57EC:  VLDR            S2, [R4,#0x3F4]
2F57F0:  IT NE
2F57F2:  ADDNE.W         R5, R0, #0x30 ; '0'
2F57F6:  MOV             R0, R4; this
2F57F8:  VLDR            S4, [R5]
2F57FC:  VLDR            S6, [R5,#4]
2F5800:  VSUB.F32        S0, S0, S4
2F5804:  VSUB.F32        S2, S2, S6
2F5808:  VMUL.F32        S0, S0, S0
2F580C:  VMUL.F32        S2, S2, S2
2F5810:  VADD.F32        S0, S0, S2
2F5814:  VSQRT.F32       S0, S0
2F5818:  VMOV            R2, S0; float
2F581C:  ADD             SP, SP, #8
2F581E:  POP.W           {R4,R5,R7,LR}
2F5822:  B.W             _ZN8CCarCtrl27FlyAIHeliInCertainDirectionEP5CHeliffb; CCarCtrl::FlyAIHeliInCertainDirection(CHeli *,float,float,bool)
2F5826:  VMOV            R1, S0
2F582A:  LDRD.W          R2, R3, [R4,#0x3F0]
2F582E:  LDR.W           R0, [R4,#0x3F8]
2F5832:  MOV.W           R12, #0
2F5836:  STRD.W          R0, R12, [SP,#0x10+var_10]
2F583A:  MOV             R0, R4
2F583C:  BLX             j__ZN8CCarCtrl34FlyAIHeliToTarget_FixedOrientationEP5CHelif7CVectorb; CCarCtrl::FlyAIHeliToTarget_FixedOrientation(CHeli *,float,CVector,bool)
2F5840:  ADD             SP, SP, #8
2F5842:  POP             {R4,R5,R7,PC}
