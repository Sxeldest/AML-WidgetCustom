; =========================================================
; Game Engine Function: _ZN9CQuadBike9ProcessAIERj
; Address            : 0x57A56C - 0x57AAFA
; =========================================================

57A56C:  PUSH            {R4,R5,R7,LR}
57A56E:  ADD             R7, SP, #8
57A570:  VPUSH           {D8-D9}
57A574:  SUB             SP, SP, #0x10
57A576:  MOV             R4, R0
57A578:  LDRB.W          R0, [R4,#0x3A]
57A57C:  CMP             R0, #8
57A57E:  BCS             loc_57A63C
57A580:  MOV             R0, R4; this
57A582:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
57A586:  LDRSB.W         R0, [R4,#0x428]
57A58A:  LDRH.W          R1, [R4,#0x3DF]
57A58E:  CMP             R0, #0
57A590:  BIC.W           R1, R1, #3
57A594:  STRH.W          R1, [R4,#0x3DF]
57A598:  BLT             loc_57A5A8
57A59A:  LDR.W           R1, =(_ZN17CVehicleRecording9bUseCarAIE_ptr - 0x57A5A2)
57A59E:  ADD             R1, PC; _ZN17CVehicleRecording9bUseCarAIE_ptr
57A5A0:  LDR             R1, [R1]; CVehicleRecording::bUseCarAI ...
57A5A2:  LDRB            R0, [R1,R0]
57A5A4:  CMP             R0, #0
57A5A6:  BEQ             loc_57A632
57A5A8:  LDR.W           R1, [R4,#0x388]
57A5AC:  LDR.W           R0, [R4,#0x464]; this
57A5B0:  VLDR            D16, [R1,#0x14]
57A5B4:  CMP             R0, #0
57A5B6:  LDR             R1, [R1,#0x1C]
57A5B8:  STR.W           R1, [R4,#0xB0]
57A5BC:  VSTR            D16, [R4,#0xA8]
57A5C0:  BEQ             loc_57A632
57A5C2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
57A5C6:  CMP             R0, #1
57A5C8:  BNE             loc_57A632
57A5CA:  MOV             R0, R4; this
57A5CC:  BLX             j__ZN7CEntity15PruneReferencesEv; CEntity::PruneReferences(void)
57A5D0:  LDR.W           R0, [R4,#0x464]
57A5D4:  MOVW            R1, #0x329; int
57A5D8:  LDR.W           R0, [R0,#0x440]
57A5DC:  ADDS            R0, #4; this
57A5DE:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
57A5E2:  CBNZ            R0, loc_57A618
57A5E4:  LDR.W           R0, [R4,#0x464]
57A5E8:  MOVW            R1, #0x337; int
57A5EC:  LDR.W           R0, [R0,#0x440]
57A5F0:  ADDS            R0, #4; this
57A5F2:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
57A5F6:  CBNZ            R0, loc_57A618
57A5F8:  LDR.W           R0, [R4,#0x464]
57A5FC:  MOVW            R1, #0x339; int
57A600:  LDR.W           R0, [R0,#0x440]
57A604:  ADDS            R0, #4; this
57A606:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
57A60A:  CBNZ            R0, loc_57A618
57A60C:  LDR.W           R0, [R4,#0x464]; this
57A610:  LDR.W           R1, [R0,#0x44C]
57A614:  CMP             R1, #0x3F ; '?'
57A616:  BNE             loc_57A64C
57A618:  LDR.W           R1, [R4,#0x42C]; unsigned int *
57A61C:  MOVS            R2, #0
57A61E:  MOV.W           R0, #0x3F800000
57A622:  STR.W           R2, [R4,#0x4A0]
57A626:  STR.W           R0, [R4,#0x4A4]
57A62A:  ORR.W           R0, R1, #0x20 ; ' '
57A62E:  STR.W           R0, [R4,#0x42C]
57A632:  MOVS            R0, #0
57A634:  ADD             SP, SP, #0x10
57A636:  VPOP            {D8-D9}
57A63A:  POP             {R4,R5,R7,PC}
57A63C:  MOV             R0, R4; this
57A63E:  ADD             SP, SP, #0x10
57A640:  VPOP            {D8-D9}
57A644:  POP.W           {R4,R5,R7,LR}
57A648:  B.W             sub_196F50
57A64C:  CBZ             R0, loc_57A672
57A64E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
57A652:  CMP             R0, #1
57A654:  BNE             loc_57A672
57A656:  LDR             R2, [R4]
57A658:  LDR.W           R0, [R4,#0x464]
57A65C:  LDR             R2, [R2,#0x64]
57A65E:  LDRB.W          R1, [R0,#0x59C]
57A662:  MOV             R0, R4
57A664:  BLX             R2
57A666:  LDR.W           R0, [R4,#0x464]; this
57A66A:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
57A66E:  MOV             R5, R0
57A670:  B               loc_57A674
57A672:  MOVS            R5, #0
57A674:  LDR             R0, [R4,#0x14]
57A676:  ADD.W           R1, R4, #0x9B0
57A67A:  VLDR            S0, [R4,#0x54]
57A67E:  VLDR            S2, [R4,#0x58]
57A682:  VLDR            S6, [R0]
57A686:  VLDR            S8, [R0,#4]
57A68A:  VMUL.F32        S0, S0, S6
57A68E:  VLDR            S4, [R4,#0x5C]
57A692:  VMUL.F32        S2, S2, S8
57A696:  VLDR            S10, [R0,#8]
57A69A:  VMUL.F32        S4, S4, S10
57A69E:  VADD.F32        S0, S0, S2
57A6A2:  VADD.F32        S2, S0, S4
57A6A6:  VLDR            S0, [R1]
57A6AA:  VCMPE.F32       S0, #0.0
57A6AE:  VMRS            APSR_nzcv, FPSCR
57A6B2:  BGE             loc_57A72E
57A6B4:  LDR.W           R1, [R4,#0x99C]
57A6B8:  VLDR            S4, [R1,#0xC]
57A6BC:  VCMPE.F32       S2, S4
57A6C0:  VMRS            APSR_nzcv, FPSCR
57A6C4:  BGE             loc_57A72E
57A6C6:  LDRB.W          R2, [R4,#0x974]
57A6CA:  CMP             R2, #0
57A6CC:  BEQ             loc_57A7AA
57A6CE:  ADDW            R2, R4, #0x4A4
57A6D2:  VLDR            S2, =0.0
57A6D6:  VLDR            S4, [R2]
57A6DA:  VCMP.F32        S4, #0.0
57A6DE:  VMRS            APSR_nzcv, FPSCR
57A6E2:  BNE             loc_57A7BA
57A6E4:  LDRB.W          R2, [R4,#0x42C]
57A6E8:  LSLS            R2, R2, #0x1A
57A6EA:  BMI             loc_57A7BA
57A6EC:  VLDR            S2, [R4,#0x48]
57A6F0:  VLDR            S4, [R4,#0x4C]
57A6F4:  VMUL.F32        S2, S2, S2
57A6F8:  VLDR            S6, [R4,#0x50]
57A6FC:  VMUL.F32        S4, S4, S4
57A700:  VLDR            S8, [R4,#0x94]
57A704:  VMUL.F32        S6, S6, S6
57A708:  VMUL.F32        S0, S0, S8
57A70C:  VADD.F32        S2, S2, S4
57A710:  VLDR            S4, [R1,#0x10]
57A714:  VMUL.F32        S0, S0, S4
57A718:  VLDR            S4, =0.1
57A71C:  VADD.F32        S2, S2, S6
57A720:  VSQRT.F32       S2, S2
57A724:  VMIN.F32        D1, D1, D2
57A728:  VMUL.F32        S2, S0, S2
57A72C:  B               loc_57A7BA
57A72E:  VCMPE.F32       S0, #0.0
57A732:  VMRS            APSR_nzcv, FPSCR
57A736:  BLE.W           loc_57A848
57A73A:  LDR.W           R1, [R4,#0x99C]
57A73E:  VLDR            S4, [R1,#4]
57A742:  VNEG.F32        S4, S4
57A746:  VCMPE.F32       S2, S4
57A74A:  VMRS            APSR_nzcv, FPSCR
57A74E:  BLE             loc_57A848
57A750:  LDRB.W          R2, [R4,#0x974]
57A754:  CBZ             R2, loc_57A7CA
57A756:  ADDW            R2, R4, #0x4A4
57A75A:  VLDR            S2, [R2]
57A75E:  VCMPE.F32       S2, #0.0
57A762:  VMRS            APSR_nzcv, FPSCR
57A766:  BLE             loc_57A7DC
57A768:  VLDR            S2, [R4,#0x48]
57A76C:  VLDR            S4, [R4,#0x4C]
57A770:  VMUL.F32        S2, S2, S2
57A774:  VLDR            S6, [R4,#0x50]
57A778:  VMUL.F32        S4, S4, S4
57A77C:  VLDR            S8, [R4,#0x94]
57A780:  VMUL.F32        S6, S6, S6
57A784:  VMUL.F32        S0, S0, S8
57A788:  VADD.F32        S2, S2, S4
57A78C:  VLDR            S4, [R1,#8]
57A790:  VMUL.F32        S0, S0, S4
57A794:  VLDR            S4, =0.1
57A798:  VADD.F32        S2, S2, S6
57A79C:  VSQRT.F32       S2, S2
57A7A0:  VMIN.F32        D1, D1, D2
57A7A4:  VMUL.F32        S0, S0, S2
57A7A8:  B               loc_57A7E0
57A7AA:  VLDR            S2, [R4,#0x94]
57A7AE:  VMUL.F32        S0, S0, S2
57A7B2:  VLDR            S2, =0.0015
57A7B6:  VMUL.F32        S2, S0, S2
57A7BA:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57A7C0)
57A7BC:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57A7BE:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57A7C0:  VLDR            S0, [R1]
57A7C4:  VMUL.F32        S0, S2, S0
57A7C8:  B               loc_57A7EE
57A7CA:  VLDR            S2, [R4,#0x94]
57A7CE:  VMUL.F32        S0, S0, S2
57A7D2:  VLDR            S2, =0.0015
57A7D6:  VMUL.F32        S0, S0, S2
57A7DA:  B               loc_57A7E0
57A7DC:  VLDR            S0, =0.0
57A7E0:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57A7E6)
57A7E2:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57A7E4:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57A7E6:  VLDR            S2, [R1]
57A7EA:  VMUL.F32        S0, S0, S2
57A7EE:  VLDR            S8, [R0,#0x20]
57A7F2:  VLDR            S10, [R0,#0x24]
57A7F6:  VLDR            S12, [R0,#0x28]
57A7FA:  VNMUL.F32       S8, S0, S8
57A7FE:  VNMUL.F32       S10, S0, S10
57A802:  VLDR            S2, [R0,#0x10]
57A806:  VNMUL.F32       S0, S0, S12
57A80A:  VLDR            S4, [R0,#0x14]
57A80E:  VLDR            S6, [R0,#0x18]
57A812:  MOV             R0, R4
57A814:  VMOV            R1, S8
57A818:  VLDR            S8, [R4,#0xAC]
57A81C:  VMOV            R2, S10
57A820:  VLDR            S10, [R4,#0xB0]
57A824:  VMOV            R3, S0
57A828:  VLDR            S0, [R4,#0xA8]
57A82C:  VADD.F32        S6, S10, S6
57A830:  VADD.F32        S0, S0, S2
57A834:  VADD.F32        S4, S8, S4
57A838:  VSTR            S0, [SP,#0x28+var_28]
57A83C:  VSTR            S4, [SP,#0x28+var_24]
57A840:  VSTR            S6, [SP,#0x28+var_20]
57A844:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
57A848:  VMOV.F32        S16, #1.0
57A84C:  ADD.W           R0, R4, #0x7E8
57A850:  VLDR            S0, [R0]
57A854:  VCMP.F32        S0, S16
57A858:  VMRS            APSR_nzcv, FPSCR
57A85C:  BNE.W           loc_57AA7A
57A860:  ADDW            R0, R4, #0x7EC
57A864:  VLDR            S0, [R0]
57A868:  VCMP.F32        S0, S16
57A86C:  VMRS            APSR_nzcv, FPSCR
57A870:  BNE.W           loc_57AA7A
57A874:  ADD.W           R0, R4, #0x7F0
57A878:  VLDR            S0, [R0]
57A87C:  VCMP.F32        S0, S16
57A880:  VMRS            APSR_nzcv, FPSCR
57A884:  BNE.W           loc_57AA7A
57A888:  CMP             R5, #0
57A88A:  BEQ.W           loc_57AA7A
57A88E:  ADDW            R0, R4, #0x7F4
57A892:  VLDR            S0, [R0]
57A896:  VCMP.F32        S0, S16
57A89A:  VMRS            APSR_nzcv, FPSCR
57A89E:  BNE.W           loc_57AA7A
57A8A2:  MOV             R0, R5; this
57A8A4:  BLX             j__ZN4CPad20GetSteeringLeftRightEv; CPad::GetSteeringLeftRight(void)
57A8A8:  VMOV            S0, R0; this
57A8AC:  VLDR            S2, =0.0078125
57A8B0:  VCVT.F32.S32    S0, S0
57A8B4:  VMUL.F32        S18, S0, S2
57A8B8:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
57A8BC:  CMP             R0, #2
57A8BE:  BNE             loc_57A8F4
57A8C0:  VABS.F32        S0, S18
57A8C4:  VLDR            S2, =0.05
57A8C8:  VCMPE.F32       S0, S2
57A8CC:  VMRS            APSR_nzcv, FPSCR
57A8D0:  BGE             loc_57A8F4
57A8D2:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x57A8E0)
57A8D4:  VMOV.F32        S4, #-1.5
57A8D8:  VLDR            S0, =0.01
57A8DC:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
57A8DE:  LDR             R0, [R0]; CPad::NewMouseControllerState ...
57A8E0:  VLDR            S2, [R0,#0xC]
57A8E4:  VMUL.F32        S0, S2, S0
57A8E8:  VMOV.F32        S2, #1.5
57A8EC:  VMAX.F32        D16, D0, D2
57A8F0:  VMIN.F32        D9, D16, D1
57A8F4:  LDRB.W          R0, [R4,#0x42C]
57A8F8:  LSLS            R0, R0, #0x1A
57A8FA:  BMI             loc_57A9A4
57A8FC:  MOV             R0, R5; this
57A8FE:  BLX             j__ZN4CPad13GetAccelerateEv; CPad::GetAccelerate(void)
57A902:  CMP             R0, #0
57A904:  BNE.W           loc_57AA7A
57A908:  LDR             R0, [R4,#0x14]
57A90A:  VCMPE.F32       S18, #0.0
57A90E:  VLDR            S0, [R4,#0x54]
57A912:  VLDR            S2, [R4,#0x58]
57A916:  VLDR            S6, [R0,#0x10]
57A91A:  VLDR            S8, [R0,#0x14]
57A91E:  VMUL.F32        S0, S0, S6
57A922:  VMRS            APSR_nzcv, FPSCR
57A926:  VMUL.F32        S2, S2, S8
57A92A:  VLDR            S4, [R4,#0x5C]
57A92E:  VLDR            S10, [R0,#0x18]
57A932:  VMUL.F32        S4, S4, S10
57A936:  VADD.F32        S0, S0, S2
57A93A:  VADD.F32        S0, S0, S4
57A93E:  ITTT LT
57A940:  VLDRLT          S2, =0.03
57A944:  VCMPELT.F32     S0, S2
57A948:  VMRSLT          APSR_nzcv, FPSCR
57A94C:  BLT             loc_57A968
57A94E:  VCMPE.F32       S18, #0.0
57A952:  VMRS            APSR_nzcv, FPSCR
57A956:  ITTT GT
57A958:  VLDRGT          S2, =-0.03
57A95C:  VCMPEGT.F32     S0, S2
57A960:  VMRSGT          APSR_nzcv, FPSCR
57A964:  BLE.W           loc_57AA7A
57A968:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57A972)
57A96A:  VLDR            S2, =0.0015
57A96E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57A970:  VLDR            S4, [R4,#0xA8]
57A974:  VLDR            S6, [R4,#0xAC]
57A978:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57A97A:  VLDR            S8, [R4,#0xB0]
57A97E:  VLDR            S10, [R0,#4]
57A982:  VLDR            S0, [R1]
57A986:  VLDR            S12, [R0,#8]
57A98A:  VMUL.F32        S0, S18, S0
57A98E:  VLDR            S14, [R0,#0x20]
57A992:  VLDR            S1, [R0,#0x24]
57A996:  VLDR            S3, [R0,#0x28]
57A99A:  B               loc_57AA34
57A99C:  DCFS 0.0
57A9A0:  DCFS 0.1
57A9A4:  LDR             R0, [R4,#0x14]
57A9A6:  VCMPE.F32       S18, #0.0
57A9AA:  VLDR            S0, [R4,#0x54]
57A9AE:  VLDR            S2, [R4,#0x58]
57A9B2:  VLDR            S6, [R0,#0x20]
57A9B6:  VLDR            S8, [R0,#0x24]
57A9BA:  VMUL.F32        S0, S0, S6
57A9BE:  VMRS            APSR_nzcv, FPSCR
57A9C2:  VMUL.F32        S2, S2, S8
57A9C6:  VLDR            S4, [R4,#0x5C]
57A9CA:  VLDR            S10, [R0,#0x28]
57A9CE:  VMUL.F32        S4, S4, S10
57A9D2:  VADD.F32        S0, S0, S2
57A9D6:  VADD.F32        S0, S0, S4
57A9DA:  ITTT LT
57A9DC:  VLDRLT          S2, =0.03
57A9E0:  VCMPELT.F32     S0, S2
57A9E4:  VMRSLT          APSR_nzcv, FPSCR
57A9E8:  BLT             loc_57AA02
57A9EA:  VCMPE.F32       S18, #0.0
57A9EE:  VMRS            APSR_nzcv, FPSCR
57A9F2:  ITTT GT
57A9F4:  VLDRGT          S2, =-0.03
57A9F8:  VCMPEGT.F32     S0, S2
57A9FC:  VMRSGT          APSR_nzcv, FPSCR
57AA00:  BLE             loc_57AA7A
57AA02:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57AA0C)
57AA04:  VLDR            S2, =0.0015
57AA08:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57AA0A:  VLDR            S4, [R4,#0xA8]
57AA0E:  VLDR            S6, [R4,#0xAC]
57AA12:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57AA14:  VLDR            S8, [R4,#0xB0]
57AA18:  VLDR            S10, [R0,#4]
57AA1C:  VLDR            S0, [R1]
57AA20:  VLDR            S12, [R0,#8]
57AA24:  VMUL.F32        S0, S18, S0
57AA28:  VLDR            S14, [R0,#0x10]
57AA2C:  VLDR            S1, [R0,#0x14]
57AA30:  VLDR            S3, [R0,#0x18]
57AA34:  VMUL.F32        S0, S0, S2
57AA38:  VLDR            S2, [R4,#0x94]
57AA3C:  VMUL.F32        S0, S2, S0
57AA40:  VLDR            S2, [R0]
57AA44:  VMUL.F32        S2, S2, S0
57AA48:  MOV             R0, R4
57AA4A:  VMUL.F32        S10, S0, S10
57AA4E:  VMUL.F32        S0, S0, S12
57AA52:  VADD.F32        S4, S4, S14
57AA56:  VMOV            R1, S2
57AA5A:  VMOV            R2, S10
57AA5E:  VMOV            R3, S0
57AA62:  VADD.F32        S0, S8, S3
57AA66:  VSTR            S4, [SP,#0x28+var_28]
57AA6A:  VADD.F32        S2, S6, S1
57AA6E:  VSTR            S2, [SP,#0x28+var_24]
57AA72:  VSTR            S0, [SP,#0x28+var_20]
57AA76:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
57AA7A:  LDR.W           R0, [R4,#0x388]
57AA7E:  ADD.W           R1, R4, #0x498
57AA82:  VLDR            S0, =-3.1416
57AA86:  VLDR            S2, [R0,#0xA0]
57AA8A:  LDR.W           R0, [R4,#0x99C]
57AA8E:  VMUL.F32        S0, S2, S0
57AA92:  VLDR            S2, =180.0
57AA96:  VLDR            S4, [R0,#0x18]
57AA9A:  LDR             R0, [R0,#0x1C]; x
57AA9C:  VDIV.F32        S0, S0, S2
57AAA0:  VLDR            S2, [R1]
57AAA4:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x57AAAE)
57AAA6:  VMUL.F32        S2, S4, S2
57AAAA:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
57AAAC:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
57AAAE:  LDR             R1, [R1]; y
57AAB0:  VDIV.F32        S18, S2, S0
57AAB4:  BLX             powf
57AAB8:  VMOV            S0, R0
57AABC:  ADDW            R0, R4, #0x9A8
57AAC0:  VSUB.F32        S2, S16, S0
57AAC4:  VLDR            S4, [R0]
57AAC8:  VMUL.F32        S0, S0, S4
57AACC:  VMUL.F32        S2, S2, S18
57AAD0:  VADD.F32        S0, S0, S2
57AAD4:  VSTR            S0, [R0]
57AAD8:  MOV             R0, R4; this
57AADA:  BLX             j__ZN8CVehicle18DoDriveByShootingsEv; CVehicle::DoDriveByShootings(void)
57AADE:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x57AAE4)
57AAE0:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
57AAE2:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
57AAE4:  LDRB.W          R0, [R0,#(byte_79681D - 0x7967F4)]
57AAE8:  CMP             R0, #0
57AAEA:  BEQ.W           loc_57A632
57AAEE:  LDR             R0, [R4]
57AAF0:  LDR.W           R1, [R0,#0x118]
57AAF4:  MOV             R0, R4
57AAF6:  BLX             R1
57AAF8:  B               loc_57A632
