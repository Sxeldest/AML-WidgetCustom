; =========================================================
; Game Engine Function: _ZN27CTaskComplexDestroyCarArmed14ControlSubTaskEP4CPed
; Address            : 0x4E76F8 - 0x4E7938
; =========================================================

4E76F8:  PUSH            {R4-R7,LR}
4E76FA:  ADD             R7, SP, #0xC
4E76FC:  PUSH.W          {R8}
4E7700:  MOV             R5, R0
4E7702:  MOV             R4, R1
4E7704:  LDR             R0, [R5,#0x10]
4E7706:  CMP             R0, #0
4E7708:  BEQ.W           loc_4E7836
4E770C:  LDRB            R1, [R5,#0xC]
4E770E:  CBZ             R1, loc_4E7722
4E7710:  LDR             R0, [R5]
4E7712:  MOV             R1, R4
4E7714:  LDR             R2, [R0,#0x2C]
4E7716:  MOV             R0, R5
4E7718:  POP.W           {R8}
4E771C:  POP.W           {R4-R7,LR}
4E7720:  BX              R2
4E7722:  ADDW            R0, R0, #0x4CC
4E7726:  VLDR            S0, [R0]
4E772A:  VCMPE.F32       S0, #0.0
4E772E:  VMRS            APSR_nzcv, FPSCR
4E7732:  BLE.W           loc_4E7836
4E7736:  LDR             R6, [R5,#8]
4E7738:  LDR             R0, [R6]
4E773A:  LDR             R1, [R0,#0x14]
4E773C:  MOV             R0, R6
4E773E:  BLX             R1
4E7740:  MOVW            R1, #0x38B
4E7744:  CMP             R0, R1
4E7746:  BEQ             loc_4E7840
4E7748:  MOVW            R1, #0x387
4E774C:  CMP             R0, R1
4E774E:  BNE             loc_4E7838
4E7750:  LDR             R0, [R4,#0x14]
4E7752:  LDR             R1, [R5,#0x10]
4E7754:  ADD.W           R2, R0, #0x30 ; '0'
4E7758:  CMP             R0, #0
4E775A:  IT EQ
4E775C:  ADDEQ           R2, R4, #4
4E775E:  VLDR            D16, [R2]
4E7762:  LDR             R0, [R2,#8]
4E7764:  STR             R0, [R5,#0x1C]
4E7766:  VSTR            D16, [R5,#0x14]
4E776A:  LDR             R0, [R1,#0x14]
4E776C:  ADD.W           R2, R0, #0x30 ; '0'
4E7770:  CMP             R0, #0
4E7772:  IT EQ
4E7774:  ADDEQ           R2, R1, #4
4E7776:  VLDR            S0, [R5,#0x14]
4E777A:  VLDR            D16, [R2]
4E777E:  VLDR            S2, [R5,#0x18]
4E7782:  VSTR            D16, [R5,#0x20]
4E7786:  VLDR            S4, [R5,#0x20]
4E778A:  VLDR            S6, [R5,#0x24]
4E778E:  VSUB.F32        S0, S4, S0
4E7792:  LDR             R0, [R2,#8]
4E7794:  VSUB.F32        S2, S6, S2
4E7798:  VLDR            S4, [R5,#0x1C]
4E779C:  STR             R0, [R5,#0x28]
4E779E:  VLDR            S6, [R5,#0x28]
4E77A2:  VSUB.F32        S4, S6, S4
4E77A6:  VMUL.F32        S8, S0, S0
4E77AA:  VSTR            S0, [R5,#0x2C]
4E77AE:  VMUL.F32        S6, S2, S2
4E77B2:  VSTR            S2, [R5,#0x30]
4E77B6:  VMUL.F32        S10, S4, S4
4E77BA:  VSTR            S4, [R5,#0x34]
4E77BE:  VADD.F32        S6, S8, S6
4E77C2:  VADD.F32        S6, S6, S10
4E77C6:  VSQRT.F32       S6, S6
4E77CA:  VSTR            S6, [R5,#0x48]
4E77CE:  LDRSB.W         R0, [R4,#0x71C]
4E77D2:  RSB.W           R0, R0, R0,LSL#3
4E77D6:  ADD.W           R0, R4, R0,LSL#2
4E77DA:  LDR.W           R8, [R0,#0x5A4]
4E77DE:  MOV             R0, R4; this
4E77E0:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E77E4:  MOV             R1, R0
4E77E6:  MOV             R0, R8
4E77E8:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E77EC:  VMOV.F32        S0, #0.5
4E77F0:  VLDR            S2, [R0,#8]
4E77F4:  VLDR            S6, =0.8
4E77F8:  VMUL.F32        S0, S2, S0
4E77FC:  VLDR            S2, =1.1
4E7800:  VMUL.F32        S4, S0, S2
4E7804:  VLDR            S2, =0.9
4E7808:  VMUL.F32        S0, S0, S2
4E780C:  VLDR            S2, [R5,#0x4C]
4E7810:  VMAX.F32        D3, D0, D3
4E7814:  VLDR            S0, [R5,#0x48]
4E7818:  VCMPE.F32       S0, S4
4E781C:  VMRS            APSR_nzcv, FPSCR
4E7820:  VSTR            S6, [R5,#0x40]
4E7824:  VSTR            S4, [R5,#0x38]
4E7828:  BLT             loc_4E791E
4E782A:  VCMPE.F32       S0, S2
4E782E:  VMRS            APSR_nzcv, FPSCR
4E7832:  BGE             loc_4E7916
4E7834:  B               loc_4E791E
4E7836:  MOVS            R6, #0
4E7838:  MOV             R0, R6
4E783A:  POP.W           {R8}
4E783E:  POP             {R4-R7,PC}
4E7840:  LDR             R0, [R4,#0x14]
4E7842:  LDR             R1, [R5,#0x10]
4E7844:  ADD.W           R2, R0, #0x30 ; '0'
4E7848:  CMP             R0, #0
4E784A:  IT EQ
4E784C:  ADDEQ           R2, R4, #4
4E784E:  VLDR            D16, [R2]
4E7852:  LDR             R0, [R2,#8]
4E7854:  STR             R0, [R5,#0x1C]
4E7856:  VSTR            D16, [R5,#0x14]
4E785A:  LDR             R0, [R1,#0x14]
4E785C:  ADD.W           R2, R0, #0x30 ; '0'
4E7860:  CMP             R0, #0
4E7862:  IT EQ
4E7864:  ADDEQ           R2, R1, #4
4E7866:  VLDR            S0, [R5,#0x14]
4E786A:  VLDR            D16, [R2]
4E786E:  VLDR            S2, [R5,#0x18]
4E7872:  VSTR            D16, [R5,#0x20]
4E7876:  VLDR            S4, [R5,#0x20]
4E787A:  VLDR            S6, [R5,#0x24]
4E787E:  VSUB.F32        S0, S4, S0
4E7882:  LDR             R0, [R2,#8]
4E7884:  VSUB.F32        S2, S6, S2
4E7888:  VLDR            S4, [R5,#0x1C]
4E788C:  STR             R0, [R5,#0x28]
4E788E:  VLDR            S6, [R5,#0x28]
4E7892:  VSUB.F32        S4, S6, S4
4E7896:  VMUL.F32        S8, S0, S0
4E789A:  VSTR            S0, [R5,#0x2C]
4E789E:  VMUL.F32        S6, S2, S2
4E78A2:  VSTR            S2, [R5,#0x30]
4E78A6:  VMUL.F32        S10, S4, S4
4E78AA:  VSTR            S4, [R5,#0x34]
4E78AE:  VADD.F32        S6, S8, S6
4E78B2:  VADD.F32        S6, S6, S10
4E78B6:  VSQRT.F32       S6, S6
4E78BA:  VSTR            S6, [R5,#0x48]
4E78BE:  LDRSB.W         R0, [R4,#0x71C]
4E78C2:  RSB.W           R0, R0, R0,LSL#3
4E78C6:  ADD.W           R0, R4, R0,LSL#2
4E78CA:  LDR.W           R8, [R0,#0x5A4]
4E78CE:  MOV             R0, R4; this
4E78D0:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E78D4:  MOV             R1, R0
4E78D6:  MOV             R0, R8
4E78D8:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E78DC:  VMOV.F32        S0, #0.5
4E78E0:  VLDR            S2, [R0,#8]
4E78E4:  VLDR            S4, =0.9
4E78E8:  VLDR            S6, =0.8
4E78EC:  VMUL.F32        S0, S2, S0
4E78F0:  VLDR            S2, =1.1
4E78F4:  VMUL.F32        S2, S0, S2
4E78F8:  VMUL.F32        S0, S0, S4
4E78FC:  VLDR            S4, [R5,#0x48]
4E7900:  VMAX.F32        D0, D0, D3
4E7904:  VCMPE.F32       S4, S2
4E7908:  VSTR            S0, [R5,#0x40]
4E790C:  VSTR            S2, [R5,#0x38]
4E7910:  VMRS            APSR_nzcv, FPSCR
4E7914:  BLT             loc_4E791E
4E7916:  LDRB.W          R0, [R4,#0x486]
4E791A:  LSLS            R0, R0, #0x1A
4E791C:  BPL             loc_4E7838
4E791E:  MOV             R0, R4
4E7920:  MOVS            R1, #1
4E7922:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4E7926:  MOV             R0, R5; this
4E7928:  MOV.W           R1, #0x3FC; int
4E792C:  MOV             R2, R4; CPed *
4E792E:  POP.W           {R8}
4E7932:  POP.W           {R4-R7,LR}
4E7936:  B               _ZN27CTaskComplexDestroyCarArmed13CreateSubTaskEiP4CPed; CTaskComplexDestroyCarArmed::CreateSubTask(int,CPed *)
