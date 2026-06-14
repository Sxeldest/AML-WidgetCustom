; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight11FightHitObjEP4CPedP7CObjectR7CVectorS5_sh
; Address            : 0x4DACB8 - 0x4DAED6
; =========================================================

4DACB8:  PUSH            {R4-R7,LR}
4DACBA:  ADD             R7, SP, #0xC
4DACBC:  PUSH.W          {R8,R9,R11}
4DACC0:  VPUSH           {D8}
4DACC4:  SUB             SP, SP, #0x20
4DACC6:  MOV             R4, R0
4DACC8:  LDR             R0, [R7,#arg_0]
4DACCA:  MOV             R5, R1
4DACCC:  LDR             R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DACDA)
4DACCE:  MOV             R6, R2
4DACD0:  MOV             R8, R3
4DACD2:  VLDR            D16, [R0]
4DACD6:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DACD8:  LDR             R0, [R0,#8]
4DACDA:  STR             R0, [SP,#0x40+var_28]
4DACDC:  VSTR            D16, [SP,#0x40+var_30]
4DACE0:  LDRSB.W         R0, [R4,#0x24]
4DACE4:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4DACE6:  LDRSB.W         R2, [R4,#0x25]
4DACEA:  ADD.W           R0, R0, R0,LSL#4
4DACEE:  ADD.W           R0, R1, R0,LSL#3
4DACF2:  MOV             R1, #0xFFFFFE35
4DACF6:  ADD             R0, R2
4DACF8:  LDRB            R0, [R0,R1]
4DACFA:  VMOV            S0, R0
4DACFE:  MOV             R0, R5; this
4DAD00:  VCVT.F32.U32    S16, S0
4DAD04:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DAD08:  CMP             R0, #1
4DAD0A:  BNE             loc_4DAD24
4DAD0C:  LDR.W           R0, [R5,#0x444]
4DAD10:  LDRB.W          R0, [R0,#0x34]
4DAD14:  LSLS            R0, R0, #0x1E
4DAD16:  BMI             loc_4DAD44
4DAD18:  MOVS            R0, #4
4DAD1A:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
4DAD1E:  VMOV            S0, R0
4DAD22:  B               loc_4DAD52
4DAD24:  LDRSB.W         R0, [R5,#0x71C]
4DAD28:  RSB.W           R0, R0, R0,LSL#3
4DAD2C:  ADD.W           R0, R5, R0,LSL#2
4DAD30:  LDR.W           R0, [R0,#0x5A4]
4DAD34:  CBZ             R0, loc_4DAD4A
4DAD36:  CMP             R0, #1
4DAD38:  ITT EQ
4DAD3A:  VMOVEQ.F32      S0, #1.5
4DAD3E:  VMULEQ.F32      S16, S16, S0
4DAD42:  B               loc_4DAD56
4DAD44:  VLDR            S16, =50.0
4DAD48:  B               loc_4DAD56
4DAD4A:  LDR.W           R0, [R5,#0x5A0]
4DAD4E:  VLDR            S0, [R0,#0x28]
4DAD52:  VMUL.F32        S16, S0, S16
4DAD56:  LDRB.W          R0, [R6,#0x148]
4DAD5A:  CMP             R0, #0xC8
4DAD5C:  BCS             loc_4DAE32
4DAD5E:  LDRB.W          R0, [R6,#0x44]
4DAD62:  LSLS            R0, R0, #0x1D
4DAD64:  BMI             loc_4DAE32
4DAD66:  LDR.W           R1, [R6,#0x164]
4DAD6A:  VLDR            S0, =99.9
4DAD6E:  VLDR            S2, [R1,#0x18]
4DAD72:  VCMPE.F32       S2, S0
4DAD76:  VMRS            APSR_nzcv, FPSCR
4DAD7A:  BGE             loc_4DAE32
4DAD7C:  MOV             R9, R6
4DAD7E:  LDR.W           R0, [R9,#0x1C]!
4DAD82:  TST.W           R0, #0x40004
4DAD86:  BEQ             loc_4DADAA
4DAD88:  VLDR            S0, [R1,#0x14]
4DAD8C:  VCMPE.F32       S0, #0.0
4DAD90:  VMRS            APSR_nzcv, FPSCR
4DAD94:  BGT             loc_4DADAA
4DAD96:  LDR             R0, [R6]
4DAD98:  MOVS            R1, #0
4DAD9A:  LDR             R2, [R0,#0x14]
4DAD9C:  MOV             R0, R6
4DAD9E:  BLX             R2
4DADA0:  MOV             R0, R6; this
4DADA2:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
4DADA6:  LDR.W           R0, [R9]
4DADAA:  TST.W           R0, #0x40004
4DADAE:  BNE             loc_4DAE32
4DADB0:  VMOV.F32        S2, #-0.5
4DADB4:  LDR             R1, [R6,#0x44]
4DADB6:  VLDR            S0, =-0.1
4DADBA:  TST.W           R1, #0x80
4DADBE:  LDR.W           R12, [R6,#0x14]
4DADC2:  ADD.W           R0, R12, #0x30 ; '0'
4DADC6:  IT EQ
4DADC8:  VMOVEQ.F32      S0, S2
4DADCC:  VLDR            S2, [SP,#0x40+var_30]
4DADD0:  VLDR            S4, [SP,#0x40+var_30+4]
4DADD4:  CMP.W           R12, #0
4DADD8:  VLDR            S6, [SP,#0x40+var_28]
4DADDC:  VMUL.F32        S2, S2, S0
4DADE0:  VMUL.F32        S4, S4, S0
4DADE4:  VMUL.F32        S0, S6, S0
4DADE8:  VMOV            R1, S2
4DADEC:  VLDR            S2, [R8,#4]
4DADF0:  VMOV            R2, S4
4DADF4:  VLDR            S4, [R8,#8]
4DADF8:  VMOV            R3, S0
4DADFC:  VLDR            S0, [R8]
4DAE00:  IT EQ
4DAE02:  ADDEQ           R0, R6, #4
4DAE04:  VLDR            S6, [R0]
4DAE08:  VLDR            S8, [R0,#4]
4DAE0C:  VLDR            S10, [R0,#8]
4DAE10:  VSUB.F32        S0, S0, S6
4DAE14:  VSUB.F32        S2, S2, S8
4DAE18:  MOVS            R0, #1
4DAE1A:  VSUB.F32        S4, S4, S10
4DAE1E:  STR             R0, [SP,#0x40+var_34]; unsigned int
4DAE20:  MOV             R0, R6
4DAE22:  VSTR            S0, [SP,#0x40+var_40]
4DAE26:  VSTR            S2, [SP,#0x40+var_3C]
4DAE2A:  VSTR            S4, [SP,#0x40+var_38]
4DAE2E:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
4DAE32:  VMOV.F32        S0, #10.0
4DAE36:  LDRSB.W         R0, [R5,#0x71C]
4DAE3A:  ADD             R3, SP, #0x40+var_30
4DAE3C:  MOV             R2, R8
4DAE3E:  RSB.W           R0, R0, R0,LSL#3
4DAE42:  ADD.W           R0, R5, R0,LSL#2
4DAE46:  VMUL.F32        S0, S16, S0
4DAE4A:  LDR.W           R0, [R0,#0x5A4]
4DAE4E:  STRD.W          R5, R0, [SP,#0x40+var_40]
4DAE52:  MOV             R0, R6
4DAE54:  VMOV            R1, S0
4DAE58:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4DAE5C:  LDRSB.W         R0, [R5,#0x71C]
4DAE60:  LDR.W           R9, [R7,#arg_8]
4DAE64:  RSB.W           R0, R0, R0,LSL#3
4DAE68:  ADD.W           R0, R5, R0,LSL#2
4DAE6C:  LDR.W           R0, [R0,#0x5A4]
4DAE70:  CMP             R0, #9
4DAE72:  BNE             loc_4DAE7E
4DAE74:  ADD.W           R0, R5, #0x398; this
4DAE78:  MOVS            R1, #0x9B; int
4DAE7A:  BLX             j__ZN23CAEPedWeaponAudioEntity13AddAudioEventEi; CAEPedWeaponAudioEntity::AddAudioEvent(int)
4DAE7E:  LDR             R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4DAE8C)
4DAE80:  MOV.W           R3, #0x3F800000; float
4DAE84:  LDRSB.W         R1, [R4,#0x24]
4DAE88:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4DAE8A:  LDRSB.W         R2, [R4,#0x25]
4DAE8E:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4DAE90:  ADD.W           R1, R1, R1,LSL#4
4DAE94:  ADD.W           R0, R0, R1,LSL#3
4DAE98:  MOVW            R1, #0xFE3C
4DAE9C:  ADD.W           R0, R0, R2,LSL#2
4DAEA0:  MOVT            R1, #0xFFFF
4DAEA4:  MOVS            R2, #0; float
4DAEA6:  LDR             R1, [R0,R1]; int
4DAEA8:  MOVS            R0, #0
4DAEAA:  STRD.W          R6, R9, [SP,#0x40+var_40]; CPhysical *
4DAEAE:  STRD.W          R0, R0, [SP,#0x40+var_38]; int
4DAEB2:  ADD.W           R0, R5, #0x13C; this
4DAEB6:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
4DAEBA:  LDR             R0, =(g_fx_ptr - 0x4DAEC6)
4DAEBC:  ADD             R2, SP, #0x40+var_30; CVector *
4DAEBE:  MOV             R1, R8; CVector *
4DAEC0:  MOVS            R3, #4; int
4DAEC2:  ADD             R0, PC; g_fx_ptr
4DAEC4:  LDR             R0, [R0]; g_fx ; this
4DAEC6:  BLX             j__ZN4Fx_c14AddPunchImpactER7CVectorS1_i; Fx_c::AddPunchImpact(CVector &,CVector &,int)
4DAECA:  ADD             SP, SP, #0x20 ; ' '
4DAECC:  VPOP            {D8}
4DAED0:  POP.W           {R8,R9,R11}
4DAED4:  POP             {R4-R7,PC}
