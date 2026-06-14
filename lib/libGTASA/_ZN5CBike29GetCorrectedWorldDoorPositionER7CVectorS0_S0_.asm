; =========================================================
; Game Engine Function: _ZN5CBike29GetCorrectedWorldDoorPositionER7CVectorS0_S0_
; Address            : 0x5676E8 - 0x56786A
; =========================================================

5676E8:  PUSH            {R4-R7,LR}
5676EA:  ADD             R7, SP, #0xC
5676EC:  PUSH.W          {R8-R10}
5676F0:  VPUSH           {D8-D9}
5676F4:  SUB             SP, SP, #0x18
5676F6:  MOV             R5, R0
5676F8:  MOV             R4, R1
5676FA:  LDR             R0, [R5,#0x14]
5676FC:  MOV.W           R10, #0
567700:  MOV.W           R1, #0x3F800000
567704:  ADD             R6, SP, #0x40+var_34
567706:  STRD.W          R10, R10, [SP,#0x40+var_40]
56770A:  MOV             R9, R2
56770C:  STR             R1, [SP,#0x40+var_38]
56770E:  ADD.W           R1, R0, #0x10; CVector *
567712:  MOV             R2, SP
567714:  MOV             R0, R6; CVector *
567716:  MOV             R8, R3
567718:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56771C:  LDR             R0, [R5,#0x14]
56771E:  MOV             R1, R6; CVector *
567720:  ADD.W           R2, R0, #0x10
567724:  MOV             R0, SP; CVector *
567726:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
56772A:  LDR             R0, [R5,#0x14]
56772C:  VLDR            S0, [SP,#0x40+var_34]
567730:  VLDR            S2, [SP,#0x40+var_30]
567734:  VLDR            S6, [R0,#0x20]
567738:  VLDR            S8, [R0,#0x24]
56773C:  VMUL.F32        S0, S6, S0
567740:  VLDR            S10, [R0,#0x28]
567744:  VMUL.F32        S2, S8, S2
567748:  VLDR            S4, [SP,#0x40+var_2C]
56774C:  MOV             R0, R5; this
56774E:  VMUL.F32        S16, S10, S4
567752:  VADD.F32        S18, S0, S2
567756:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
56775A:  VLDR            S0, [R0,#0xC]
56775E:  VMOV            S10, R9
567762:  VLDR            S2, [R0,#0x14]
567766:  VMOV            S12, R8
56776A:  VLDR            S4, =0.0
56776E:  VCMPE.F32       S2, S0
567772:  VLDR            S8, [R7,#arg_4]
567776:  VMRS            APSR_nzcv, FPSCR
56777A:  VSUB.F32        S6, S2, S0
56777E:  VADD.F32        S2, S18, S16
567782:  VLDR            S14, [R7,#arg_C]
567786:  VMOV.F32        S0, S4
56778A:  VSUB.F32        S8, S8, S10
56778E:  IT GT
567790:  VMOVGT.F32      S0, S6
567794:  VLDR            S6, [R7,#arg_8]
567798:  VMUL.F32        S0, S2, S0
56779C:  STRD.W          R10, R10, [R4]
5677A0:  VSUB.F32        S6, S6, S12
5677A4:  STR.W           R10, [R4,#8]
5677A8:  LDR             R0, [R5,#0x14]
5677AA:  VLDR            S1, [SP,#0x40+var_30]
5677AE:  VLDR            S3, [SP,#0x40+var_2C]
5677B2:  VLDR            S2, [R0,#0x10]
5677B6:  VLDR            S10, [R0,#0x14]
5677BA:  VLDR            S12, [R0,#0x18]
5677BE:  VADD.F32        S0, S8, S0
5677C2:  VMUL.F32        S10, S6, S10
5677C6:  VLDR            S8, [R7,#arg_0]
5677CA:  VMUL.F32        S2, S6, S2
5677CE:  VLDR            S5, [SP,#0x40+var_38]
5677D2:  VMUL.F32        S6, S6, S12
5677D6:  VLDR            S12, [SP,#0x40+var_34]
5677DA:  VSUB.F32        S8, S14, S8
5677DE:  VMUL.F32        S14, S0, S1
5677E2:  VLDR            S1, [SP,#0x40+var_3C]
5677E6:  VADD.F32        S10, S10, S4
5677EA:  VADD.F32        S2, S2, S4
5677EE:  VMUL.F32        S12, S0, S12
5677F2:  VADD.F32        S4, S6, S4
5677F6:  VLDR            S6, [SP,#0x40+var_40]
5677FA:  VMUL.F32        S0, S0, S3
5677FE:  VMUL.F32        S1, S8, S1
567802:  VMUL.F32        S6, S8, S6
567806:  VADD.F32        S10, S14, S10
56780A:  VMUL.F32        S8, S8, S5
56780E:  VADD.F32        S2, S12, S2
567812:  VADD.F32        S0, S0, S4
567816:  VADD.F32        S4, S1, S10
56781A:  VADD.F32        S2, S6, S2
56781E:  VADD.F32        S0, S8, S0
567822:  VSTR            S2, [R4]
567826:  VSTR            S4, [R4,#4]
56782A:  VSTR            S0, [R4,#8]
56782E:  LDR             R0, [R5,#0x14]
567830:  ADD.W           R1, R0, #0x30 ; '0'
567834:  CMP             R0, #0
567836:  IT EQ
567838:  ADDEQ           R1, R5, #4
56783A:  VLDR            S6, [R1]
56783E:  VADD.F32        S2, S6, S2
567842:  VSTR            S2, [R4]
567846:  VLDR            S2, [R1,#4]
56784A:  VADD.F32        S2, S2, S4
56784E:  VSTR            S2, [R4,#4]
567852:  VLDR            S2, [R1,#8]
567856:  VADD.F32        S0, S2, S0
56785A:  VSTR            S0, [R4,#8]
56785E:  ADD             SP, SP, #0x18
567860:  VPOP            {D8-D9}
567864:  POP.W           {R8-R10}
567868:  POP             {R4-R7,PC}
