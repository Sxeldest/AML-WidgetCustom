; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE14ControlSubTaskEP4CPed
; Address            : 0x49ABCC - 0x49B1BE
; =========================================================

49ABCC:  PUSH            {R4-R7,LR}
49ABCE:  ADD             R7, SP, #0xC
49ABD0:  PUSH.W          {R8-R11}
49ABD4:  SUB             SP, SP, #4
49ABD6:  VPUSH           {D8-D10}
49ABDA:  SUB             SP, SP, #0x98; float
49ABDC:  MOV             R5, R0
49ABDE:  MOV             R9, R1
49ABE0:  LDRD.W          R6, R4, [R5,#8]
49ABE4:  CMP             R4, #0
49ABE6:  BEQ.W           loc_49AE52
49ABEA:  LDRB.W          R0, [R4,#0x3A]
49ABEE:  AND.W           R0, R0, #7
49ABF2:  CMP             R0, #3
49ABF4:  BNE.W           loc_49AE52
49ABF8:  MOV             R0, R9; this
49ABFA:  MOV             R1, R4; CPed *
49ABFC:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
49AC00:  CMP             R0, #1
49AC02:  BNE.W           loc_49AE52
49AC06:  LDRB.W          R0, [R4,#0x45]
49AC0A:  LSLS            R0, R0, #0x1F
49AC0C:  BNE             loc_49AC5E
49AC0E:  LDR.W           R8, [R4,#0x56C]
49AC12:  CMP.W           R8, #0
49AC16:  BEQ             loc_49AC36
49AC18:  LDRB.W          R0, [R8,#0x3A]
49AC1C:  AND.W           R0, R0, #7
49AC20:  CMP             R0, #2
49AC22:  BNE             loc_49AC36
49AC24:  LDR.W           R0, [R9,#0x56C]
49AC28:  CMP             R0, R8
49AC2A:  ITT NE
49AC2C:  LDRNE.W         R0, [R9,#0x588]
49AC30:  CMPNE           R0, R8
49AC32:  BEQ.W           loc_49B0C6
49AC36:  LDR.W           R8, [R4,#0x588]
49AC3A:  CMP.W           R8, #0
49AC3E:  BEQ             loc_49AC5E
49AC40:  LDRB.W          R0, [R8,#0x3A]
49AC44:  AND.W           R0, R0, #7
49AC48:  CMP             R0, #2
49AC4A:  BNE             loc_49AC5E
49AC4C:  LDR.W           R0, [R9,#0x56C]
49AC50:  CMP             R0, R8
49AC52:  ITT NE
49AC54:  LDRNE.W         R0, [R9,#0x588]
49AC58:  CMPNE           R0, R8
49AC5A:  BEQ.W           loc_49B0C6
49AC5E:  MOV.W           R8, #0
49AC62:  LDR.W           R0, [R9,#0x100]
49AC66:  CMP.W           R8, #0
49AC6A:  BNE             loc_49AC76
49AC6C:  CBZ             R0, loc_49AC76
49AC6E:  MOV             R0, R9; this
49AC70:  BLX             j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
49AC74:  B               loc_49AE52
49AC76:  CMP.W           R8, #0
49AC7A:  BEQ.W           loc_49AE52
49AC7E:  CMP             R0, #0
49AC80:  BNE.W           loc_49AE52
49AC84:  LDR             R0, [R5,#8]
49AC86:  LDR             R1, [R0]
49AC88:  LDR             R1, [R1,#0x14]
49AC8A:  BLX             R1
49AC8C:  CMP             R0, #0xCB
49AC8E:  BEQ.W           loc_49AE52
49AC92:  LDR             R0, [R5,#8]
49AC94:  MOVS            R2, #1
49AC96:  MOVS            R3, #0
49AC98:  LDR             R1, [R0]
49AC9A:  LDR             R4, [R1,#0x1C]
49AC9C:  MOV             R1, R9
49AC9E:  BLX             R4
49ACA0:  CMP             R0, #1
49ACA2:  BNE.W           loc_49AE52
49ACA6:  LDR.W           R0, [R9,#0x14]
49ACAA:  ADD.W           R4, R8, #4
49ACAE:  LDR.W           R1, [R8,#dword_14]
49ACB2:  ADD.W           R2, R0, #0x30 ; '0'
49ACB6:  CMP             R0, #0
49ACB8:  IT EQ
49ACBA:  ADDEQ.W         R2, R9, #4
49ACBE:  CMP             R1, #0
49ACC0:  MOV             R0, R4
49ACC2:  VLDR            S0, [R2]
49ACC6:  VLDR            S2, [R2,#4]
49ACCA:  VLDR            S4, [R2,#8]
49ACCE:  IT NE
49ACD0:  ADDNE.W         R0, R1, #0x30 ; '0'
49ACD4:  VLDR            S6, [R0]
49ACD8:  VSUB.F32        S16, S6, S0
49ACDC:  VSTR            S16, [SP,#0xD0+var_48]
49ACE0:  VLDR            S0, [R0,#4]
49ACE4:  VSUB.F32        S18, S0, S2
49ACE8:  VSTR            S18, [SP,#0xD0+var_48+4]
49ACEC:  VLDR            S0, [R0,#8]
49ACF0:  VSUB.F32        S20, S0, S4
49ACF4:  VSTR            S20, [SP,#0xD0+var_40]
49ACF8:  LDR             R0, [SP,#0xD0+var_40]
49ACFA:  STR             R0, [SP,#0xD0+var_50]
49ACFC:  ADD             R0, SP, #0xD0+var_58; this
49ACFE:  VLDR            D16, [SP,#0xD0+var_48]
49AD02:  VSTR            D16, [SP,#0xD0+var_58]
49AD06:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
49AD0A:  VMOV.F32        S0, #0.25
49AD0E:  VLDR            S4, [SP,#0xD0+var_58+4]
49AD12:  VLDR            S6, [SP,#0xD0+var_50]
49AD16:  MOV             R1, R4
49AD18:  VLDR            S2, [SP,#0xD0+var_58]
49AD1C:  VMUL.F32        S4, S4, S0
49AD20:  VMUL.F32        S6, S6, S0
49AD24:  VMUL.F32        S0, S2, S0
49AD28:  VSUB.F32        S4, S18, S4
49AD2C:  VSUB.F32        S6, S20, S6
49AD30:  VSUB.F32        S0, S16, S0
49AD34:  VSTR            S4, [SP,#0xD0+var_48+4]
49AD38:  VSTR            S6, [SP,#0xD0+var_40]
49AD3C:  LDR.W           R0, [R8,#dword_14]
49AD40:  CMP             R0, #0
49AD42:  IT NE
49AD44:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
49AD48:  VLDR            S2, [R1]
49AD4C:  VSUB.F32        S18, S2, S0
49AD50:  VSTR            S18, [SP,#0xD0+var_48]
49AD54:  VLDR            S0, [R1,#4]
49AD58:  VSUB.F32        S20, S0, S4
49AD5C:  VSTR            S20, [SP,#0xD0+var_48+4]
49AD60:  VLDR            S0, [R1,#8]
49AD64:  VSUB.F32        S16, S0, S6
49AD68:  VSTR            S16, [SP,#0xD0+var_40]
49AD6C:  LDR             R0, [SP,#0xD0+var_40]
49AD6E:  STR             R0, [SP,#0xD0+var_60]
49AD70:  ADD             R0, SP, #0xD0+var_68; this
49AD72:  VLDR            D16, [SP,#0xD0+var_48]
49AD76:  VSTR            D16, [SP,#0xD0+var_68]
49AD7A:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
49AD7E:  CMP             R0, #1
49AD80:  BNE             loc_49AD9A
49AD82:  LDR             R0, [SP,#0xD0+var_60]
49AD84:  VLDR            D16, [SP,#0xD0+var_68]
49AD88:  STR             R0, [SP,#0xD0+var_40]
49AD8A:  VLDR            S16, [SP,#0xD0+var_40]
49AD8E:  VSTR            D16, [SP,#0xD0+var_48]
49AD92:  VLDR            S18, [SP,#0xD0+var_48]
49AD96:  VLDR            S20, [SP,#0xD0+var_48+4]
49AD9A:  LDR.W           R0, [R8,#dword_14]
49AD9E:  ADD             R5, SP, #0xD0+var_B0
49ADA0:  CMP             R0, #0
49ADA2:  MOV             R1, R5; CMatrix *
49ADA4:  IT NE
49ADA6:  ADDNE.W         R4, R0, #0x30 ; '0'
49ADAA:  MOVS            R0, #0
49ADAC:  VLDR            S0, [R4]
49ADB0:  VSUB.F32        S0, S18, S0
49ADB4:  VSTR            S0, [SP,#0xD0+var_48]
49ADB8:  VLDR            S0, [R4,#4]
49ADBC:  VSUB.F32        S0, S20, S0
49ADC0:  VSTR            S0, [SP,#0xD0+var_48+4]
49ADC4:  VLDR            S0, [R4,#8]
49ADC8:  VSUB.F32        S0, S16, S0
49ADCC:  VSTR            S0, [SP,#0xD0+var_40]
49ADD0:  STRD.W          R0, R0, [SP,#0xD0+var_70]
49ADD4:  LDR.W           R0, [R8,#dword_14]; CMatrix *
49ADD8:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
49ADDC:  ADD             R0, SP, #0xD0+var_BC; this
49ADDE:  ADD             R2, SP, #0xD0+var_48; CVector *
49ADE0:  MOV             R1, R5; CMatrix *
49ADE2:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
49ADE6:  LDRD.W          R0, R1, [SP,#0xD0+var_58]; float
49ADEA:  MOVS            R2, #0; float
49ADEC:  MOVS            R3, #0; float
49ADEE:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
49ADF2:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
49ADF6:  LDRSB.W         R1, [R9,#0x71C]
49ADFA:  VMOV            S0, R0
49ADFE:  ADD             R6, SP, #0xD0+var_BC
49AE00:  MOV             R0, #0x3E4CCCCD
49AE08:  RSB.W           R1, R1, R1,LSL#3
49AE0C:  ADD.W           R1, R9, R1,LSL#2
49AE10:  LDR.W           R1, [R1,#0x5A4]
49AE14:  LDM             R6, {R2,R3,R6}; int
49AE16:  STR             R1, [SP,#0xD0+var_C4]; int
49AE18:  VCVT.U32.F32    S0, S0
49AE1C:  STR             R0, [SP,#0xD0+var_C8]; float
49AE1E:  MOV             R1, R8; this
49AE20:  VMOV            R0, S0
49AE24:  STRD.W          R6, R0, [SP,#0xD0+var_D0]; int
49AE28:  MOV             R0, R9; int
49AE2A:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
49AE2E:  MOVS            R0, #dword_20; this
49AE30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49AE34:  MOV             R6, R0
49AE36:  MOV.W           R0, #0x41000000
49AE3A:  STR             R0, [SP,#0xD0+var_D0]; float
49AE3C:  MOV             R0, R6; this
49AE3E:  MOV.W           R1, #0x7D0; int
49AE42:  MOVS            R2, #0; bool
49AE44:  MOVS            R3, #0; bool
49AE46:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49AE4A:  MOV             R0, R5; this
49AE4C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
49AE50:  B               loc_49B1AE
49AE52:  LDR             R0, [R5,#8]
49AE54:  LDR             R1, [R0]
49AE56:  LDR             R1, [R1,#0x14]
49AE58:  BLX             R1
49AE5A:  MOVW            R1, #0x38A
49AE5E:  CMP             R0, R1
49AE60:  BEQ             loc_49AE74
49AE62:  LDR             R0, [R5,#8]
49AE64:  LDR             R1, [R0]
49AE66:  LDR             R1, [R1,#0x14]
49AE68:  BLX             R1
49AE6A:  MOVW            R1, #0x387
49AE6E:  CMP             R0, R1
49AE70:  BNE.W           loc_49B13A
49AE74:  LDR             R2, [R5,#0xC]; CEntity *
49AE76:  CBZ             R2, loc_49AE98
49AE78:  LDRB.W          R0, [R5,#0x3C]
49AE7C:  CBZ             R0, loc_49AEC0
49AE7E:  LDRB.W          R0, [R5,#0x3D]
49AE82:  CBZ             R0, loc_49AEAE
49AE84:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49AE8C)
49AE86:  MOVS            R1, #0
49AE88:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49AE8A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49AE8C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49AE8E:  STRB.W          R1, [R5,#0x3D]
49AE92:  STR             R0, [R5,#0x34]
49AE94:  MOV             R1, R0
49AE96:  B               loc_49AEB8
49AE98:  LDR             R0, [R5,#8]
49AE9A:  MOVS            R2, #1
49AE9C:  MOVS            R3, #0
49AE9E:  LDR             R1, [R0]
49AEA0:  LDR             R4, [R1,#0x1C]
49AEA2:  MOV             R1, R9
49AEA4:  BLX             R4
49AEA6:  CMP             R0, #0
49AEA8:  IT NE
49AEAA:  MOVNE           R6, #0
49AEAC:  B               loc_49B13A
49AEAE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49AEB6)
49AEB0:  LDR             R1, [R5,#0x34]
49AEB2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49AEB4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49AEB6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49AEB8:  LDR             R3, [R5,#0x38]
49AEBA:  ADD             R1, R3
49AEBC:  CMP             R1, R0
49AEBE:  BLS             loc_49AEE4
49AEC0:  LDRB.W          R0, [R5,#0x30]
49AEC4:  CMP             R0, #0
49AEC6:  BEQ.W           loc_49B13A
49AECA:  LDRB.W          R0, [R5,#0x31]
49AECE:  CBZ             R0, loc_49AF06
49AED0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49AED8)
49AED2:  MOVS            R1, #0
49AED4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49AED6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49AED8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49AEDA:  STRB.W          R1, [R5,#0x31]
49AEDE:  STR             R0, [R5,#0x28]
49AEE0:  MOV             R1, R0
49AEE2:  B               loc_49AF10
49AEE4:  LDR             R0, [R5,#8]
49AEE6:  MOVS            R2, #1
49AEE8:  MOVS            R3, #0
49AEEA:  LDR             R1, [R0]
49AEEC:  LDR             R4, [R1,#0x1C]
49AEEE:  MOV             R1, R9
49AEF0:  BLX             R4
49AEF2:  CMP             R0, #1
49AEF4:  BNE.W           loc_49B13A
49AEF8:  LDRB.W          R0, [R5,#0x48]
49AEFC:  LSLS            R0, R0, #0x1F
49AEFE:  BNE.W           loc_49B092
49AF02:  MOVS            R6, #0
49AF04:  B               loc_49B13A
49AF06:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49AF0E)
49AF08:  LDR             R1, [R5,#0x28]
49AF0A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49AF0C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49AF0E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49AF10:  LDR             R3, [R5,#0x2C]
49AF12:  ADD             R1, R3
49AF14:  CMP             R1, R0
49AF16:  BHI.W           loc_49B13A
49AF1A:  LDR             R1, [R5,#0x14]
49AF1C:  MOVS            R3, #1
49AF1E:  ADD.W           R8, R5, #0x40 ; '@'
49AF22:  STRB.W          R3, [R5,#0x30]
49AF26:  ADD             R3, SP, #0xD0+var_48; CVector *
49AF28:  STRD.W          R0, R1, [R5,#0x28]
49AF2C:  MOV             R0, R8; this
49AF2E:  MOV             R1, R9; CPed *
49AF30:  BLX             j__ZNK37CEntitySeekPosCalculatorEntitySurface20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorEntitySurface::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49AF34:  LDR.W           R0, [R9,#0x14]
49AF38:  VLDR            S0, [SP,#0xD0+var_48]
49AF3C:  ADD.W           R1, R0, #0x30 ; '0'
49AF40:  CMP             R0, #0
49AF42:  VLDR            S2, [SP,#0xD0+var_48+4]
49AF46:  IT EQ
49AF48:  ADDEQ.W         R1, R9, #4
49AF4C:  VLDR            S4, [R1]
49AF50:  VLDR            S6, [R1,#4]
49AF54:  VSUB.F32        S0, S4, S0
49AF58:  LDR             R0, [R5,#8]
49AF5A:  VSUB.F32        S2, S6, S2
49AF5E:  LDR             R1, [R0]
49AF60:  LDR             R1, [R1,#0x14]
49AF62:  VMUL.F32        S0, S0, S0
49AF66:  VMUL.F32        S2, S2, S2
49AF6A:  VADD.F32        S0, S0, S2
49AF6E:  VLDR            S2, =0.0
49AF72:  VADD.F32        S16, S0, S2
49AF76:  BLX             R1
49AF78:  MOVW            R1, #0x38A
49AF7C:  CMP             R0, R1
49AF7E:  BNE             loc_49B008
49AF80:  VLDR            S0, [R5,#0x20]
49AF84:  VCMP.F32        S0, #0.0
49AF88:  VMRS            APSR_nzcv, FPSCR
49AF8C:  BEQ.W           loc_49B0A4
49AF90:  VMOV.F32        S2, #-1.0
49AF94:  VADD.F32        S0, S0, S2
49AF98:  VMUL.F32        S0, S0, S0
49AF9C:  VCMPE.F32       S16, S0
49AFA0:  VMRS            APSR_nzcv, FPSCR
49AFA4:  BGE             loc_49B0A4
49AFA6:  LDR             R0, [R5,#8]
49AFA8:  MOVS            R2, #1
49AFAA:  MOVS            R3, #0
49AFAC:  MOV.W           R11, #0
49AFB0:  LDR             R1, [R0]
49AFB2:  LDR             R6, [R1,#0x1C]
49AFB4:  MOV             R1, R9
49AFB6:  BLX             R6
49AFB8:  CMP             R0, #1
49AFBA:  BNE.W           loc_49B138
49AFBE:  MOVS            R0, #word_28; this
49AFC0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49AFC4:  ADD.W           R10, SP, #0xD0+var_B0
49AFC8:  LDR             R2, [R5,#0xC]; CEntity *
49AFCA:  MOV             R6, R0
49AFCC:  MOV             R0, R8; this
49AFCE:  MOV             R1, R9; CPed *
49AFD0:  MOV             R3, R10; CVector *
49AFD2:  LDR             R4, [R5,#0x44]
49AFD4:  BLX             j__ZNK37CEntitySeekPosCalculatorEntitySurface20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorEntitySurface::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49AFD8:  LDR             R3, [R5,#0x18]; float
49AFDA:  MOV             R0, R6; this
49AFDC:  VLDR            S0, [R5,#0x1C]
49AFE0:  MOV             R1, R4; int
49AFE2:  MOV             R2, R10; CVector *
49AFE4:  STRD.W          R11, R11, [SP,#0xD0+var_CC]; bool
49AFE8:  VSTR            S0, [SP,#0xD0+var_D0]
49AFEC:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49AFF0:  LDRB.W          R0, [R5,#0x48]
49AFF4:  LDRB.W          R1, [R6,#0x24]
49AFF8:  AND.W           R0, R0, #8
49AFFC:  AND.W           R1, R1, #0xF7
49B000:  ORRS            R0, R1
49B002:  STRB.W          R0, [R6,#0x24]
49B006:  B               loc_49B1AE
49B008:  LDR             R0, [R5,#8]
49B00A:  LDRB.W          R1, [R0,#0x24]
49B00E:  TST.W           R1, #0x10
49B012:  BNE.W           loc_49B138
49B016:  VLDR            S0, [R5,#0x20]
49B01A:  VCMP.F32        S0, #0.0
49B01E:  VMRS            APSR_nzcv, FPSCR
49B022:  BEQ             loc_49B0D4
49B024:  VMOV.F32        S2, #1.0
49B028:  VADD.F32        S0, S0, S2
49B02C:  VMUL.F32        S0, S0, S0
49B030:  VCMPE.F32       S16, S0
49B034:  VMRS            APSR_nzcv, FPSCR
49B038:  BLE             loc_49B0D4
49B03A:  LDR             R1, [R0]
49B03C:  MOVS            R2, #1
49B03E:  MOVS            R3, #0
49B040:  MOV.W           R11, #0
49B044:  LDR             R6, [R1,#0x1C]
49B046:  MOV             R1, R9
49B048:  BLX             R6
49B04A:  CMP             R0, #1
49B04C:  BNE             loc_49B138
49B04E:  MOVS            R0, #dword_60; this
49B050:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B054:  ADD.W           R10, SP, #0xD0+var_B0
49B058:  LDR             R2, [R5,#0xC]; CEntity *
49B05A:  MOV             R6, R0
49B05C:  MOV             R0, R8; this
49B05E:  MOV             R1, R9; CPed *
49B060:  MOV             R3, R10; CVector *
49B062:  LDR             R4, [R5,#0x44]
49B064:  BLX             j__ZNK37CEntitySeekPosCalculatorEntitySurface20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorEntitySurface::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49B068:  LDR             R3, [R5,#0x18]; float
49B06A:  MOV.W           R0, #0xFFFFFFFF
49B06E:  VLDR            S0, [R5,#0x1C]
49B072:  MOV             R1, R4; int
49B074:  VLDR            S2, [R5,#0x24]
49B078:  MOV             R2, R10; CVector *
49B07A:  STRD.W          R11, R0, [SP,#0xD0+var_C8]; bool
49B07E:  MOVS            R0, #1
49B080:  STR             R0, [SP,#0xD0+var_C0]; bool
49B082:  MOV             R0, R6; this
49B084:  VSTR            S0, [SP,#0xD0+var_D0]
49B088:  VSTR            S2, [SP,#0xD0+var_CC]
49B08C:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49B090:  B               loc_49B1AE
49B092:  MOVS            R0, #dword_1C; this
49B094:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B098:  MOV.W           R1, #0x3E8; int
49B09C:  MOV             R6, R0
49B09E:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49B0A2:  B               loc_49B13A
49B0A4:  LDR             R3, [R5,#0x18]; float
49B0A6:  MOVS            R1, #0
49B0A8:  LDR             R0, [R5,#8]; this
49B0AA:  ADD             R2, SP, #0xD0+var_48; CVector *
49B0AC:  VLDR            S0, [R5,#0x1C]
49B0B0:  VLDR            S2, [R5,#0x24]
49B0B4:  STR             R1, [SP,#0xD0+var_C8]; bool
49B0B6:  MOV             R1, R9; CPed *
49B0B8:  VSTR            S0, [SP,#0xD0+var_D0]
49B0BC:  VSTR            S2, [SP,#0xD0+var_CC]
49B0C0:  BLX             j__ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb; CTaskComplexFollowNodeRoute::SetTarget(CPed const*,CVector const&,float,float,float,bool)
49B0C4:  B               loc_49B138
49B0C6:  LDR.W           R0, [R8,#0x5A0]
49B0CA:  CMP             R0, #5
49B0CC:  IT NE
49B0CE:  MOVNE.W         R8, #0
49B0D2:  B               loc_49AC62
49B0D4:  VLDR            S2, [SP,#0xD0+var_48]
49B0D8:  VLDR            S4, [R0,#0x10]
49B0DC:  LDR             R2, [R5,#0x18]
49B0DE:  VCMP.F32        S4, S2
49B0E2:  VLDR            S0, [R5,#0x1C]
49B0E6:  VMRS            APSR_nzcv, FPSCR
49B0EA:  BNE             loc_49B11E
49B0EC:  VLDR            S2, [SP,#0xD0+var_48+4]
49B0F0:  VLDR            S4, [R0,#0x14]
49B0F4:  VCMP.F32        S4, S2
49B0F8:  VMRS            APSR_nzcv, FPSCR
49B0FC:  BNE             loc_49B11E
49B0FE:  VLDR            S2, [SP,#0xD0+var_40]
49B102:  VLDR            S4, [R0,#0x18]
49B106:  VCMP.F32        S4, S2
49B10A:  VMRS            APSR_nzcv, FPSCR
49B10E:  BNE             loc_49B11E
49B110:  VLDR            S2, [R0,#0x20]
49B114:  VCMP.F32        S2, S0
49B118:  VMRS            APSR_nzcv, FPSCR
49B11C:  BEQ             loc_49B138
49B11E:  VLDR            D16, [SP,#0xD0+var_48]
49B122:  ORR.W           R1, R1, #4
49B126:  LDR             R3, [SP,#0xD0+var_40]
49B128:  STRD.W          R3, R2, [R0,#0x18]
49B12C:  VSTR            S0, [R0,#0x20]
49B130:  STRB.W          R1, [R0,#0x24]
49B134:  VSTR            D16, [R0,#0x10]
49B138:  LDR             R6, [R5,#8]
49B13A:  LDR             R0, [R5,#0xC]; this
49B13C:  CMP             R0, #0
49B13E:  BEQ             loc_49B1AE
49B140:  LDRB.W          R1, [R0,#0x3A]
49B144:  AND.W           R1, R1, #7
49B148:  CMP             R1, #3
49B14A:  BNE             loc_49B1AE
49B14C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
49B150:  CMP             R0, #1
49B152:  BNE             loc_49B1AE
49B154:  MOV.W           R0, #0xFFFFFFFF; int
49B158:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
49B15C:  LDR.W           R0, [R0,#0x444]
49B160:  MOV.W           R2, #0x2D4
49B164:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x49B16C)
49B166:  LDR             R0, [R0,#0x38]
49B168:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
49B16A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
49B16C:  MLA.W           R0, R0, R2, R1
49B170:  MOV             R1, R9; CPed *
49B172:  ADDS            R0, #8; this
49B174:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
49B178:  CMP             R0, #1
49B17A:  BNE             loc_49B1AE
49B17C:  LDR.W           R0, [R9,#0x450]
49B180:  SUBS            R0, #5
49B182:  CMP             R0, #2
49B184:  BHI             loc_49B1AE
49B186:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x49B190)
49B188:  LDRH.W          R1, [R9,#0x24]
49B18C:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
49B18E:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
49B190:  LDR             R0, [R0]; CTimer::m_FrameCounter
49B192:  ADD             R0, R1
49B194:  LSLS            R0, R0, #0x12
49B196:  BNE             loc_49B1AE
49B198:  MOVS            R0, #0
49B19A:  MOVS            R1, #0x5B ; '['; unsigned __int16
49B19C:  STRD.W          R0, R0, [SP,#0xD0+var_D0]; unsigned __int8
49B1A0:  MOVS            R2, #0; unsigned int
49B1A2:  STR             R0, [SP,#0xD0+var_C8]; unsigned __int8
49B1A4:  MOV             R0, R9; this
49B1A6:  MOV.W           R3, #0x3F800000; float
49B1AA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
49B1AE:  MOV             R0, R6
49B1B0:  ADD             SP, SP, #0x98
49B1B2:  VPOP            {D8-D10}
49B1B6:  ADD             SP, SP, #4
49B1B8:  POP.W           {R8-R11}
49B1BC:  POP             {R4-R7,PC}
