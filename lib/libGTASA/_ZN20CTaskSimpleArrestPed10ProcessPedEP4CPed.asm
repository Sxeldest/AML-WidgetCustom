; =========================================================
; Game Engine Function: _ZN20CTaskSimpleArrestPed10ProcessPedEP4CPed
; Address            : 0x53CAF0 - 0x53CBDE
; =========================================================

53CAF0:  PUSH            {R4,R5,R7,LR}
53CAF2:  ADD             R7, SP, #8
53CAF4:  VPUSH           {D8-D10}
53CAF8:  SUB             SP, SP, #0x10; float
53CAFA:  MOV             R5, R0
53CAFC:  MOV             R4, R1
53CAFE:  LDRB            R0, [R5,#0xC]
53CB00:  CMP             R0, #0
53CB02:  BNE             loc_53CBD4
53CB04:  LDR             R0, [R5,#0x10]
53CB06:  CBZ             R0, loc_53CB20
53CB08:  LDR             R0, [R5,#8]; this
53CB0A:  CBZ             R0, loc_53CB56
53CB0C:  ADD             R1, SP, #0x30+var_2C
53CB0E:  MOVS            R2, #3
53CB10:  MOVS            R3, #0
53CB12:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
53CB16:  VLDR            S2, [SP,#0x30+var_2C]
53CB1A:  VLDR            S0, [SP,#0x30+var_28]
53CB1E:  B               loc_53CB56
53CB20:  LDRSB.W         R0, [R4,#0x71C]
53CB24:  RSB.W           R0, R0, R0,LSL#3
53CB28:  ADD.W           R0, R4, R0,LSL#2
53CB2C:  ADDW            R0, R0, #0x5A4; this
53CB30:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
53CB34:  CMP             R0, #1
53CB36:  BNE             loc_53CB4C
53CB38:  MOV             R0, R4
53CB3A:  MOVS            R1, #0x16
53CB3C:  MOVS            R2, #0xA
53CB3E:  MOVS            R3, #0
53CB40:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
53CB44:  MOV             R0, R4
53CB46:  MOVS            R1, #0x16
53CB48:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
53CB4C:  MOV             R0, R5; this
53CB4E:  MOV             R1, R4; CPed *
53CB50:  BLX             j__ZN20CTaskSimpleArrestPed9StartAnimEP4CPed; CTaskSimpleArrestPed::StartAnim(CPed *)
53CB54:  B               loc_53CBD4
53CB56:  VMOV            R0, S2; this
53CB5A:  LDR             R2, [R4,#0x14]
53CB5C:  VMOV            R1, S0; float
53CB60:  ADD.W           R3, R2, #0x30 ; '0'
53CB64:  CMP             R2, #0
53CB66:  IT EQ
53CB68:  ADDEQ           R3, R4, #4
53CB6A:  LDRD.W          R2, R3, [R3]; float
53CB6E:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
53CB72:  MOV             R3, R0
53CB74:  LDR             R0, [R4,#0x14]; this
53CB76:  VMOV            S0, R3; float
53CB7A:  STR.W           R3, [R4,#0x55C]
53CB7E:  CMP             R0, #0
53CB80:  STR.W           R3, [R4,#0x560]
53CB84:  BEQ             loc_53CBC2
53CB86:  MOVS            R1, #0; x
53CB88:  MOVS            R2, #0; float
53CB8A:  VLDR            S16, [R0,#0x30]
53CB8E:  VLDR            S18, [R0,#0x34]
53CB92:  VLDR            S20, [R0,#0x38]
53CB96:  BLX             j__ZN7CMatrix9SetRotateEfff; CMatrix::SetRotate(float,float,float)
53CB9A:  LDR             R0, [R4,#0x14]
53CB9C:  VLDR            S0, [R0,#0x30]
53CBA0:  VLDR            S2, [R0,#0x34]
53CBA4:  VLDR            S4, [R0,#0x38]
53CBA8:  VADD.F32        S0, S16, S0
53CBAC:  VADD.F32        S2, S18, S2
53CBB0:  VADD.F32        S4, S20, S4
53CBB4:  VSTR            S0, [R0,#0x30]
53CBB8:  VSTR            S2, [R0,#0x34]
53CBBC:  VSTR            S4, [R0,#0x38]
53CBC0:  B               loc_53CBC6
53CBC2:  VSTR            S0, [R4,#0x10]
53CBC6:  LDR             R0, [R5,#0x10]
53CBC8:  ADD             R1, SP, #0x30+var_2C; CVector *
53CBCA:  LDR             R2, [R0,#0x18]; float
53CBCC:  ADD.W           R0, R4, #0x518; this
53CBD0:  BLX             j__ZN6CPedIK18PointGunAtPositionERK7CVectorf; CPedIK::PointGunAtPosition(CVector const&,float)
53CBD4:  MOVS            R0, #0
53CBD6:  ADD             SP, SP, #0x10
53CBD8:  VPOP            {D8-D10}
53CBDC:  POP             {R4,R5,R7,PC}
