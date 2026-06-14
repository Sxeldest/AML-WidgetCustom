; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE14ControlSubTaskEP4CPed
; Address            : 0x49DD18 - 0x49E30A
; =========================================================

49DD18:  PUSH            {R4-R7,LR}
49DD1A:  ADD             R7, SP, #0xC
49DD1C:  PUSH.W          {R8-R11}
49DD20:  SUB             SP, SP, #4
49DD22:  VPUSH           {D8-D10}
49DD26:  SUB             SP, SP, #0x98; float
49DD28:  MOV             R5, R0
49DD2A:  MOV             R9, R1
49DD2C:  LDRD.W          R6, R4, [R5,#8]
49DD30:  CMP             R4, #0
49DD32:  BEQ.W           loc_49DF9E
49DD36:  LDRB.W          R0, [R4,#0x3A]
49DD3A:  AND.W           R0, R0, #7
49DD3E:  CMP             R0, #3
49DD40:  BNE.W           loc_49DF9E
49DD44:  MOV             R0, R9; this
49DD46:  MOV             R1, R4; CPed *
49DD48:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
49DD4C:  CMP             R0, #1
49DD4E:  BNE.W           loc_49DF9E
49DD52:  LDRB.W          R0, [R4,#0x45]
49DD56:  LSLS            R0, R0, #0x1F
49DD58:  BNE             loc_49DDAA
49DD5A:  LDR.W           R8, [R4,#0x56C]
49DD5E:  CMP.W           R8, #0
49DD62:  BEQ             loc_49DD82
49DD64:  LDRB.W          R0, [R8,#0x3A]
49DD68:  AND.W           R0, R0, #7
49DD6C:  CMP             R0, #2
49DD6E:  BNE             loc_49DD82
49DD70:  LDR.W           R0, [R9,#0x56C]
49DD74:  CMP             R0, R8
49DD76:  ITT NE
49DD78:  LDRNE.W         R0, [R9,#0x588]
49DD7C:  CMPNE           R0, R8
49DD7E:  BEQ.W           loc_49E212
49DD82:  LDR.W           R8, [R4,#0x588]
49DD86:  CMP.W           R8, #0
49DD8A:  BEQ             loc_49DDAA
49DD8C:  LDRB.W          R0, [R8,#0x3A]
49DD90:  AND.W           R0, R0, #7
49DD94:  CMP             R0, #2
49DD96:  BNE             loc_49DDAA
49DD98:  LDR.W           R0, [R9,#0x56C]
49DD9C:  CMP             R0, R8
49DD9E:  ITT NE
49DDA0:  LDRNE.W         R0, [R9,#0x588]
49DDA4:  CMPNE           R0, R8
49DDA6:  BEQ.W           loc_49E212
49DDAA:  MOV.W           R8, #0
49DDAE:  LDR.W           R0, [R9,#0x100]
49DDB2:  CMP.W           R8, #0
49DDB6:  BNE             loc_49DDC2
49DDB8:  CBZ             R0, loc_49DDC2
49DDBA:  MOV             R0, R9; this
49DDBC:  BLX             j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
49DDC0:  B               loc_49DF9E
49DDC2:  CMP.W           R8, #0
49DDC6:  BEQ.W           loc_49DF9E
49DDCA:  CMP             R0, #0
49DDCC:  BNE.W           loc_49DF9E
49DDD0:  LDR             R0, [R5,#8]
49DDD2:  LDR             R1, [R0]
49DDD4:  LDR             R1, [R1,#0x14]
49DDD6:  BLX             R1
49DDD8:  CMP             R0, #0xCB
49DDDA:  BEQ.W           loc_49DF9E
49DDDE:  LDR             R0, [R5,#8]
49DDE0:  MOVS            R2, #1
49DDE2:  MOVS            R3, #0
49DDE4:  LDR             R1, [R0]
49DDE6:  LDR             R4, [R1,#0x1C]
49DDE8:  MOV             R1, R9
49DDEA:  BLX             R4
49DDEC:  CMP             R0, #1
49DDEE:  BNE.W           loc_49DF9E
49DDF2:  LDR.W           R0, [R9,#0x14]
49DDF6:  ADD.W           R4, R8, #4
49DDFA:  LDR.W           R1, [R8,#dword_14]
49DDFE:  ADD.W           R2, R0, #0x30 ; '0'
49DE02:  CMP             R0, #0
49DE04:  IT EQ
49DE06:  ADDEQ.W         R2, R9, #4
49DE0A:  CMP             R1, #0
49DE0C:  MOV             R0, R4
49DE0E:  VLDR            S0, [R2]
49DE12:  VLDR            S2, [R2,#4]
49DE16:  VLDR            S4, [R2,#8]
49DE1A:  IT NE
49DE1C:  ADDNE.W         R0, R1, #0x30 ; '0'
49DE20:  VLDR            S6, [R0]
49DE24:  VSUB.F32        S16, S6, S0
49DE28:  VSTR            S16, [SP,#0xD0+var_48]
49DE2C:  VLDR            S0, [R0,#4]
49DE30:  VSUB.F32        S18, S0, S2
49DE34:  VSTR            S18, [SP,#0xD0+var_48+4]
49DE38:  VLDR            S0, [R0,#8]
49DE3C:  VSUB.F32        S20, S0, S4
49DE40:  VSTR            S20, [SP,#0xD0+var_40]
49DE44:  LDR             R0, [SP,#0xD0+var_40]
49DE46:  STR             R0, [SP,#0xD0+var_50]
49DE48:  ADD             R0, SP, #0xD0+var_58; this
49DE4A:  VLDR            D16, [SP,#0xD0+var_48]
49DE4E:  VSTR            D16, [SP,#0xD0+var_58]
49DE52:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
49DE56:  VMOV.F32        S0, #0.25
49DE5A:  VLDR            S4, [SP,#0xD0+var_58+4]
49DE5E:  VLDR            S6, [SP,#0xD0+var_50]
49DE62:  MOV             R1, R4
49DE64:  VLDR            S2, [SP,#0xD0+var_58]
49DE68:  VMUL.F32        S4, S4, S0
49DE6C:  VMUL.F32        S6, S6, S0
49DE70:  VMUL.F32        S0, S2, S0
49DE74:  VSUB.F32        S4, S18, S4
49DE78:  VSUB.F32        S6, S20, S6
49DE7C:  VSUB.F32        S0, S16, S0
49DE80:  VSTR            S4, [SP,#0xD0+var_48+4]
49DE84:  VSTR            S6, [SP,#0xD0+var_40]
49DE88:  LDR.W           R0, [R8,#dword_14]
49DE8C:  CMP             R0, #0
49DE8E:  IT NE
49DE90:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
49DE94:  VLDR            S2, [R1]
49DE98:  VSUB.F32        S18, S2, S0
49DE9C:  VSTR            S18, [SP,#0xD0+var_48]
49DEA0:  VLDR            S0, [R1,#4]
49DEA4:  VSUB.F32        S20, S0, S4
49DEA8:  VSTR            S20, [SP,#0xD0+var_48+4]
49DEAC:  VLDR            S0, [R1,#8]
49DEB0:  VSUB.F32        S16, S0, S6
49DEB4:  VSTR            S16, [SP,#0xD0+var_40]
49DEB8:  LDR             R0, [SP,#0xD0+var_40]
49DEBA:  STR             R0, [SP,#0xD0+var_60]
49DEBC:  ADD             R0, SP, #0xD0+var_68; this
49DEBE:  VLDR            D16, [SP,#0xD0+var_48]
49DEC2:  VSTR            D16, [SP,#0xD0+var_68]
49DEC6:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
49DECA:  CMP             R0, #1
49DECC:  BNE             loc_49DEE6
49DECE:  LDR             R0, [SP,#0xD0+var_60]
49DED0:  VLDR            D16, [SP,#0xD0+var_68]
49DED4:  STR             R0, [SP,#0xD0+var_40]
49DED6:  VLDR            S16, [SP,#0xD0+var_40]
49DEDA:  VSTR            D16, [SP,#0xD0+var_48]
49DEDE:  VLDR            S18, [SP,#0xD0+var_48]
49DEE2:  VLDR            S20, [SP,#0xD0+var_48+4]
49DEE6:  LDR.W           R0, [R8,#dword_14]
49DEEA:  ADD             R5, SP, #0xD0+var_B0
49DEEC:  CMP             R0, #0
49DEEE:  MOV             R1, R5; CMatrix *
49DEF0:  IT NE
49DEF2:  ADDNE.W         R4, R0, #0x30 ; '0'
49DEF6:  MOVS            R0, #0
49DEF8:  VLDR            S0, [R4]
49DEFC:  VSUB.F32        S0, S18, S0
49DF00:  VSTR            S0, [SP,#0xD0+var_48]
49DF04:  VLDR            S0, [R4,#4]
49DF08:  VSUB.F32        S0, S20, S0
49DF0C:  VSTR            S0, [SP,#0xD0+var_48+4]
49DF10:  VLDR            S0, [R4,#8]
49DF14:  VSUB.F32        S0, S16, S0
49DF18:  VSTR            S0, [SP,#0xD0+var_40]
49DF1C:  STRD.W          R0, R0, [SP,#0xD0+var_70]
49DF20:  LDR.W           R0, [R8,#dword_14]; CMatrix *
49DF24:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
49DF28:  ADD             R0, SP, #0xD0+var_BC; this
49DF2A:  ADD             R2, SP, #0xD0+var_48; CVector *
49DF2C:  MOV             R1, R5; CMatrix *
49DF2E:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
49DF32:  LDRD.W          R0, R1, [SP,#0xD0+var_58]; float
49DF36:  MOVS            R2, #0; float
49DF38:  MOVS            R3, #0; float
49DF3A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
49DF3E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
49DF42:  LDRSB.W         R1, [R9,#0x71C]
49DF46:  VMOV            S0, R0
49DF4A:  ADD             R6, SP, #0xD0+var_BC
49DF4C:  MOV             R0, #0x3E4CCCCD
49DF54:  RSB.W           R1, R1, R1,LSL#3
49DF58:  ADD.W           R1, R9, R1,LSL#2
49DF5C:  LDR.W           R1, [R1,#0x5A4]
49DF60:  LDM             R6, {R2,R3,R6}; int
49DF62:  STR             R1, [SP,#0xD0+var_C4]; int
49DF64:  VCVT.U32.F32    S0, S0
49DF68:  STR             R0, [SP,#0xD0+var_C8]; float
49DF6A:  MOV             R1, R8; this
49DF6C:  VMOV            R0, S0
49DF70:  STRD.W          R6, R0, [SP,#0xD0+var_D0]; int
49DF74:  MOV             R0, R9; int
49DF76:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
49DF7A:  MOVS            R0, #dword_20; this
49DF7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49DF80:  MOV             R6, R0
49DF82:  MOV.W           R0, #0x41000000
49DF86:  STR             R0, [SP,#0xD0+var_D0]; float
49DF88:  MOV             R0, R6; this
49DF8A:  MOV.W           R1, #0x7D0; int
49DF8E:  MOVS            R2, #0; bool
49DF90:  MOVS            R3, #0; bool
49DF92:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49DF96:  MOV             R0, R5; this
49DF98:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
49DF9C:  B               loc_49E2FA
49DF9E:  LDR             R0, [R5,#8]
49DFA0:  LDR             R1, [R0]
49DFA2:  LDR             R1, [R1,#0x14]
49DFA4:  BLX             R1
49DFA6:  MOVW            R1, #0x38A
49DFAA:  CMP             R0, R1
49DFAC:  BEQ             loc_49DFC0
49DFAE:  LDR             R0, [R5,#8]
49DFB0:  LDR             R1, [R0]
49DFB2:  LDR             R1, [R1,#0x14]
49DFB4:  BLX             R1
49DFB6:  MOVW            R1, #0x387
49DFBA:  CMP             R0, R1
49DFBC:  BNE.W           loc_49E286
49DFC0:  LDR             R2, [R5,#0xC]; CEntity *
49DFC2:  CBZ             R2, loc_49DFE4
49DFC4:  LDRB.W          R0, [R5,#0x3C]
49DFC8:  CBZ             R0, loc_49E00C
49DFCA:  LDRB.W          R0, [R5,#0x3D]
49DFCE:  CBZ             R0, loc_49DFFA
49DFD0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49DFD8)
49DFD2:  MOVS            R1, #0
49DFD4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49DFD6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49DFD8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49DFDA:  STRB.W          R1, [R5,#0x3D]
49DFDE:  STR             R0, [R5,#0x34]
49DFE0:  MOV             R1, R0
49DFE2:  B               loc_49E004
49DFE4:  LDR             R0, [R5,#8]
49DFE6:  MOVS            R2, #1
49DFE8:  MOVS            R3, #0
49DFEA:  LDR             R1, [R0]
49DFEC:  LDR             R4, [R1,#0x1C]
49DFEE:  MOV             R1, R9
49DFF0:  BLX             R4
49DFF2:  CMP             R0, #0
49DFF4:  IT NE
49DFF6:  MOVNE           R6, #0
49DFF8:  B               loc_49E286
49DFFA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49E002)
49DFFC:  LDR             R1, [R5,#0x34]
49DFFE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49E000:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49E002:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49E004:  LDR             R3, [R5,#0x38]
49E006:  ADD             R1, R3
49E008:  CMP             R1, R0
49E00A:  BLS             loc_49E030
49E00C:  LDRB.W          R0, [R5,#0x30]
49E010:  CMP             R0, #0
49E012:  BEQ.W           loc_49E286
49E016:  LDRB.W          R0, [R5,#0x31]
49E01A:  CBZ             R0, loc_49E052
49E01C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49E024)
49E01E:  MOVS            R1, #0
49E020:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49E022:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49E024:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49E026:  STRB.W          R1, [R5,#0x31]
49E02A:  STR             R0, [R5,#0x28]
49E02C:  MOV             R1, R0
49E02E:  B               loc_49E05C
49E030:  LDR             R0, [R5,#8]
49E032:  MOVS            R2, #1
49E034:  MOVS            R3, #0
49E036:  LDR             R1, [R0]
49E038:  LDR             R4, [R1,#0x1C]
49E03A:  MOV             R1, R9
49E03C:  BLX             R4
49E03E:  CMP             R0, #1
49E040:  BNE.W           loc_49E286
49E044:  LDRB.W          R0, [R5,#0x54]
49E048:  LSLS            R0, R0, #0x1F
49E04A:  BNE.W           loc_49E1DE
49E04E:  MOVS            R6, #0
49E050:  B               loc_49E286
49E052:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49E05A)
49E054:  LDR             R1, [R5,#0x28]
49E056:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49E058:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49E05A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49E05C:  LDR             R3, [R5,#0x2C]
49E05E:  ADD             R1, R3
49E060:  CMP             R1, R0
49E062:  BHI.W           loc_49E286
49E066:  LDR             R1, [R5,#0x14]
49E068:  MOVS            R3, #1
49E06A:  ADD.W           R8, R5, #0x40 ; '@'
49E06E:  STRB.W          R3, [R5,#0x30]
49E072:  ADD             R3, SP, #0xD0+var_48; CVector *
49E074:  STRD.W          R0, R1, [R5,#0x28]
49E078:  MOV             R0, R8; this
49E07A:  MOV             R1, R9; CPed *
49E07C:  BLX             j__ZNK32CEntitySeekPosCalculatorFixedPos20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorFixedPos::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49E080:  LDR.W           R0, [R9,#0x14]
49E084:  VLDR            S0, [SP,#0xD0+var_48]
49E088:  ADD.W           R1, R0, #0x30 ; '0'
49E08C:  CMP             R0, #0
49E08E:  VLDR            S2, [SP,#0xD0+var_48+4]
49E092:  IT EQ
49E094:  ADDEQ.W         R1, R9, #4
49E098:  VLDR            S4, [R1]
49E09C:  VLDR            S6, [R1,#4]
49E0A0:  VSUB.F32        S0, S4, S0
49E0A4:  LDR             R0, [R5,#8]
49E0A6:  VSUB.F32        S2, S6, S2
49E0AA:  LDR             R1, [R0]
49E0AC:  LDR             R1, [R1,#0x14]
49E0AE:  VMUL.F32        S0, S0, S0
49E0B2:  VMUL.F32        S2, S2, S2
49E0B6:  VADD.F32        S0, S0, S2
49E0BA:  VLDR            S2, =0.0
49E0BE:  VADD.F32        S16, S0, S2
49E0C2:  BLX             R1
49E0C4:  MOVW            R1, #0x38A
49E0C8:  CMP             R0, R1
49E0CA:  BNE             loc_49E154
49E0CC:  VLDR            S0, [R5,#0x20]
49E0D0:  VCMP.F32        S0, #0.0
49E0D4:  VMRS            APSR_nzcv, FPSCR
49E0D8:  BEQ.W           loc_49E1F0
49E0DC:  VMOV.F32        S2, #-1.0
49E0E0:  VADD.F32        S0, S0, S2
49E0E4:  VMUL.F32        S0, S0, S0
49E0E8:  VCMPE.F32       S16, S0
49E0EC:  VMRS            APSR_nzcv, FPSCR
49E0F0:  BGE             loc_49E1F0
49E0F2:  LDR             R0, [R5,#8]
49E0F4:  MOVS            R2, #1
49E0F6:  MOVS            R3, #0
49E0F8:  MOV.W           R11, #0
49E0FC:  LDR             R1, [R0]
49E0FE:  LDR             R6, [R1,#0x1C]
49E100:  MOV             R1, R9
49E102:  BLX             R6
49E104:  CMP             R0, #1
49E106:  BNE.W           loc_49E284
49E10A:  MOVS            R0, #word_28; this
49E10C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E110:  ADD.W           R10, SP, #0xD0+var_B0
49E114:  LDR             R2, [R5,#0xC]; CEntity *
49E116:  MOV             R6, R0
49E118:  MOV             R0, R8; this
49E11A:  MOV             R1, R9; CPed *
49E11C:  MOV             R3, R10; CVector *
49E11E:  LDR             R4, [R5,#0x50]
49E120:  BLX             j__ZNK32CEntitySeekPosCalculatorFixedPos20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorFixedPos::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49E124:  LDR             R3, [R5,#0x18]; float
49E126:  MOV             R0, R6; this
49E128:  VLDR            S0, [R5,#0x1C]
49E12C:  MOV             R1, R4; int
49E12E:  MOV             R2, R10; CVector *
49E130:  STRD.W          R11, R11, [SP,#0xD0+var_CC]; bool
49E134:  VSTR            S0, [SP,#0xD0+var_D0]
49E138:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49E13C:  LDRB.W          R0, [R5,#0x54]
49E140:  LDRB.W          R1, [R6,#0x24]
49E144:  AND.W           R0, R0, #8
49E148:  AND.W           R1, R1, #0xF7
49E14C:  ORRS            R0, R1
49E14E:  STRB.W          R0, [R6,#0x24]
49E152:  B               loc_49E2FA
49E154:  LDR             R0, [R5,#8]
49E156:  LDRB.W          R1, [R0,#0x24]
49E15A:  TST.W           R1, #0x10
49E15E:  BNE.W           loc_49E284
49E162:  VLDR            S0, [R5,#0x20]
49E166:  VCMP.F32        S0, #0.0
49E16A:  VMRS            APSR_nzcv, FPSCR
49E16E:  BEQ             loc_49E220
49E170:  VMOV.F32        S2, #1.0
49E174:  VADD.F32        S0, S0, S2
49E178:  VMUL.F32        S0, S0, S0
49E17C:  VCMPE.F32       S16, S0
49E180:  VMRS            APSR_nzcv, FPSCR
49E184:  BLE             loc_49E220
49E186:  LDR             R1, [R0]
49E188:  MOVS            R2, #1
49E18A:  MOVS            R3, #0
49E18C:  MOV.W           R11, #0
49E190:  LDR             R6, [R1,#0x1C]
49E192:  MOV             R1, R9
49E194:  BLX             R6
49E196:  CMP             R0, #1
49E198:  BNE             loc_49E284
49E19A:  MOVS            R0, #dword_60; this
49E19C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E1A0:  ADD.W           R10, SP, #0xD0+var_B0
49E1A4:  LDR             R2, [R5,#0xC]; CEntity *
49E1A6:  MOV             R6, R0
49E1A8:  MOV             R0, R8; this
49E1AA:  MOV             R1, R9; CPed *
49E1AC:  MOV             R3, R10; CVector *
49E1AE:  LDR             R4, [R5,#0x50]
49E1B0:  BLX             j__ZNK32CEntitySeekPosCalculatorFixedPos20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorFixedPos::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49E1B4:  LDR             R3, [R5,#0x18]; float
49E1B6:  MOV.W           R0, #0xFFFFFFFF
49E1BA:  VLDR            S0, [R5,#0x1C]
49E1BE:  MOV             R1, R4; int
49E1C0:  VLDR            S2, [R5,#0x24]
49E1C4:  MOV             R2, R10; CVector *
49E1C6:  STRD.W          R11, R0, [SP,#0xD0+var_C8]; bool
49E1CA:  MOVS            R0, #1
49E1CC:  STR             R0, [SP,#0xD0+var_C0]; bool
49E1CE:  MOV             R0, R6; this
49E1D0:  VSTR            S0, [SP,#0xD0+var_D0]
49E1D4:  VSTR            S2, [SP,#0xD0+var_CC]
49E1D8:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49E1DC:  B               loc_49E2FA
49E1DE:  MOVS            R0, #dword_1C; this
49E1E0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E1E4:  MOV.W           R1, #0x3E8; int
49E1E8:  MOV             R6, R0
49E1EA:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49E1EE:  B               loc_49E286
49E1F0:  LDR             R3, [R5,#0x18]; float
49E1F2:  MOVS            R1, #0
49E1F4:  LDR             R0, [R5,#8]; this
49E1F6:  ADD             R2, SP, #0xD0+var_48; CVector *
49E1F8:  VLDR            S0, [R5,#0x1C]
49E1FC:  VLDR            S2, [R5,#0x24]
49E200:  STR             R1, [SP,#0xD0+var_C8]; bool
49E202:  MOV             R1, R9; CPed *
49E204:  VSTR            S0, [SP,#0xD0+var_D0]
49E208:  VSTR            S2, [SP,#0xD0+var_CC]
49E20C:  BLX             j__ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb; CTaskComplexFollowNodeRoute::SetTarget(CPed const*,CVector const&,float,float,float,bool)
49E210:  B               loc_49E284
49E212:  LDR.W           R0, [R8,#0x5A0]
49E216:  CMP             R0, #5
49E218:  IT NE
49E21A:  MOVNE.W         R8, #0
49E21E:  B               loc_49DDAE
49E220:  VLDR            S2, [SP,#0xD0+var_48]
49E224:  VLDR            S4, [R0,#0x10]
49E228:  LDR             R2, [R5,#0x18]
49E22A:  VCMP.F32        S4, S2
49E22E:  VLDR            S0, [R5,#0x1C]
49E232:  VMRS            APSR_nzcv, FPSCR
49E236:  BNE             loc_49E26A
49E238:  VLDR            S2, [SP,#0xD0+var_48+4]
49E23C:  VLDR            S4, [R0,#0x14]
49E240:  VCMP.F32        S4, S2
49E244:  VMRS            APSR_nzcv, FPSCR
49E248:  BNE             loc_49E26A
49E24A:  VLDR            S2, [SP,#0xD0+var_40]
49E24E:  VLDR            S4, [R0,#0x18]
49E252:  VCMP.F32        S4, S2
49E256:  VMRS            APSR_nzcv, FPSCR
49E25A:  BNE             loc_49E26A
49E25C:  VLDR            S2, [R0,#0x20]
49E260:  VCMP.F32        S2, S0
49E264:  VMRS            APSR_nzcv, FPSCR
49E268:  BEQ             loc_49E284
49E26A:  VLDR            D16, [SP,#0xD0+var_48]
49E26E:  ORR.W           R1, R1, #4
49E272:  LDR             R3, [SP,#0xD0+var_40]
49E274:  STRD.W          R3, R2, [R0,#0x18]
49E278:  VSTR            S0, [R0,#0x20]
49E27C:  STRB.W          R1, [R0,#0x24]
49E280:  VSTR            D16, [R0,#0x10]
49E284:  LDR             R6, [R5,#8]
49E286:  LDR             R0, [R5,#0xC]; this
49E288:  CMP             R0, #0
49E28A:  BEQ             loc_49E2FA
49E28C:  LDRB.W          R1, [R0,#0x3A]
49E290:  AND.W           R1, R1, #7
49E294:  CMP             R1, #3
49E296:  BNE             loc_49E2FA
49E298:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
49E29C:  CMP             R0, #1
49E29E:  BNE             loc_49E2FA
49E2A0:  MOV.W           R0, #0xFFFFFFFF; int
49E2A4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
49E2A8:  LDR.W           R0, [R0,#0x444]
49E2AC:  MOV.W           R2, #0x2D4
49E2B0:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x49E2B8)
49E2B2:  LDR             R0, [R0,#0x38]
49E2B4:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
49E2B6:  LDR             R1, [R1]; CPedGroups::ms_groups ...
49E2B8:  MLA.W           R0, R0, R2, R1
49E2BC:  MOV             R1, R9; CPed *
49E2BE:  ADDS            R0, #8; this
49E2C0:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
49E2C4:  CMP             R0, #1
49E2C6:  BNE             loc_49E2FA
49E2C8:  LDR.W           R0, [R9,#0x450]
49E2CC:  SUBS            R0, #5
49E2CE:  CMP             R0, #2
49E2D0:  BHI             loc_49E2FA
49E2D2:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x49E2DC)
49E2D4:  LDRH.W          R1, [R9,#0x24]
49E2D8:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
49E2DA:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
49E2DC:  LDR             R0, [R0]; CTimer::m_FrameCounter
49E2DE:  ADD             R0, R1
49E2E0:  LSLS            R0, R0, #0x12
49E2E2:  BNE             loc_49E2FA
49E2E4:  MOVS            R0, #0
49E2E6:  MOVS            R1, #0x5B ; '['; unsigned __int16
49E2E8:  STRD.W          R0, R0, [SP,#0xD0+var_D0]; unsigned __int8
49E2EC:  MOVS            R2, #0; unsigned int
49E2EE:  STR             R0, [SP,#0xD0+var_C8]; unsigned __int8
49E2F0:  MOV             R0, R9; this
49E2F2:  MOV.W           R3, #0x3F800000; float
49E2F6:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
49E2FA:  MOV             R0, R6
49E2FC:  ADD             SP, SP, #0x98
49E2FE:  VPOP            {D8-D10}
49E302:  ADD             SP, SP, #4
49E304:  POP.W           {R8-R11}
49E308:  POP             {R4-R7,PC}
