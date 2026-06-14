; =========================================================
; Game Engine Function: _ZN10CPlayerPed14ProcessControlEv
; Address            : 0x4C4778 - 0x4C55D6
; =========================================================

4C4778:  PUSH            {R4-R7,LR}
4C477A:  ADD             R7, SP, #0xC
4C477C:  PUSH.W          {R8-R11}
4C4780:  SUB             SP, SP, #4
4C4782:  VPUSH           {D8-D12}
4C4786:  SUB             SP, SP, #0x40
4C4788:  MOV             R4, R0
4C478A:  MOVS            R0, #0; this
4C478C:  MOVS            R5, #0
4C478E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4C4792:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x4C479E)
4C4796:  LDR.W           R1, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x4C47A0)
4C479A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
4C479C:  ADD             R1, PC; _ZN4CHID20currentInstanceIndexE_ptr
4C479E:  LDR             R0, [R0]; CWorld::Players ...
4C47A0:  LDR             R1, [R1]; int
4C47A2:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
4C47A6:  LDR.W           R10, [R1]; CHID::currentInstanceIndex
4C47AA:  CMP             R0, R4
4C47AC:  MOV.W           R0, #0
4C47B0:  IT EQ
4C47B2:  MOVEQ           R0, #1
4C47B4:  STR             R0, [R1]; CHID::currentInstanceIndex
4C47B6:  MOVS            R0, #0; this
4C47B8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4C47BC:  MOV             R9, R0
4C47BE:  BLX             j__ZN7CWeapon12StaticUpdateEv; CWeapon::StaticUpdate(void)
4C47C2:  LDR.W           R0, [R4,#0x444]
4C47C6:  LDRB.W          R1, [R0,#0x21]
4C47CA:  CBZ             R1, loc_4C47E2
4C47CC:  SUBS            R1, #1
4C47CE:  STRB.W          R1, [R0,#0x21]
4C47D2:  LDR.W           R0, [R4,#0x444]
4C47D6:  LDRB.W          R1, [R0,#0x21]
4C47DA:  CMP             R1, #0
4C47DC:  IT EQ
4C47DE:  STREQ           R5, [R0,#0x30]
4C47E0:  B               loc_4C47E4
4C47E2:  STR             R5, [R0,#0x30]
4C47E4:  LDR.W           R0, =(_ZN10CPlayerPed22bDebugPlayerInvincibleE_ptr - 0x4C47EC)
4C47E8:  ADD             R0, PC; _ZN10CPlayerPed22bDebugPlayerInvincibleE_ptr
4C47EA:  LDR             R0, [R0]; CPlayerPed::bDebugPlayerInvincible ...
4C47EC:  LDRB            R0, [R0]; CPlayerPed::bDebugPlayerInvincible
4C47EE:  CBZ             R0, loc_4C4812
4C47F0:  MOV.W           R0, #0xFFFFFFFF; int
4C47F4:  MOVS            R1, #0; bool
4C47F6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4C47FA:  CBZ             R0, loc_4C4812
4C47FC:  MOV.W           R0, #0xFFFFFFFF; int
4C4800:  MOVS            R1, #0; bool
4C4802:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4C4806:  LDR.W           R1, [R0,#0x42C]
4C480A:  BIC.W           R1, R1, #0x200000
4C480E:  STR.W           R1, [R0,#0x42C]
4C4812:  LDR.W           R0, [R4,#0x444]; this
4C4816:  LDRB.W          R1, [R0,#0x41]
4C481A:  CBZ             R1, loc_4C483E
4C481C:  LDRB.W          R1, [R0,#0x40]
4C4820:  CMP             R1, #1
4C4822:  BHI             loc_4C4838
4C4824:  MOVS            R5, #0
4C4826:  STRB.W          R5, [R0,#0x40]
4C482A:  BLX             j__ZN6CMBlur14ClearDrunkBlurEv; CMBlur::ClearDrunkBlur(void)
4C482E:  LDR.W           R0, [R4,#0x444]
4C4832:  STRB.W          R5, [R0,#0x41]
4C4836:  B               loc_4C483E
4C4838:  ADDS            R1, #0xFF
4C483A:  STRB.W          R1, [R0,#0x40]
4C483E:  LDR.W           R0, [R4,#0x444]
4C4842:  LDRB.W          R1, [R0,#0x40]
4C4846:  CBZ             R1, loc_4C4864
4C4848:  VMOV            S0, R1; float
4C484C:  VLDR            S2, =255.0
4C4850:  VCVT.F32.U32    S0, S0
4C4854:  VDIV.F32        S0, S0, S2
4C4858:  VMOV            R0, S0; this
4C485C:  BLX             j__ZN6CMBlur12SetDrunkBlurEf; CMBlur::SetDrunkBlur(float)
4C4860:  LDR.W           R0, [R4,#0x444]
4C4864:  LDRH            R1, [R0,#0x34]
4C4866:  TST.W           R1, #0x80
4C486A:  BEQ             loc_4C487E
4C486C:  MOV             R0, R4; this
4C486E:  MOVS            R1, #0; bool
4C4870:  MOV.W           R2, #0x3F800000; float
4C4874:  BLX             j__ZN10CPlayerPed18HandlePlayerBreathEbf; CPlayerPed::HandlePlayerBreath(bool,float)
4C4878:  LDR.W           R0, [R4,#0x444]
4C487C:  LDRH            R1, [R0,#0x34]
4C487E:  ORR.W           R1, R1, #0x80
4C4882:  STRH            R1, [R0,#0x34]
4C4884:  MOV             R0, R4; this
4C4886:  BLX             j__ZN4CPed14ProcessControlEv; CPed::ProcessControl(void)
4C488A:  MOV             R8, R4
4C488C:  LDRB.W          R0, [R8,#0x1C]!
4C4890:  LDR.W           R1, [R8,#0x474]
4C4894:  TST.W           R0, #0x40
4C4898:  ORR.W           R1, R1, #0x100; int
4C489C:  STR.W           R1, [R8,#0x474]
4C48A0:  BNE.W           loc_4C5410
4C48A4:  LDR.W           R0, [R4,#0x59C]
4C48A8:  CMP             R0, #1
4C48AA:  BEQ             loc_4C48B2
4C48AC:  CBNZ            R0, loc_4C48BA
4C48AE:  MOVS            R0, #0
4C48B0:  B               loc_4C48B4
4C48B2:  MOVS            R0, #(stderr+1); this
4C48B4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
4C48B8:  B               loc_4C48BC
4C48BA:  MOVS            R0, #0
4C48BC:  STR             R0, [SP,#0x88+var_6C]
4C48BE:  LDR.W           R0, [R4,#0x444]
4C48C2:  CMP             R0, #0
4C48C4:  ITE NE
4C48C6:  LDRNE           R0, [R0]
4C48C8:  MOVEQ           R0, #0
4C48CA:  NOP
4C48CC:  NOP
4C48CE:  MOV             R0, R4; this
4C48D0:  BLX             j__ZN7CEntity15PruneReferencesEv; CEntity::PruneReferences(void)
4C48D4:  LDRSB.W         R0, [R4,#0x71C]
4C48D8:  RSB.W           R0, R0, R0,LSL#3
4C48DC:  ADD.W           R0, R4, R0,LSL#2
4C48E0:  LDR.W           R0, [R0,#0x5A4]
4C48E4:  CMP             R0, #0x26 ; '&'
4C48E6:  BNE.W           loc_4C49FA
4C48EA:  MOVS            R0, #0x26 ; '&'
4C48EC:  MOVS            R1, #1
4C48EE:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C48F2:  MOV             R6, R0
4C48F4:  LDR.W           R0, [R4,#0x440]; this
4C48F8:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4C48FC:  CMP             R0, #0
4C48FE:  BEQ             loc_4C49B6
4C4900:  LDR.W           R0, [R4,#0x440]; this
4C4904:  BLX             j__ZNK16CPedIntelligence13GetTaskUseGunEv; CPedIntelligence::GetTaskUseGun(void)
4C4908:  LDR             R5, [R0,#0x2C]
4C490A:  CMP             R5, #0
4C490C:  BEQ             loc_4C49B6
4C490E:  VLDR            S0, [R5,#0x20]
4C4912:  VLDR            S2, [R5,#0x28]
4C4916:  VSUB.F32        S0, S0, S2
4C491A:  VLDR            S2, [R6,#0x44]
4C491E:  VCMPE.F32       S0, S2
4C4922:  VMRS            APSR_nzcv, FPSCR
4C4926:  BGE             loc_4C49B6
4C4928:  LDR.W           R0, [R4,#0x444]
4C492C:  VLDR            S0, =0.45
4C4930:  VLDR            S2, [R0,#0x64]
4C4934:  VCMPE.F32       S2, S0
4C4938:  VMRS            APSR_nzcv, FPSCR
4C493C:  BGE             loc_4C4976
4C493E:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C494A)
4C4942:  VLDR            S4, =0.025
4C4946:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4948:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4C494A:  VLDR            S6, [R1]
4C494E:  VMUL.F32        S4, S6, S4
4C4952:  VADD.F32        S2, S2, S4
4C4956:  VSTR            S2, [R0,#0x64]
4C495A:  LDR.W           R0, [R4,#0x444]
4C495E:  VLDR            S2, [R0,#0x64]
4C4962:  VCMPE.F32       S2, S0
4C4966:  VMRS            APSR_nzcv, FPSCR
4C496A:  ITTT GT
4C496C:  MOVWGT          R1, #0x6666
4C4970:  MOVTGT          R1, #0x3EE6
4C4974:  STRGT           R1, [R0,#0x64]
4C4976:  LDR             R0, [SP,#0x88+var_6C]; this
4C4978:  MOV             R1, R4; CPed *
4C497A:  MOVS            R2, #1; bool
4C497C:  BLX             j__ZN4CPad9GetWeaponEP4CPedb; CPad::GetWeapon(CPed *,bool)
4C4980:  CBZ             R0, loc_4C49AA
4C4982:  LDRSB.W         R0, [R4,#0x71C]
4C4986:  RSB.W           R0, R0, R0,LSL#3
4C498A:  ADD.W           R0, R4, R0,LSL#2
4C498E:  LDR.W           R0, [R0,#0x5B0]
4C4992:  CMP             R0, #1
4C4994:  BLT             loc_4C49AA
4C4996:  VLDR            S0, [R6,#0x40]
4C499A:  VLDR            S2, [R5,#0x20]
4C499E:  VCMPE.F32       S2, S0
4C49A2:  VMRS            APSR_nzcv, FPSCR
4C49A6:  BGE.W           loc_4C4F9C
4C49AA:  ADD.W           R0, R4, #0x398; this
4C49AE:  MOVS            R1, #0x97; int
4C49B0:  BLX             j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
4C49B4:  B               loc_4C49FA
4C49B6:  LDR.W           R0, [R4,#0x444]
4C49BA:  VLDR            S0, [R0,#0x64]
4C49BE:  VCMPE.F32       S0, #0.0
4C49C2:  VMRS            APSR_nzcv, FPSCR
4C49C6:  BLE             loc_4C49FA
4C49C8:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C49D4)
4C49CC:  VLDR            S2, =-0.003
4C49D0:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C49D2:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4C49D4:  VLDR            S4, [R1]
4C49D8:  VMUL.F32        S2, S4, S2
4C49DC:  VADD.F32        S0, S0, S2
4C49E0:  VSTR            S0, [R0,#0x64]
4C49E4:  LDR.W           R0, [R4,#0x444]
4C49E8:  VLDR            S0, [R0,#0x64]
4C49EC:  VCMPE.F32       S0, #0.0
4C49F0:  VMRS            APSR_nzcv, FPSCR
4C49F4:  ITT LT
4C49F6:  MOVLT           R1, #0
4C49F8:  STRLT           R1, [R0,#0x64]
4C49FA:  LDR.W           R1, [R4,#0x720]
4C49FE:  ADD.W           R11, R8, #0x468
4C4A02:  CMP             R1, #0
4C4A04:  BEQ.W           loc_4C4DFA
4C4A08:  LDR.W           R0, [R4,#0x7A4]; this
4C4A0C:  CBZ             R0, loc_4C4A20
4C4A0E:  ADDW            R1, R4, #0x7A4; CEntity **
4C4A12:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4C4A16:  LDR.W           R1, [R4,#0x720]
4C4A1A:  MOVS            R0, #0
4C4A1C:  STR.W           R0, [R4,#0x7A4]
4C4A20:  MOVS            R0, #0
4C4A22:  STRD.W          R0, R0, [SP,#0x88+var_58]
4C4A26:  STR             R0, [SP,#0x88+var_50]
4C4A28:  LDRB.W          R0, [R1,#0x3A]
4C4A2C:  AND.W           R0, R0, #7
4C4A30:  CMP             R0, #2
4C4A32:  BEQ             loc_4C4AFE
4C4A34:  CMP             R0, #4
4C4A36:  BEQ.W           loc_4C4B78
4C4A3A:  CMP             R0, #3
4C4A3C:  BNE.W           loc_4C4BC2
4C4A40:  LDRSB.W         R0, [R4,#0x71C]
4C4A44:  RSB.W           R0, R0, R0,LSL#3
4C4A48:  ADD.W           R0, R4, R0,LSL#2
4C4A4C:  LDR.W           R5, [R0,#0x5A4]
4C4A50:  MOV             R0, R4; this
4C4A52:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4C4A56:  MOV             R1, R0
4C4A58:  MOV             R0, R5
4C4A5A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C4A5E:  LDR.W           R6, [R4,#0x720]
4C4A62:  ADD.W           R1, R6, #0x548
4C4A66:  VLDR            S0, [R1]
4C4A6A:  ADDW            R1, R6, #0x544
4C4A6E:  VLDR            S2, [R1]
4C4A72:  VDIV.F32        S16, S2, S0
4C4A76:  BLX             j__ZN11CWeaponInfo18GetTargetHeadRangeEv; CWeaponInfo::GetTargetHeadRange(void)
4C4A7A:  MOV             R5, R0
4C4A7C:  MOV             R0, R6; this
4C4A7E:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4C4A82:  CMP             R0, #1
4C4A84:  BNE.W           loc_4C4C08
4C4A88:  LDRSB.W         R0, [R4,#0x71C]
4C4A8C:  MOVS            R1, #1
4C4A8E:  RSB.W           R0, R0, R0,LSL#3
4C4A92:  ADD.W           R0, R4, R0,LSL#2
4C4A96:  LDR.W           R0, [R0,#0x5A4]
4C4A9A:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C4A9E:  LDR             R0, [R0]
4C4AA0:  CMP             R0, #1
4C4AA2:  BNE.W           loc_4C4C08
4C4AA6:  LDR             R0, [R4,#0x14]
4C4AA8:  VMOV            S0, R5
4C4AAC:  LDR             R1, [R6,#0x14]
4C4AAE:  ADD.W           R2, R0, #0x30 ; '0'
4C4AB2:  CMP             R0, #0
4C4AB4:  IT EQ
4C4AB6:  ADDEQ           R2, R4, #4
4C4AB8:  ADD.W           R0, R1, #0x30 ; '0'
4C4ABC:  CMP             R1, #0
4C4ABE:  VLDR            S2, [R2]
4C4AC2:  IT EQ
4C4AC4:  ADDEQ           R0, R6, #4
4C4AC6:  VLDR            D16, [R2,#4]
4C4ACA:  VLDR            S4, [R0]
4C4ACE:  VMUL.F32        S0, S0, S0
4C4AD2:  VLDR            D17, [R0,#4]
4C4AD6:  VSUB.F32        S2, S4, S2
4C4ADA:  VSUB.F32        D16, D17, D16
4C4ADE:  VMUL.F32        D2, D16, D16
4C4AE2:  VMUL.F32        S2, S2, S2
4C4AE6:  VADD.F32        S2, S2, S4
4C4AEA:  VADD.F32        S2, S2, S5
4C4AEE:  VCMPE.F32       S2, S0
4C4AF2:  VMRS            APSR_nzcv, FPSCR
4C4AF6:  BGE.W           loc_4C4F94
4C4AFA:  MOVS            R0, #1
4C4AFC:  B               loc_4C4C18
4C4AFE:  ADDW            R0, R1, #0x4CC
4C4B02:  VLDR            S0, =1000.0
4C4B06:  VLDR            S2, [R0]
4C4B0A:  LDR.W           R0, =(_ZN8CVehicle23m_pTappedGasTankVehicleE_ptr - 0x4C4B16)
4C4B0E:  VDIV.F32        S16, S2, S0
4C4B12:  ADD             R0, PC; _ZN8CVehicle23m_pTappedGasTankVehicleE_ptr
4C4B14:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle ...
4C4B16:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle
4C4B18:  CMP             R1, R0
4C4B1A:  BEQ.W           loc_4C4CC2
4C4B1E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C4B2E)
4C4B22:  VLDR            S0, [R1,#0x48]
4C4B26:  VLDR            S6, [R1,#0x54]
4C4B2A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4B2C:  VLDR            S2, [R1,#0x4C]
4C4B30:  VADD.F32        S0, S0, S6
4C4B34:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C4B36:  VLDR            S8, [R1,#0x58]
4C4B3A:  VLDR            S4, [R1,#0x50]
4C4B3E:  VLDR            S10, [R1,#0x5C]
4C4B42:  VADD.F32        S2, S2, S8
4C4B46:  VLDR            S6, [R0]
4C4B4A:  VADD.F32        S4, S4, S10
4C4B4E:  LDR             R0, [R1,#0x14]
4C4B50:  VMUL.F32        S0, S0, S6
4C4B54:  ADD.W           R2, R0, #0x30 ; '0'
4C4B58:  CMP             R0, #0
4C4B5A:  IT EQ
4C4B5C:  ADDEQ           R2, R1, #4
4C4B5E:  VMUL.F32        S2, S2, S6
4C4B62:  VLDR            S8, [R2,#4]
4C4B66:  VLDR            S10, [R2,#8]
4C4B6A:  VMUL.F32        S4, S4, S6
4C4B6E:  VLDR            S6, [R2]
4C4B72:  VADD.F32        S0, S6, S0
4C4B76:  B               loc_4C4D0A
4C4B78:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C4B84)
4C4B7C:  VLDR            S0, =1000.0
4C4B80:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4B82:  VLDR            S2, [R1,#0x158]
4C4B86:  VLDR            S4, [R1,#0x48]
4C4B8A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C4B8C:  VDIV.F32        S16, S2, S0
4C4B90:  VLDR            S10, [R0]
4C4B94:  LDR             R0, [R1,#0x14]
4C4B96:  VLDR            S6, [R1,#0x4C]
4C4B9A:  VMUL.F32        S0, S10, S4
4C4B9E:  VLDR            S8, [R1,#0x50]
4C4BA2:  ADD.W           R2, R0, #0x30 ; '0'
4C4BA6:  CMP             R0, #0
4C4BA8:  VMUL.F32        S2, S10, S6
4C4BAC:  IT EQ
4C4BAE:  ADDEQ           R2, R1, #4
4C4BB0:  VMUL.F32        S4, S10, S8
4C4BB4:  VLDR            S6, [R2]
4C4BB8:  VLDR            S8, [R2,#4]
4C4BBC:  VLDR            S10, [R2,#8]
4C4BC0:  B               loc_4C4D06
4C4BC2:  VMOV.F32        S16, #1.0
4C4BC6:  LDR             R0, [R1,#0x14]
4C4BC8:  ADD.W           R2, R0, #0x30 ; '0'
4C4BCC:  CMP             R0, #0
4C4BCE:  IT EQ
4C4BD0:  ADDEQ           R2, R1, #4
4C4BD2:  VLDR            D16, [R2]
4C4BD6:  LDR             R0, [R2,#8]
4C4BD8:  STR             R0, [SP,#0x88+var_50]
4C4BDA:  VSTR            D16, [SP,#0x88+var_58]
4C4BDE:  B               loc_4C4D28
4C4BE0:  DCFS 255.0
4C4BE4:  DCFS 0.45
4C4BE8:  DCFS 0.025
4C4BEC:  DCFS -0.003
4C4BF0:  DCFS 1000.0
4C4BF4:  DCFS 0.05
4C4BF8:  DCFS 0.2
4C4BFC:  DCFS 0.0
4C4C00:  DCFS -50.0
4C4C04:  DCFS 0.3
4C4C08:  LDR.W           R0, =(_ZN10CPlayerPed17bSwipeTargetHeadsE_ptr - 0x4C4C10)
4C4C0C:  ADD             R0, PC; _ZN10CPlayerPed17bSwipeTargetHeadsE_ptr
4C4C0E:  LDR             R0, [R0]; CPlayerPed::bSwipeTargetHeads ...
4C4C10:  LDRB            R0, [R0]; CPlayerPed::bSwipeTargetHeads
4C4C12:  CMP             R0, #0
4C4C14:  IT NE
4C4C16:  MOVNE           R0, #1
4C4C18:  VLDR            S2, =0.05
4C4C1C:  CMP             R0, #0
4C4C1E:  LDR.W           R1, [R4,#0x444]
4C4C22:  MOV.W           R0, #3
4C4C26:  VLDR            S0, =0.2
4C4C2A:  MOV.W           R3, #0
4C4C2E:  IT NE
4C4C30:  VMOVNE.F32      S0, S2
4C4C34:  IT NE
4C4C36:  MOVNE           R0, #5
4C4C38:  STR             R0, [R1,#0x70]
4C4C3A:  LDR.W           R0, [R4,#0x444]
4C4C3E:  VSTR            S0, [R0,#0x74]
4C4C42:  LDR.W           R0, [R4,#0x444]
4C4C46:  VLDR            D16, [R0,#0x74]
4C4C4A:  LDR             R1, [R0,#0x7C]
4C4C4C:  STR             R1, [SP,#0x88+var_50]
4C4C4E:  ADD             R1, SP, #0x88+var_58
4C4C50:  VSTR            D16, [SP,#0x88+var_58]
4C4C54:  LDR             R2, [R0,#0x70]
4C4C56:  MOV             R0, R6; this
4C4C58:  BLX             j__ZN4CPed26GetTransformedBonePositionER5RwV3djb; CPed::GetTransformedBonePosition(RwV3d &,uint,bool)
4C4C5C:  LDR.W           R0, [R6,#0x484]
4C4C60:  VCMPE.F32       S16, #0.0
4C4C64:  VMRS            APSR_nzcv, FPSCR
4C4C68:  BLE             loc_4C4C78
4C4C6A:  ANDS.W          R1, R0, #0x100
4C4C6E:  BNE             loc_4C4C78
4C4C70:  LDR.W           R1, [R6,#0x450]
4C4C74:  CMP             R1, #1
4C4C76:  BNE             loc_4C4CD6
4C4C78:  LSLS            R0, R0, #0x17
4C4C7A:  BPL             loc_4C4D1E
4C4C7C:  LDR.W           R0, [R6,#0x590]
4C4C80:  CMP             R0, #0
4C4C82:  BEQ             loc_4C4D1E
4C4C84:  LDR.W           R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C4C94)
4C4C88:  VLDR            S0, [R0,#0x48]
4C4C8C:  VLDR            S6, [R0,#0x54]
4C4C90:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4C92:  VLDR            S2, [R0,#0x4C]
4C4C96:  VLDR            S8, [R0,#0x58]
4C4C9A:  VADD.F32        S0, S0, S6
4C4C9E:  VLDR            S4, [R0,#0x50]
4C4CA2:  VLDR            S10, [R0,#0x5C]
4C4CA6:  VADD.F32        S2, S2, S8
4C4CAA:  LDR             R0, [R1]; CTimer::ms_fTimeStep ...
4C4CAC:  VADD.F32        S4, S4, S10
4C4CB0:  VLDR            S6, [R0]
4C4CB4:  VMUL.F32        S0, S0, S6
4C4CB8:  VMUL.F32        S2, S2, S6
4C4CBC:  VMUL.F32        S4, S4, S6
4C4CC0:  B               loc_4C4CFA
4C4CC2:  ADD             R0, SP, #0x88+var_68; this
4C4CC4:  BLX             j__ZN8CVehicle18GetGasTankPositionEv; CVehicle::GetGasTankPosition(void)
4C4CC8:  VLDR            D16, [SP,#0x88+var_68]
4C4CCC:  LDR             R0, [SP,#0x88+var_60]
4C4CCE:  STR             R0, [SP,#0x88+var_50]
4C4CD0:  VSTR            D16, [SP,#0x88+var_58]
4C4CD4:  B               loc_4C4D1E
4C4CD6:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C4CE2)
4C4CDA:  VLDR            S0, [R6,#0x48]
4C4CDE:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4CE0:  VLDR            S2, [R6,#0x4C]
4C4CE4:  VLDR            S4, [R6,#0x50]
4C4CE8:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C4CEA:  VLDR            S6, [R0]
4C4CEE:  VMUL.F32        S0, S6, S0
4C4CF2:  VMUL.F32        S2, S6, S2
4C4CF6:  VMUL.F32        S4, S6, S4
4C4CFA:  VLDR            S6, [SP,#0x88+var_58]
4C4CFE:  VLDR            S8, [SP,#0x88+var_58+4]
4C4D02:  VLDR            S10, [SP,#0x88+var_50]
4C4D06:  VADD.F32        S0, S0, S6
4C4D0A:  VADD.F32        S2, S2, S8
4C4D0E:  VSTR            S0, [SP,#0x88+var_58]
4C4D12:  VADD.F32        S4, S4, S10
4C4D16:  VSTR            S2, [SP,#0x88+var_58+4]
4C4D1A:  VSTR            S4, [SP,#0x88+var_50]
4C4D1E:  VCMPE.F32       S16, #0.0
4C4D22:  VMRS            APSR_nzcv, FPSCR
4C4D26:  BLE             loc_4C4D72
4C4D28:  VMOV.F32        S0, #1.0
4C4D2C:  VLDR            S4, =0.0
4C4D30:  VLDR            S6, =255.0
4C4D34:  VMIN.F32        D1, D8, D0
4C4D38:  VSUB.F32        S0, S0, S2
4C4D3C:  VMUL.F32        S8, S2, S4
4C4D40:  VMUL.F32        S2, S2, S6
4C4D44:  VMUL.F32        S4, S0, S4
4C4D48:  VMUL.F32        S0, S0, S6
4C4D4C:  VADD.F32        S6, S8, S4
4C4D50:  VADD.F32        S2, S2, S4
4C4D54:  VADD.F32        S0, S8, S0
4C4D58:  VCVT.U32.F32    S4, S6
4C4D5C:  VCVT.U32.F32    S2, S2
4C4D60:  VCVT.U32.F32    S0, S0
4C4D64:  VMOV            R12, S4
4C4D68:  VMOV            LR, S2
4C4D6C:  VMOV            R6, S0
4C4D70:  B               loc_4C4D7C
4C4D72:  MOV.W           R12, #0
4C4D76:  MOV.W           LR, #0
4C4D7A:  MOVS            R6, #0
4C4D7C:  LDR             R0, [R4,#0x14]
4C4D7E:  MOVS            R5, #0
4C4D80:  VLDR            S2, [SP,#0x88+var_58+4]
4C4D84:  ADD.W           R1, R0, #0x30 ; '0'
4C4D88:  CMP             R0, #0
4C4D8A:  VLDR            S4, [SP,#0x88+var_50]
4C4D8E:  VMOV            R2, S2
4C4D92:  VLDR            S0, [SP,#0x88+var_58]
4C4D96:  IT EQ
4C4D98:  ADDEQ           R1, R4, #4
4C4D9A:  VLDR            S6, [R1]
4C4D9E:  VMOV            R3, S4
4C4DA2:  VLDR            S8, [R1,#4]
4C4DA6:  VSUB.F32        S6, S0, S6
4C4DAA:  VLDR            S10, [R1,#8]
4C4DAE:  VSUB.F32        S8, S2, S8
4C4DB2:  LDR.W           R0, [R4,#0x59C]
4C4DB6:  VSUB.F32        S10, S4, S10
4C4DBA:  STR             R5, [SP,#0x88+var_74]
4C4DBC:  VMOV            R1, S0
4C4DC0:  MOVS            R5, #0xFF
4C4DC2:  VMOV.F32        S0, #1.0
4C4DC6:  STRD.W          R6, LR, [SP,#0x88+var_88]
4C4DCA:  STRD.W          R12, R5, [SP,#0x88+var_80]; CVector *
4C4DCE:  VMUL.F32        S6, S6, S6
4C4DD2:  VMUL.F32        S8, S8, S8
4C4DD6:  VMUL.F32        S10, S10, S10
4C4DDA:  VADD.F32        S6, S6, S8
4C4DDE:  VLDR            S8, =-50.0
4C4DE2:  VADD.F32        S6, S6, S10
4C4DE6:  VSQRT.F32       S6, S6
4C4DEA:  VDIV.F32        S6, S6, S8
4C4DEE:  VADD.F32        S0, S6, S0
4C4DF2:  VSTR            S0, [SP,#0x88+var_78]
4C4DF6:  BLX             j__ZN14CWeaponEffects10MarkTargetEi7CVectorhhhhfh; CWeaponEffects::MarkTarget(int,CVector,uchar,uchar,uchar,uchar,float,uchar)
4C4DFA:  LDR.W           R0, [R4,#0x450]
4C4DFE:  CBZ             R0, loc_4C4E46
4C4E00:  CMP             R0, #6
4C4E02:  BEQ             loc_4C4E82
4C4E04:  CMP             R0, #7
4C4E06:  BEQ             loc_4C4ECA
4C4E08:  LDR.W           R0, [R4,#0x444]
4C4E0C:  VLDR            S16, [R0,#0x18]
4C4E10:  MOVS            R0, #7
4C4E12:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4C4E16:  VMOV            S0, R0
4C4E1A:  VCMPE.F32       S16, S0
4C4E1E:  VMRS            APSR_nzcv, FPSCR
4C4E22:  BGE             loc_4C4ECA
4C4E24:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C4E2C)
4C4E28:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4E2A:  VMOV.F32        S0, #0.5
4C4E2E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C4E30:  VLDR            S2, [R0]
4C4E34:  LDR.W           R0, [R4,#0x444]
4C4E38:  VMUL.F32        S0, S2, S0
4C4E3C:  VLDR            S2, [R0,#0x18]
4C4E40:  VADD.F32        S0, S0, S2
4C4E44:  B               loc_4C4EC6
4C4E46:  LDRB.W          R0, [R11,#1]
4C4E4A:  LSLS            R0, R0, #0x1F
4C4E4C:  BEQ             loc_4C4ECA
4C4E4E:  LDR.W           R0, [R4,#0x590]
4C4E52:  CMP             R0, #0
4C4E54:  ITT NE
4C4E56:  LDRNE.W         R0, [R0,#0x5A4]
4C4E5A:  CMPNE           R0, #0xA
4C4E5C:  BEQ             loc_4C4ECA
4C4E5E:  LDR.W           R0, [R4,#0x444]
4C4E62:  VLDR            S16, [R0,#0x18]
4C4E66:  MOVS            R0, #7
4C4E68:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4C4E6C:  VMOV            S0, R0
4C4E70:  VCMPE.F32       S16, S0
4C4E74:  VMRS            APSR_nzcv, FPSCR
4C4E78:  BGE             loc_4C4ECA
4C4E7A:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C4E82)
4C4E7E:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4E80:  B               loc_4C4E2A
4C4E82:  LDR.W           R0, [R4,#0x444]
4C4E86:  VLDR            S16, [R0,#0x18]
4C4E8A:  MOVS            R0, #7
4C4E8C:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4C4E90:  VMOV            S0, R0
4C4E94:  VCMPE.F32       S16, S0
4C4E98:  VMRS            APSR_nzcv, FPSCR
4C4E9C:  BGE             loc_4C4ECA
4C4E9E:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C4EAE)
4C4EA2:  VMOV.F32        S4, #0.5
4C4EA6:  VLDR            S0, =0.3
4C4EAA:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C4EAC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C4EAE:  VLDR            S2, [R0]
4C4EB2:  LDR.W           R0, [R4,#0x444]
4C4EB6:  VMUL.F32        S0, S2, S0
4C4EBA:  VLDR            S2, [R0,#0x18]
4C4EBE:  VMUL.F32        S0, S0, S4
4C4EC2:  VADD.F32        S0, S2, S0
4C4EC6:  VSTR            S0, [R0,#0x18]
4C4ECA:  LDRSB.W         R0, [R4,#0x71C]
4C4ECE:  MOV             R1, R4; CPed *
4C4ED0:  RSB.W           R0, R0, R0,LSL#3
4C4ED4:  ADD.W           R0, R4, R0,LSL#2
4C4ED8:  ADDW            R0, R0, #0x5A4; this
4C4EDC:  BLX             j__ZN7CWeapon6UpdateEP4CPed; CWeapon::Update(CPed *)
4C4EE0:  LDR.W           R0, [R4,#0x44C]
4C4EE4:  CMP             R0, #0x36 ; '6'
4C4EE6:  BEQ             loc_4C4F06
4C4EE8:  CMP             R0, #0x37 ; '7'
4C4EEA:  BNE             loc_4C4F2E
4C4EEC:  LDR.W           R0, [R4,#0x59C]
4C4EF0:  CMP             R0, #1
4C4EF2:  BHI.W           loc_4C5410
4C4EF6:  MOV             R0, R4; this
4C4EF8:  MOVS            R1, #0; CEntity *
4C4EFA:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
4C4EFE:  LDR.W           R0, =(TheCamera_ptr - 0x4C4F06)
4C4F02:  ADD             R0, PC; TheCamera_ptr
4C4F04:  B               loc_4C4F1E
4C4F06:  LDR.W           R0, [R4,#0x59C]
4C4F0A:  CMP             R0, #1
4C4F0C:  BHI.W           loc_4C5410
4C4F10:  MOV             R0, R4; this
4C4F12:  MOVS            R1, #0; CEntity *
4C4F14:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
4C4F18:  LDR.W           R0, =(TheCamera_ptr - 0x4C4F20)
4C4F1C:  ADD             R0, PC; TheCamera_ptr
4C4F1E:  LDR             R0, [R0]; TheCamera ; this
4C4F20:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
4C4F24:  LDR.W           R0, [R4,#0x59C]; this
4C4F28:  BLX             j__ZN14CWeaponEffects14ClearCrossHairEi; CWeaponEffects::ClearCrossHair(int)
4C4F2C:  B               loc_4C5410
4C4F2E:  LDR             R0, [SP,#0x88+var_6C]; this
4C4F30:  CBZ             R0, loc_4C4F8C
4C4F32:  MOV             R1, R4; CPed *
4C4F34:  MOVS            R2, #1; bool
4C4F36:  MOVS            R3, #0; bool
4C4F38:  BLX             j__ZN4CPad14WeaponJustDownEP4CPedbb; CPad::WeaponJustDown(CPed *,bool,bool)
4C4F3C:  CMP             R0, #1
4C4F3E:  BNE             loc_4C4FC4
4C4F40:  LDRSB.W         R0, [R4,#0x71C]
4C4F44:  LDR.W           R1, =(TheCamera_ptr - 0x4C4F50)
4C4F48:  RSB.W           R0, R0, R0,LSL#3
4C4F4C:  ADD             R1, PC; TheCamera_ptr
4C4F4E:  ADD.W           R0, R4, R0,LSL#2
4C4F52:  LDR.W           R5, [R0,#0x5A4]
4C4F56:  LDR             R0, [R1]; TheCamera ; this
4C4F58:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
4C4F5C:  CMP             R0, #1
4C4F5E:  BNE             loc_4C4F74
4C4F60:  LDRSB.W         R0, [R4,#0x71C]
4C4F64:  RSB.W           R0, R0, R0,LSL#3
4C4F68:  ADD.W           R0, R4, R0,LSL#2
4C4F6C:  LDR.W           R0, [R0,#0x5A8]
4C4F70:  CMP             R0, #3
4C4F72:  BNE             loc_4C4FC4
4C4F74:  LDR.W           R0, [R4,#0x440]; this
4C4F78:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
4C4F7C:  CBNZ            R0, loc_4C4FC4
4C4F7E:  CMP             R5, #0x22 ; '"'
4C4F80:  BNE             loc_4C4FA8
4C4F82:  LDR.W           R0, =(AudioEngine_ptr - 0x4C4F8C)
4C4F86:  MOVS            R1, #0x29 ; ')'
4C4F88:  ADD             R0, PC; AudioEngine_ptr
4C4F8A:  B               loc_4C4FB8
4C4F8C:  MOV             R0, R4; this
4C4F8E:  BLX             j__ZN10CPlayerPed17ProcessAnimGroupsEv; CPlayerPed::ProcessAnimGroups(void)
4C4F92:  B               loc_4C5166
4C4F94:  LDR.W           R0, =(_ZN10CPlayerPed17bSwipeTargetHeadsE_ptr - 0x4C4F9C)
4C4F98:  ADD             R0, PC; _ZN10CPlayerPed17bSwipeTargetHeadsE_ptr
4C4F9A:  B               loc_4C4C0E
4C4F9C:  ADD.W           R0, R4, #0x398; this
4C4FA0:  MOVS            R1, #0x96; int
4C4FA2:  BLX             j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
4C4FA6:  B               loc_4C49FA
4C4FA8:  SUB.W           R0, R5, #0x23 ; '#'
4C4FAC:  CMP             R0, #1
4C4FAE:  BHI             loc_4C4FC4
4C4FB0:  LDR.W           R0, =(AudioEngine_ptr - 0x4C4FBA)
4C4FB4:  MOVS            R1, #0x2A ; '*'; int
4C4FB6:  ADD             R0, PC; AudioEngine_ptr
4C4FB8:  LDR             R0, [R0]; AudioEngine ; this
4C4FBA:  MOVS            R2, #0; float
4C4FBC:  MOV.W           R3, #0x3F800000; float
4C4FC0:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
4C4FC4:  MOV             R0, R4; this
4C4FC6:  BLX             j__ZN4CPed14IsPedShootableEv; CPed::IsPedShootable(void)
4C4FCA:  CMP             R0, #1
4C4FCC:  BNE             loc_4C4FFA
4C4FCE:  LDR.W           R0, [R4,#0x44C]
4C4FD2:  CMP             R0, #0x24 ; '$'
4C4FD4:  BEQ             loc_4C4FFA
4C4FD6:  MOV             R0, R4; this
4C4FD8:  BLX             j__ZN6CWorld28FindPlayerSlotWithPedPointerEPv; CWorld::FindPlayerSlotWithPedPointer(void *)
4C4FDC:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x4C4FE8)
4C4FE0:  MOV.W           R2, #0x194
4C4FE4:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4C4FE6:  LDR             R1, [R1]; CWorld::Players ...
4C4FE8:  MLA.W           R0, R0, R2, R1
4C4FEC:  LDR.W           R0, [R0,#0xB0]
4C4FF0:  CBNZ            R0, loc_4C4FFA
4C4FF2:  LDR             R1, [SP,#0x88+var_6C]; CPad *
4C4FF4:  MOV             R0, R4; this
4C4FF6:  BLX             j__ZN10CPlayerPed19ProcessWeaponSwitchEP4CPad; CPlayerPed::ProcessWeaponSwitch(CPad *)
4C4FFA:  MOV             R0, R4; this
4C4FFC:  BLX             j__ZN10CPlayerPed17ProcessAnimGroupsEv; CPlayerPed::ProcessAnimGroups(void)
4C5000:  LDR.W           R0, =(TheCamera_ptr - 0x4C5008)
4C5004:  ADD             R0, PC; TheCamera_ptr
4C5006:  LDR             R1, [R0]; TheCamera
4C5008:  LDRB.W          R0, [R1,#(byte_951FFF - 0x951FA8)]
4C500C:  ADD.W           R0, R0, R0,LSL#5
4C5010:  ADD.W           R1, R1, R0,LSL#4
4C5014:  LDRH.W          R1, [R1,#0x17E]
4C5018:  CMP             R1, #4
4C501A:  BNE.W           loc_4C5166
4C501E:  LDR.W           R1, =(TheCamera_ptr - 0x4C5026)
4C5022:  ADD             R1, PC; TheCamera_ptr
4C5024:  LDR             R1, [R1]; TheCamera
4C5026:  ADD.W           R1, R1, R0,LSL#4
4C502A:  LDR.W           R1, [R1,#0x190]
4C502E:  CMP             R1, #0
4C5030:  BNE.W           loc_4C5166
4C5034:  LDR.W           R1, =(TheCamera_ptr - 0x4C5042)
4C5038:  MOVS            R2, #0
4C503A:  STR.W           R2, [R4,#0x750]
4C503E:  ADD             R1, PC; TheCamera_ptr
4C5040:  LDR             R1, [R1]; TheCamera
4C5042:  ADD.W           R0, R1, R0,LSL#4
4C5046:  LDRD.W          R2, R1, [R0,#0x2D8]; x
4C504A:  EOR.W           R0, R2, #0x80000000; y
4C504E:  BLX             atan2f
4C5052:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4C5056:  LDR.W           R1, [R4,#0x44C]; float
4C505A:  CMP             R1, #0x10
4C505C:  BNE             loc_4C5066
4C505E:  MOV             R0, R4; this
4C5060:  BLX             j__ZN4CPed13ClearLookFlagEv; CPed::ClearLookFlag(void)
4C5064:  B               loc_4C5166
4C5066:  ADDW            R5, R4, #0x55C
4C506A:  VMOV            S0, R0
4C506E:  VLDR            S6, =0.5236
4C5072:  VLDR            S2, [R5]
4C5076:  VSUB.F32        S4, S0, S2
4C507A:  VABS.F32        S4, S4
4C507E:  VCMPE.F32       S4, S6
4C5082:  VMRS            APSR_nzcv, FPSCR
4C5086:  BLE             loc_4C505E
4C5088:  VLDR            S6, =5.7596
4C508C:  VCMPE.F32       S4, S6
4C5090:  VMRS            APSR_nzcv, FPSCR
4C5094:  BGE             loc_4C505E
4C5096:  VLDR            S16, =2.618
4C509A:  VCMPE.F32       S4, S16
4C509E:  VMRS            APSR_nzcv, FPSCR
4C50A2:  BLE             loc_4C511E
4C50A4:  VLDR            S6, =3.6652
4C50A8:  VCMPE.F32       S4, S6
4C50AC:  VMRS            APSR_nzcv, FPSCR
4C50B0:  BGE             loc_4C511E
4C50B2:  VLDR            S0, =-2.618
4C50B6:  VADD.F32        S0, S2, S0
4C50BA:  VMOV            R0, S0; this
4C50BE:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4C50C2:  VLDR            S0, [R5]
4C50C6:  ADDW            R5, R4, #0x744
4C50CA:  VLDR            S18, =1000000.0
4C50CE:  VADD.F32        S0, S0, S16
4C50D2:  VMOV            S16, R0
4C50D6:  VMOV            R1, S0; float
4C50DA:  MOV             R0, R1; this
4C50DC:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
4C50E0:  VLDR            S2, [R5]
4C50E4:  VCMP.F32        S2, S18
4C50E8:  VMRS            APSR_nzcv, FPSCR
4C50EC:  BEQ             loc_4C511A
4C50EE:  LDRB.W          R1, [R11,#3]
4C50F2:  LSLS            R1, R1, #0x1D
4C50F4:  BMI             loc_4C511A
4C50F6:  VMOV            S0, R0
4C50FA:  VSUB.F32        S4, S0, S2
4C50FE:  VSUB.F32        S2, S16, S2
4C5102:  VABS.F32        S4, S4
4C5106:  VABS.F32        S2, S2
4C510A:  VCMPE.F32       S2, S4
4C510E:  VMRS            APSR_nzcv, FPSCR
4C5112:  IT LT
4C5114:  VMOVLT.F32      S0, S16
4C5118:  B               loc_4C511E
4C511A:  VMOV.F32        S0, S16
4C511E:  VMOV            R1, S0; float
4C5122:  MOV             R0, R4; this
4C5124:  MOVS            R2, #1; bool
4C5126:  MOVS            R3, #0; bool
4C5128:  BLX             j__ZN4CPed11SetLookFlagEfbb; CPed::SetLookFlag(float,bool,bool)
4C512C:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4C5138)
4C5130:  VLDR            S0, =50.0
4C5134:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4C5136:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
4C5138:  VLDR            S2, [R0]
4C513C:  MOV             R0, R4; this
4C513E:  VDIV.F32        S0, S2, S0
4C5142:  VLDR            S2, =1000.0
4C5146:  VMUL.F32        S0, S0, S2
4C514A:  VMOV.F32        S2, #5.0
4C514E:  VCVT.U32.F32    S0, S0
4C5152:  VCVT.F32.U32    S0, S0
4C5156:  VMUL.F32        S0, S0, S2
4C515A:  VCVT.U32.F32    S0, S0
4C515E:  VMOV            R1, S0; unsigned int
4C5162:  BLX             j__ZN4CPed12SetLookTimerEj; CPed::SetLookTimer(uint)
4C5166:  LDR.W           R0, [R4,#0x450]
4C516A:  CMP             R0, #7
4C516C:  BNE             loc_4C5184
4C516E:  LDRB.W          R0, [R11]
4C5172:  LSLS            R0, R0, #0x1D
4C5174:  BPL             loc_4C5184
4C5176:  MOV             R0, R4; this
4C5178:  BLX             j__ZN4CPed13ClearLookFlagEv; CPed::ClearLookFlag(void)
4C517C:  MOV             R0, R4; this
4C517E:  MOVS            R1, #0xFA; unsigned int
4C5180:  BLX             j__ZN4CPed12SetLookTimerEj; CPed::SetLookTimer(uint)
4C5184:  VLDR            S0, [R4,#0x48]
4C5188:  VLDR            S2, [R4,#0x4C]
4C518C:  VMUL.F32        S0, S0, S0
4C5190:  LDR.W           R0, [R4,#0x444]
4C5194:  VMUL.F32        S2, S2, S2
4C5198:  VADD.F32        S0, S0, S2
4C519C:  VLDR            S2, =0.1
4C51A0:  VSQRT.F32       S0, S0
4C51A4:  VCMPE.F32       S0, S2
4C51A8:  VMRS            APSR_nzcv, FPSCR
4C51AC:  BGE             loc_4C51CA
4C51AE:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4C51B8)
4C51B2:  LDR             R2, [R0,#0x24]
4C51B4:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4C51B6:  CMP             R2, #0
4C51B8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4C51BA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4C51BC:  BEQ             loc_4C51DC
4C51BE:  CMP             R1, R2
4C51C0:  BLS             loc_4C51E2
4C51C2:  LDRH            R1, [R0,#0x34]
4C51C4:  ORR.W           R1, R1, #1
4C51C8:  B               loc_4C51D8
4C51CA:  MOVS            R1, #0
4C51CC:  STR             R1, [R0,#0x24]
4C51CE:  LDR.W           R0, [R4,#0x444]
4C51D2:  LDRH            R1, [R0,#0x34]
4C51D4:  BIC.W           R1, R1, #1
4C51D8:  STRH            R1, [R0,#0x34]
4C51DA:  B               loc_4C51E2
4C51DC:  ADD.W           R1, R1, #0x1F4
4C51E0:  STR             R1, [R0,#0x24]
4C51E2:  LDR.W           R0, [R4,#0x444]
4C51E6:  LDRB.W          R0, [R0,#0x85]
4C51EA:  CBZ             R0, loc_4C520C
4C51EC:  MOV             R0, R4; this
4C51EE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4C51F2:  CMP             R0, #1
4C51F4:  BNE             loc_4C520C
4C51F6:  MOV             R0, R9; this
4C51F8:  MOVS            R1, #0; bool
4C51FA:  MOVS            R5, #0
4C51FC:  BLX             j__ZN4CPad9GetTargetEb; CPad::GetTarget(bool)
4C5200:  CMP             R0, #0
4C5202:  ITT EQ
4C5204:  LDREQ.W         R0, [R4,#0x444]
4C5208:  STRBEQ.W        R5, [R0,#0x85]
4C520C:  LDR.W           R0, [R4,#0x44C]
4C5210:  CMP             R0, #0xC
4C5212:  BEQ             loc_4C5238
4C5214:  LDRSB.W         R0, [R4,#0x71C]
4C5218:  RSB.W           R0, R0, R0,LSL#3
4C521C:  ADD.W           R0, R4, R0,LSL#2
4C5220:  LDR.W           R0, [R0,#0x5A8]
4C5224:  CMP             R0, #1
4C5226:  BNE             loc_4C5238
4C5228:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4C5234)
4C522C:  LDR.W           R1, [R4,#0x444]
4C5230:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4C5232:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4C5234:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4C5236:  STR             R0, [R1,#0x6C]
4C5238:  LDR             R1, [SP,#0x88+var_6C]; CPad *
4C523A:  MOV             R0, R4; this
4C523C:  BLX             j__ZN10CPlayerPed21ProcessGroupBehaviourEP4CPad; CPlayerPed::ProcessGroupBehaviour(CPad *)
4C5240:  LDRB.W          R0, [R11,#1]
4C5244:  LSLS            R0, R0, #0x1F
4C5246:  ITT NE
4C5248:  LDRNE.W         R0, [R4,#0x590]; this
4C524C:  BLXNE           j__ZN8CCarCtrl25RegisterVehicleOfInterestEP8CVehicle; CCarCtrl::RegisterVehicleOfInterest(CVehicle *)
4C5250:  LDRB.W          R0, [R8]
4C5254:  MOVS            R1, #0
4C5256:  CMP.W           R1, R0,LSR#7
4C525A:  ITT EQ
4C525C:  MOVEQ           R0, R4; this
4C525E:  BLXEQ           j__ZN7CEntity13UpdateRpHAnimEv; CEntity::UpdateRpHAnim(void)
4C5262:  LDRB.W          R0, [R11,#1]
4C5266:  LSLS            R0, R0, #0x1F
4C5268:  BEQ             loc_4C5294
4C526A:  LDRH.W          R0, [R9,#0x12]
4C526E:  CBZ             R0, loc_4C5276
4C5270:  LDRH.W          R0, [R9,#0x42]
4C5274:  CBZ             R0, loc_4C528A
4C5276:  LDRH.W          R0, [R9,#0x10]
4C527A:  CBZ             R0, loc_4C5294
4C527C:  LDRH.W          R0, [R9,#0x40]
4C5280:  CBNZ            R0, loc_4C5294
4C5282:  LDR.W           R0, [R4,#0x444]
4C5286:  MOVS            R1, #1
4C5288:  B               loc_4C5290
4C528A:  LDR.W           R0, [R4,#0x444]
4C528E:  MOVS            R1, #0
4C5290:  STRB.W          R1, [R0,#0x8D]
4C5294:  LDRB.W          R0, [R4,#0x45]
4C5298:  LSLS            R0, R0, #0x1F
4C529A:  BNE             loc_4C52A8
4C529C:  LDR.W           R0, [R4,#0x444]
4C52A0:  MOVS            R1, #0
4C52A2:  STRB.W          R1, [R0,#0x8E]
4C52A6:  B               loc_4C5364
4C52A8:  VMOV.F32        S0, #1.5
4C52AC:  LDR             R0, [R4,#0x14]
4C52AE:  MOVS            R6, #0
4C52B0:  MOVS            R5, #(stderr+1)
4C52B2:  ADD.W           R1, R0, #0x30 ; '0'
4C52B6:  CMP             R0, #0
4C52B8:  IT EQ
4C52BA:  ADDEQ           R1, R4, #4
4C52BC:  LDR.W           R3, [R4,#0x444]
4C52C0:  VLDR            S16, [R1,#8]
4C52C4:  LDRD.W          R0, R1, [R1]; float
4C52C8:  ADDS            R3, #0x90; float
4C52CA:  STRD.W          R5, R6, [SP,#0x88+var_88]; float *
4C52CE:  VADD.F32        S0, S16, S0
4C52D2:  VMOV            R2, S0; float
4C52D6:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
4C52DA:  CMP             R0, #1
4C52DC:  BNE             loc_4C535C
4C52DE:  MOV             R0, R4; this
4C52E0:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4C52E4:  VLDR            S18, [R0,#8]
4C52E8:  MOV             R0, R4; this
4C52EA:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4C52EE:  VLDR            S0, [R0,#0x14]
4C52F2:  LDR.W           R0, [R4,#0x444]
4C52F6:  VADD.F32        S0, S16, S0
4C52FA:  VLDR            S2, [R0,#0x90]
4C52FE:  VCMPE.F32       S2, S0
4C5302:  VMRS            APSR_nzcv, FPSCR
4C5306:  BGE.W           loc_4C5570
4C530A:  VADD.F32        S4, S16, S18
4C530E:  VCMPE.F32       S2, S4
4C5312:  VMRS            APSR_nzcv, FPSCR
4C5316:  BLE             loc_4C52A0
4C5318:  VSUB.F32        S0, S0, S4
4C531C:  VSUB.F32        S2, S2, S4
4C5320:  VDIV.F32        S0, S2, S0
4C5324:  VLDR            S2, =100.0
4C5328:  VMUL.F32        S0, S0, S2
4C532C:  VCVT.U32.F32    S0, S0
4C5330:  VMOV            R1, S0
4C5334:  B               loc_4C52A2
4C5336:  ALIGN 4
4C5338:  DCFS 0.5236
4C533C:  DCFS 5.7596
4C5340:  DCFS 2.618
4C5344:  DCFS 3.6652
4C5348:  DCFS -2.618
4C534C:  DCFS 1000000.0
4C5350:  DCFS 50.0
4C5354:  DCFS 1000.0
4C5358:  DCFS 0.1
4C535C:  LDR             R0, [R4,#0x44]
4C535E:  BIC.W           R0, R0, #0x100
4C5362:  STR             R0, [R4,#0x44]
4C5364:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4C536A)
4C5366:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
4C5368:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
4C536A:  LDRB            R0, [R0]; CTimer::m_FrameCounter
4C536C:  LSLS            R0, R0, #0x19
4C536E:  BNE             loc_4C537E
4C5370:  MOV.W           R0, #0xFFFFFFFF; int
4C5374:  MOVS            R1, #0; bool
4C5376:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
4C537A:  CMP             R0, #0
4C537C:  BEQ             loc_4C5428
4C537E:  LDRB.W          R0, [R11,#1]
4C5382:  LSLS            R0, R0, #0x1F
4C5384:  BNE             loc_4C53BC
4C5386:  MOV             R0, R4; this
4C5388:  BLX             j__ZNK9CPhysical16GetLightingTotalEv; CPhysical::GetLightingTotal(void)
4C538C:  VLDR            S0, =0.05
4C5390:  VMOV            S2, R0; this
4C5394:  VCMPE.F32       S2, S0
4C5398:  VMRS            APSR_nzcv, FPSCR
4C539C:  BGT             loc_4C53BC
4C539E:  BLX             j__ZN17CEntryExitManager25WeAreInInteriorTransitionEv; CEntryExitManager::WeAreInInteriorTransition(void)
4C53A2:  CBNZ            R0, loc_4C53BC
4C53A4:  MOVS            R0, #0
4C53A6:  MOV.W           R1, #0x152; unsigned __int16
4C53AA:  STRD.W          R0, R0, [SP,#0x88+var_88]; unsigned __int8
4C53AE:  MOVS            R2, #0; unsigned int
4C53B0:  STR             R0, [SP,#0x88+var_80]; unsigned __int8
4C53B2:  MOV             R0, R4; this
4C53B4:  MOV.W           R3, #0x3F800000; float
4C53B8:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4C53BC:  MOV.W           R0, #0xFFFFFFFF; int
4C53C0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4C53C4:  CBZ             R0, loc_4C53D8
4C53C6:  MOV.W           R0, #0xFFFFFFFF; int
4C53CA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4C53CE:  LDR.W           R0, [R0,#0x440]; this
4C53D2:  BLX             j__ZNK16CPedIntelligence17GetUsingParachuteEv; CPedIntelligence::GetUsingParachute(void)
4C53D6:  CBNZ            R0, loc_4C5410
4C53D8:  BLX             j__ZN14MobileSettings12IsLockOnModeEv; MobileSettings::IsLockOnMode(void)
4C53DC:  CBNZ            R0, loc_4C53E6
4C53DE:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
4C53E2:  CMP             R0, #1
4C53E4:  BNE             loc_4C5410
4C53E6:  BLX             j__ZN4CPad25WeaponUsesTargetingButtonEv; CPad::WeaponUsesTargetingButton(void)
4C53EA:  CBNZ            R0, loc_4C5410
4C53EC:  LDR             R0, =(TheCamera_ptr - 0x4C53F2)
4C53EE:  ADD             R0, PC; TheCamera_ptr
4C53F0:  LDR             R0, [R0]; TheCamera ; this
4C53F2:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
4C53F6:  CBNZ            R0, loc_4C5410
4C53F8:  LDR.W           R0, [R4,#0x44C]
4C53FC:  CMP             R0, #0x32 ; '2'
4C53FE:  BEQ             loc_4C5410
4C5400:  LDR.W           R0, [R4,#0x440]; this
4C5404:  MOVS            R1, #0; bool
4C5406:  BLX             j__ZNK16CPedIntelligence11GetTaskHoldEb; CPedIntelligence::GetTaskHold(bool)
4C540A:  CMP             R0, #0
4C540C:  BEQ.W           loc_4C5574
4C5410:  LDR             R0, =(_ZN4CHID20currentInstanceIndexE_ptr - 0x4C5416)
4C5412:  ADD             R0, PC; _ZN4CHID20currentInstanceIndexE_ptr
4C5414:  LDR             R0, [R0]; CHID::currentInstanceIndex ...
4C5416:  STR.W           R10, [R0]; CHID::currentInstanceIndex
4C541A:  ADD             SP, SP, #0x40 ; '@'
4C541C:  VPOP            {D8-D12}
4C5420:  ADD             SP, SP, #4
4C5422:  POP.W           {R8-R11}
4C5426:  POP             {R4-R7,PC}
4C5428:  LDR.W           R0, [R4,#0x444]
4C542C:  MOV.W           R1, #0x2D4
4C5430:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C5436)
4C5432:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C5434:  LDR             R0, [R0,#0x38]
4C5436:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4C5438:  MLA.W           R2, R0, R1, R2
4C543C:  LDRB            R2, [R2,#4]
4C543E:  CMP             R2, #0
4C5440:  BEQ             loc_4C537E
4C5442:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C5448)
4C5444:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C5446:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4C5448:  MLA.W           R0, R0, R1, R2
4C544C:  ADDS            R0, #8; this
4C544E:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
4C5452:  MOV             R5, R0
4C5454:  CMP             R5, #1
4C5456:  BLT             loc_4C537E
4C5458:  LDR.W           R0, [R4,#0x444]
4C545C:  MOV.W           R6, #0x2D4
4C5460:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C5468)
4C5462:  LDR             R0, [R0,#0x38]
4C5464:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C5466:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C5468:  MLA.W           R0, R0, R6, R1; this
4C546C:  MOVS            R1, #0; CPed **
4C546E:  BLX             j__ZN9CPedGroup27FindDistanceToNearestMemberEPP4CPed; CPedGroup::FindDistanceToNearestMember(CPed **)
4C5472:  VMOV.F32        S0, #20.0
4C5476:  VMOV            S2, R0
4C547A:  VCMPE.F32       S2, S0
4C547E:  VMRS            APSR_nzcv, FPSCR
4C5482:  BLE.W           loc_4C537E
4C5486:  LDR.W           R0, [R4,#0x444]
4C548A:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C5492)
4C548C:  LDR             R0, [R0,#0x38]
4C548E:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C5490:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4C5492:  MLA.W           R0, R0, R6, R1; this
4C5496:  MOVS            R1, #0; CPed **
4C5498:  BLX             j__ZN9CPedGroup27FindDistanceToNearestMemberEPP4CPed; CPedGroup::FindDistanceToNearestMember(CPed **)
4C549C:  VLDR            S0, =100.0
4C54A0:  VMOV            S2, R0
4C54A4:  VCMPE.F32       S2, S0
4C54A8:  VMRS            APSR_nzcv, FPSCR
4C54AC:  BGE.W           loc_4C537E
4C54B0:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x4C54B6)
4C54B2:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4C54B4:  LDR             R0, [R0]; CGame::currArea ...
4C54B6:  LDR             R0, [R0]; CGame::currArea
4C54B8:  CMP             R0, #0
4C54BA:  BNE.W           loc_4C537E
4C54BE:  MOVS            R0, #0
4C54C0:  CMP             R5, #1
4C54C2:  STRD.W          R0, R0, [SP,#0x88+var_88]; unsigned __int8
4C54C6:  MOV.W           R2, #0; unsigned int
4C54CA:  STR             R0, [SP,#0x88+var_80]; unsigned __int8
4C54CC:  ITE NE
4C54CE:  MOVNE           R1, #0x9D
4C54D0:  MOVEQ           R1, #0x9E; unsigned __int16
4C54D2:  MOV             R0, R4; this
4C54D4:  MOV.W           R3, #0x3F800000; float
4C54D8:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4C54DC:  LDR             R0, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4C54EE)
4C54DE:  VMOV.F32        S20, #0.5
4C54E2:  VLDR            S16, =4.6566e-10
4C54E6:  MOV.W           R9, #0x2D4
4C54EA:  ADD             R0, PC; _ZN10CPedGroups9ms_groupsE_ptr
4C54EC:  VLDR            S18, =0.0
4C54F0:  VLDR            S22, =0.000015259
4C54F4:  MOVS            R5, #0
4C54F6:  LDR.W           R8, [R0]; CPedGroups::ms_groups ...
4C54FA:  VLDR            S24, =1500.0
4C54FE:  LDR.W           R0, [R4,#0x444]
4C5502:  MOV             R1, R5; int
4C5504:  LDR             R0, [R0,#0x38]
4C5506:  MLA.W           R0, R0, R9, R8
4C550A:  ADDS            R0, #8; this
4C550C:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
4C5510:  MOV             R6, R0
4C5512:  CBZ             R6, loc_4C5568
4C5514:  BLX             rand
4C5518:  VMOV            S0, R0
4C551C:  VCVT.F32.S32    S0, S0
4C5520:  VMUL.F32        S0, S0, S16
4C5524:  VADD.F32        S0, S0, S18
4C5528:  VCMPE.F32       S0, S20
4C552C:  VMRS            APSR_nzcv, FPSCR
4C5530:  BGE             loc_4C5568
4C5532:  BLX             rand
4C5536:  UXTH            R0, R0
4C5538:  MOVS            R1, #0x5C ; '\'; unsigned __int16
4C553A:  VMOV            S0, R0
4C553E:  MOVS            R0, #0
4C5540:  MOV.W           R3, #0x3F800000; float
4C5544:  VCVT.F32.S32    S0, S0
4C5548:  STRD.W          R0, R0, [SP,#0x88+var_84]; unsigned __int8
4C554C:  VMUL.F32        S0, S0, S22
4C5550:  VMUL.F32        S0, S0, S24
4C5554:  VCVT.S32.F32    S0, S0
4C5558:  STR             R0, [SP,#0x88+var_88]; unsigned __int8
4C555A:  VMOV            R0, S0
4C555E:  ADDW            R2, R0, #0xBB8; unsigned int
4C5562:  MOV             R0, R6; this
4C5564:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4C5568:  ADDS            R5, #1
4C556A:  CMP             R5, #7
4C556C:  BNE             loc_4C54FE
4C556E:  B               loc_4C537E
4C5570:  MOVS            R1, #0x64 ; 'd'
4C5572:  B               loc_4C52A2
4C5574:  LDR.W           R0, [R4,#0x440]; this
4C5578:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
4C557C:  CMP             R0, #0
4C557E:  BNE.W           loc_4C5410
4C5582:  LDR             R0, =(_ZN6CRopes19PlayerControlsCraneE_ptr - 0x4C5588)
4C5584:  ADD             R0, PC; _ZN6CRopes19PlayerControlsCraneE_ptr
4C5586:  LDR             R0, [R0]; CRopes::PlayerControlsCrane ...
4C5588:  LDR             R0, [R0]; CRopes::PlayerControlsCrane
4C558A:  CMP             R0, #0
4C558C:  BNE.W           loc_4C5410
4C5590:  LDRSB.W         R0, [R4,#0x71C]
4C5594:  MOVS            R1, #1
4C5596:  RSB.W           R0, R0, R0,LSL#3
4C559A:  ADD.W           R0, R4, R0,LSL#2
4C559E:  LDR.W           R0, [R0,#0x5A4]
4C55A2:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C55A6:  LDR             R0, [R0]
4C55A8:  CMP             R0, #0
4C55AA:  BEQ.W           loc_4C5410
4C55AE:  MOVS            R0, #1
4C55B0:  MOVS            R1, #0
4C55B2:  MOV.W           R2, #0xFFFFFFFF
4C55B6:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
4C55BA:  CMP             R0, #1
4C55BC:  BNE.W           loc_4C5410
4C55C0:  LDR.W           R0, [R4,#0x444]
4C55C4:  LDRH            R1, [R0,#0x34]
4C55C6:  BIC.W           R1, R1, #8
4C55CA:  STRH            R1, [R0,#0x34]
4C55CC:  MOV             R0, R4; this
4C55CE:  MOVS            R1, #0; CEntity *
4C55D0:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
4C55D4:  B               loc_4C4F24
