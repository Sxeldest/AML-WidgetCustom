; =========================================================
; Game Engine Function: _Z29RtAnimInterpolatorAddAnimTimeP18RtAnimInterpolatorf
; Address            : 0x1EB5B0 - 0x1EB758
; =========================================================

1EB5B0:  PUSH            {R4-R7,LR}
1EB5B2:  ADD             R7, SP, #0xC
1EB5B4:  PUSH.W          {R8-R11}
1EB5B8:  SUB             SP, SP, #4
1EB5BA:  VPUSH           {D8}
1EB5BE:  SUB             SP, SP, #8
1EB5C0:  VMOV            S0, R1
1EB5C4:  MOV             R9, R0
1EB5C6:  VCMPE.F32       S0, #0.0
1EB5CA:  VMRS            APSR_nzcv, FPSCR
1EB5CE:  BLE.W           loc_1EB748
1EB5D2:  VLDR            S4, [R9,#4]
1EB5D6:  MOVS            R0, #0
1EB5D8:  VLDR            S2, [R9,#0x14]
1EB5DC:  MOVS            R1, #0
1EB5DE:  VADD.F32        S16, S4, S0
1EB5E2:  LDR.W           R5, [R9]
1EB5E6:  VCMPE.F32       S4, S2
1EB5EA:  LDR.W           R6, [R9,#0x2C]
1EB5EE:  VMRS            APSR_nzcv, FPSCR
1EB5F2:  MOV.W           R8, #0
1EB5F6:  VLDR            S0, [R5,#0xC]
1EB5FA:  VCMPE.F32       S16, S2
1EB5FE:  VSTR            S16, [R9,#4]
1EB602:  IT LT
1EB604:  MOVLT           R0, #1
1EB606:  VMRS            APSR_nzcv, FPSCR
1EB60A:  VCMPE.F32       S16, S0
1EB60E:  IT GE
1EB610:  MOVGE           R1, #1
1EB612:  VMRS            APSR_nzcv, FPSCR
1EB616:  AND.W           R11, R0, R1
1EB61A:  BLE             loc_1EB64C
1EB61C:  VSUB.F32        S16, S16, S0
1EB620:  VCMPE.F32       S16, S2
1EB624:  VMRS            APSR_nzcv, FPSCR
1EB628:  VCMPE.F32       S16, S0
1EB62C:  IT GE
1EB62E:  ORRGE.W         R11, R11, #1
1EB632:  VMRS            APSR_nzcv, FPSCR
1EB636:  BGT             loc_1EB61C
1EB638:  MOV             R0, R9
1EB63A:  MOV             R1, R5
1EB63C:  VSTR            S16, [R9,#4]
1EB640:  BLX             j__Z32RtAnimInterpolatorSetCurrentAnimP18RtAnimInterpolatorP15RtAnimAnimation; RtAnimInterpolatorSetCurrentAnim(RtAnimInterpolator *,RtAnimAnimation *)
1EB644:  MOV.W           R8, #1
1EB648:  VSTR            S16, [R9,#4]
1EB64C:  LDR.W           R0, [R9,#8]
1EB650:  CBNZ            R0, loc_1EB65E
1EB652:  MOV             R0, R9
1EB654:  MOV             R1, R5
1EB656:  BLX             j__Z32RtAnimInterpolatorSetCurrentAnimP18RtAnimInterpolatorP15RtAnimAnimation; RtAnimInterpolatorSetCurrentAnim(RtAnimInterpolator *,RtAnimAnimation *)
1EB65A:  VSTR            S16, [R9,#4]
1EB65E:  LDR             R0, =(RunUVAnim_ptr - 0x1EB664)
1EB660:  ADD             R0, PC; RunUVAnim_ptr
1EB662:  LDR             R0, [R0]; RunUVAnim
1EB664:  LDRB            R0, [R0]
1EB666:  CMP             R0, #0
1EB668:  BEQ             loc_1EB708
1EB66A:  LDR             R0, [R5,#4]
1EB66C:  LDR.W           R2, [R9,#0x28]
1EB670:  LDR             R1, [R5,#0x10]
1EB672:  MLA.W           R12, R2, R0, R1
1EB676:  LDR.W           R0, [R9,#8]
1EB67A:  CMP             R0, R12
1EB67C:  BCS             loc_1EB6DE
1EB67E:  LDR             R3, [R0]
1EB680:  ADD.W           R10, R9, #0x24 ; '$'
1EB684:  VLDR            S0, [R3,#4]
1EB688:  VCMPE.F32       S0, S16
1EB68C:  VMRS            APSR_nzcv, FPSCR
1EB690:  BGT             loc_1EB6E2
1EB692:  ADD.W           R1, R9, #0x4C ; 'L'
1EB696:  MOVS            R2, #0
1EB698:  LDR.W           R0, [R10]
1EB69C:  MLA.W           R5, R0, R2, R1
1EB6A0:  ADDS            R2, #1
1EB6A2:  CMP             R2, R6
1EB6A4:  LDR             R4, [R5,#4]
1EB6A6:  IT GE
1EB6A8:  MOVGE           R2, #0
1EB6AA:  CMP             R4, R3
1EB6AC:  BNE             loc_1EB69C
1EB6AE:  STR             R3, [R5]
1EB6B0:  LDR.W           R0, [R9,#8]
1EB6B4:  STR             R0, [R5,#4]
1EB6B6:  LDR.W           R0, [R9,#8]
1EB6BA:  LDR.W           R3, [R9,#0x28]
1EB6BE:  ADD             R0, R3
1EB6C0:  STR.W           R0, [R9,#8]
1EB6C4:  CMP             R0, R12
1EB6C6:  BCS             loc_1EB6E2
1EB6C8:  LDR             R3, [R0]
1EB6CA:  VLDR            S0, [R9,#4]
1EB6CE:  VLDR            S2, [R3,#4]
1EB6D2:  VCMPE.F32       S2, S0
1EB6D6:  VMRS            APSR_nzcv, FPSCR
1EB6DA:  BLE             loc_1EB698
1EB6DC:  B               loc_1EB6E2
1EB6DE:  ADD.W           R10, R9, #0x24 ; '$'
1EB6E2:  CMP             R6, #1
1EB6E4:  BLT             loc_1EB708
1EB6E6:  ADD.W           R5, R9, #0x4C ; 'L'
1EB6EA:  LDRD.W          R0, R3, [R9]
1EB6EE:  LDR.W           R4, [R9,#0x44]
1EB6F2:  LDRD.W          R1, R2, [R5]
1EB6F6:  LDR             R0, [R0,#0x14]
1EB6F8:  STR             R0, [SP,#0x30+var_30]
1EB6FA:  MOV             R0, R5
1EB6FC:  BLX             R4
1EB6FE:  LDR.W           R0, [R10]
1EB702:  SUBS            R6, #1
1EB704:  ADD             R5, R0
1EB706:  BNE             loc_1EB6EA
1EB708:  CMP.W           R11, #0
1EB70C:  ITT NE
1EB70E:  LDRNE.W         R2, [R9,#0xC]
1EB712:  CMPNE           R2, #0
1EB714:  BEQ             loc_1EB728
1EB716:  LDR.W           R1, [R9,#0x10]
1EB71A:  MOV             R0, R9
1EB71C:  BLX             R2
1EB71E:  CMP             R0, #0
1EB720:  ITT EQ
1EB722:  MOVEQ           R0, #0
1EB724:  STREQ.W         R0, [R9,#0xC]
1EB728:  CMP.W           R8, #0
1EB72C:  ITT NE
1EB72E:  LDRNE.W         R2, [R9,#0x18]
1EB732:  CMPNE           R2, #0
1EB734:  BEQ             loc_1EB748
1EB736:  LDR.W           R1, [R9,#0x1C]
1EB73A:  MOV             R0, R9
1EB73C:  BLX             R2
1EB73E:  CMP             R0, #0
1EB740:  ITT EQ
1EB742:  MOVEQ           R0, #0
1EB744:  STREQ.W         R0, [R9,#0x18]
1EB748:  MOVS            R0, #1
1EB74A:  ADD             SP, SP, #8
1EB74C:  VPOP            {D8}
1EB750:  ADD             SP, SP, #4
1EB752:  POP.W           {R8-R11}
1EB756:  POP             {R4-R7,PC}
