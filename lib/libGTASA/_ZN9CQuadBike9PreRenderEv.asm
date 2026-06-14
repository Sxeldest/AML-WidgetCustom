; =========================================================
; Game Engine Function: _ZN9CQuadBike9PreRenderEv
; Address            : 0x57AC28 - 0x57ADEC
; =========================================================

57AC28:  PUSH            {R4-R7,LR}
57AC2A:  ADD             R7, SP, #0xC
57AC2C:  PUSH.W          {R8-R10}
57AC30:  VPUSH           {D8-D10}
57AC34:  SUB             SP, SP, #0x68
57AC36:  MOV             R4, R0
57AC38:  BLX             j__ZN11CAutomobile9PreRenderEv; CAutomobile::PreRender(void)
57AC3C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x57AC4E)
57AC3E:  ADD.W           R8, SP, #0x98+var_84
57AC42:  LDRSH.W         R1, [R4,#0x26]
57AC46:  MOV.W           R9, #0
57AC4A:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57AC4C:  MOV             R2, R8; CVector *
57AC4E:  MOVS            R3, #0; bool
57AC50:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
57AC52:  LDR.W           R10, [R0,R1,LSL#2]
57AC56:  MOVS            R1, #1; int
57AC58:  STRD.W          R9, R9, [SP,#0x98+var_38]
57AC5C:  MOV             R0, R10; this
57AC5E:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
57AC62:  LDR.W           R1, [R4,#0x69C]
57AC66:  LDR.W           R2, [R4,#0x850]
57AC6A:  LDR.W           R3, [R4,#0x858]
57AC6E:  LDRD.W          R0, R6, [SP,#0x98+var_84]
57AC72:  LDR             R5, [SP,#0x98+var_7C]
57AC74:  STRD.W          R0, R6, [SP,#0x98+var_98]
57AC78:  MOV             R0, R4
57AC7A:  STRD.W          R5, R9, [SP,#0x98+var_90]
57AC7E:  BLX             j__ZN8CVehicle23SetTransmissionRotationEP7RwFrameff7CVectorb; CVehicle::SetTransmissionRotation(RwFrame *,float,float,CVector,bool)
57AC82:  MOV             R0, R10; this
57AC84:  MOVS            R1, #0; int
57AC86:  MOV             R2, R8; CVector *
57AC88:  MOVS            R3, #0; bool
57AC8A:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
57AC8E:  LDR.W           R0, [R4,#0x698]
57AC92:  CBZ             R0, loc_57ACFE
57AC94:  ADD             R5, SP, #0x98+var_78
57AC96:  ADD.W           R1, R0, #0x10
57AC9A:  MOVS            R2, #0
57AC9C:  MOV             R0, R5
57AC9E:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
57ACA2:  ADDW            R0, R4, #0x84C
57ACA6:  VLDR            S2, [SP,#0x98+var_7C]
57ACAA:  LDR             R1, [SP,#0x98+var_84]
57ACAC:  VLDR            S0, [R0]
57ACB0:  BIC.W           R1, R1, #0x80000000; x
57ACB4:  VLDR            S16, [SP,#0x98+var_48]
57ACB8:  VSUB.F32        S0, S0, S2
57ACBC:  VLDR            S18, [SP,#0x98+var_44]
57ACC0:  VLDR            S20, [SP,#0x98+var_40]
57ACC4:  VMOV            R0, S0; y
57ACC8:  BLX             atan2f
57ACCC:  MOV             R1, R0; x
57ACCE:  MOV             R0, R5; this
57ACD0:  BLX             j__ZN7CMatrix10SetRotateYEf; CMatrix::SetRotateY(float)
57ACD4:  VLDR            S0, [SP,#0x98+var_48]
57ACD8:  MOV             R0, R5; this
57ACDA:  VLDR            S2, [SP,#0x98+var_44]
57ACDE:  VLDR            S4, [SP,#0x98+var_40]
57ACE2:  VADD.F32        S0, S16, S0
57ACE6:  VADD.F32        S2, S18, S2
57ACEA:  VADD.F32        S4, S20, S4
57ACEE:  VSTR            S0, [SP,#0x98+var_48]
57ACF2:  VSTR            S2, [SP,#0x98+var_44]
57ACF6:  VSTR            S4, [SP,#0x98+var_40]
57ACFA:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57ACFE:  LDR.W           R0, [R4,#0x694]
57AD02:  CBZ             R0, loc_57AD70
57AD04:  ADD             R5, SP, #0x98+var_78
57AD06:  ADD.W           R1, R0, #0x10
57AD0A:  MOVS            R2, #0
57AD0C:  MOV             R0, R5
57AD0E:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
57AD12:  ADDW            R0, R4, #0x854
57AD16:  VLDR            S2, [SP,#0x98+var_7C]
57AD1A:  LDR             R1, [SP,#0x98+var_84]
57AD1C:  VLDR            S0, [R0]
57AD20:  BIC.W           R1, R1, #0x80000000; x
57AD24:  VLDR            S16, [SP,#0x98+var_48]
57AD28:  VSUB.F32        S0, S0, S2
57AD2C:  VLDR            S18, [SP,#0x98+var_44]
57AD30:  VLDR            S20, [SP,#0x98+var_40]
57AD34:  VMOV            R0, S0; y
57AD38:  BLX             atan2f
57AD3C:  EOR.W           R1, R0, #0x80000000; x
57AD40:  MOV             R0, R5; this
57AD42:  BLX             j__ZN7CMatrix10SetRotateYEf; CMatrix::SetRotateY(float)
57AD46:  VLDR            S0, [SP,#0x98+var_48]
57AD4A:  MOV             R0, R5; this
57AD4C:  VLDR            S2, [SP,#0x98+var_44]
57AD50:  VLDR            S4, [SP,#0x98+var_40]
57AD54:  VADD.F32        S0, S16, S0
57AD58:  VADD.F32        S2, S18, S2
57AD5C:  VADD.F32        S4, S20, S4
57AD60:  VSTR            S0, [SP,#0x98+var_48]
57AD64:  VSTR            S2, [SP,#0x98+var_44]
57AD68:  VSTR            S4, [SP,#0x98+var_40]
57AD6C:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57AD70:  LDR.W           R0, [R4,#0x6A0]
57AD74:  CBZ             R0, loc_57ADDA
57AD76:  ADD             R5, SP, #0x98+var_78
57AD78:  ADD.W           R1, R0, #0x10
57AD7C:  MOVS            R2, #0
57AD7E:  MOV             R0, R5
57AD80:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
57AD84:  LDR             R0, =(QUAD_HBSTEER_ANIM_MULT_ptr - 0x57AD92)
57AD86:  ADDW            R1, R4, #0x9B4
57AD8A:  VLDR            S16, [SP,#0x98+var_48]
57AD8E:  ADD             R0, PC; QUAD_HBSTEER_ANIM_MULT_ptr
57AD90:  VLDR            S0, [R1]
57AD94:  VLDR            S18, [SP,#0x98+var_44]
57AD98:  LDR             R0, [R0]; QUAD_HBSTEER_ANIM_MULT
57AD9A:  VLDR            S20, [SP,#0x98+var_40]
57AD9E:  VLDR            S2, [R0]
57ADA2:  MOV             R0, R5; this
57ADA4:  VMUL.F32        S0, S2, S0
57ADA8:  VMOV            R1, S0; x
57ADAC:  BLX             j__ZN7CMatrix10SetRotateZEf; CMatrix::SetRotateZ(float)
57ADB0:  VLDR            S0, [SP,#0x98+var_48]
57ADB4:  MOV             R0, R5; this
57ADB6:  VLDR            S2, [SP,#0x98+var_44]
57ADBA:  VLDR            S4, [SP,#0x98+var_40]
57ADBE:  VADD.F32        S0, S16, S0
57ADC2:  VADD.F32        S2, S18, S2
57ADC6:  VADD.F32        S4, S20, S4
57ADCA:  VSTR            S0, [SP,#0x98+var_48]
57ADCE:  VSTR            S2, [SP,#0x98+var_44]
57ADD2:  VSTR            S4, [SP,#0x98+var_40]
57ADD6:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57ADDA:  ADD             R0, SP, #0x98+var_78; this
57ADDC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
57ADE0:  ADD             SP, SP, #0x68 ; 'h'
57ADE2:  VPOP            {D8-D10}
57ADE6:  POP.W           {R8-R10}
57ADEA:  POP             {R4-R7,PC}
