; =========================================================
; Game Engine Function: _ZN15CTaskSimpleJump6LaunchEP4CPed
; Address            : 0x52DA60 - 0x52DDAA
; =========================================================

52DA60:  PUSH            {R4-R7,LR}
52DA62:  ADD             R7, SP, #0xC
52DA64:  PUSH.W          {R8-R11}
52DA68:  SUB             SP, SP, #4
52DA6A:  VPUSH           {D8-D14}
52DA6E:  SUB             SP, SP, #0x38; float
52DA70:  MOV             R4, R1
52DA72:  MOV             R5, R0
52DA74:  LDR             R0, [R4,#0x18]
52DA76:  MOVS            R1, #2
52DA78:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52DA7C:  CBZ             R0, loc_52DA88
52DA7E:  VLDR            S16, =0.17
52DA82:  VLDR            S0, =0.05
52DA86:  B               loc_52DA9A
52DA88:  LDR             R0, [R4,#0x18]
52DA8A:  MOVS            R1, #1
52DA8C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52DA90:  VLDR            S16, =0.1
52DA94:  CBZ             R0, loc_52DAA6
52DA96:  VLDR            S0, =0.07
52DA9A:  VLDR            S2, [R0,#0x18]
52DA9E:  VMUL.F32        S0, S0, S2
52DAA2:  VADD.F32        S16, S16, S0
52DAA6:  MOV             R0, R4; this
52DAA8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52DAAC:  CMP             R0, #0
52DAAE:  ITT EQ
52DAB0:  LDRBEQ.W        R0, [R5,#0x25]
52DAB4:  CMPEQ           R0, #0
52DAB6:  BEQ             loc_52DABE
52DAB8:  VMOV.F32        S18, #8.5
52DABC:  B               loc_52DAC2
52DABE:  VMOV.F32        S18, #4.5
52DAC2:  LDR.W           R0, [R4,#0x444]
52DAC6:  CBZ             R0, loc_52DAE4
52DAC8:  MOVS            R0, #2
52DACA:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
52DACE:  VMOV            S20, R0
52DAD2:  MOVS            R0, #2
52DAD4:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
52DAD8:  VMOV            S0, R0
52DADC:  VMUL.F32        S16, S16, S20
52DAE0:  VMUL.F32        S18, S18, S0
52DAE4:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x52DAEA)
52DAE6:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
52DAE8:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
52DAEA:  LDRB.W          R0, [R0,#(byte_796838 - 0x7967F4)]
52DAEE:  CBZ             R0, loc_52DB06
52DAF0:  VMOV.F32        S0, #10.0
52DAF4:  MOV             R0, R4; this
52DAF6:  VMUL.F32        S20, S18, S0
52DAFA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52DAFE:  CMP             R0, #0
52DB00:  IT NE
52DB02:  VMOVNE.F32      S18, S20
52DB06:  VMOV            R3, S18
52DB0A:  MOV             R0, R4
52DB0C:  MOVS            R1, #0
52DB0E:  MOVS            R2, #0
52DB10:  MOVS            R6, #0
52DB12:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
52DB16:  LDRB.W          R0, [R5,#0x22]
52DB1A:  CMP             R0, #0
52DB1C:  BEQ             loc_52DB24
52DB1E:  STRD.W          R6, R6, [R4,#0x48]
52DB22:  B               loc_52DBAE
52DB24:  VLDR            S0, [R4,#0x48]
52DB28:  VMUL.F32        S4, S16, S16
52DB2C:  VLDR            S2, [R4,#0x4C]
52DB30:  VMUL.F32        S0, S0, S0
52DB34:  VMUL.F32        S2, S2, S2
52DB38:  VADD.F32        S0, S0, S2
52DB3C:  VCMPE.F32       S0, S4
52DB40:  VMRS            APSR_nzcv, FPSCR
52DB44:  BLT             loc_52DB4C
52DB46:  LDR.W           R0, [R4,#0x56C]
52DB4A:  CBZ             R0, loc_52DBAE
52DB4C:  LDR             R0, [R5,#0x1C]
52DB4E:  CBNZ            R0, loc_52DBAE
52DB50:  ADDW            R0, R4, #0x55C
52DB54:  VLDR            S0, [R0]
52DB58:  VMOV            R8, S0
52DB5C:  MOV             R0, R8; x
52DB5E:  BLX             sinf
52DB62:  VMOV            S0, R0
52DB66:  LDR.W           R6, [R4,#0x56C]
52DB6A:  VMUL.F32        S0, S16, S0
52DB6E:  CBZ             R6, loc_52DB94
52DB70:  VLDR            S2, [R6,#0x48]
52DB74:  MOV             R0, R8; x
52DB76:  VSUB.F32        S18, S2, S0
52DB7A:  BLX             cosf
52DB7E:  VMOV            S0, R0
52DB82:  VSTR            S18, [R4,#0x48]
52DB86:  VLDR            S2, [R6,#0x4C]
52DB8A:  VMUL.F32        S0, S16, S0
52DB8E:  VADD.F32        S0, S0, S2
52DB92:  B               loc_52DBAA
52DB94:  MOV             R0, R8; x
52DB96:  VNEG.F32        S18, S0
52DB9A:  BLX             cosf
52DB9E:  VMOV            S0, R0
52DBA2:  VSTR            S18, [R4,#0x48]
52DBA6:  VMUL.F32        S0, S16, S0
52DBAA:  VSTR            S0, [R4,#0x4C]
52DBAE:  LDR.W           R0, [R4,#0x484]
52DBB2:  MOVW            R1, #0x201
52DBB6:  ADDW            R10, R4, #0x484
52DBBA:  BICS            R0, R1
52DBBC:  ORR.W           R0, R0, #0x200
52DBC0:  STR.W           R0, [R4,#0x484]
52DBC4:  LDR             R0, [R5,#0x1C]
52DBC6:  CBNZ            R0, loc_52DBF2
52DBC8:  LDRB.W          R1, [R5,#0x22]
52DBCC:  LDR             R0, [R4,#0x18]; int
52DBCE:  CBZ             R1, loc_52DBE6
52DBD0:  MOVS            R1, #0; int
52DBD2:  MOVS            R2, #0x80; unsigned int
52DBD4:  MOV.W           R3, #0x41000000
52DBD8:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52DBDC:  LDRH            R1, [R0,#0x2E]
52DBDE:  ORR.W           R1, R1, #8
52DBE2:  STRH            R1, [R0,#0x2E]
52DBE4:  B               loc_52DBF2
52DBE6:  MOVS            R1, #0; int
52DBE8:  MOVS            R2, #0x76 ; 'v'; unsigned int
52DBEA:  MOV.W           R3, #0x41000000
52DBEE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52DBF2:  LDRB.W          R0, [R10,#3]
52DBF6:  LSLS            R0, R0, #0x1B; this
52DBF8:  BPL.W           loc_52DD9C
52DBFC:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
52DC00:  CMP             R0, #0
52DC02:  BEQ.W           loc_52DD9C
52DC06:  MOV.W           R11, #0
52DC0A:  STRD.W          R11, R11, [SP,#0x90+var_64]
52DC0E:  STR.W           R11, [SP,#0x90+var_5C]
52DC12:  LDR             R0, [R4,#0x18]
52DC14:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
52DC18:  MOV             R5, R0
52DC1A:  LDR.W           R0, [R4,#0x4B8]
52DC1E:  LDR             R1, [R0,#0x14]
52DC20:  MOV             R0, R5
52DC22:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
52DC26:  MOV             R6, R0
52DC28:  MOV             R0, R5
52DC2A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
52DC2E:  ADD             R5, SP, #0x90+var_64
52DC30:  ADD.W           R3, R0, R6,LSL#6
52DC34:  MOVS            R2, #1
52DC36:  MOV             R0, R5
52DC38:  MOV             R1, R5
52DC3A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
52DC3E:  LDR             R0, [R4,#0x14]
52DC40:  MOVW            R2, #0xBB8
52DC44:  VLDR            S16, =-0.1
52DC48:  MOV.W           R3, #0x40800000
52DC4C:  VLDR            S4, [SP,#0x90+var_5C]
52DC50:  MOVS            R6, #0xFF
52DC52:  VLDR            S6, =0.2
52DC56:  VLDR            S8, [R0,#0x10]
52DC5A:  VADD.F32        S4, S4, S16
52DC5E:  VLDR            S12, [R0,#0x18]
52DC62:  VMUL.F32        S26, S8, S6
52DC66:  VLDR            S0, [SP,#0x90+var_64]
52DC6A:  VMUL.F32        S24, S12, S6
52DC6E:  VLDR            S10, [R0,#0x14]
52DC72:  VLDR            S2, [SP,#0x90+var_60]
52DC76:  VMUL.F32        S28, S10, S6
52DC7A:  VLDR            S6, =0.26
52DC7E:  VLDR            S14, [R0]
52DC82:  VLDR            S1, [R0,#4]
52DC86:  VMUL.F32        S18, S10, S6
52DC8A:  LDR             R0, =(gpBloodPoolTex_ptr - 0x52DC9C)
52DC8C:  VADD.F32        S0, S26, S0
52DC90:  VLDR            S12, =0.14
52DC94:  VADD.F32        S4, S24, S4
52DC98:  ADD             R0, PC; gpBloodPoolTex_ptr
52DC9A:  VMUL.F32        S20, S14, S12
52DC9E:  VADD.F32        S2, S28, S2
52DCA2:  LDR.W           R8, [R0]; gpBloodPoolTex
52DCA6:  VMUL.F32        S22, S1, S12
52DCAA:  MOV.W           R0, #0x3F800000
52DCAE:  LDR.W           R1, [R8]; int
52DCB2:  VSTR            S4, [SP,#0x90+var_5C]
52DCB6:  VSTR            S0, [SP,#0x90+var_64]
52DCBA:  VMUL.F32        S0, S8, S6
52DCBE:  VSTR            S2, [SP,#0x90+var_60]
52DCC2:  STRD.W          R6, R6, [SP,#0x90+var_84]; int
52DCC6:  STRD.W          R11, R11, [SP,#0x90+var_7C]; int
52DCCA:  STRD.W          R3, R2, [SP,#0x90+var_74]; float
52DCCE:  MOV             R2, R5; int
52DCD0:  STR             R0, [SP,#0x90+var_6C]; float
52DCD2:  MOVS            R0, #1; int
52DCD4:  VSTR            S18, [SP,#0x90+var_90]
52DCD8:  VMOV            R9, S0
52DCDC:  VSTR            S20, [SP,#0x90+var_8C]
52DCE0:  VSTR            S22, [SP,#0x90+var_88]
52DCE4:  MOV             R3, R9; int
52DCE6:  BLX             j__ZN8CShadows18AddPermanentShadowEhP9RwTextureP7CVectorffffshhhfjf; CShadows::AddPermanentShadow(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,uint,float)
52DCEA:  STRD.W          R11, R11, [SP,#0x90+var_64]
52DCEE:  STR.W           R11, [SP,#0x90+var_5C]
52DCF2:  LDR             R0, [R4,#0x18]
52DCF4:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
52DCF8:  MOV             R5, R0
52DCFA:  LDR.W           R0, [R4,#0x4BC]
52DCFE:  LDR             R1, [R0,#0x14]
52DD00:  MOV             R0, R5
52DD02:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
52DD06:  MOV             R6, R0
52DD08:  MOV             R0, R5
52DD0A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
52DD0E:  ADD.W           R3, R0, R6,LSL#6
52DD12:  ADD             R0, SP, #0x90+var_64
52DD14:  MOVS            R2, #1
52DD16:  MOV             R1, R0
52DD18:  MOV             R5, R0
52DD1A:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
52DD1E:  VLDR            S4, [SP,#0x90+var_5C]
52DD22:  MOVS            R0, #0xFF
52DD24:  VLDR            S0, [SP,#0x90+var_64]
52DD28:  MOV             R2, R5; int
52DD2A:  VADD.F32        S4, S4, S16
52DD2E:  VLDR            S2, [SP,#0x90+var_60]
52DD32:  VADD.F32        S0, S26, S0
52DD36:  LDR.W           R1, [R8]; int
52DD3A:  VADD.F32        S2, S28, S2
52DD3E:  MOV             R3, R9; int
52DD40:  VADD.F32        S4, S24, S4
52DD44:  VSTR            S0, [SP,#0x90+var_64]
52DD48:  VSTR            S2, [SP,#0x90+var_60]
52DD4C:  VSTR            S4, [SP,#0x90+var_5C]
52DD50:  STRD.W          R0, R0, [SP,#0x90+var_84]; int
52DD54:  MOV.W           R0, #0x40800000
52DD58:  STRD.W          R11, R11, [SP,#0x90+var_7C]; int
52DD5C:  STR             R0, [SP,#0x90+var_74]; float
52DD5E:  MOVW            R0, #0xBB8
52DD62:  STR             R0, [SP,#0x90+var_70]; int
52DD64:  MOV.W           R0, #0x3F800000
52DD68:  STR             R0, [SP,#0x90+var_6C]; float
52DD6A:  MOVS            R0, #1; int
52DD6C:  VSTR            S18, [SP,#0x90+var_90]
52DD70:  VSTR            S20, [SP,#0x90+var_8C]
52DD74:  VSTR            S22, [SP,#0x90+var_88]
52DD78:  BLX             j__ZN8CShadows18AddPermanentShadowEhP9RwTextureP7CVectorffffshhhfjf; CShadows::AddPermanentShadow(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,uint,float)
52DD7C:  LDR.W           R0, [R4,#0x758]
52DD80:  CMP             R0, #0x29 ; ')'
52DD82:  BCC             loc_52DD8C
52DD84:  SUBS            R0, #0x28 ; '('
52DD86:  STR.W           R0, [R4,#0x758]
52DD8A:  B               loc_52DD9C
52DD8C:  STR.W           R11, [R4,#0x758]
52DD90:  LDR.W           R0, [R10]
52DD94:  BIC.W           R0, R0, #0x10000000
52DD98:  STR.W           R0, [R10]
52DD9C:  ADD             SP, SP, #0x38 ; '8'
52DD9E:  VPOP            {D8-D14}
52DDA2:  ADD             SP, SP, #4
52DDA4:  POP.W           {R8-R11}
52DDA8:  POP             {R4-R7,PC}
