; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDead10ProcessPedEP4CPed
; Address            : 0x4EB8E0 - 0x4EBDC0
; =========================================================

4EB8E0:  PUSH            {R4-R7,LR}
4EB8E2:  ADD             R7, SP, #0xC
4EB8E4:  PUSH.W          {R8-R10}
4EB8E8:  VPUSH           {D8-D10}
4EB8EC:  SUB             SP, SP, #0x58
4EB8EE:  MOV             R8, R0
4EB8F0:  MOV             R10, R1
4EB8F2:  LDRB.W          R0, [R8,#0xC]
4EB8F6:  TST.W           R0, #1
4EB8FA:  BNE             loc_4EB904
4EB8FC:  MOVS            R5, #0
4EB8FE:  MOV.W           R9, #0
4EB902:  B               loc_4EBA2A
4EB904:  LDRB.W          R0, [R10,#0x485]
4EB908:  ADDW            R5, R10, #0x484
4EB90C:  LSLS            R0, R0, #0x1F
4EB90E:  BEQ             loc_4EB938
4EB910:  LDR.W           R0, [R10,#0x590]; this
4EB914:  MOV             R1, R10; CVehicle *
4EB916:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4EB91A:  MOV             R1, R0
4EB91C:  LDR.W           R0, [R10,#0x18]; int
4EB920:  ORR.W           R1, R1, #1
4EB924:  MOV.W           R3, #0x40800000
4EB928:  CMP             R1, #0xB
4EB92A:  MOV.W           R1, #0; int
4EB92E:  ITE NE
4EB930:  MOVNE           R2, #0xBC
4EB932:  MOVEQ           R2, #0xBB; unsigned int
4EB934:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4EB938:  MOV             R0, R10; CPed *
4EB93A:  MOVS            R1, #0x37 ; '7'
4EB93C:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4EB940:  LDRB.W          R0, [R8,#0xC]
4EB944:  AND.W           R0, R0, #0xFE
4EB948:  STRB.W          R0, [R8,#0xC]
4EB94C:  LDR             R0, [R5]
4EB94E:  AND.W           R9, R0, #3
4EB952:  MOVS            R0, #0; int
4EB954:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EB958:  LDR.W           R0, [R0,#0x720]
4EB95C:  CMP.W           R9, #0
4EB960:  IT NE
4EB962:  MOVNE.W         R9, #1
4EB966:  CMP             R0, R10
4EB968:  BEQ             loc_4EB984
4EB96A:  MOVS            R0, #1; int
4EB96C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EB970:  CBZ             R0, loc_4EB980
4EB972:  MOVS            R0, #1; int
4EB974:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EB978:  LDR.W           R0, [R0,#0x720]
4EB97C:  CMP             R0, R10
4EB97E:  BEQ             loc_4EB984
4EB980:  MOVS            R5, #0
4EB982:  B               loc_4EB986
4EB984:  MOVS            R5, #1
4EB986:  LDRB.W          R0, [R8,#0xC]
4EB98A:  LSLS            R0, R0, #0x1E
4EB98C:  BMI             loc_4EB9A4
4EB98E:  CBNZ            R5, loc_4EB9A4
4EB990:  LDR.W           R0, [R10,#0x56C]
4EB994:  CMP             R0, #0
4EB996:  ITTT EQ
4EB998:  LDREQ.W         R0, [R10,#0x1C]
4EB99C:  BICEQ.W         R0, R0, #1
4EB9A0:  STREQ.W         R0, [R10,#0x1C]
4EB9A4:  LDRSB.W         R0, [R10,#0x71C]
4EB9A8:  MOVS            R6, #0
4EB9AA:  STR.W           R6, [R10,#0x544]
4EB9AE:  MOVS            R1, #1
4EB9B0:  RSB.W           R0, R0, R0,LSL#3
4EB9B4:  ADD.W           R0, R10, R0,LSL#2
4EB9B8:  LDR.W           R0, [R0,#0x5A4]
4EB9BC:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4EB9C0:  LDR             R1, [R0,#0xC]; int
4EB9C2:  MOV             R0, R10; this
4EB9C4:  BLX             j__ZN4CPed17RemoveWeaponModelEi; CPed::RemoveWeaponModel(int)
4EB9C8:  MOV             R0, R10; this
4EB9CA:  STRB.W          R6, [R10,#0x71C]
4EB9CE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4EB9D2:  CBNZ            R0, loc_4EB9EE
4EB9D4:  MOVS            R2, #0
4EB9D6:  MOV             R0, R10; this
4EB9D8:  MOVT            R2, #0xC47A; float
4EB9DC:  MOVS            R1, #0; int
4EB9DE:  BLX             j__ZN4CPed17RemoveWeaponAnimsEif; CPed::RemoveWeaponAnims(int,float)
4EB9E2:  MOV             R0, R10; this
4EB9E4:  BLX             j__ZN4CPed26CreateDeadPedWeaponPickupsEv; CPed::CreateDeadPedWeaponPickups(void)
4EB9E8:  MOV             R0, R10; this
4EB9EA:  BLX             j__ZN4CPed18CreateDeadPedMoneyEv; CPed::CreateDeadPedMoney(void)
4EB9EE:  LDRB.W          R0, [R8,#0xC]
4EB9F2:  ADD             R6, SP, #0x88+var_50
4EB9F4:  LDR.W           R3, [R8,#8]; int
4EB9F8:  MOV             R1, R10; CPed *
4EB9FA:  UBFX.W          R2, R0, #1, #1; bool
4EB9FE:  MOV             R0, R6; this
4EBA00:  BLX             j__ZN13CEventDeadPedC2EP4CPedbi; CEventDeadPed::CEventDeadPed(CPed *,bool,int)
4EBA04:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
4EBA08:  MOV             R1, R6; CEvent *
4EBA0A:  MOVS            R2, #0; bool
4EBA0C:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4EBA10:  BLX             j__Z18GetAccidentManagerv; GetAccidentManager(void)
4EBA14:  MOV             R1, R10; CPed *
4EBA16:  BLX             j__ZN16CAccidentManager14ReportAccidentEP4CPed; CAccidentManager::ReportAccident(CPed *)
4EBA1A:  MOV             R0, R6; this
4EBA1C:  BLX             j__ZN13CEventDeadPedD2Ev; CEventDeadPed::~CEventDeadPed()
4EBA20:  LDRB.W          R0, [R8,#0xC]
4EBA24:  CMP             R5, #0
4EBA26:  IT NE
4EBA28:  MOVNE           R5, #1
4EBA2A:  AND.W           R1, R0, #3
4EBA2E:  CMP             R1, #2
4EBA30:  BNE             loc_4EBA3A
4EBA32:  LDRB.W          R1, [R10,#0x484]
4EBA36:  LSLS            R1, R1, #0x1F
4EBA38:  BNE             loc_4EBA66
4EBA3A:  MOV             R6, R10
4EBA3C:  LDR.W           R1, [R6,#0x1C]!
4EBA40:  TST.W           R1, #1
4EBA44:  BEQ             loc_4EBA5E
4EBA46:  ANDS.W          R0, R0, #2
4EBA4A:  BNE             loc_4EBA5E
4EBA4C:  LDRB.W          R0, [R10,#0x484]
4EBA50:  LSLS            R0, R0, #0x1F
4EBA52:  BEQ             loc_4EBA5E
4EBA54:  LDR.W           R0, [R10,#0x56C]
4EBA58:  CMP             R0, #0
4EBA5A:  BEQ.W           loc_4EBCF4
4EBA5E:  CMP.W           R9, #1
4EBA62:  BEQ             loc_4EBA96
4EBA64:  B               loc_4EBB24
4EBA66:  LDR.W           R0, [R10,#0x1C]
4EBA6A:  MOVS            R1, #0; int
4EBA6C:  MOVS            R2, #0x27 ; '''; unsigned int
4EBA6E:  MOV.W           R3, #0x41000000
4EBA72:  BIC.W           R0, R0, #1
4EBA76:  STR.W           R0, [R10,#0x1C]
4EBA7A:  LDRB.W          R0, [R8,#0xC]
4EBA7E:  AND.W           R0, R0, #0xFD
4EBA82:  STRB.W          R0, [R8,#0xC]
4EBA86:  LDR.W           R0, [R10,#0x18]; int
4EBA8A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4EBA8E:  LDRH            R1, [R0,#0x2E]
4EBA90:  BIC.W           R1, R1, #8
4EBA94:  STRH            R1, [R0,#0x2E]
4EBA96:  ADD.W           R0, R10, #0x580
4EBA9A:  LDR.W           R1, [R10,#0x14]
4EBA9E:  VMOV.F32        S16, #-1.0
4EBAA2:  VLDR            S0, [R0]
4EBAA6:  ADDW            R0, R10, #0x57C
4EBAAA:  VLDR            S4, [R1,#4]
4EBAAE:  VMOV.F32        S18, #1.0
4EBAB2:  VLDR            S10, [R0]
4EBAB6:  ADDW            R0, R10, #0x584
4EBABA:  VLDR            S2, [R1]
4EBABE:  VMUL.F32        S4, S0, S4
4EBAC2:  VLDR            S6, [R1,#8]
4EBAC6:  VMUL.F32        S2, S10, S2
4EBACA:  VLDR            S12, [R0]
4EBACE:  VLDR            S8, [R1,#0x10]
4EBAD2:  VMUL.F32        S6, S12, S6
4EBAD6:  VADD.F32        S2, S2, S4
4EBADA:  VLDR            S4, [R1,#0x14]
4EBADE:  VMUL.F32        S0, S0, S4
4EBAE2:  VLDR            S4, [R1,#0x18]
4EBAE6:  VMUL.F32        S4, S12, S4
4EBAEA:  VADD.F32        S2, S2, S6
4EBAEE:  VMAX.F32        D16, D1, D8
4EBAF2:  VMIN.F32        D1, D16, D9
4EBAF6:  VMOV            R0, S2; x
4EBAFA:  VMUL.F32        S2, S10, S8
4EBAFE:  VADD.F32        S0, S2, S0
4EBB02:  VADD.F32        S20, S0, S4
4EBB06:  BLX             asinf
4EBB0A:  VMAX.F32        D16, D10, D8
4EBB0E:  STR.W           R0, [R10,#0x52C]
4EBB12:  VMIN.F32        D0, D16, D9
4EBB16:  VMOV            R1, S0
4EBB1A:  MOV             R0, R1; x
4EBB1C:  BLX             asinf
4EBB20:  STR.W           R0, [R10,#0x524]
4EBB24:  MOV             R0, R10; this
4EBB26:  BLX             j__ZN4CPed23DeadPedMakesTyresBloodyEv; CPed::DeadPedMakesTyresBloody(void)
4EBB2A:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
4EBB2E:  CMP             R0, #0
4EBB30:  BEQ.W           loc_4EBD86
4EBB34:  LDRB.W          R0, [R8,#0xC]
4EBB38:  LSLS            R0, R0, #0x1E
4EBB3A:  BMI.W           loc_4EBD86
4EBB3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4EBB48)
4EBB40:  LDR.W           R1, [R8,#8]
4EBB44:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4EBB46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4EBB48:  LDR.W           R12, [R0]; CTimer::m_snTimeInMilliseconds
4EBB4C:  SUB.W           LR, R12, R1
4EBB50:  CMP.W           LR, #0x7D0
4EBB54:  BCS             loc_4EBB5C
4EBB56:  VLDR            S0, =0.0
4EBB5A:  B               loc_4EBB7E
4EBB5C:  MOVW            R0, #0x1B58
4EBB60:  CMP             LR, R0
4EBB62:  BLS             loc_4EBB6A
4EBB64:  VLDR            S0, =0.75
4EBB68:  B               loc_4EBB7E
4EBB6A:  SUB.W           R0, LR, #0x7D0
4EBB6E:  VLDR            S2, =0.00015
4EBB72:  VMOV            S0, R0
4EBB76:  VCVT.F32.U32    S0, S0
4EBB7A:  VMUL.F32        S0, S0, S2
4EBB7E:  VMUL.F32        S0, S0, S0
4EBB82:  LDR.W           R0, [R10,#0x440]
4EBB86:  ADD.W           R4, R10, #4
4EBB8A:  MOVS            R3, #0
4EBB8C:  ADD.W           R2, R0, #0x130
4EBB90:  MOV.W           R9, #0xC8
4EBB94:  LDR.W           R0, [R2,R3,LSL#2]
4EBB98:  CBZ             R0, loc_4EBBF6
4EBB9A:  LDR.W           R1, [R10,#0x14]
4EBB9E:  MOV             R5, R4
4EBBA0:  LDR             R6, [R0,#0x14]
4EBBA2:  CMP             R1, #0
4EBBA4:  IT NE
4EBBA6:  ADDNE.W         R5, R1, #0x30 ; '0'
4EBBAA:  ADD.W           R1, R6, #0x30 ; '0'
4EBBAE:  CMP             R6, #0
4EBBB0:  VLDR            S2, [R5]
4EBBB4:  IT EQ
4EBBB6:  ADDEQ           R1, R0, #4
4EBBB8:  VLDR            D16, [R5,#4]
4EBBBC:  VLDR            S4, [R1]
4EBBC0:  VLDR            D17, [R1,#4]
4EBBC4:  VSUB.F32        S2, S4, S2
4EBBC8:  VSUB.F32        D16, D17, D16
4EBBCC:  VMUL.F32        D2, D16, D16
4EBBD0:  VMUL.F32        S2, S2, S2
4EBBD4:  VADD.F32        S2, S2, S4
4EBBD8:  VADD.F32        S2, S2, S5
4EBBDC:  VCMPE.F32       S2, S0
4EBBE0:  VMRS            APSR_nzcv, FPSCR
4EBBE4:  ITTTT LT
4EBBE6:  LDRLT.W         R1, [R0,#0x484]
4EBBEA:  STRLT.W         R9, [R0,#0x758]
4EBBEE:  ORRLT.W         R1, R1, #0x10000000
4EBBF2:  STRLT.W         R1, [R0,#0x484]
4EBBF6:  ADDS            R3, #1
4EBBF8:  CMP             R3, #0x10
4EBBFA:  BNE             loc_4EBB94
4EBBFC:  CMP.W           LR, #0x7D0
4EBC00:  BLS.W           loc_4EBD86
4EBC04:  LDRB.W          R0, [R8,#0xC]
4EBC08:  TST.W           R0, #4
4EBC0C:  BNE.W           loc_4EBD86
4EBC10:  LDR             R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x4EBC20)
4EBC12:  MOV             R2, R4
4EBC14:  LDR.W           R3, [R10,#0x14]
4EBC18:  SUB.W           R6, LR, #0x7D0
4EBC1C:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
4EBC1E:  CMP             R3, #0
4EBC20:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
4EBC22:  IT NE
4EBC24:  ADDNE.W         R2, R3, #0x30 ; '0'
4EBC28:  VLDR            D16, [R2]
4EBC2C:  LDR             R3, [R2,#8]
4EBC2E:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
4EBC30:  STR             R3, [SP,#0x88+var_48]
4EBC32:  SUB.W           R1, R12, R1
4EBC36:  VSTR            D16, [SP,#0x88+var_50]
4EBC3A:  CMP             R6, R1
4EBC3C:  BHI             loc_4EBC7E
4EBC3E:  LDM             R2, {R0-R2}; float
4EBC40:  MOVS            R3, #0
4EBC42:  STRD.W          R3, R3, [SP,#0x88+var_88]; float
4EBC46:  ADD             R3, SP, #0x88+var_54; float
4EBC48:  BLX             j__ZN11CWaterLevel20GetWaterLevelNoWavesEfffPfS0_S0_; CWaterLevel::GetWaterLevelNoWaves(float,float,float,float *,float *,float *)
4EBC4C:  CMP             R0, #1
4EBC4E:  BNE             loc_4EBC7A
4EBC50:  LDR.W           R0, [R10,#0x14]
4EBC54:  VLDR            S0, [SP,#0x88+var_54]
4EBC58:  CMP             R0, #0
4EBC5A:  IT NE
4EBC5C:  ADDNE.W         R4, R0, #0x30 ; '0'
4EBC60:  VLDR            S2, [R4,#8]
4EBC64:  VCMPE.F32       S2, S0
4EBC68:  VMRS            APSR_nzcv, FPSCR
4EBC6C:  ITTT LE
4EBC6E:  LDRBLE.W        R0, [R8,#0xC]
4EBC72:  ORRLE.W         R0, R0, #4
4EBC76:  STRBLE.W        R0, [R8,#0xC]
4EBC7A:  LDRB.W          R0, [R8,#0xC]
4EBC7E:  LSLS            R0, R0, #0x1D; this
4EBC80:  BMI.W           loc_4EBD86
4EBC84:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
4EBC88:  CMP             R0, #0
4EBC8A:  BEQ             loc_4EBD86
4EBC8C:  MOVW            R0, #0x1387
4EBC90:  CMP             R6, R0
4EBC92:  BHI             loc_4EBD38
4EBC94:  VMOV            S0, R6
4EBC98:  LDR             R0, =(gpBloodPoolTex_ptr - 0x4EBCA8)
4EBC9A:  VLDR            S2, =0.00015
4EBC9E:  MOVS            R1, #0
4EBCA0:  VCVT.F32.U32    S0, S0
4EBCA4:  ADD             R0, PC; gpBloodPoolTex_ptr
4EBCA6:  VLDR            S4, =-0.00015
4EBCAA:  MOV.W           R3, #0x3F800000
4EBCAE:  LDR             R0, [R0]; gpBloodPoolTex
4EBCB0:  MOV.W           R6, #0x40800000
4EBCB4:  MOVS            R5, #0xC8
4EBCB6:  MOVS            R4, #0xFF
4EBCB8:  STR             R1, [SP,#0x88+var_58]; float
4EBCBA:  LDR             R2, [R0]; int
4EBCBC:  MOVS            R0, #0x42200000
4EBCC2:  STRD.W          R4, R5, [SP,#0x88+var_78]; int
4EBCC6:  VMUL.F32        S2, S0, S2
4EBCCA:  STRD.W          R1, R1, [SP,#0x88+var_70]; int
4EBCCE:  VMUL.F32        S0, S0, S4
4EBCD2:  STRD.W          R6, R3, [SP,#0x88+var_68]; float
4EBCD6:  STRD.W          R0, R1, [SP,#0x88+var_60]; float
4EBCDA:  ADD.W           R0, R8, #0x11; int
4EBCDE:  ADD             R3, SP, #0x88+var_50; int
4EBCE0:  STRD.W          R1, R1, [SP,#0x88+var_84]; float
4EBCE4:  MOVS            R1, #1; int
4EBCE6:  VSTR            S0, [SP,#0x88+var_7C]
4EBCEA:  VSTR            S2, [SP,#0x88+var_88]
4EBCEE:  BLX             j__ZN8CShadows17StoreStaticShadowEjhP9RwTextureP7CVectorffffshhhfffbf; CShadows::StoreStaticShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,float,float,bool,float)
4EBCF2:  B               loc_4EBD86
4EBCF4:  MOVS            R0, #0; int
4EBCF6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EBCFA:  LDR.W           R0, [R0,#0x720]
4EBCFE:  CMP             R0, R10
4EBD00:  BEQ.W           loc_4EBA5E
4EBD04:  MOVS            R0, #1; int
4EBD06:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EBD0A:  CBZ             R0, loc_4EBD28
4EBD0C:  MOVS            R0, #1; int
4EBD0E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4EBD12:  LDR.W           R0, [R0,#0x720]
4EBD16:  MOVS            R1, #0
4EBD18:  CMP             R0, R10
4EBD1A:  IT EQ
4EBD1C:  MOVEQ           R1, #1
4EBD1E:  ORRS.W          R0, R5, R1
4EBD22:  BNE.W           loc_4EBA5E
4EBD26:  B               loc_4EBD2E
4EBD28:  CMP             R5, #0
4EBD2A:  BNE.W           loc_4EBA5E
4EBD2E:  LDR             R0, [R6]
4EBD30:  BIC.W           R0, R0, #1
4EBD34:  STR             R0, [R6]
4EBD36:  B               loc_4EBA96
4EBD38:  LDR             R0, =(gpBloodPoolTex_ptr - 0x4EBD46)
4EBD3A:  MOVS            R5, #1
4EBD3C:  MOVW            R2, #0x9C40
4EBD40:  MOVS            R3, #0xC8
4EBD42:  ADD             R0, PC; gpBloodPoolTex_ptr
4EBD44:  MOVS            R6, #0xFF
4EBD46:  MOVT            R5, #0xBF40
4EBD4A:  LDR             R0, [R0]; gpBloodPoolTex
4EBD4C:  LDR             R1, [R0]; int
4EBD4E:  MOV.W           R0, #0x3F800000
4EBD52:  STRD.W          R2, R0, [SP,#0x88+var_68]; int
4EBD56:  MOVS            R2, #0
4EBD58:  MOV.W           R0, #0x40800000
4EBD5C:  STRD.W          R2, R2, [SP,#0x88+var_88]; float
4EBD60:  STRD.W          R5, R6, [SP,#0x88+var_80]; float
4EBD64:  STRD.W          R3, R2, [SP,#0x88+var_78]; int
4EBD68:  MOVS            R3, #1
4EBD6A:  STRD.W          R2, R0, [SP,#0x88+var_70]; int
4EBD6E:  ADD             R2, SP, #0x88+var_50; int
4EBD70:  MOVT            R3, #0x3F40; int
4EBD74:  MOVS            R0, #1; int
4EBD76:  BLX             j__ZN8CShadows18AddPermanentShadowEhP9RwTextureP7CVectorffffshhhfjf; CShadows::AddPermanentShadow(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,uint,float)
4EBD7A:  LDRB.W          R0, [R8,#0xC]
4EBD7E:  ORR.W           R0, R0, #4
4EBD82:  STRB.W          R0, [R8,#0xC]
4EBD86:  LDRB.W          R0, [R8,#0xC]
4EBD8A:  LSLS            R0, R0, #0x1E
4EBD8C:  BMI             loc_4EBDA6
4EBD8E:  LDR.W           R0, [R10,#0x534]
4EBD92:  MOVS            R1, #0
4EBD94:  STRD.W          R1, R1, [R10,#0x48]
4EBD98:  STR.W           R1, [R10,#0x50]
4EBD9C:  ORR.W           R0, R0, #8
4EBDA0:  STR.W           R0, [R10,#0x534]
4EBDA4:  B               loc_4EBDB2
4EBDA6:  LDR.W           R0, [R10,#0x484]
4EBDAA:  BIC.W           R0, R0, #3
4EBDAE:  STR.W           R0, [R10,#0x484]
4EBDB2:  MOVS            R0, #0
4EBDB4:  ADD             SP, SP, #0x58 ; 'X'
4EBDB6:  VPOP            {D8-D10}
4EBDBA:  POP.W           {R8-R10}
4EBDBE:  POP             {R4-R7,PC}
