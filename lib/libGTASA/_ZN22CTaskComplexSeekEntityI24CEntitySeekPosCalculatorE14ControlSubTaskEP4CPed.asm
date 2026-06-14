; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE14ControlSubTaskEP4CPed
; Address            : 0x498BB4 - 0x49911A
; =========================================================

498BB4:  PUSH            {R4-R7,LR}
498BB6:  ADD             R7, SP, #0xC
498BB8:  PUSH.W          {R8,R9,R11}
498BBC:  VPUSH           {D8-D10}
498BC0:  SUB             SP, SP, #0x98; float
498BC2:  MOV             R5, R0
498BC4:  MOV             R9, R1
498BC6:  LDRD.W          R6, R4, [R5,#8]
498BCA:  CMP             R4, #0
498BCC:  BEQ             loc_498C56
498BCE:  LDRB.W          R0, [R4,#0x3A]
498BD2:  AND.W           R0, R0, #7
498BD6:  CMP             R0, #3
498BD8:  BNE             loc_498C56
498BDA:  MOV             R0, R9; this
498BDC:  MOV             R1, R4; CPed *
498BDE:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
498BE2:  CMP             R0, #1
498BE4:  BNE             loc_498C56
498BE6:  LDRB.W          R0, [R4,#0x45]
498BEA:  LSLS            R0, R0, #0x1F
498BEC:  BNE             loc_498C3E
498BEE:  LDR.W           R8, [R4,#0x56C]
498BF2:  CMP.W           R8, #0
498BF6:  BEQ             loc_498C16
498BF8:  LDRB.W          R0, [R8,#0x3A]
498BFC:  AND.W           R0, R0, #7
498C00:  CMP             R0, #2
498C02:  BNE             loc_498C16
498C04:  LDR.W           R0, [R9,#0x56C]
498C08:  CMP             R0, R8
498C0A:  ITT NE
498C0C:  LDRNE.W         R0, [R9,#0x588]
498C10:  CMPNE           R0, R8
498C12:  BEQ.W           loc_49906A
498C16:  LDR.W           R8, [R4,#0x588]
498C1A:  CMP.W           R8, #0
498C1E:  BEQ             loc_498C3E
498C20:  LDRB.W          R0, [R8,#0x3A]
498C24:  AND.W           R0, R0, #7
498C28:  CMP             R0, #2
498C2A:  BNE             loc_498C3E
498C2C:  LDR.W           R0, [R9,#0x56C]
498C30:  CMP             R0, R8
498C32:  ITT NE
498C34:  LDRNE.W         R0, [R9,#0x588]
498C38:  CMPNE           R0, R8
498C3A:  BEQ.W           loc_49906A
498C3E:  MOV.W           R8, #0
498C42:  LDR.W           R0, [R9,#0x100]
498C46:  CMP.W           R8, #0
498C4A:  BNE             loc_498D14
498C4C:  CMP             R0, #0
498C4E:  BEQ             loc_498D14
498C50:  MOV             R0, R9; this
498C52:  BLX             j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
498C56:  LDR             R0, [R5,#8]
498C58:  LDR             R1, [R0]
498C5A:  LDR             R1, [R1,#0x14]
498C5C:  BLX             R1
498C5E:  MOVW            R1, #0x38A
498C62:  CMP             R0, R1
498C64:  BEQ             loc_498C78
498C66:  LDR             R0, [R5,#8]
498C68:  LDR             R1, [R0]
498C6A:  LDR             R1, [R1,#0x14]
498C6C:  BLX             R1
498C6E:  MOVW            R1, #0x387
498C72:  CMP             R0, R1
498C74:  BNE.W           loc_499098
498C78:  LDR             R0, [R5,#0xC]
498C7A:  CBZ             R0, loc_498C9E
498C7C:  LDRB.W          R0, [R5,#0x3C]
498C80:  CBZ             R0, loc_498CC8
498C82:  LDRB.W          R0, [R5,#0x3D]
498C86:  CBZ             R0, loc_498CB4
498C88:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x498C92)
498C8C:  MOVS            R1, #0
498C8E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
498C90:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
498C92:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
498C94:  STRB.W          R1, [R5,#0x3D]
498C98:  STR             R0, [R5,#0x34]
498C9A:  MOV             R1, R0
498C9C:  B               loc_498CC0
498C9E:  LDR             R0, [R5,#8]
498CA0:  MOVS            R2, #1
498CA2:  MOVS            R3, #0
498CA4:  LDR             R1, [R0]
498CA6:  LDR             R4, [R1,#0x1C]
498CA8:  MOV             R1, R9
498CAA:  BLX             R4
498CAC:  CMP             R0, #0
498CAE:  IT NE
498CB0:  MOVNE           R6, #0
498CB2:  B               loc_499098
498CB4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x498CBE)
498CB8:  LDR             R1, [R5,#0x34]
498CBA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
498CBC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
498CBE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
498CC0:  LDR             R2, [R5,#0x38]
498CC2:  ADD             R1, R2
498CC4:  CMP             R1, R0
498CC6:  BLS             loc_498CF2
498CC8:  LDRB.W          R0, [R5,#0x30]
498CCC:  CMP             R0, #0
498CCE:  BEQ.W           loc_499098
498CD2:  LDRB.W          R0, [R5,#0x31]
498CD6:  CMP             R0, #0
498CD8:  BEQ.W           loc_498EEA
498CDC:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x498CE6)
498CE0:  MOVS            R1, #0
498CE2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
498CE4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
498CE6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
498CE8:  STRB.W          R1, [R5,#0x31]
498CEC:  STR             R0, [R5,#0x28]
498CEE:  MOV             R1, R0
498CF0:  B               loc_498EF4
498CF2:  LDR             R0, [R5,#8]
498CF4:  MOVS            R2, #1
498CF6:  MOVS            R3, #0
498CF8:  LDR             R1, [R0]
498CFA:  LDR             R4, [R1,#0x1C]
498CFC:  MOV             R1, R9
498CFE:  BLX             R4
498D00:  CMP             R0, #1
498D02:  BNE.W           loc_499098
498D06:  LDRB.W          R0, [R5,#0x48]
498D0A:  LSLS            R0, R0, #0x1F
498D0C:  BNE.W           loc_499036
498D10:  MOVS            R6, #0
498D12:  B               loc_499098
498D14:  CMP.W           R8, #0
498D18:  BEQ             loc_498C56
498D1A:  CMP             R0, #0
498D1C:  BNE             loc_498C56
498D1E:  LDR             R0, [R5,#8]
498D20:  LDR             R1, [R0]
498D22:  LDR             R1, [R1,#0x14]
498D24:  BLX             R1
498D26:  CMP             R0, #0xCB
498D28:  BEQ             loc_498C56
498D2A:  LDR             R0, [R5,#8]
498D2C:  MOVS            R2, #1
498D2E:  MOVS            R3, #0
498D30:  LDR             R1, [R0]
498D32:  LDR             R4, [R1,#0x1C]
498D34:  MOV             R1, R9
498D36:  BLX             R4
498D38:  CMP             R0, #1
498D3A:  BNE.W           loc_498C56
498D3E:  LDR.W           R0, [R9,#0x14]
498D42:  ADD.W           R4, R8, #4
498D46:  LDR.W           R1, [R8,#dword_14]
498D4A:  ADD.W           R2, R0, #0x30 ; '0'
498D4E:  CMP             R0, #0
498D50:  IT EQ
498D52:  ADDEQ.W         R2, R9, #4
498D56:  CMP             R1, #0
498D58:  MOV             R0, R4
498D5A:  VLDR            S0, [R2]
498D5E:  VLDR            S2, [R2,#4]
498D62:  VLDR            S4, [R2,#8]
498D66:  IT NE
498D68:  ADDNE.W         R0, R1, #0x30 ; '0'
498D6C:  VLDR            S6, [R0]
498D70:  VSUB.F32        S16, S6, S0
498D74:  VSTR            S16, [SP,#0xC8+var_40]
498D78:  VLDR            S0, [R0,#4]
498D7C:  VSUB.F32        S18, S0, S2
498D80:  VSTR            S18, [SP,#0xC8+var_40+4]
498D84:  VLDR            S0, [R0,#8]
498D88:  VSUB.F32        S20, S0, S4
498D8C:  VSTR            S20, [SP,#0xC8+var_38]
498D90:  LDR             R0, [SP,#0xC8+var_38]
498D92:  STR             R0, [SP,#0xC8+var_48]
498D94:  ADD             R0, SP, #0xC8+var_50; this
498D96:  VLDR            D16, [SP,#0xC8+var_40]
498D9A:  VSTR            D16, [SP,#0xC8+var_50]
498D9E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
498DA2:  VMOV.F32        S0, #0.25
498DA6:  VLDR            S4, [SP,#0xC8+var_50+4]
498DAA:  VLDR            S6, [SP,#0xC8+var_48]
498DAE:  MOV             R1, R4
498DB0:  VLDR            S2, [SP,#0xC8+var_50]
498DB4:  VMUL.F32        S4, S4, S0
498DB8:  VMUL.F32        S6, S6, S0
498DBC:  VMUL.F32        S0, S2, S0
498DC0:  VSUB.F32        S4, S18, S4
498DC4:  VSUB.F32        S6, S20, S6
498DC8:  VSUB.F32        S0, S16, S0
498DCC:  VSTR            S4, [SP,#0xC8+var_40+4]
498DD0:  VSTR            S6, [SP,#0xC8+var_38]
498DD4:  LDR.W           R0, [R8,#dword_14]
498DD8:  CMP             R0, #0
498DDA:  IT NE
498DDC:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
498DE0:  VLDR            S2, [R1]
498DE4:  VSUB.F32        S18, S2, S0
498DE8:  VSTR            S18, [SP,#0xC8+var_40]
498DEC:  VLDR            S0, [R1,#4]
498DF0:  VSUB.F32        S20, S0, S4
498DF4:  VSTR            S20, [SP,#0xC8+var_40+4]
498DF8:  VLDR            S0, [R1,#8]
498DFC:  VSUB.F32        S16, S0, S6
498E00:  VSTR            S16, [SP,#0xC8+var_38]
498E04:  LDR             R0, [SP,#0xC8+var_38]
498E06:  STR             R0, [SP,#0xC8+var_58]
498E08:  ADD             R0, SP, #0xC8+var_60; this
498E0A:  VLDR            D16, [SP,#0xC8+var_40]
498E0E:  VSTR            D16, [SP,#0xC8+var_60]
498E12:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
498E16:  CMP             R0, #1
498E18:  BNE             loc_498E32
498E1A:  LDR             R0, [SP,#0xC8+var_58]
498E1C:  VLDR            D16, [SP,#0xC8+var_60]
498E20:  STR             R0, [SP,#0xC8+var_38]
498E22:  VLDR            S16, [SP,#0xC8+var_38]
498E26:  VSTR            D16, [SP,#0xC8+var_40]
498E2A:  VLDR            S18, [SP,#0xC8+var_40]
498E2E:  VLDR            S20, [SP,#0xC8+var_40+4]
498E32:  LDR.W           R0, [R8,#dword_14]
498E36:  ADD             R5, SP, #0xC8+var_A8
498E38:  CMP             R0, #0
498E3A:  MOV             R1, R5; CMatrix *
498E3C:  IT NE
498E3E:  ADDNE.W         R4, R0, #0x30 ; '0'
498E42:  MOVS            R0, #0
498E44:  VLDR            S0, [R4]
498E48:  VSUB.F32        S0, S18, S0
498E4C:  VSTR            S0, [SP,#0xC8+var_40]
498E50:  VLDR            S0, [R4,#4]
498E54:  VSUB.F32        S0, S20, S0
498E58:  VSTR            S0, [SP,#0xC8+var_40+4]
498E5C:  VLDR            S0, [R4,#8]
498E60:  VSUB.F32        S0, S16, S0
498E64:  VSTR            S0, [SP,#0xC8+var_38]
498E68:  STRD.W          R0, R0, [SP,#0xC8+var_68]
498E6C:  LDR.W           R0, [R8,#dword_14]; CMatrix *
498E70:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
498E74:  ADD             R0, SP, #0xC8+var_B4; this
498E76:  ADD             R2, SP, #0xC8+var_40; CVector *
498E78:  MOV             R1, R5; CMatrix *
498E7A:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
498E7E:  LDRD.W          R0, R1, [SP,#0xC8+var_50]; float
498E82:  MOVS            R2, #0; float
498E84:  MOVS            R3, #0; float
498E86:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
498E8A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
498E8E:  LDRSB.W         R1, [R9,#0x71C]
498E92:  VMOV            S0, R0
498E96:  ADD             R6, SP, #0xC8+var_B4
498E98:  MOV             R0, #0x3E4CCCCD
498EA0:  RSB.W           R1, R1, R1,LSL#3
498EA4:  ADD.W           R1, R9, R1,LSL#2
498EA8:  LDR.W           R1, [R1,#0x5A4]
498EAC:  LDM             R6, {R2,R3,R6}; int
498EAE:  STR             R1, [SP,#0xC8+var_BC]; int
498EB0:  VCVT.U32.F32    S0, S0
498EB4:  STR             R0, [SP,#0xC8+var_C0]; float
498EB6:  MOV             R1, R8; this
498EB8:  VMOV            R0, S0
498EBC:  STRD.W          R6, R0, [SP,#0xC8+var_C8]; int
498EC0:  MOV             R0, R9; int
498EC2:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
498EC6:  MOVS            R0, #dword_20; this
498EC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498ECC:  MOV             R6, R0
498ECE:  MOV.W           R0, #0x41000000
498ED2:  STR             R0, [SP,#0xC8+var_C8]; float
498ED4:  MOV             R0, R6; this
498ED6:  MOV.W           R1, #0x7D0; int
498EDA:  MOVS            R2, #0; bool
498EDC:  MOVS            R3, #0; bool
498EDE:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
498EE2:  MOV             R0, R5; this
498EE4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
498EE8:  B               loc_49910C
498EEA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x498EF2)
498EEC:  LDR             R1, [R5,#0x28]
498EEE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
498EF0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
498EF2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
498EF4:  LDR             R2, [R5,#0x2C]
498EF6:  ADD             R1, R2
498EF8:  CMP             R1, R0
498EFA:  BHI.W           loc_499098
498EFE:  LDR             R1, [R5,#0x14]
498F00:  MOVS            R2, #1
498F02:  STRB.W          R2, [R5,#0x30]
498F06:  STRD.W          R0, R1, [R5,#0x28]
498F0A:  LDR.W           R0, [R9,#0x14]
498F0E:  ADD.W           R1, R0, #0x30 ; '0'
498F12:  CMP             R0, #0
498F14:  IT EQ
498F16:  ADDEQ.W         R1, R9, #4
498F1A:  LDR             R0, [R5,#8]
498F1C:  VLDR            S0, [R1]
498F20:  VLDR            S2, [R1,#4]
498F24:  LDR             R1, [R0]
498F26:  VSUB.F32        S2, S2, S0
498F2A:  VSUB.F32        S0, S0, S0
498F2E:  LDR             R1, [R1,#0x14]
498F30:  VMUL.F32        S2, S2, S2
498F34:  VMUL.F32        S0, S0, S0
498F38:  VADD.F32        S0, S0, S2
498F3C:  VLDR            S2, =0.0
498F40:  VADD.F32        S16, S0, S2
498F44:  BLX             R1
498F46:  MOVW            R1, #0x38A
498F4A:  CMP             R0, R1
498F4C:  BNE             loc_498FBE
498F4E:  VLDR            S0, [R5,#0x20]
498F52:  VCMP.F32        S0, #0.0
498F56:  VMRS            APSR_nzcv, FPSCR
498F5A:  BEQ             loc_499048
498F5C:  VMOV.F32        S2, #-1.0
498F60:  VADD.F32        S0, S0, S2
498F64:  VMUL.F32        S0, S0, S0
498F68:  VCMPE.F32       S16, S0
498F6C:  VMRS            APSR_nzcv, FPSCR
498F70:  BGE             loc_499048
498F72:  LDR             R0, [R5,#8]
498F74:  MOVS            R2, #1
498F76:  MOVS            R3, #0
498F78:  MOVS            R4, #0
498F7A:  LDR             R1, [R0]
498F7C:  LDR             R6, [R1,#0x1C]
498F7E:  MOV             R1, R9
498F80:  BLX             R6
498F82:  CMP             R0, #1
498F84:  BNE.W           loc_499096
498F88:  MOVS            R0, #word_28; this
498F8A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
498F8E:  LDR             R1, [R5,#0x44]; int
498F90:  ADD             R2, SP, #0xC8+var_A8; CVector *
498F92:  LDR             R3, [R5,#0x18]; float
498F94:  MOV             R6, R0
498F96:  VLDR            S0, [R5,#0x1C]
498F9A:  STRD.W          R4, R4, [SP,#0xC8+var_C4]; bool
498F9E:  VSTR            S0, [SP,#0xC8+var_C8]
498FA2:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
498FA6:  LDRB.W          R0, [R5,#0x48]
498FAA:  LDRB.W          R1, [R6,#0x24]
498FAE:  AND.W           R0, R0, #8
498FB2:  AND.W           R1, R1, #0xF7
498FB6:  ORRS            R0, R1
498FB8:  STRB.W          R0, [R6,#0x24]
498FBC:  B               loc_49910C
498FBE:  LDR             R0, [R5,#8]
498FC0:  LDRB.W          R1, [R0,#0x24]
498FC4:  TST.W           R1, #0x10
498FC8:  BNE             loc_499096
498FCA:  VLDR            S0, [R5,#0x20]
498FCE:  VCMP.F32        S0, #0.0
498FD2:  VMRS            APSR_nzcv, FPSCR
498FD6:  BEQ             loc_499078
498FD8:  VMOV.F32        S2, #1.0
498FDC:  VADD.F32        S0, S0, S2
498FE0:  VMUL.F32        S0, S0, S0
498FE4:  VCMPE.F32       S16, S0
498FE8:  VMRS            APSR_nzcv, FPSCR
498FEC:  BLE             loc_499078
498FEE:  LDR             R1, [R0]
498FF0:  MOVS            R2, #1
498FF2:  MOVS            R3, #0
498FF4:  MOV.W           R8, #1
498FF8:  MOVS            R4, #0
498FFA:  LDR             R6, [R1,#0x1C]
498FFC:  MOV             R1, R9
498FFE:  BLX             R6
499000:  CMP             R0, #1
499002:  BNE             loc_499096
499004:  MOVS            R0, #dword_60; this
499006:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49900A:  LDR             R1, [R5,#0x44]; int
49900C:  MOV             R6, R0
49900E:  LDR             R3, [R5,#0x18]; float
499010:  MOV.W           R0, #0xFFFFFFFF
499014:  VLDR            S0, [R5,#0x1C]
499018:  ADD             R2, SP, #0xC8+var_A8; CVector *
49901A:  VLDR            S2, [R5,#0x24]
49901E:  STRD.W          R4, R0, [SP,#0xC8+var_C0]; bool
499022:  MOV             R0, R6; this
499024:  STR.W           R8, [SP,#0xC8+var_B8]; bool
499028:  VSTR            S0, [SP,#0xC8+var_C8]
49902C:  VSTR            S2, [SP,#0xC8+var_C4]
499030:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
499034:  B               loc_49910C
499036:  MOVS            R0, #dword_1C; this
499038:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49903C:  MOV.W           R1, #0x3E8; int
499040:  MOV             R6, R0
499042:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
499046:  B               loc_499098
499048:  LDR             R3, [R5,#0x18]; float
49904A:  MOVS            R1, #0
49904C:  LDR             R0, [R5,#8]; this
49904E:  ADD             R2, SP, #0xC8+var_40; CVector *
499050:  VLDR            S0, [R5,#0x1C]
499054:  VLDR            S2, [R5,#0x24]
499058:  STR             R1, [SP,#0xC8+var_C0]; bool
49905A:  MOV             R1, R9; CPed *
49905C:  VSTR            S0, [SP,#0xC8+var_C8]
499060:  VSTR            S2, [SP,#0xC8+var_C4]
499064:  BLX             j__ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb; CTaskComplexFollowNodeRoute::SetTarget(CPed const*,CVector const&,float,float,float,bool)
499068:  B               loc_499096
49906A:  LDR.W           R0, [R8,#0x5A0]
49906E:  CMP             R0, #5
499070:  IT NE
499072:  MOVNE.W         R8, #0
499076:  B               loc_498C42
499078:  VLDR            D16, [SP,#0xC8+var_40]
49907C:  ADD.W           R12, R0, #0x18
499080:  LDR             R2, [SP,#0xC8+var_38]
499082:  ORR.W           R1, R1, #4
499086:  LDRD.W          R3, R6, [R5,#0x18]
49908A:  STM.W           R12, {R2,R3,R6}
49908E:  STRB.W          R1, [R0,#0x24]
499092:  VSTR            D16, [R0,#0x10]
499096:  LDR             R6, [R5,#8]
499098:  LDR             R0, [R5,#0xC]; this
49909A:  CMP             R0, #0
49909C:  BEQ             loc_49910C
49909E:  LDRB.W          R1, [R0,#0x3A]
4990A2:  AND.W           R1, R1, #7
4990A6:  CMP             R1, #3
4990A8:  BNE             loc_49910C
4990AA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4990AE:  CMP             R0, #1
4990B0:  BNE             loc_49910C
4990B2:  MOV.W           R0, #0xFFFFFFFF; int
4990B6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4990BA:  LDR.W           R0, [R0,#0x444]
4990BE:  MOV.W           R2, #0x2D4
4990C2:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4990CA)
4990C4:  LDR             R0, [R0,#0x38]
4990C6:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4990C8:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4990CA:  MLA.W           R0, R0, R2, R1
4990CE:  MOV             R1, R9; CPed *
4990D0:  ADDS            R0, #8; this
4990D2:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
4990D6:  CMP             R0, #1
4990D8:  BNE             loc_49910C
4990DA:  LDR.W           R0, [R9,#0x450]
4990DE:  SUBS            R0, #5
4990E0:  CMP             R0, #2
4990E2:  BHI             loc_49910C
4990E4:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4990EE)
4990E6:  LDRH.W          R1, [R9,#0x24]
4990EA:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
4990EC:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
4990EE:  LDR             R0, [R0]; CTimer::m_FrameCounter
4990F0:  ADD             R0, R1
4990F2:  LSLS            R0, R0, #0x12
4990F4:  BNE             loc_49910C
4990F6:  MOVS            R0, #0
4990F8:  MOVS            R1, #0x5B ; '['; unsigned __int16
4990FA:  STRD.W          R0, R0, [SP,#0xC8+var_C8]; unsigned __int8
4990FE:  MOVS            R2, #0; unsigned int
499100:  STR             R0, [SP,#0xC8+var_C0]; unsigned __int8
499102:  MOV             R0, R9; this
499104:  MOV.W           R3, #0x3F800000; float
499108:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
49910C:  MOV             R0, R6
49910E:  ADD             SP, SP, #0x98
499110:  VPOP            {D8-D10}
499114:  POP.W           {R8,R9,R11}
499118:  POP             {R4-R7,PC}
