; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE14ControlSubTaskEP4CPed
; Address            : 0x49CCA4 - 0x49D296
; =========================================================

49CCA4:  PUSH            {R4-R7,LR}
49CCA6:  ADD             R7, SP, #0xC
49CCA8:  PUSH.W          {R8-R11}
49CCAC:  SUB             SP, SP, #4
49CCAE:  VPUSH           {D8-D10}
49CCB2:  SUB             SP, SP, #0x98; float
49CCB4:  MOV             R5, R0
49CCB6:  MOV             R9, R1
49CCB8:  LDRD.W          R6, R4, [R5,#8]
49CCBC:  CMP             R4, #0
49CCBE:  BEQ.W           loc_49CF2A
49CCC2:  LDRB.W          R0, [R4,#0x3A]
49CCC6:  AND.W           R0, R0, #7
49CCCA:  CMP             R0, #3
49CCCC:  BNE.W           loc_49CF2A
49CCD0:  MOV             R0, R9; this
49CCD2:  MOV             R1, R4; CPed *
49CCD4:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
49CCD8:  CMP             R0, #1
49CCDA:  BNE.W           loc_49CF2A
49CCDE:  LDRB.W          R0, [R4,#0x45]
49CCE2:  LSLS            R0, R0, #0x1F
49CCE4:  BNE             loc_49CD36
49CCE6:  LDR.W           R8, [R4,#0x56C]
49CCEA:  CMP.W           R8, #0
49CCEE:  BEQ             loc_49CD0E
49CCF0:  LDRB.W          R0, [R8,#0x3A]
49CCF4:  AND.W           R0, R0, #7
49CCF8:  CMP             R0, #2
49CCFA:  BNE             loc_49CD0E
49CCFC:  LDR.W           R0, [R9,#0x56C]
49CD00:  CMP             R0, R8
49CD02:  ITT NE
49CD04:  LDRNE.W         R0, [R9,#0x588]
49CD08:  CMPNE           R0, R8
49CD0A:  BEQ.W           loc_49D19E
49CD0E:  LDR.W           R8, [R4,#0x588]
49CD12:  CMP.W           R8, #0
49CD16:  BEQ             loc_49CD36
49CD18:  LDRB.W          R0, [R8,#0x3A]
49CD1C:  AND.W           R0, R0, #7
49CD20:  CMP             R0, #2
49CD22:  BNE             loc_49CD36
49CD24:  LDR.W           R0, [R9,#0x56C]
49CD28:  CMP             R0, R8
49CD2A:  ITT NE
49CD2C:  LDRNE.W         R0, [R9,#0x588]
49CD30:  CMPNE           R0, R8
49CD32:  BEQ.W           loc_49D19E
49CD36:  MOV.W           R8, #0
49CD3A:  LDR.W           R0, [R9,#0x100]
49CD3E:  CMP.W           R8, #0
49CD42:  BNE             loc_49CD4E
49CD44:  CBZ             R0, loc_49CD4E
49CD46:  MOV             R0, R9; this
49CD48:  BLX             j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
49CD4C:  B               loc_49CF2A
49CD4E:  CMP.W           R8, #0
49CD52:  BEQ.W           loc_49CF2A
49CD56:  CMP             R0, #0
49CD58:  BNE.W           loc_49CF2A
49CD5C:  LDR             R0, [R5,#8]
49CD5E:  LDR             R1, [R0]
49CD60:  LDR             R1, [R1,#0x14]
49CD62:  BLX             R1
49CD64:  CMP             R0, #0xCB
49CD66:  BEQ.W           loc_49CF2A
49CD6A:  LDR             R0, [R5,#8]
49CD6C:  MOVS            R2, #1
49CD6E:  MOVS            R3, #0
49CD70:  LDR             R1, [R0]
49CD72:  LDR             R4, [R1,#0x1C]
49CD74:  MOV             R1, R9
49CD76:  BLX             R4
49CD78:  CMP             R0, #1
49CD7A:  BNE.W           loc_49CF2A
49CD7E:  LDR.W           R0, [R9,#0x14]
49CD82:  ADD.W           R4, R8, #4
49CD86:  LDR.W           R1, [R8,#dword_14]
49CD8A:  ADD.W           R2, R0, #0x30 ; '0'
49CD8E:  CMP             R0, #0
49CD90:  IT EQ
49CD92:  ADDEQ.W         R2, R9, #4
49CD96:  CMP             R1, #0
49CD98:  MOV             R0, R4
49CD9A:  VLDR            S0, [R2]
49CD9E:  VLDR            S2, [R2,#4]
49CDA2:  VLDR            S4, [R2,#8]
49CDA6:  IT NE
49CDA8:  ADDNE.W         R0, R1, #0x30 ; '0'
49CDAC:  VLDR            S6, [R0]
49CDB0:  VSUB.F32        S16, S6, S0
49CDB4:  VSTR            S16, [SP,#0xD0+var_48]
49CDB8:  VLDR            S0, [R0,#4]
49CDBC:  VSUB.F32        S18, S0, S2
49CDC0:  VSTR            S18, [SP,#0xD0+var_48+4]
49CDC4:  VLDR            S0, [R0,#8]
49CDC8:  VSUB.F32        S20, S0, S4
49CDCC:  VSTR            S20, [SP,#0xD0+var_40]
49CDD0:  LDR             R0, [SP,#0xD0+var_40]
49CDD2:  STR             R0, [SP,#0xD0+var_50]
49CDD4:  ADD             R0, SP, #0xD0+var_58; this
49CDD6:  VLDR            D16, [SP,#0xD0+var_48]
49CDDA:  VSTR            D16, [SP,#0xD0+var_58]
49CDDE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
49CDE2:  VMOV.F32        S0, #0.25
49CDE6:  VLDR            S4, [SP,#0xD0+var_58+4]
49CDEA:  VLDR            S6, [SP,#0xD0+var_50]
49CDEE:  MOV             R1, R4
49CDF0:  VLDR            S2, [SP,#0xD0+var_58]
49CDF4:  VMUL.F32        S4, S4, S0
49CDF8:  VMUL.F32        S6, S6, S0
49CDFC:  VMUL.F32        S0, S2, S0
49CE00:  VSUB.F32        S4, S18, S4
49CE04:  VSUB.F32        S6, S20, S6
49CE08:  VSUB.F32        S0, S16, S0
49CE0C:  VSTR            S4, [SP,#0xD0+var_48+4]
49CE10:  VSTR            S6, [SP,#0xD0+var_40]
49CE14:  LDR.W           R0, [R8,#dword_14]
49CE18:  CMP             R0, #0
49CE1A:  IT NE
49CE1C:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
49CE20:  VLDR            S2, [R1]
49CE24:  VSUB.F32        S18, S2, S0
49CE28:  VSTR            S18, [SP,#0xD0+var_48]
49CE2C:  VLDR            S0, [R1,#4]
49CE30:  VSUB.F32        S20, S0, S4
49CE34:  VSTR            S20, [SP,#0xD0+var_48+4]
49CE38:  VLDR            S0, [R1,#8]
49CE3C:  VSUB.F32        S16, S0, S6
49CE40:  VSTR            S16, [SP,#0xD0+var_40]
49CE44:  LDR             R0, [SP,#0xD0+var_40]
49CE46:  STR             R0, [SP,#0xD0+var_60]
49CE48:  ADD             R0, SP, #0xD0+var_68; this
49CE4A:  VLDR            D16, [SP,#0xD0+var_48]
49CE4E:  VSTR            D16, [SP,#0xD0+var_68]
49CE52:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
49CE56:  CMP             R0, #1
49CE58:  BNE             loc_49CE72
49CE5A:  LDR             R0, [SP,#0xD0+var_60]
49CE5C:  VLDR            D16, [SP,#0xD0+var_68]
49CE60:  STR             R0, [SP,#0xD0+var_40]
49CE62:  VLDR            S16, [SP,#0xD0+var_40]
49CE66:  VSTR            D16, [SP,#0xD0+var_48]
49CE6A:  VLDR            S18, [SP,#0xD0+var_48]
49CE6E:  VLDR            S20, [SP,#0xD0+var_48+4]
49CE72:  LDR.W           R0, [R8,#dword_14]
49CE76:  ADD             R5, SP, #0xD0+var_B0
49CE78:  CMP             R0, #0
49CE7A:  MOV             R1, R5; CMatrix *
49CE7C:  IT NE
49CE7E:  ADDNE.W         R4, R0, #0x30 ; '0'
49CE82:  MOVS            R0, #0
49CE84:  VLDR            S0, [R4]
49CE88:  VSUB.F32        S0, S18, S0
49CE8C:  VSTR            S0, [SP,#0xD0+var_48]
49CE90:  VLDR            S0, [R4,#4]
49CE94:  VSUB.F32        S0, S20, S0
49CE98:  VSTR            S0, [SP,#0xD0+var_48+4]
49CE9C:  VLDR            S0, [R4,#8]
49CEA0:  VSUB.F32        S0, S16, S0
49CEA4:  VSTR            S0, [SP,#0xD0+var_40]
49CEA8:  STRD.W          R0, R0, [SP,#0xD0+var_70]
49CEAC:  LDR.W           R0, [R8,#dword_14]; CMatrix *
49CEB0:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
49CEB4:  ADD             R0, SP, #0xD0+var_BC; this
49CEB6:  ADD             R2, SP, #0xD0+var_48; CVector *
49CEB8:  MOV             R1, R5; CMatrix *
49CEBA:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
49CEBE:  LDRD.W          R0, R1, [SP,#0xD0+var_58]; float
49CEC2:  MOVS            R2, #0; float
49CEC4:  MOVS            R3, #0; float
49CEC6:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
49CECA:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
49CECE:  LDRSB.W         R1, [R9,#0x71C]
49CED2:  VMOV            S0, R0
49CED6:  ADD             R6, SP, #0xD0+var_BC
49CED8:  MOV             R0, #0x3E4CCCCD
49CEE0:  RSB.W           R1, R1, R1,LSL#3
49CEE4:  ADD.W           R1, R9, R1,LSL#2
49CEE8:  LDR.W           R1, [R1,#0x5A4]
49CEEC:  LDM             R6, {R2,R3,R6}; int
49CEEE:  STR             R1, [SP,#0xD0+var_C4]; int
49CEF0:  VCVT.U32.F32    S0, S0
49CEF4:  STR             R0, [SP,#0xD0+var_C8]; float
49CEF6:  MOV             R1, R8; this
49CEF8:  VMOV            R0, S0
49CEFC:  STRD.W          R6, R0, [SP,#0xD0+var_D0]; int
49CF00:  MOV             R0, R9; int
49CF02:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
49CF06:  MOVS            R0, #dword_20; this
49CF08:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49CF0C:  MOV             R6, R0
49CF0E:  MOV.W           R0, #0x41000000
49CF12:  STR             R0, [SP,#0xD0+var_D0]; float
49CF14:  MOV             R0, R6; this
49CF16:  MOV.W           R1, #0x7D0; int
49CF1A:  MOVS            R2, #0; bool
49CF1C:  MOVS            R3, #0; bool
49CF1E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49CF22:  MOV             R0, R5; this
49CF24:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
49CF28:  B               loc_49D286
49CF2A:  LDR             R0, [R5,#8]
49CF2C:  LDR             R1, [R0]
49CF2E:  LDR             R1, [R1,#0x14]
49CF30:  BLX             R1
49CF32:  MOVW            R1, #0x38A
49CF36:  CMP             R0, R1
49CF38:  BEQ             loc_49CF4C
49CF3A:  LDR             R0, [R5,#8]
49CF3C:  LDR             R1, [R0]
49CF3E:  LDR             R1, [R1,#0x14]
49CF40:  BLX             R1
49CF42:  MOVW            R1, #0x387
49CF46:  CMP             R0, R1
49CF48:  BNE.W           loc_49D212
49CF4C:  LDR             R2, [R5,#0xC]; CEntity *
49CF4E:  CBZ             R2, loc_49CF70
49CF50:  LDRB.W          R0, [R5,#0x3C]
49CF54:  CBZ             R0, loc_49CF98
49CF56:  LDRB.W          R0, [R5,#0x3D]
49CF5A:  CBZ             R0, loc_49CF86
49CF5C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49CF64)
49CF5E:  MOVS            R1, #0
49CF60:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49CF62:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49CF64:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49CF66:  STRB.W          R1, [R5,#0x3D]
49CF6A:  STR             R0, [R5,#0x34]
49CF6C:  MOV             R1, R0
49CF6E:  B               loc_49CF90
49CF70:  LDR             R0, [R5,#8]
49CF72:  MOVS            R2, #1
49CF74:  MOVS            R3, #0
49CF76:  LDR             R1, [R0]
49CF78:  LDR             R4, [R1,#0x1C]
49CF7A:  MOV             R1, R9
49CF7C:  BLX             R4
49CF7E:  CMP             R0, #0
49CF80:  IT NE
49CF82:  MOVNE           R6, #0
49CF84:  B               loc_49D212
49CF86:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49CF8E)
49CF88:  LDR             R1, [R5,#0x34]
49CF8A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49CF8C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49CF8E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49CF90:  LDR             R3, [R5,#0x38]
49CF92:  ADD             R1, R3
49CF94:  CMP             R1, R0
49CF96:  BLS             loc_49CFBC
49CF98:  LDRB.W          R0, [R5,#0x30]
49CF9C:  CMP             R0, #0
49CF9E:  BEQ.W           loc_49D212
49CFA2:  LDRB.W          R0, [R5,#0x31]
49CFA6:  CBZ             R0, loc_49CFDE
49CFA8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49CFB0)
49CFAA:  MOVS            R1, #0
49CFAC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49CFAE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49CFB0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49CFB2:  STRB.W          R1, [R5,#0x31]
49CFB6:  STR             R0, [R5,#0x28]
49CFB8:  MOV             R1, R0
49CFBA:  B               loc_49CFE8
49CFBC:  LDR             R0, [R5,#8]
49CFBE:  MOVS            R2, #1
49CFC0:  MOVS            R3, #0
49CFC2:  LDR             R1, [R0]
49CFC4:  LDR             R4, [R1,#0x1C]
49CFC6:  MOV             R1, R9
49CFC8:  BLX             R4
49CFCA:  CMP             R0, #1
49CFCC:  BNE.W           loc_49D212
49CFD0:  LDRB.W          R0, [R5,#0x54]
49CFD4:  LSLS            R0, R0, #0x1F
49CFD6:  BNE.W           loc_49D16A
49CFDA:  MOVS            R6, #0
49CFDC:  B               loc_49D212
49CFDE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49CFE6)
49CFE0:  LDR             R1, [R5,#0x28]
49CFE2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49CFE4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49CFE6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49CFE8:  LDR             R3, [R5,#0x2C]
49CFEA:  ADD             R1, R3
49CFEC:  CMP             R1, R0
49CFEE:  BHI.W           loc_49D212
49CFF2:  LDR             R1, [R5,#0x14]
49CFF4:  MOVS            R3, #1
49CFF6:  ADD.W           R8, R5, #0x40 ; '@'
49CFFA:  STRB.W          R3, [R5,#0x30]
49CFFE:  ADD             R3, SP, #0xD0+var_48; CVector *
49D000:  STRD.W          R0, R1, [R5,#0x28]
49D004:  MOV             R0, R8; this
49D006:  MOV             R1, R9; CPed *
49D008:  BLX             j__ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorDriving::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49D00C:  LDR.W           R0, [R9,#0x14]
49D010:  VLDR            S0, [SP,#0xD0+var_48]
49D014:  ADD.W           R1, R0, #0x30 ; '0'
49D018:  CMP             R0, #0
49D01A:  VLDR            S2, [SP,#0xD0+var_48+4]
49D01E:  IT EQ
49D020:  ADDEQ.W         R1, R9, #4
49D024:  VLDR            S4, [R1]
49D028:  VLDR            S6, [R1,#4]
49D02C:  VSUB.F32        S0, S4, S0
49D030:  LDR             R0, [R5,#8]
49D032:  VSUB.F32        S2, S6, S2
49D036:  LDR             R1, [R0]
49D038:  LDR             R1, [R1,#0x14]
49D03A:  VMUL.F32        S0, S0, S0
49D03E:  VMUL.F32        S2, S2, S2
49D042:  VADD.F32        S0, S0, S2
49D046:  VLDR            S2, =0.0
49D04A:  VADD.F32        S16, S0, S2
49D04E:  BLX             R1
49D050:  MOVW            R1, #0x38A
49D054:  CMP             R0, R1
49D056:  BNE             loc_49D0E0
49D058:  VLDR            S0, [R5,#0x20]
49D05C:  VCMP.F32        S0, #0.0
49D060:  VMRS            APSR_nzcv, FPSCR
49D064:  BEQ.W           loc_49D17C
49D068:  VMOV.F32        S2, #-1.0
49D06C:  VADD.F32        S0, S0, S2
49D070:  VMUL.F32        S0, S0, S0
49D074:  VCMPE.F32       S16, S0
49D078:  VMRS            APSR_nzcv, FPSCR
49D07C:  BGE             loc_49D17C
49D07E:  LDR             R0, [R5,#8]
49D080:  MOVS            R2, #1
49D082:  MOVS            R3, #0
49D084:  MOV.W           R11, #0
49D088:  LDR             R1, [R0]
49D08A:  LDR             R6, [R1,#0x1C]
49D08C:  MOV             R1, R9
49D08E:  BLX             R6
49D090:  CMP             R0, #1
49D092:  BNE.W           loc_49D210
49D096:  MOVS            R0, #word_28; this
49D098:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D09C:  ADD.W           R10, SP, #0xD0+var_B0
49D0A0:  LDR             R2, [R5,#0xC]; CEntity *
49D0A2:  MOV             R6, R0
49D0A4:  MOV             R0, R8; this
49D0A6:  MOV             R1, R9; CPed *
49D0A8:  MOV             R3, R10; CVector *
49D0AA:  LDR             R4, [R5,#0x50]
49D0AC:  BLX             j__ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorDriving::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49D0B0:  LDR             R3, [R5,#0x18]; float
49D0B2:  MOV             R0, R6; this
49D0B4:  VLDR            S0, [R5,#0x1C]
49D0B8:  MOV             R1, R4; int
49D0BA:  MOV             R2, R10; CVector *
49D0BC:  STRD.W          R11, R11, [SP,#0xD0+var_CC]; bool
49D0C0:  VSTR            S0, [SP,#0xD0+var_D0]
49D0C4:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49D0C8:  LDRB.W          R0, [R5,#0x54]
49D0CC:  LDRB.W          R1, [R6,#0x24]
49D0D0:  AND.W           R0, R0, #8
49D0D4:  AND.W           R1, R1, #0xF7
49D0D8:  ORRS            R0, R1
49D0DA:  STRB.W          R0, [R6,#0x24]
49D0DE:  B               loc_49D286
49D0E0:  LDR             R0, [R5,#8]
49D0E2:  LDRB.W          R1, [R0,#0x24]
49D0E6:  TST.W           R1, #0x10
49D0EA:  BNE.W           loc_49D210
49D0EE:  VLDR            S0, [R5,#0x20]
49D0F2:  VCMP.F32        S0, #0.0
49D0F6:  VMRS            APSR_nzcv, FPSCR
49D0FA:  BEQ             loc_49D1AC
49D0FC:  VMOV.F32        S2, #1.0
49D100:  VADD.F32        S0, S0, S2
49D104:  VMUL.F32        S0, S0, S0
49D108:  VCMPE.F32       S16, S0
49D10C:  VMRS            APSR_nzcv, FPSCR
49D110:  BLE             loc_49D1AC
49D112:  LDR             R1, [R0]
49D114:  MOVS            R2, #1
49D116:  MOVS            R3, #0
49D118:  MOV.W           R11, #0
49D11C:  LDR             R6, [R1,#0x1C]
49D11E:  MOV             R1, R9
49D120:  BLX             R6
49D122:  CMP             R0, #1
49D124:  BNE             loc_49D210
49D126:  MOVS            R0, #dword_60; this
49D128:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D12C:  ADD.W           R10, SP, #0xD0+var_B0
49D130:  LDR             R2, [R5,#0xC]; CEntity *
49D132:  MOV             R6, R0
49D134:  MOV             R0, R8; this
49D136:  MOV             R1, R9; CPed *
49D138:  MOV             R3, R10; CVector *
49D13A:  LDR             R4, [R5,#0x50]
49D13C:  BLX             j__ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorDriving::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49D140:  LDR             R3, [R5,#0x18]; float
49D142:  MOV.W           R0, #0xFFFFFFFF
49D146:  VLDR            S0, [R5,#0x1C]
49D14A:  MOV             R1, R4; int
49D14C:  VLDR            S2, [R5,#0x24]
49D150:  MOV             R2, R10; CVector *
49D152:  STRD.W          R11, R0, [SP,#0xD0+var_C8]; bool
49D156:  MOVS            R0, #1
49D158:  STR             R0, [SP,#0xD0+var_C0]; bool
49D15A:  MOV             R0, R6; this
49D15C:  VSTR            S0, [SP,#0xD0+var_D0]
49D160:  VSTR            S2, [SP,#0xD0+var_CC]
49D164:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49D168:  B               loc_49D286
49D16A:  MOVS            R0, #dword_1C; this
49D16C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D170:  MOV.W           R1, #0x3E8; int
49D174:  MOV             R6, R0
49D176:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49D17A:  B               loc_49D212
49D17C:  LDR             R3, [R5,#0x18]; float
49D17E:  MOVS            R1, #0
49D180:  LDR             R0, [R5,#8]; this
49D182:  ADD             R2, SP, #0xD0+var_48; CVector *
49D184:  VLDR            S0, [R5,#0x1C]
49D188:  VLDR            S2, [R5,#0x24]
49D18C:  STR             R1, [SP,#0xD0+var_C8]; bool
49D18E:  MOV             R1, R9; CPed *
49D190:  VSTR            S0, [SP,#0xD0+var_D0]
49D194:  VSTR            S2, [SP,#0xD0+var_CC]
49D198:  BLX             j__ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb; CTaskComplexFollowNodeRoute::SetTarget(CPed const*,CVector const&,float,float,float,bool)
49D19C:  B               loc_49D210
49D19E:  LDR.W           R0, [R8,#0x5A0]
49D1A2:  CMP             R0, #5
49D1A4:  IT NE
49D1A6:  MOVNE.W         R8, #0
49D1AA:  B               loc_49CD3A
49D1AC:  VLDR            S2, [SP,#0xD0+var_48]
49D1B0:  VLDR            S4, [R0,#0x10]
49D1B4:  LDR             R2, [R5,#0x18]
49D1B6:  VCMP.F32        S4, S2
49D1BA:  VLDR            S0, [R5,#0x1C]
49D1BE:  VMRS            APSR_nzcv, FPSCR
49D1C2:  BNE             loc_49D1F6
49D1C4:  VLDR            S2, [SP,#0xD0+var_48+4]
49D1C8:  VLDR            S4, [R0,#0x14]
49D1CC:  VCMP.F32        S4, S2
49D1D0:  VMRS            APSR_nzcv, FPSCR
49D1D4:  BNE             loc_49D1F6
49D1D6:  VLDR            S2, [SP,#0xD0+var_40]
49D1DA:  VLDR            S4, [R0,#0x18]
49D1DE:  VCMP.F32        S4, S2
49D1E2:  VMRS            APSR_nzcv, FPSCR
49D1E6:  BNE             loc_49D1F6
49D1E8:  VLDR            S2, [R0,#0x20]
49D1EC:  VCMP.F32        S2, S0
49D1F0:  VMRS            APSR_nzcv, FPSCR
49D1F4:  BEQ             loc_49D210
49D1F6:  VLDR            D16, [SP,#0xD0+var_48]
49D1FA:  ORR.W           R1, R1, #4
49D1FE:  LDR             R3, [SP,#0xD0+var_40]
49D200:  STRD.W          R3, R2, [R0,#0x18]
49D204:  VSTR            S0, [R0,#0x20]
49D208:  STRB.W          R1, [R0,#0x24]
49D20C:  VSTR            D16, [R0,#0x10]
49D210:  LDR             R6, [R5,#8]
49D212:  LDR             R0, [R5,#0xC]; this
49D214:  CMP             R0, #0
49D216:  BEQ             loc_49D286
49D218:  LDRB.W          R1, [R0,#0x3A]
49D21C:  AND.W           R1, R1, #7
49D220:  CMP             R1, #3
49D222:  BNE             loc_49D286
49D224:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
49D228:  CMP             R0, #1
49D22A:  BNE             loc_49D286
49D22C:  MOV.W           R0, #0xFFFFFFFF; int
49D230:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
49D234:  LDR.W           R0, [R0,#0x444]
49D238:  MOV.W           R2, #0x2D4
49D23C:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x49D244)
49D23E:  LDR             R0, [R0,#0x38]
49D240:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
49D242:  LDR             R1, [R1]; CPedGroups::ms_groups ...
49D244:  MLA.W           R0, R0, R2, R1
49D248:  MOV             R1, R9; CPed *
49D24A:  ADDS            R0, #8; this
49D24C:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
49D250:  CMP             R0, #1
49D252:  BNE             loc_49D286
49D254:  LDR.W           R0, [R9,#0x450]
49D258:  SUBS            R0, #5
49D25A:  CMP             R0, #2
49D25C:  BHI             loc_49D286
49D25E:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x49D268)
49D260:  LDRH.W          R1, [R9,#0x24]
49D264:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
49D266:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
49D268:  LDR             R0, [R0]; CTimer::m_FrameCounter
49D26A:  ADD             R0, R1
49D26C:  LSLS            R0, R0, #0x12
49D26E:  BNE             loc_49D286
49D270:  MOVS            R0, #0
49D272:  MOVS            R1, #0x5B ; '['; unsigned __int16
49D274:  STRD.W          R0, R0, [SP,#0xD0+var_D0]; unsigned __int8
49D278:  MOVS            R2, #0; unsigned int
49D27A:  STR             R0, [SP,#0xD0+var_C8]; unsigned __int8
49D27C:  MOV             R0, R9; this
49D27E:  MOV.W           R3, #0x3F800000; float
49D282:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
49D286:  MOV             R0, R6
49D288:  ADD             SP, SP, #0x98
49D28A:  VPOP            {D8-D10}
49D28E:  ADD             SP, SP, #4
49D290:  POP.W           {R8-R11}
49D294:  POP             {R4-R7,PC}
