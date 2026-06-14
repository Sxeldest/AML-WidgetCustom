; =========================================================
; Game Engine Function: _ZN6CWorld26TriggerExplosionSectorListER8CPtrListRK7CVectorffP7CEntityS6_bf
; Address            : 0x4269EC - 0x4274DA
; =========================================================

4269EC:  PUSH            {R4-R7,LR}
4269EE:  ADD             R7, SP, #0xC
4269F0:  PUSH.W          {R8-R11}
4269F4:  SUB             SP, SP, #4
4269F6:  VPUSH           {D8-D15}
4269FA:  SUB             SP, SP, #0x108
4269FC:  LDR.W           R9, [R0]
426A00:  MOV             R4, R1
426A02:  CMP.W           R9, #0
426A06:  BEQ.W           loc_4274CC
426A0A:  ADD             R0, SP, #0x168+var_10C
426A0C:  VMOV.F32        S22, #1.0
426A10:  ADD.W           R11, R0, #0x34 ; '4'
426A14:  ADD             R0, SP, #0x168+var_B0
426A16:  ORR.W           R0, R0, #4
426A1A:  STR             R0, [SP,#0x168+var_124]
426A1C:  ADDS            R0, R4, #4
426A1E:  STR             R0, [SP,#0x168+var_128]
426A20:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x426A34)
426A24:  VMOV            S18, R3
426A28:  VLDR            S26, [R7,#arg_C]
426A2C:  VMOV            S20, R2
426A30:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
426A32:  VLDR            S28, =0.01
426A36:  VLDR            S24, =1400.0
426A3A:  ADD             R6, SP, #0x168+var_84
426A3C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
426A3E:  STR             R0, [SP,#0x168+var_12C]
426A40:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x426A4C)
426A44:  VLDR            S25, =300.0
426A48:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
426A4A:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
426A4C:  STR             R0, [SP,#0x168+var_138]
426A4E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x426A56)
426A52:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
426A54:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
426A56:  STR             R0, [SP,#0x168+var_11C]
426A58:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x426A60)
426A5C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
426A5E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
426A60:  STR             R0, [SP,#0x168+var_130]
426A62:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x426A6A)
426A66:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
426A68:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
426A6A:  STR             R0, [SP,#0x168+var_114]
426A6C:  LDR.W           R0, =(MI_FIRE_HYDRANT_ptr - 0x426A74)
426A70:  ADD             R0, PC; MI_FIRE_HYDRANT_ptr
426A72:  LDR             R0, [R0]; MI_FIRE_HYDRANT
426A74:  STR             R0, [SP,#0x168+var_118]
426A76:  LDR.W           R0, =(g_fx_ptr - 0x426A7E)
426A7A:  ADD             R0, PC; g_fx_ptr
426A7C:  LDR             R5, [R0]; g_fx
426A7E:  LDR.W           R0, =(MI_FENCE_ptr - 0x426A86)
426A82:  ADD             R0, PC; MI_FENCE_ptr
426A84:  LDR             R0, [R0]; MI_FENCE
426A86:  STR             R0, [SP,#0x168+var_120]
426A88:  LDR.W           R0, =(MI_FENCE2_ptr - 0x426A90)
426A8C:  ADD             R0, PC; MI_FENCE2_ptr
426A8E:  LDR             R0, [R0]; MI_FENCE2
426A90:  STR             R0, [SP,#0x168+var_134]
426A92:  LDR.W           R0, =(MI_ATM_ptr - 0x426A9A)
426A96:  ADD             R0, PC; MI_ATM_ptr
426A98:  LDR             R0, [R0]; MI_ATM
426A9A:  STR             R0, [SP,#0x168+var_110]
426A9C:  LDRD.W          R10, R9, [R9]
426AA0:  VLDR            S0, [R4]
426AA4:  ADD.W           R8, R10, #4
426AA8:  VLDR            S2, [R4,#4]
426AAC:  LDR.W           R0, [R10,#0x14]
426AB0:  MOV             R1, R8
426AB2:  VLDR            S4, [R4,#8]
426AB6:  CMP             R0, #0
426AB8:  IT NE
426ABA:  ADDNE.W         R1, R0, #0x30 ; '0'
426ABE:  VLDR            S6, [R1]
426AC2:  VLDR            S8, [R1,#4]
426AC6:  VSUB.F32        S19, S6, S0
426ACA:  VLDR            S10, [R1,#8]
426ACE:  VSUB.F32        S21, S8, S2
426AD2:  VSUB.F32        S27, S10, S4
426AD6:  VMUL.F32        S2, S19, S19
426ADA:  VMUL.F32        S0, S21, S21
426ADE:  VMUL.F32        S4, S27, S27
426AE2:  VADD.F32        S0, S2, S0
426AE6:  VADD.F32        S0, S0, S4
426AEA:  VSQRT.F32       S30, S0
426AEE:  VCMPE.F32       S30, S20
426AF2:  VMRS            APSR_nzcv, FPSCR
426AF6:  BGE             loc_426B28
426AF8:  LDRB.W          R0, [R10,#0x3A]
426AFC:  AND.W           R0, R0, #7
426B00:  CMP             R0, #4
426B02:  ITT EQ
426B04:  MOVEQ           R0, R10; this
426B06:  BLXEQ           j__ZN7CObject12TryToExplodeEv; CObject::TryToExplode(void)
426B0A:  LDR.W           R0, [R10,#0x44]
426B0E:  TST.W           R0, #0x800000
426B12:  BNE             loc_426B28
426B14:  LDRB.W          R1, [R10,#0x3A]
426B18:  AND.W           R1, R1, #7
426B1C:  CMP             R1, #3
426B1E:  BNE             loc_426B32
426B20:  LDRB.W          R2, [R10,#0x485]
426B24:  LSLS            R2, R2, #0x1F
426B26:  BEQ             loc_426B32
426B28:  CMP.W           R9, #0
426B2C:  BNE             loc_426A9C
426B2E:  B.W             loc_4274CC
426B32:  STR             R5, [SP,#0x168+var_13C]
426B34:  MOV             R5, R10
426B36:  LDR.W           R2, [R5,#0x1C]!
426B3A:  TST.W           R2, #0x40004
426B3E:  BEQ.W           loc_426C4E
426B42:  CMP             R1, #4
426B44:  BNE             loc_426BAC
426B46:  LSLS            R0, R0, #0x1D
426B48:  STR.W           R11, [SP,#0x168+var_140]
426B4C:  BMI             loc_426BE4
426B4E:  LDR.W           R0, [R10,#0x164]
426B52:  VLDR            S0, [R0,#0x14]
426B56:  VCMPE.F32       S0, S18
426B5A:  VMRS            APSR_nzcv, FPSCR
426B5E:  BLT             loc_426B76
426B60:  LDR             R1, [SP,#0x168+var_120]
426B62:  MOV             R11, R10
426B64:  LDRSH.W         R0, [R11,#0x26]!
426B68:  LDRH            R1, [R1]
426B6A:  CMP             R0, R1
426B6C:  BEQ             loc_426B76
426B6E:  LDR             R1, [SP,#0x168+var_134]
426B70:  LDRH            R1, [R1]
426B72:  CMP             R0, R1
426B74:  BNE             loc_426BE8
426B76:  MOV             R11, R10
426B78:  LDR             R1, [SP,#0x168+var_114]
426B7A:  LDRSH.W         R0, [R11,#0x26]!
426B7E:  LDR.W           R0, [R1,R0,LSL#2]
426B82:  LDR             R1, [R0]
426B84:  LDR             R1, [R1,#8]
426B86:  BLX             R1
426B88:  CMP             R0, #0
426B8A:  BEQ.W           loc_42726E
426B8E:  LDRH            R0, [R0,#0x28]
426B90:  AND.W           R0, R0, #0x7000
426B94:  ORR.W           R0, R0, #0x800
426B98:  CMP.W           R0, #0x2800
426B9C:  BNE.W           loc_42726E
426BA0:  LDM.W           R4, {R1-R3}
426BA4:  MOV             R0, R10
426BA6:  BLX             j__ZN6CGlass25WindowRespondsToExplosionEP7CEntity7CVector; CGlass::WindowRespondsToExplosion(CEntity *,CVector)
426BAA:  B               loc_426BE8
426BAC:  LSLS            R0, R2, #0x1F
426BAE:  BEQ             loc_426C4E
426BB0:  LDR.W           R0, [R10]
426BB4:  MOVS            R1, #0
426BB6:  LDR             R2, [R0,#0x14]
426BB8:  MOV             R0, R10
426BBA:  BLX             R2
426BBC:  MOV             R0, R10; this
426BBE:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
426BC2:  B               loc_426C4E
426BC4:  DCFS 0.01
426BC8:  DCFS 1400.0
426BCC:  DCFS 300.0
426BD0:  DCFS 0.0
426BD4:  DCFS 0.2
426BD8:  DCFS 1100.0
426BDC:  DCFS -0.2
426BE0:  DCFS 3000.0
426BE4:  ADD.W           R11, R10, #0x26 ; '&'
426BE8:  LDR             R1, [SP,#0x168+var_110]
426BEA:  LDRSH.W         R0, [R11]
426BEE:  LDRH            R1, [R1]
426BF0:  CMP             R0, R1
426BF2:  BNE             loc_426C16
426BF4:  MOV.W           R0, #0xFFFFFFFF; int
426BF8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
426BFC:  LDR             R1, [R7,#arg_4]
426BFE:  CMP             R0, R1
426C00:  BNE             loc_426C16
426C02:  VMOV.F32        S0, #-2.0
426C06:  VLDR            S2, [R10,#0x158]
426C0A:  VMUL.F32        S0, S16, S0
426C0E:  VADD.F32        S0, S2, S0
426C12:  VSTR            S0, [R10,#0x158]
426C16:  LDR             R0, [R5]
426C18:  ADD             R6, SP, #0x168+var_84
426C1A:  LDR.W           R11, [SP,#0x168+var_140]
426C1E:  TST.W           R0, #0x40004
426C22:  BEQ             loc_426C4E
426C24:  VSUB.F32        S0, S20, S30
426C28:  LDR             R0, [R7,#arg_4]
426C2A:  STR             R0, [SP,#0x168+var_168]
426C2C:  MOVS            R0, #0x33 ; '3'
426C2E:  STR             R0, [SP,#0x168+var_164]; float
426C30:  MOV             R0, R10
426C32:  MOVS            R2, #0
426C34:  MOVS            R3, #0
426C36:  VADD.F32        S0, S0, S0
426C3A:  VDIV.F32        S0, S0, S20
426C3E:  VMIN.F32        D8, D0, D11
426C42:  VMUL.F32        S0, S16, S25
426C46:  VMOV            R1, S0
426C4A:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
426C4E:  LDR             R0, [R5]
426C50:  MOVS            R1, #0x40005
426C56:  ANDS            R0, R1
426C58:  TEQ.W           R0, #1
426C5C:  BNE.W           loc_4274C2
426C60:  VSUB.F32        S0, S20, S30
426C64:  VLDR            S4, [R10,#0x90]
426C68:  VMAX.F32        D1, D15, D14
426C6C:  VLDR            S12, =0.0
426C70:  VDIV.F32        S8, S4, S24
426C74:  VADD.F32        S0, S0, S0
426C78:  VDIV.F32        S6, S22, S2
426C7C:  VDIV.F32        S2, S0, S20
426C80:  VMOV            D16, D11
426C84:  VMUL.F32        S0, S21, S6
426C88:  VMIN.F32        D8, D1, D16
426C8C:  VMUL.F32        S2, S19, S6
426C90:  VMUL.F32        S6, S27, S6
426C94:  VMOV.F32        S22, S24
426C98:  VMUL.F32        S10, S16, S18
426C9C:  VMAX.F32        D3, D3, D6
426CA0:  VMUL.F32        S24, S10, S8
426CA4:  VSTR            S6, [SP,#0x168+var_68]
426CA8:  VSTR            S0, [SP,#0x168+var_70+4]
426CAC:  VSTR            S2, [SP,#0x168+var_70]
426CB0:  LDRB.W          R0, [R10,#0x3A]
426CB4:  AND.W           R1, R0, #7
426CB8:  CMP             R1, #4
426CBA:  BEQ.W           loc_4270A6
426CBE:  CMP             R1, #3
426CC0:  BEQ.W           loc_4271CC
426CC4:  CMP             R1, #2
426CC6:  BNE.W           loc_427260
426CCA:  VMOV.F32        S24, S22
426CCE:  LDR.W           R1, [R10,#0x5A4]
426CD2:  VLDR            S23, =0.2
426CD6:  VLDR            S25, =300.0
426CDA:  CMP             R1, #0xA
426CDC:  BNE             loc_426D60
426CDE:  LDR.W           R1, [R10,#0x464]
426CE2:  CBZ             R1, loc_426D60
426CE4:  MOVS            R0, #0
426CE6:  MOVS            R1, #0x33 ; '3'
426CE8:  ADD             R5, SP, #0x168+var_10C
426CEA:  STRD.W          R0, R0, [SP,#0x168+var_168]; float
426CEE:  STRD.W          R1, R0, [SP,#0x168+var_160]; int
426CF2:  MOVS            R1, #1
426CF4:  ADD.W           R2, R10, #0x48 ; 'H'; int
426CF8:  ADD             R3, SP, #0x168+var_70; int
426CFA:  STRD.W          R0, R0, [SP,#0x168+var_158]; int
426CFE:  STRD.W          R1, R0, [SP,#0x168+var_150]; int
426D02:  MOV             R0, R5; int
426D04:  MOV             R1, R10; this
426D06:  BLX             j__ZN18CEventKnockOffBikeC2EP8CVehicleRK7CVectorS4_ff11eWeaponTypeaiP4CPedbb; CEventKnockOffBike::CEventKnockOffBike(CVehicle *,CVector const&,CVector const&,float,float,eWeaponType,signed char,int,CPed *,bool,bool)
426D0A:  LDR.W           R0, [R10,#0x464]
426D0E:  MOV             R1, R5; CEvent *
426D10:  MOVS            R2, #0; bool
426D12:  LDR.W           R0, [R0,#0x440]
426D16:  ADDS            R0, #0x68 ; 'h'; this
426D18:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
426D1C:  LDR.W           R0, [R10,#0x464]
426D20:  LDRD.W          R1, R2, [SP,#0x168+var_70]
426D24:  STRD.W          R1, R2, [SP,#0x168+var_A0]
426D28:  ADD             R1, SP, #0x168+var_A0
426D2A:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
426D2E:  VLDR            S0, =1100.0
426D32:  MOVS            R2, #3
426D34:  LDR.W           R1, [R10,#0x464]
426D38:  VMUL.F32        S0, S16, S0
426D3C:  VMUL.F32        S0, S0, S26
426D40:  VCVT.S32.F32    S0, S0
426D44:  STRD.W          R2, R0, [SP,#0x168+var_168]
426D48:  MOV             R0, R1
426D4A:  MOV             R1, R10
426D4C:  MOVS            R2, #0x33 ; '3'
426D4E:  VMOV            R3, S0
426D52:  BLX             j__ZN7CWeapon19GenerateDamageEventEP4CPedP7CEntity11eWeaponTypei14ePedPieceTypesi; CWeapon::GenerateDamageEvent(CPed *,CEntity *,eWeaponType,int,ePedPieceTypes,int)
426D56:  MOV             R0, R5; this
426D58:  BLX             j__ZN18CEventKnockOffBikeD2Ev; CEventKnockOffBike::~CEventKnockOffBike()
426D5C:  LDRB.W          R0, [R10,#0x3A]
426D60:  AND.W           R0, R0, #0xF8
426D64:  CMP             R0, #0x10
426D66:  ITT EQ
426D68:  MOVEQ           R0, R10; this
426D6A:  BLXEQ           j__ZN8CCarCtrl26SwitchVehicleToRealPhysicsEP8CVehicle; CCarCtrl::SwitchVehicleToRealPhysics(CVehicle *)
426D6E:  VLDR            S0, =1100.0
426D72:  MOVS            R0, #0
426D74:  LDR             R1, [R7,#arg_4]
426D76:  MOVS            R2, #0x33 ; '3'
426D78:  VMUL.F32        S0, S16, S0
426D7C:  STR.W           R11, [SP,#0x168+var_140]
426D80:  STRD.W          R0, R0, [SP,#0x168+var_168]
426D84:  STR             R0, [SP,#0x168+var_160]
426D86:  MOV             R0, R10
426D88:  VMUL.F32        S0, S0, S26
426D8C:  VMOV            R3, S0
426D90:  BLX             j__ZN8CVehicle13InflictDamageEP7CEntity11eWeaponTypef7CVector; CVehicle::InflictDamage(CEntity *,eWeaponType,float,CVector)
426D94:  LDR             R0, [R7,#arg_8]
426D96:  CMP             R0, #1
426D98:  BNE             loc_426DB6
426D9A:  LDRH.W          R0, [R10,#0x4EE]
426D9E:  CBZ             R0, loc_426DB6
426DA0:  MOV             R1, #0xCCCCCCCD
426DA8:  UMULL.W         R0, R1, R0, R1
426DAC:  MOVS            R0, #1
426DAE:  ADD.W           R0, R0, R1,LSR#3
426DB2:  STRH.W          R0, [R10,#0x4EE]
426DB6:  VNEG.F32        S0, S21
426DBA:  ADD             R5, SP, #0x168+var_10C
426DBC:  VNEG.F32        S2, S19
426DC0:  ADD             R1, SP, #0x168+var_A0; CMatrix *
426DC2:  VNEG.F32        S4, S27
426DC6:  MOV             R0, R5; CVector *
426DC8:  VSTR            S0, [SP,#0x168+var_9C]
426DCC:  VSTR            S2, [SP,#0x168+var_A0]
426DD0:  VSTR            S4, [SP,#0x168+var_98]
426DD4:  LDR.W           R2, [R10,#0x14]
426DD8:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
426DDC:  VMOV            R1, S30; float
426DE0:  MOV.W           R11, #0
426DE4:  MOVS            R0, #0xFF
426DE6:  STR.W           R11, [SP,#0x168+var_168]; unsigned __int8
426DEA:  STR             R0, [SP,#0x168+var_164]; unsigned __int8
426DEC:  MOV             R0, R6; this
426DEE:  MOV             R2, R5; CVector *
426DF0:  MOVS            R3, #0; unsigned __int8
426DF2:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
426DF6:  MOV             R0, R10; this
426DF8:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
426DFC:  MOV             R5, R0
426DFE:  MOV             R0, R10; this
426E00:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
426E04:  ADD.W           R2, R0, #0xC; CVector *
426E08:  MOVS            R1, #0xFF
426E0A:  ADD             R0, SP, #0x168+var_A0; this
426E0C:  STR.W           R11, [SP,#0x168+var_168]; unsigned __int8
426E10:  STR             R1, [SP,#0x168+var_164]; unsigned __int8
426E12:  MOV             R1, R5; CVector *
426E14:  MOVS            R3, #0; unsigned __int8
426E16:  BLX             j__ZN7CColBox3SetERK7CVectorS2_hhh; CColBox::Set(CVector const&,CVector const&,uchar,uchar,uchar)
426E1A:  MOVW            R0, #0x5000
426E1E:  ADD             R1, SP, #0x168+var_A0
426E20:  MOVT            R0, #0x47C3
426E24:  ADD             R2, SP, #0x168+var_10C
426E26:  ADD             R3, SP, #0x168+var_A4
426E28:  STRD.W          R11, R11, [SP,#0x168+var_B0]
426E2C:  STRD.W          R11, R0, [SP,#0x168+var_A8]
426E30:  MOV             R0, R6
426E32:  BLX             j__ZN10CCollision16ProcessSphereBoxERK10CColSphereRK7CColBoxR9CColPointRf; CCollision::ProcessSphereBox(CColSphere const&,CColBox const&,CColPoint &,float &)
426E36:  LDR.W           R11, [SP,#0x168+var_140]
426E3A:  CMP             R0, #1
426E3C:  BNE.W           loc_427014
426E40:  ADD             R5, SP, #0x168+var_C0
426E42:  LDR.W           R1, [R10,#0x14]; CVector *
426E46:  ADD             R2, SP, #0x168+var_10C
426E48:  MOV             R0, R5; CMatrix *
426E4A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
426E4E:  VLDR            S0, [SP,#0x168+var_FC]
426E52:  ADD             R2, SP, #0x168+var_CC
426E54:  VLDR            S2, [SP,#0x168+var_F8]
426E58:  VLDR            S4, [SP,#0x168+var_F4]
426E5C:  VNEG.F32        S0, S0
426E60:  VNEG.F32        S2, S2
426E64:  VLDR            D16, [SP,#0x168+var_C0]
426E68:  VNEG.F32        S4, S4
426E6C:  LDR             R0, [SP,#0x168+var_B8]
426E6E:  STR             R0, [SP,#0x168+var_A8]
426E70:  MOV             R0, R5; CMatrix *
426E72:  VSTR            D16, [SP,#0x168+var_B0]
426E76:  LDR.W           R1, [R10,#0x14]; CVector *
426E7A:  VSTR            S0, [SP,#0x168+var_CC]
426E7E:  VSTR            S2, [SP,#0x168+var_C8]
426E82:  VSTR            S4, [SP,#0x168+var_C4]
426E86:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
426E8A:  VLDR            D16, [SP,#0x168+var_C0]
426E8E:  LDR             R0, [SP,#0x168+var_B8]
426E90:  STR             R0, [SP,#0x168+var_68]
426E92:  VSTR            D16, [SP,#0x168+var_70]
426E96:  VLDR            S0, [SP,#0x168+var_68]
426E9A:  VLDR            S2, =-0.2
426E9E:  VCMPE.F32       S0, S2
426EA2:  VMRS            APSR_nzcv, FPSCR
426EA6:  BLT             loc_426EC0
426EA8:  VCMPE.F32       S0, S23
426EAC:  VMRS            APSR_nzcv, FPSCR
426EB0:  BGE             loc_426EC4
426EB2:  VCMPE.F32       S0, #0.0
426EB6:  VMRS            APSR_nzcv, FPSCR
426EBA:  BLE             loc_426EC4
426EBC:  VADD.F32        S2, S0, S23
426EC0:  VSTR            S2, [SP,#0x168+var_68]
426EC4:  LDR             R0, [SP,#0x168+var_124]
426EC6:  VMOV.F32        S21, S26
426ECA:  VLDR            S16, [SP,#0x168+var_B0]
426ECE:  LDR             R1, [SP,#0x168+var_128]
426ED0:  VLDR            D12, [R0]
426ED4:  VMOV            R2, S16
426ED8:  LDR.W           R0, [R10,#0x14]
426EDC:  VMOV.32         R3, D12[0]
426EE0:  VLDR            D13, [R1]
426EE4:  CMP             R0, #0
426EE6:  MOV             R1, R8
426EE8:  VLDR            S30, [R10,#0x90]
426EEC:  VLDR            S17, [R4]
426EF0:  IT NE
426EF2:  ADDNE.W         R1, R0, #0x30 ; '0'
426EF6:  ADD             R0, SP, #0x168+var_C0
426EF8:  VLDR            D14, [R1,#4]
426EFC:  VLDR            S19, [R1]
426F00:  MOV             R1, R10
426F02:  VST1.32         {D12[1]}, [SP@32,#0x168+var_168]
426F06:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
426F0A:  VADD.F32        S0, S16, S19
426F0E:  VLDR            S2, =0.2
426F12:  VADD.F32        D16, D12, D14
426F16:  VLDR            S4, [SP,#0x168+var_70+4]
426F1A:  VMOV.F32        S1, S2
426F1E:  VLDR            S12, [SP,#0x168+var_C0+4]
426F22:  VLDR            S10, [SP,#0x168+var_C0]
426F26:  VMOV.F32        S24, S22
426F2A:  VMUL.F32        S12, S12, S4
426F2E:  VLDR            S14, [SP,#0x168+var_B8]
426F32:  VSUB.F32        D16, D16, D13
426F36:  LDR             R0, [R7,#arg_0]
426F38:  VMOV.F32        S26, S21
426F3C:  VLDR            S28, =0.01
426F40:  VSUB.F32        S0, S0, S17
426F44:  CMP             R10, R0
426F46:  VMOV.F32        S16, #1.0
426F4A:  VLDR            S25, =300.0
426F4E:  VMUL.F32        D1, D16, D16
426F52:  VMUL.F32        S0, S0, S0
426F56:  VMOV.F64        D16, D8
426F5A:  VADD.F32        S0, S0, S2
426F5E:  VADD.F32        S0, S0, S3
426F62:  VLDR            S2, =3000.0
426F66:  VDIV.F32        S6, S30, S2
426F6A:  VSQRT.F32       S0, S0
426F6E:  VSUB.F32        S0, S20, S0
426F72:  VLDR            S2, [SP,#0x168+var_68]
426F76:  VMIN.F32        D3, D3, D16
426F7A:  VMUL.F32        S14, S14, S2
426F7E:  VMUL.F32        S6, S6, S18
426F82:  VADD.F32        S0, S0, S0
426F86:  VDIV.F32        S8, S0, S20
426F8A:  VLDR            S0, [SP,#0x168+var_70]
426F8E:  VMIN.F32        D4, D4, D16
426F92:  VMUL.F32        S10, S10, S0
426F96:  VADD.F32        S10, S10, S12
426F9A:  VMUL.F32        S12, S8, S1
426F9E:  VADD.F32        S10, S10, S14
426FA2:  IT EQ
426FA4:  VMOVEQ.F32      S8, S12
426FA8:  VMUL.F32        S16, S6, S8
426FAC:  VLDR            S6, [R10,#0x90]
426FB0:  VMOV.F32        S8, #3.0
426FB4:  VMUL.F32        S6, S6, S10
426FB8:  VMUL.F32        S8, S16, S8
426FBC:  VCMPE.F32       S6, S8
426FC0:  VMRS            APSR_nzcv, FPSCR
426FC4:  ITTT GT
426FC6:  VSUBGT.F32      S6, S16, S6
426FCA:  VLDRGT          S8, =0.0
426FCE:  VMAXGT.F32      D8, D3, D4
426FD2:  VMUL.F32        S4, S16, S4
426FD6:  VMUL.F32        S6, S16, S0
426FDA:  VMUL.F32        S0, S16, S2
426FDE:  VSTR            S4, [SP,#0x168+var_70+4]
426FE2:  VSTR            S6, [SP,#0x168+var_70]
426FE6:  VSTR            S0, [SP,#0x168+var_68]
426FEA:  LDRB.W          R0, [R10,#0x44]
426FEE:  LSLS            R0, R0, #0x1D
426FF0:  BMI             loc_427014
426FF2:  VMOV            R1, S6
426FF6:  LDRD.W          R0, LR, [SP,#0x168+var_B0]
426FFA:  VMOV            R2, S4
426FFE:  LDR             R5, [SP,#0x168+var_A8]
427000:  VMOV            R3, S0
427004:  STRD.W          R0, LR, [SP,#0x168+var_168]
427008:  MOVS            R0, #1
42700A:  STR             R5, [SP,#0x168+var_160]
42700C:  STR             R0, [SP,#0x168+var_15C]
42700E:  MOV             R0, R10
427010:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
427014:  LDR.W           R0, [R10,#0x5A4]
427018:  CMP             R0, #4
42701A:  BNE             loc_42709E
42701C:  LDR.W           R0, [R10,#0x14]
427020:  MOVS            R1, #0
427022:  VLDR            S0, [SP,#0x168+var_B0]
427026:  MOVT            R1, #0x447A
42702A:  CMP             R0, #0
42702C:  VLDR            S2, [SP,#0x168+var_B0+4]
427030:  VLDR            S4, [SP,#0x168+var_A8]
427034:  IT NE
427036:  ADDNE.W         R8, R0, #0x30 ; '0'
42703A:  VLDR            S6, [R8]
42703E:  MOVS            R2, #0
427040:  LDR             R3, [R7,#arg_4]
427042:  VADD.F32        S0, S6, S0
427046:  VSTR            S0, [SP,#0x168+var_B0]
42704A:  VLDR            S0, [R8,#4]
42704E:  VADD.F32        S0, S0, S2
427052:  VLDR            S2, [SP,#0x168+var_F8]
427056:  VNEG.F32        S2, S2
42705A:  VSTR            S0, [SP,#0x168+var_B0+4]
42705E:  VLDR            S0, [R8,#8]
427062:  VADD.F32        S0, S0, S4
427066:  VLDR            S4, [SP,#0x168+var_F4]
42706A:  VNEG.F32        S4, S4
42706E:  VSTR            S0, [SP,#0x168+var_A8]
427072:  VLDR            S0, [SP,#0x168+var_FC]
427076:  VNEG.F32        S0, S0
42707A:  VSTR            S0, [SP,#0x168+var_C0]
42707E:  VSTR            S2, [SP,#0x168+var_C0+4]
427082:  VSTR            S4, [SP,#0x168+var_B8]
427086:  LDR.W           R0, [R10]
42708A:  LDR.W           R5, [R0,#0xE4]
42708E:  ADD             R0, SP, #0x168+var_B0
427090:  STR             R0, [SP,#0x168+var_168]
427092:  ADD             R0, SP, #0x168+var_C0
427094:  STR             R0, [SP,#0x168+var_164]
427096:  MOVS            R0, #0x33 ; '3'
427098:  STR             R0, [SP,#0x168+var_160]
42709A:  MOV             R0, R10
42709C:  BLX             R5
42709E:  VMOV.F32        S22, #1.0
4270A2:  ADD             R6, SP, #0x168+var_84
4270A4:  B               loc_4274C2
4270A6:  LDRB.W          R0, [R10,#0x44]
4270AA:  LDR             R5, [R7,#arg_4]
4270AC:  TST.W           R0, #0x84
4270B0:  BNE             loc_4271A6
4270B2:  VLDR            S8, =0.1
4270B6:  VCMPE.F32       S6, S8
4270BA:  VMRS            APSR_nzcv, FPSCR
4270BE:  BGE             loc_4270CE
4270C0:  VLDR            S6, =0.2
4270C4:  MOV             R0, #0x3E4CCCCD
4270CC:  STR             R0, [SP,#0x168+var_68]
4270CE:  VLDR            S8, [R10,#0x48]
4270D2:  MOV             R0, R10
4270D4:  VLDR            S10, [R10,#0x4C]
4270D8:  VMUL.F32        S8, S8, S2
4270DC:  VLDR            S12, [R10,#0x50]
4270E0:  VMUL.F32        S10, S10, S0
4270E4:  VMUL.F32        S12, S12, S6
4270E8:  VADD.F32        S8, S8, S10
4270EC:  VMOV.F32        S10, #4.0
4270F0:  VADD.F32        S8, S8, S12
4270F4:  VMUL.F32        S10, S24, S10
4270F8:  VMUL.F32        S4, S4, S8
4270FC:  VCMPE.F32       S4, S10
427100:  VMRS            APSR_nzcv, FPSCR
427104:  ITTT GT
427106:  VSUBGT.F32      S4, S24, S4
42710A:  VLDRGT          S8, =0.0
42710E:  VMAXGT.F32      D12, D2, D4
427112:  VMUL.F32        S0, S24, S0
427116:  VMUL.F32        S2, S24, S2
42711A:  VMUL.F32        S4, S24, S6
42711E:  VMOV            R2, S0
427122:  VSTR            S0, [SP,#0x168+var_70+4]
427126:  VMOV            R1, S2
42712A:  VSTR            S2, [SP,#0x168+var_70]
42712E:  VMOV            R3, S4
427132:  VSTR            S4, [SP,#0x168+var_68]
427136:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
42713A:  VLDR            S0, [R10,#0x90]
42713E:  VMOV.F32        S8, #1.0
427142:  VLDR            S2, [R10,#0x94]
427146:  VLDR            S4, [SP,#0x168+var_70+4]
42714A:  VDIV.F32        S0, S2, S0
42714E:  LDRSH.W         R0, [R10,#0x26]
427152:  LDR             R3, [SP,#0x168+var_12C]
427154:  LDR.W           R0, [R3,R0,LSL#2]
427158:  LDR             R0, [R0,#0x2C]
42715A:  VMIN.F32        D0, D0, D4
42715E:  VLDR            S2, [SP,#0x168+var_70]
427162:  VLDR            S6, [SP,#0x168+var_68]
427166:  VMOV.F32        S8, #0.5
42716A:  VMUL.F32        S2, S2, S0
42716E:  VMUL.F32        S4, S4, S0
427172:  VMUL.F32        S0, S0, S6
427176:  VLDR            S6, [R0,#0x24]
42717A:  MOVS            R0, #0
42717C:  VMUL.F32        S6, S6, S8
427180:  VMOV            R1, S2
427184:  VSTR            S2, [SP,#0x168+var_70]
427188:  VMOV            R2, S4
42718C:  VSTR            S4, [SP,#0x168+var_70+4]
427190:  VMOV            R3, S0
427194:  VSTR            S0, [SP,#0x168+var_68]
427198:  VSTR            S6, [SP,#0x168+var_160]
42719C:  STRD.W          R0, R0, [SP,#0x168+var_168]
4271A0:  MOV             R0, R10
4271A2:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
4271A6:  VLDR            S25, =300.0
4271AA:  MOVS            R0, #0x33 ; '3'
4271AC:  STR             R5, [SP,#0x168+var_168]
4271AE:  MOVS            R2, #0
4271B0:  VMUL.F32        S0, S16, S25
4271B4:  STR             R0, [SP,#0x168+var_164]
4271B6:  MOV             R0, R10
4271B8:  MOVS            R3, #0
4271BA:  VMOV            R1, S0
4271BE:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4271C2:  VMOV.F32        S24, S22
4271C6:  VMOV.F32        S22, #1.0
4271CA:  B               loc_4274C2
4271CC:  VNEG.F32        S0, S0
4271D0:  ADD             R1, SP, #0x168+var_10C
4271D2:  VNEG.F32        S2, S2
4271D6:  MOV             R0, R10
4271D8:  VSTR            S0, [SP,#0x168+var_108]
4271DC:  VSTR            S2, [SP,#0x168+var_10C]
4271E0:  BLX             j__ZN4CPed17GetLocalDirectionERK9CVector2D; CPed::GetLocalDirection(CVector2D const&)
4271E4:  MOV             R1, R0
4271E6:  LDR.W           R0, [R10,#0x100]
4271EA:  CMP             R0, #0
4271EC:  BEQ             loc_4272D2
4271EE:  LDRB.W          R0, [R0,#0x3A]
4271F2:  CMP             R0, #0x2A ; '*'
4271F4:  BNE.W           loc_4273A0
4271F8:  MOVS            R0, #3
4271FA:  LDR.W           R8, [R7,#arg_4]
4271FE:  STR             R0, [SP,#0x168+var_168]
427200:  MOVS            R0, #0
427202:  MOVS            R2, #0
427204:  STR             R0, [SP,#0x168+var_164]; int
427206:  ADD             R0, SP, #0x168+var_A0
427208:  MOV             R5, R1
42720A:  MOV             R1, R8
42720C:  MOVT            R2, #0x447A
427210:  MOVS            R3, #0x33 ; '3'
427212:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
427216:  LDR             R1, [SP,#0x168+var_130]
427218:  MOVS            R3, #3
42721A:  LDR.W           R0, [R10,#0x484]
42721E:  LDR             R2, [R1]; int
427220:  UXTB            R1, R5
427222:  UBFX.W          R0, R0, #8, #1
427226:  STRD.W          R3, R1, [SP,#0x168+var_168]; int
42722A:  MOVS            R1, #0
42722C:  MOVS            R3, #0x33 ; '3'; int
42722E:  STRD.W          R1, R0, [SP,#0x168+var_160]; int
427232:  ADD             R0, SP, #0x168+var_10C; int
427234:  MOV             R1, R8; this
427236:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
42723A:  MOV             R1, R10; CPed *
42723C:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
427240:  CMP             R0, #1
427242:  BNE.W           loc_4273B6
427246:  ADD.W           R8, SP, #0x168+var_A0
42724A:  MOV             R1, R10; this
42724C:  MOV             R2, R11
42724E:  MOVS            R3, #1
427250:  MOV             R0, R8; int
427252:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
427256:  VMOV.F32        S24, S22
42725A:  VLDR            S25, =300.0
42725E:  B               loc_4273C8
427260:  VMOV.F32        S24, S22
427264:  VLDR            S25, =300.0
427268:  VMOV.F32        S22, #1.0
42726C:  B               loc_4274C2
42726E:  LDR.W           R0, [R10]
427272:  MOVS            R1, #0
427274:  LDR             R2, [R0,#0x14]
427276:  MOV             R0, R10
427278:  BLX             R2
42727A:  MOV             R0, R10; this
42727C:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
427280:  LDR             R0, [SP,#0x168+var_118]
427282:  LDRSH.W         R1, [R10,#0x26]
427286:  LDRH            R0, [R0]
427288:  CMP             R1, R0
42728A:  BNE             loc_4272AA
42728C:  LDRB.W          R0, [R10,#0x144]
427290:  LSLS            R0, R0, #0x19
427292:  BMI             loc_4272AA
427294:  LDR.W           R0, [R10,#0x14]
427298:  MOV             R1, R8
42729A:  CMP             R0, #0
42729C:  IT NE
42729E:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
4272A2:  LDR             R0, [SP,#0x168+var_13C]; this
4272A4:  BLX             j__ZN4Fx_c19TriggerWaterHydrantER7CVector; Fx_c::TriggerWaterHydrant(CVector &)
4272A8:  B               loc_4272C4
4272AA:  LDRB.W          R0, [R10,#0x3A]
4272AE:  AND.W           R0, R0, #7
4272B2:  CMP             R0, #4
4272B4:  BNE.W           loc_426BE8
4272B8:  LDR.W           R0, [R10,#0x164]
4272BC:  LDRB            R0, [R0,#0x1F]
4272BE:  CMP             R0, #0
4272C0:  BNE.W           loc_426BE8
4272C4:  LDR.W           R0, [R10,#0x144]
4272C8:  ORR.W           R0, R0, #0x40 ; '@'
4272CC:  STR.W           R0, [R10,#0x144]
4272D0:  B               loc_426BE8
4272D2:  VLDR            S4, [SP,#0x168+var_70]
4272D6:  ADDW            R6, R10, #0x484
4272DA:  VLDR            S8, [R10,#0x48]
4272DE:  VLDR            S6, [SP,#0x168+var_70+4]
4272E2:  VLDR            S10, [R10,#0x4C]
4272E6:  VMUL.F32        S8, S8, S4
4272EA:  VLDR            S2, [SP,#0x168+var_68]
4272EE:  VMUL.F32        S10, S10, S6
4272F2:  VLDR            S12, [R10,#0x50]
4272F6:  VLDR            S0, [R10,#0x90]
4272FA:  VMUL.F32        S12, S12, S2
4272FE:  STRD.W          R1, R11, [SP,#0x168+var_144]
427302:  VADD.F32        S8, S8, S10
427306:  VADD.F32        S10, S8, S12
42730A:  VMOV.F32        S8, #0.25
42730E:  VMUL.F32        S10, S0, S10
427312:  VMUL.F32        S8, S0, S8
427316:  VMIN.F32        D4, D12, D4
42731A:  VLDR            S25, =300.0
42731E:  VMOV.F32        S24, S22
427322:  VMOV.F32        S22, #1.0
427326:  VADD.F32        S12, S8, S8
42732A:  VCMPE.F32       S10, S12
42732E:  VMRS            APSR_nzcv, FPSCR
427332:  ITTT GT
427334:  VSUBGT.F32      S8, S8, S10
427338:  VLDRGT          S10, =0.0
42733C:  VMAXGT.F32      D4, D4, D5
427340:  VMOV.F32        S10, #4.0
427344:  VMUL.F32        S6, S8, S6
427348:  VMUL.F32        S4, S8, S4
42734C:  VMUL.F32        S2, S8, S2
427350:  VMOV            R2, S6
427354:  VSTR            S6, [SP,#0x168+var_70+4]
427358:  VMOV            R1, S4
42735C:  VSTR            S4, [SP,#0x168+var_70]
427360:  VSTR            S2, [SP,#0x168+var_68]
427364:  LDR.W           R0, [R10,#0x484]
427368:  TST.W           R0, #1
42736C:  ITT NE
42736E:  LDRBNE          R3, [R5]
427370:  MOVSNE.W        R3, R3,LSL#31
427374:  BNE             loc_4273F0
427376:  VLDR            S4, =0.008
42737A:  LDR             R0, [SP,#0x168+var_138]
42737C:  VMUL.F32        S0, S0, S4
427380:  VLDR            S4, [R0]
427384:  VMUL.F32        S0, S0, S4
427388:  VADD.F32        S0, S2, S0
42738C:  VSTR            S0, [SP,#0x168+var_68]
427390:  B               loc_427408
427392:  ALIGN 4
427394:  DCFS 0.0
427398:  DCFS 0.1
42739C:  DCFS 0.2
4273A0:  VMOV.F32        S24, S22
4273A4:  STRD.W          R1, R11, [SP,#0x168+var_144]
4273A8:  ADDW            R6, R10, #0x484
4273AC:  VMOV.F32        S22, #1.0
4273B0:  VLDR            S25, =300.0
4273B4:  B               loc_427412
4273B6:  VMOV.F32        S24, S22
4273BA:  VLDR            S25, =300.0
4273BE:  ADD.W           R8, SP, #0x168+var_A0
4273C2:  MOVS            R0, #1
4273C4:  STRB.W          R0, [SP,#0x168+var_CE]
4273C8:  LDR.W           R0, [R10,#0x440]
4273CC:  ADD             R5, SP, #0x168+var_10C
4273CE:  MOVS            R2, #0; bool
4273D0:  ADDS            R0, #0x68 ; 'h'; this
4273D2:  MOV             R1, R5; CEvent *
4273D4:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
4273D8:  MOV             R0, R5; this
4273DA:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
4273DE:  MOV             R0, R8; this
4273E0:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
4273E4:  VMOV.F32        S22, #1.0
4273E8:  LDR             R2, [R7,#arg_4]
4273EA:  CMP             R2, #0
4273EC:  BNE             loc_4274A4
4273EE:  B               loc_4274C2
4273F0:  VADD.F32        S0, S2, S10
4273F4:  ADD.W           R12, R10, #0x488
4273F8:  BIC.W           R0, R0, #1
4273FC:  LDM.W           R12, {R3,R5,R12}
427400:  VSTR            S0, [SP,#0x168+var_68]
427404:  STM.W           R6, {R0,R3,R5,R12}
427408:  VMOV            R3, S0
42740C:  MOV             R0, R10
42740E:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
427412:  VLDR            S0, =250.0
427416:  ADD             R0, SP, #0x168+var_A0
427418:  LDR             R5, [R7,#arg_4]
42741A:  MOV.W           R11, #3
42741E:  VMUL.F32        S0, S16, S0
427422:  MOV.W           R8, #0
427426:  MOVS            R3, #0x33 ; '3'
427428:  STR.W           R11, [SP,#0x168+var_168]
42742C:  MOV             R1, R5
42742E:  STR.W           R8, [SP,#0x168+var_164]; int
427432:  VMOV            R2, S0
427436:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
42743A:  LDR             R1, [SP,#0x168+var_11C]
42743C:  MOVS            R3, #0x33 ; '3'; int
42743E:  LDR             R0, [R6]
427440:  LDR             R2, [R1]; int
427442:  UBFX.W          R0, R0, #8, #1
427446:  LDR             R1, [SP,#0x168+var_144]
427448:  UXTB            R1, R1
42744A:  STRD.W          R11, R1, [SP,#0x168+var_168]; int
42744E:  MOV             R1, R5; this
427450:  STRD.W          R8, R0, [SP,#0x168+var_160]; int
427454:  ADD             R0, SP, #0x168+var_10C; int
427456:  MOV             R8, R5
427458:  BLX             j__ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb; CEventDamage::CEventDamage(CEntity *,uint,eWeaponType,ePedPieceTypes,uchar,bool,bool)
42745C:  MOV             R1, R10; CPed *
42745E:  BLX             j__ZNK12CEventDamage10AffectsPedEP4CPed; CEventDamage::AffectsPed(CPed *)
427462:  CMP             R0, #1
427464:  BNE             loc_427476
427466:  ADD             R6, SP, #0x168+var_A0
427468:  LDR             R2, [SP,#0x168+var_140]
42746A:  MOV             R1, R10; this
42746C:  MOVS            R3, #1
42746E:  MOV             R0, R6; int
427470:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
427474:  B               loc_42747E
427476:  ADD             R6, SP, #0x168+var_A0
427478:  MOVS            R0, #1
42747A:  STRB.W          R0, [SP,#0x168+var_CE]
42747E:  LDR.W           R0, [R10,#0x440]
427482:  ADD             R5, SP, #0x168+var_10C
427484:  MOVS            R2, #0; bool
427486:  ADDS            R0, #0x68 ; 'h'; this
427488:  MOV             R1, R5; CEvent *
42748A:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
42748E:  MOV             R0, R5; this
427490:  BLX             j__ZN12CEventDamageD2Ev; CEventDamage::~CEventDamage()
427494:  MOV             R0, R6; this
427496:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
42749A:  LDR.W           R11, [SP,#0x168+var_140]
42749E:  ADD             R6, SP, #0x168+var_84
4274A0:  MOV             R2, R8
4274A2:  CBZ             R2, loc_4274C2
4274A4:  LDRB.W          R0, [R2,#0x3A]
4274A8:  AND.W           R0, R0, #7
4274AC:  CMP             R0, #3
4274AE:  BNE             loc_4274C2
4274B0:  LDR.W           R0, [R10,#0x59C]
4274B4:  MOV             R1, R10
4274B6:  CMP             R0, #6
4274B8:  ITE EQ
4274BA:  MOVEQ           R0, #5
4274BC:  MOVNE           R0, #4
4274BE:  BLX             j__ZN6CCrime11ReportCrimeE10eCrimeTypeP7CEntityP4CPed; CCrime::ReportCrime(eCrimeType,CEntity *,CPed *)
4274C2:  LDR             R5, [SP,#0x168+var_13C]
4274C4:  CMP.W           R9, #0
4274C8:  BNE.W           loc_426A9C
4274CC:  ADD             SP, SP, #0x108
4274CE:  VPOP            {D8-D15}
4274D2:  ADD             SP, SP, #4
4274D4:  POP.W           {R8-R11}
4274D8:  POP             {R4-R7,PC}
