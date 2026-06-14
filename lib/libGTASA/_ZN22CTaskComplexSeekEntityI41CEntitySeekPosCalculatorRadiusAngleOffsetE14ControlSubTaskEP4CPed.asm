; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE14ControlSubTaskEP4CPed
; Address            : 0x35DB2C - 0x35E11E
; =========================================================

35DB2C:  PUSH            {R4-R7,LR}
35DB2E:  ADD             R7, SP, #0xC
35DB30:  PUSH.W          {R8-R11}
35DB34:  SUB             SP, SP, #4
35DB36:  VPUSH           {D8-D10}
35DB3A:  SUB             SP, SP, #0x98; float
35DB3C:  MOV             R5, R0
35DB3E:  MOV             R9, R1
35DB40:  LDRD.W          R6, R4, [R5,#8]
35DB44:  CMP             R4, #0
35DB46:  BEQ.W           loc_35DDB2
35DB4A:  LDRB.W          R0, [R4,#0x3A]
35DB4E:  AND.W           R0, R0, #7
35DB52:  CMP             R0, #3
35DB54:  BNE.W           loc_35DDB2
35DB58:  MOV             R0, R9; this
35DB5A:  MOV             R1, R4; CPed *
35DB5C:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
35DB60:  CMP             R0, #1
35DB62:  BNE.W           loc_35DDB2
35DB66:  LDRB.W          R0, [R4,#0x45]
35DB6A:  LSLS            R0, R0, #0x1F
35DB6C:  BNE             loc_35DBBE
35DB6E:  LDR.W           R8, [R4,#0x56C]
35DB72:  CMP.W           R8, #0
35DB76:  BEQ             loc_35DB96
35DB78:  LDRB.W          R0, [R8,#0x3A]
35DB7C:  AND.W           R0, R0, #7
35DB80:  CMP             R0, #2
35DB82:  BNE             loc_35DB96
35DB84:  LDR.W           R0, [R9,#0x56C]
35DB88:  CMP             R0, R8
35DB8A:  ITT NE
35DB8C:  LDRNE.W         R0, [R9,#0x588]
35DB90:  CMPNE           R0, R8
35DB92:  BEQ.W           loc_35E026
35DB96:  LDR.W           R8, [R4,#0x588]
35DB9A:  CMP.W           R8, #0
35DB9E:  BEQ             loc_35DBBE
35DBA0:  LDRB.W          R0, [R8,#0x3A]
35DBA4:  AND.W           R0, R0, #7
35DBA8:  CMP             R0, #2
35DBAA:  BNE             loc_35DBBE
35DBAC:  LDR.W           R0, [R9,#0x56C]
35DBB0:  CMP             R0, R8
35DBB2:  ITT NE
35DBB4:  LDRNE.W         R0, [R9,#0x588]
35DBB8:  CMPNE           R0, R8
35DBBA:  BEQ.W           loc_35E026
35DBBE:  MOV.W           R8, #0
35DBC2:  LDR.W           R0, [R9,#0x100]
35DBC6:  CMP.W           R8, #0
35DBCA:  BNE             loc_35DBD6
35DBCC:  CBZ             R0, loc_35DBD6
35DBCE:  MOV             R0, R9; this
35DBD0:  BLX             j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
35DBD4:  B               loc_35DDB2
35DBD6:  CMP.W           R8, #0
35DBDA:  BEQ.W           loc_35DDB2
35DBDE:  CMP             R0, #0
35DBE0:  BNE.W           loc_35DDB2
35DBE4:  LDR             R0, [R5,#8]
35DBE6:  LDR             R1, [R0]
35DBE8:  LDR             R1, [R1,#0x14]
35DBEA:  BLX             R1
35DBEC:  CMP             R0, #0xCB
35DBEE:  BEQ.W           loc_35DDB2
35DBF2:  LDR             R0, [R5,#8]
35DBF4:  MOVS            R2, #1
35DBF6:  MOVS            R3, #0
35DBF8:  LDR             R1, [R0]
35DBFA:  LDR             R4, [R1,#0x1C]
35DBFC:  MOV             R1, R9
35DBFE:  BLX             R4
35DC00:  CMP             R0, #1
35DC02:  BNE.W           loc_35DDB2
35DC06:  LDR.W           R0, [R9,#0x14]
35DC0A:  ADD.W           R4, R8, #4
35DC0E:  LDR.W           R1, [R8,#dword_14]
35DC12:  ADD.W           R2, R0, #0x30 ; '0'
35DC16:  CMP             R0, #0
35DC18:  IT EQ
35DC1A:  ADDEQ.W         R2, R9, #4
35DC1E:  CMP             R1, #0
35DC20:  MOV             R0, R4
35DC22:  VLDR            S0, [R2]
35DC26:  VLDR            S2, [R2,#4]
35DC2A:  VLDR            S4, [R2,#8]
35DC2E:  IT NE
35DC30:  ADDNE.W         R0, R1, #0x30 ; '0'
35DC34:  VLDR            S6, [R0]
35DC38:  VSUB.F32        S16, S6, S0
35DC3C:  VSTR            S16, [SP,#0xD0+var_48]
35DC40:  VLDR            S0, [R0,#4]
35DC44:  VSUB.F32        S18, S0, S2
35DC48:  VSTR            S18, [SP,#0xD0+var_48+4]
35DC4C:  VLDR            S0, [R0,#8]
35DC50:  VSUB.F32        S20, S0, S4
35DC54:  VSTR            S20, [SP,#0xD0+var_40]
35DC58:  LDR             R0, [SP,#0xD0+var_40]
35DC5A:  STR             R0, [SP,#0xD0+var_50]
35DC5C:  ADD             R0, SP, #0xD0+var_58; this
35DC5E:  VLDR            D16, [SP,#0xD0+var_48]
35DC62:  VSTR            D16, [SP,#0xD0+var_58]
35DC66:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
35DC6A:  VMOV.F32        S0, #0.25
35DC6E:  VLDR            S4, [SP,#0xD0+var_58+4]
35DC72:  VLDR            S6, [SP,#0xD0+var_50]
35DC76:  MOV             R1, R4
35DC78:  VLDR            S2, [SP,#0xD0+var_58]
35DC7C:  VMUL.F32        S4, S4, S0
35DC80:  VMUL.F32        S6, S6, S0
35DC84:  VMUL.F32        S0, S2, S0
35DC88:  VSUB.F32        S4, S18, S4
35DC8C:  VSUB.F32        S6, S20, S6
35DC90:  VSUB.F32        S0, S16, S0
35DC94:  VSTR            S4, [SP,#0xD0+var_48+4]
35DC98:  VSTR            S6, [SP,#0xD0+var_40]
35DC9C:  LDR.W           R0, [R8,#dword_14]
35DCA0:  CMP             R0, #0
35DCA2:  IT NE
35DCA4:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
35DCA8:  VLDR            S2, [R1]
35DCAC:  VSUB.F32        S18, S2, S0
35DCB0:  VSTR            S18, [SP,#0xD0+var_48]
35DCB4:  VLDR            S0, [R1,#4]
35DCB8:  VSUB.F32        S20, S0, S4
35DCBC:  VSTR            S20, [SP,#0xD0+var_48+4]
35DCC0:  VLDR            S0, [R1,#8]
35DCC4:  VSUB.F32        S16, S0, S6
35DCC8:  VSTR            S16, [SP,#0xD0+var_40]
35DCCC:  LDR             R0, [SP,#0xD0+var_40]
35DCCE:  STR             R0, [SP,#0xD0+var_60]
35DCD0:  ADD             R0, SP, #0xD0+var_68; this
35DCD2:  VLDR            D16, [SP,#0xD0+var_48]
35DCD6:  VSTR            D16, [SP,#0xD0+var_68]
35DCDA:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
35DCDE:  CMP             R0, #1
35DCE0:  BNE             loc_35DCFA
35DCE2:  LDR             R0, [SP,#0xD0+var_60]
35DCE4:  VLDR            D16, [SP,#0xD0+var_68]
35DCE8:  STR             R0, [SP,#0xD0+var_40]
35DCEA:  VLDR            S16, [SP,#0xD0+var_40]
35DCEE:  VSTR            D16, [SP,#0xD0+var_48]
35DCF2:  VLDR            S18, [SP,#0xD0+var_48]
35DCF6:  VLDR            S20, [SP,#0xD0+var_48+4]
35DCFA:  LDR.W           R0, [R8,#dword_14]
35DCFE:  ADD             R5, SP, #0xD0+var_B0
35DD00:  CMP             R0, #0
35DD02:  MOV             R1, R5; CMatrix *
35DD04:  IT NE
35DD06:  ADDNE.W         R4, R0, #0x30 ; '0'
35DD0A:  MOVS            R0, #0
35DD0C:  VLDR            S0, [R4]
35DD10:  VSUB.F32        S0, S18, S0
35DD14:  VSTR            S0, [SP,#0xD0+var_48]
35DD18:  VLDR            S0, [R4,#4]
35DD1C:  VSUB.F32        S0, S20, S0
35DD20:  VSTR            S0, [SP,#0xD0+var_48+4]
35DD24:  VLDR            S0, [R4,#8]
35DD28:  VSUB.F32        S0, S16, S0
35DD2C:  VSTR            S0, [SP,#0xD0+var_40]
35DD30:  STRD.W          R0, R0, [SP,#0xD0+var_70]
35DD34:  LDR.W           R0, [R8,#dword_14]; CMatrix *
35DD38:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
35DD3C:  ADD             R0, SP, #0xD0+var_BC; this
35DD3E:  ADD             R2, SP, #0xD0+var_48; CVector *
35DD40:  MOV             R1, R5; CMatrix *
35DD42:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
35DD46:  LDRD.W          R0, R1, [SP,#0xD0+var_58]; float
35DD4A:  MOVS            R2, #0; float
35DD4C:  MOVS            R3, #0; float
35DD4E:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
35DD52:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
35DD56:  LDRSB.W         R1, [R9,#0x71C]
35DD5A:  VMOV            S0, R0
35DD5E:  ADD             R6, SP, #0xD0+var_BC
35DD60:  MOV             R0, #0x3E4CCCCD
35DD68:  RSB.W           R1, R1, R1,LSL#3
35DD6C:  ADD.W           R1, R9, R1,LSL#2
35DD70:  LDR.W           R1, [R1,#0x5A4]
35DD74:  LDM             R6, {R2,R3,R6}; int
35DD76:  STR             R1, [SP,#0xD0+var_C4]; int
35DD78:  VCVT.U32.F32    S0, S0
35DD7C:  STR             R0, [SP,#0xD0+var_C8]; float
35DD7E:  MOV             R1, R8; this
35DD80:  VMOV            R0, S0
35DD84:  STRD.W          R6, R0, [SP,#0xD0+var_D0]; int
35DD88:  MOV             R0, R9; int
35DD8A:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
35DD8E:  MOVS            R0, #dword_20; this
35DD90:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35DD94:  MOV             R6, R0
35DD96:  MOV.W           R0, #0x41000000
35DD9A:  STR             R0, [SP,#0xD0+var_D0]; float
35DD9C:  MOV             R0, R6; this
35DD9E:  MOV.W           R1, #0x7D0; int
35DDA2:  MOVS            R2, #0; bool
35DDA4:  MOVS            R3, #0; bool
35DDA6:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
35DDAA:  MOV             R0, R5; this
35DDAC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
35DDB0:  B               loc_35E10E
35DDB2:  LDR             R0, [R5,#8]
35DDB4:  LDR             R1, [R0]
35DDB6:  LDR             R1, [R1,#0x14]
35DDB8:  BLX             R1
35DDBA:  MOVW            R1, #0x38A
35DDBE:  CMP             R0, R1
35DDC0:  BEQ             loc_35DDD4
35DDC2:  LDR             R0, [R5,#8]
35DDC4:  LDR             R1, [R0]
35DDC6:  LDR             R1, [R1,#0x14]
35DDC8:  BLX             R1
35DDCA:  MOVW            R1, #0x387
35DDCE:  CMP             R0, R1
35DDD0:  BNE.W           loc_35E09A
35DDD4:  LDR             R2, [R5,#0xC]; CEntity *
35DDD6:  CBZ             R2, loc_35DDF8
35DDD8:  LDRB.W          R0, [R5,#0x3C]
35DDDC:  CBZ             R0, loc_35DE20
35DDDE:  LDRB.W          R0, [R5,#0x3D]
35DDE2:  CBZ             R0, loc_35DE0E
35DDE4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35DDEC)
35DDE6:  MOVS            R1, #0
35DDE8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35DDEA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
35DDEC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
35DDEE:  STRB.W          R1, [R5,#0x3D]
35DDF2:  STR             R0, [R5,#0x34]
35DDF4:  MOV             R1, R0
35DDF6:  B               loc_35DE18
35DDF8:  LDR             R0, [R5,#8]
35DDFA:  MOVS            R2, #1
35DDFC:  MOVS            R3, #0
35DDFE:  LDR             R1, [R0]
35DE00:  LDR             R4, [R1,#0x1C]
35DE02:  MOV             R1, R9
35DE04:  BLX             R4
35DE06:  CMP             R0, #0
35DE08:  IT NE
35DE0A:  MOVNE           R6, #0
35DE0C:  B               loc_35E09A
35DE0E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35DE16)
35DE10:  LDR             R1, [R5,#0x34]
35DE12:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35DE14:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
35DE16:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
35DE18:  LDR             R3, [R5,#0x38]
35DE1A:  ADD             R1, R3
35DE1C:  CMP             R1, R0
35DE1E:  BLS             loc_35DE44
35DE20:  LDRB.W          R0, [R5,#0x30]
35DE24:  CMP             R0, #0
35DE26:  BEQ.W           loc_35E09A
35DE2A:  LDRB.W          R0, [R5,#0x31]
35DE2E:  CBZ             R0, loc_35DE66
35DE30:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35DE38)
35DE32:  MOVS            R1, #0
35DE34:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35DE36:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
35DE38:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
35DE3A:  STRB.W          R1, [R5,#0x31]
35DE3E:  STR             R0, [R5,#0x28]
35DE40:  MOV             R1, R0
35DE42:  B               loc_35DE70
35DE44:  LDR             R0, [R5,#8]
35DE46:  MOVS            R2, #1
35DE48:  MOVS            R3, #0
35DE4A:  LDR             R1, [R0]
35DE4C:  LDR             R4, [R1,#0x1C]
35DE4E:  MOV             R1, R9
35DE50:  BLX             R4
35DE52:  CMP             R0, #1
35DE54:  BNE.W           loc_35E09A
35DE58:  LDRB.W          R0, [R5,#0x50]
35DE5C:  LSLS            R0, R0, #0x1F
35DE5E:  BNE.W           loc_35DFF2
35DE62:  MOVS            R6, #0
35DE64:  B               loc_35E09A
35DE66:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35DE6E)
35DE68:  LDR             R1, [R5,#0x28]
35DE6A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35DE6C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
35DE6E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
35DE70:  LDR             R3, [R5,#0x2C]
35DE72:  ADD             R1, R3
35DE74:  CMP             R1, R0
35DE76:  BHI.W           loc_35E09A
35DE7A:  LDR             R1, [R5,#0x14]
35DE7C:  MOVS            R3, #1
35DE7E:  ADD.W           R8, R5, #0x40 ; '@'
35DE82:  STRB.W          R3, [R5,#0x30]
35DE86:  ADD             R3, SP, #0xD0+var_48; CVector *
35DE88:  STRD.W          R0, R1, [R5,#0x28]
35DE8C:  MOV             R0, R8; this
35DE8E:  MOV             R1, R9; CPed *
35DE90:  BLX             j__ZNK41CEntitySeekPosCalculatorRadiusAngleOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorRadiusAngleOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
35DE94:  LDR.W           R0, [R9,#0x14]
35DE98:  VLDR            S0, [SP,#0xD0+var_48]
35DE9C:  ADD.W           R1, R0, #0x30 ; '0'
35DEA0:  CMP             R0, #0
35DEA2:  VLDR            S2, [SP,#0xD0+var_48+4]
35DEA6:  IT EQ
35DEA8:  ADDEQ.W         R1, R9, #4
35DEAC:  VLDR            S4, [R1]
35DEB0:  VLDR            S6, [R1,#4]
35DEB4:  VSUB.F32        S0, S4, S0
35DEB8:  LDR             R0, [R5,#8]
35DEBA:  VSUB.F32        S2, S6, S2
35DEBE:  LDR             R1, [R0]
35DEC0:  LDR             R1, [R1,#0x14]
35DEC2:  VMUL.F32        S0, S0, S0
35DEC6:  VMUL.F32        S2, S2, S2
35DECA:  VADD.F32        S0, S0, S2
35DECE:  VLDR            S2, =0.0
35DED2:  VADD.F32        S16, S0, S2
35DED6:  BLX             R1
35DED8:  MOVW            R1, #0x38A
35DEDC:  CMP             R0, R1
35DEDE:  BNE             loc_35DF68
35DEE0:  VLDR            S0, [R5,#0x20]
35DEE4:  VCMP.F32        S0, #0.0
35DEE8:  VMRS            APSR_nzcv, FPSCR
35DEEC:  BEQ.W           loc_35E004
35DEF0:  VMOV.F32        S2, #-1.0
35DEF4:  VADD.F32        S0, S0, S2
35DEF8:  VMUL.F32        S0, S0, S0
35DEFC:  VCMPE.F32       S16, S0
35DF00:  VMRS            APSR_nzcv, FPSCR
35DF04:  BGE             loc_35E004
35DF06:  LDR             R0, [R5,#8]
35DF08:  MOVS            R2, #1
35DF0A:  MOVS            R3, #0
35DF0C:  MOV.W           R11, #0
35DF10:  LDR             R1, [R0]
35DF12:  LDR             R6, [R1,#0x1C]
35DF14:  MOV             R1, R9
35DF16:  BLX             R6
35DF18:  CMP             R0, #1
35DF1A:  BNE.W           loc_35E098
35DF1E:  MOVS            R0, #word_28; this
35DF20:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35DF24:  ADD.W           R10, SP, #0xD0+var_B0
35DF28:  LDR             R2, [R5,#0xC]; CEntity *
35DF2A:  MOV             R6, R0
35DF2C:  MOV             R0, R8; this
35DF2E:  MOV             R1, R9; CPed *
35DF30:  MOV             R3, R10; CVector *
35DF32:  LDR             R4, [R5,#0x4C]
35DF34:  BLX             j__ZNK41CEntitySeekPosCalculatorRadiusAngleOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorRadiusAngleOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
35DF38:  LDR             R3, [R5,#0x18]; float
35DF3A:  MOV             R0, R6; this
35DF3C:  VLDR            S0, [R5,#0x1C]
35DF40:  MOV             R1, R4; int
35DF42:  MOV             R2, R10; CVector *
35DF44:  STRD.W          R11, R11, [SP,#0xD0+var_CC]; bool
35DF48:  VSTR            S0, [SP,#0xD0+var_D0]
35DF4C:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
35DF50:  LDRB.W          R0, [R5,#0x50]
35DF54:  LDRB.W          R1, [R6,#0x24]
35DF58:  AND.W           R0, R0, #8
35DF5C:  AND.W           R1, R1, #0xF7
35DF60:  ORRS            R0, R1
35DF62:  STRB.W          R0, [R6,#0x24]
35DF66:  B               loc_35E10E
35DF68:  LDR             R0, [R5,#8]
35DF6A:  LDRB.W          R1, [R0,#0x24]
35DF6E:  TST.W           R1, #0x10
35DF72:  BNE.W           loc_35E098
35DF76:  VLDR            S0, [R5,#0x20]
35DF7A:  VCMP.F32        S0, #0.0
35DF7E:  VMRS            APSR_nzcv, FPSCR
35DF82:  BEQ             loc_35E034
35DF84:  VMOV.F32        S2, #1.0
35DF88:  VADD.F32        S0, S0, S2
35DF8C:  VMUL.F32        S0, S0, S0
35DF90:  VCMPE.F32       S16, S0
35DF94:  VMRS            APSR_nzcv, FPSCR
35DF98:  BLE             loc_35E034
35DF9A:  LDR             R1, [R0]
35DF9C:  MOVS            R2, #1
35DF9E:  MOVS            R3, #0
35DFA0:  MOV.W           R11, #0
35DFA4:  LDR             R6, [R1,#0x1C]
35DFA6:  MOV             R1, R9
35DFA8:  BLX             R6
35DFAA:  CMP             R0, #1
35DFAC:  BNE             loc_35E098
35DFAE:  MOVS            R0, #dword_60; this
35DFB0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35DFB4:  ADD.W           R10, SP, #0xD0+var_B0
35DFB8:  LDR             R2, [R5,#0xC]; CEntity *
35DFBA:  MOV             R6, R0
35DFBC:  MOV             R0, R8; this
35DFBE:  MOV             R1, R9; CPed *
35DFC0:  MOV             R3, R10; CVector *
35DFC2:  LDR             R4, [R5,#0x4C]
35DFC4:  BLX             j__ZNK41CEntitySeekPosCalculatorRadiusAngleOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorRadiusAngleOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
35DFC8:  LDR             R3, [R5,#0x18]; float
35DFCA:  MOV.W           R0, #0xFFFFFFFF
35DFCE:  VLDR            S0, [R5,#0x1C]
35DFD2:  MOV             R1, R4; int
35DFD4:  VLDR            S2, [R5,#0x24]
35DFD8:  MOV             R2, R10; CVector *
35DFDA:  STRD.W          R11, R0, [SP,#0xD0+var_C8]; bool
35DFDE:  MOVS            R0, #1
35DFE0:  STR             R0, [SP,#0xD0+var_C0]; bool
35DFE2:  MOV             R0, R6; this
35DFE4:  VSTR            S0, [SP,#0xD0+var_D0]
35DFE8:  VSTR            S2, [SP,#0xD0+var_CC]
35DFEC:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
35DFF0:  B               loc_35E10E
35DFF2:  MOVS            R0, #dword_1C; this
35DFF4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35DFF8:  MOV.W           R1, #0x3E8; int
35DFFC:  MOV             R6, R0
35DFFE:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
35E002:  B               loc_35E09A
35E004:  LDR             R3, [R5,#0x18]; float
35E006:  MOVS            R1, #0
35E008:  LDR             R0, [R5,#8]; this
35E00A:  ADD             R2, SP, #0xD0+var_48; CVector *
35E00C:  VLDR            S0, [R5,#0x1C]
35E010:  VLDR            S2, [R5,#0x24]
35E014:  STR             R1, [SP,#0xD0+var_C8]; bool
35E016:  MOV             R1, R9; CPed *
35E018:  VSTR            S0, [SP,#0xD0+var_D0]
35E01C:  VSTR            S2, [SP,#0xD0+var_CC]
35E020:  BLX             j__ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb; CTaskComplexFollowNodeRoute::SetTarget(CPed const*,CVector const&,float,float,float,bool)
35E024:  B               loc_35E098
35E026:  LDR.W           R0, [R8,#0x5A0]
35E02A:  CMP             R0, #5
35E02C:  IT NE
35E02E:  MOVNE.W         R8, #0
35E032:  B               loc_35DBC2
35E034:  VLDR            S2, [SP,#0xD0+var_48]
35E038:  VLDR            S4, [R0,#0x10]
35E03C:  LDR             R2, [R5,#0x18]
35E03E:  VCMP.F32        S4, S2
35E042:  VLDR            S0, [R5,#0x1C]
35E046:  VMRS            APSR_nzcv, FPSCR
35E04A:  BNE             loc_35E07E
35E04C:  VLDR            S2, [SP,#0xD0+var_48+4]
35E050:  VLDR            S4, [R0,#0x14]
35E054:  VCMP.F32        S4, S2
35E058:  VMRS            APSR_nzcv, FPSCR
35E05C:  BNE             loc_35E07E
35E05E:  VLDR            S2, [SP,#0xD0+var_40]
35E062:  VLDR            S4, [R0,#0x18]
35E066:  VCMP.F32        S4, S2
35E06A:  VMRS            APSR_nzcv, FPSCR
35E06E:  BNE             loc_35E07E
35E070:  VLDR            S2, [R0,#0x20]
35E074:  VCMP.F32        S2, S0
35E078:  VMRS            APSR_nzcv, FPSCR
35E07C:  BEQ             loc_35E098
35E07E:  VLDR            D16, [SP,#0xD0+var_48]
35E082:  ORR.W           R1, R1, #4
35E086:  LDR             R3, [SP,#0xD0+var_40]
35E088:  STRD.W          R3, R2, [R0,#0x18]
35E08C:  VSTR            S0, [R0,#0x20]
35E090:  STRB.W          R1, [R0,#0x24]
35E094:  VSTR            D16, [R0,#0x10]
35E098:  LDR             R6, [R5,#8]
35E09A:  LDR             R0, [R5,#0xC]; this
35E09C:  CMP             R0, #0
35E09E:  BEQ             loc_35E10E
35E0A0:  LDRB.W          R1, [R0,#0x3A]
35E0A4:  AND.W           R1, R1, #7
35E0A8:  CMP             R1, #3
35E0AA:  BNE             loc_35E10E
35E0AC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
35E0B0:  CMP             R0, #1
35E0B2:  BNE             loc_35E10E
35E0B4:  MOV.W           R0, #0xFFFFFFFF; int
35E0B8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35E0BC:  LDR.W           R0, [R0,#0x444]
35E0C0:  MOV.W           R2, #0x2D4
35E0C4:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x35E0CC)
35E0C6:  LDR             R0, [R0,#0x38]
35E0C8:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
35E0CA:  LDR             R1, [R1]; CPedGroups::ms_groups ...
35E0CC:  MLA.W           R0, R0, R2, R1
35E0D0:  MOV             R1, R9; CPed *
35E0D2:  ADDS            R0, #8; this
35E0D4:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
35E0D8:  CMP             R0, #1
35E0DA:  BNE             loc_35E10E
35E0DC:  LDR.W           R0, [R9,#0x450]
35E0E0:  SUBS            R0, #5
35E0E2:  CMP             R0, #2
35E0E4:  BHI             loc_35E10E
35E0E6:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x35E0F0)
35E0E8:  LDRH.W          R1, [R9,#0x24]
35E0EC:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
35E0EE:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
35E0F0:  LDR             R0, [R0]; CTimer::m_FrameCounter
35E0F2:  ADD             R0, R1
35E0F4:  LSLS            R0, R0, #0x12
35E0F6:  BNE             loc_35E10E
35E0F8:  MOVS            R0, #0
35E0FA:  MOVS            R1, #0x5B ; '['; unsigned __int16
35E0FC:  STRD.W          R0, R0, [SP,#0xD0+var_D0]; unsigned __int8
35E100:  MOVS            R2, #0; unsigned int
35E102:  STR             R0, [SP,#0xD0+var_C8]; unsigned __int8
35E104:  MOV             R0, R9; this
35E106:  MOV.W           R3, #0x3F800000; float
35E10A:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
35E10E:  MOV             R0, R6
35E110:  ADD             SP, SP, #0x98
35E112:  VPOP            {D8-D10}
35E116:  ADD             SP, SP, #4
35E118:  POP.W           {R8-R11}
35E11C:  POP             {R4-R7,PC}
