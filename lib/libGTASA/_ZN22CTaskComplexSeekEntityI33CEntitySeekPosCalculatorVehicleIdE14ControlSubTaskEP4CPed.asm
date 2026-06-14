; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE14ControlSubTaskEP4CPed
; Address            : 0x49BC30 - 0x49C222
; =========================================================

49BC30:  PUSH            {R4-R7,LR}
49BC32:  ADD             R7, SP, #0xC
49BC34:  PUSH.W          {R8-R11}
49BC38:  SUB             SP, SP, #4
49BC3A:  VPUSH           {D8-D10}
49BC3E:  SUB             SP, SP, #0x98; float
49BC40:  MOV             R5, R0
49BC42:  MOV             R9, R1
49BC44:  LDRD.W          R6, R4, [R5,#8]
49BC48:  CMP             R4, #0
49BC4A:  BEQ.W           loc_49BEB6
49BC4E:  LDRB.W          R0, [R4,#0x3A]
49BC52:  AND.W           R0, R0, #7
49BC56:  CMP             R0, #3
49BC58:  BNE.W           loc_49BEB6
49BC5C:  MOV             R0, R9; this
49BC5E:  MOV             R1, R4; CPed *
49BC60:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
49BC64:  CMP             R0, #1
49BC66:  BNE.W           loc_49BEB6
49BC6A:  LDRB.W          R0, [R4,#0x45]
49BC6E:  LSLS            R0, R0, #0x1F
49BC70:  BNE             loc_49BCC2
49BC72:  LDR.W           R8, [R4,#0x56C]
49BC76:  CMP.W           R8, #0
49BC7A:  BEQ             loc_49BC9A
49BC7C:  LDRB.W          R0, [R8,#0x3A]
49BC80:  AND.W           R0, R0, #7
49BC84:  CMP             R0, #2
49BC86:  BNE             loc_49BC9A
49BC88:  LDR.W           R0, [R9,#0x56C]
49BC8C:  CMP             R0, R8
49BC8E:  ITT NE
49BC90:  LDRNE.W         R0, [R9,#0x588]
49BC94:  CMPNE           R0, R8
49BC96:  BEQ.W           loc_49C12A
49BC9A:  LDR.W           R8, [R4,#0x588]
49BC9E:  CMP.W           R8, #0
49BCA2:  BEQ             loc_49BCC2
49BCA4:  LDRB.W          R0, [R8,#0x3A]
49BCA8:  AND.W           R0, R0, #7
49BCAC:  CMP             R0, #2
49BCAE:  BNE             loc_49BCC2
49BCB0:  LDR.W           R0, [R9,#0x56C]
49BCB4:  CMP             R0, R8
49BCB6:  ITT NE
49BCB8:  LDRNE.W         R0, [R9,#0x588]
49BCBC:  CMPNE           R0, R8
49BCBE:  BEQ.W           loc_49C12A
49BCC2:  MOV.W           R8, #0
49BCC6:  LDR.W           R0, [R9,#0x100]
49BCCA:  CMP.W           R8, #0
49BCCE:  BNE             loc_49BCDA
49BCD0:  CBZ             R0, loc_49BCDA
49BCD2:  MOV             R0, R9; this
49BCD4:  BLX             j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
49BCD8:  B               loc_49BEB6
49BCDA:  CMP.W           R8, #0
49BCDE:  BEQ.W           loc_49BEB6
49BCE2:  CMP             R0, #0
49BCE4:  BNE.W           loc_49BEB6
49BCE8:  LDR             R0, [R5,#8]
49BCEA:  LDR             R1, [R0]
49BCEC:  LDR             R1, [R1,#0x14]
49BCEE:  BLX             R1
49BCF0:  CMP             R0, #0xCB
49BCF2:  BEQ.W           loc_49BEB6
49BCF6:  LDR             R0, [R5,#8]
49BCF8:  MOVS            R2, #1
49BCFA:  MOVS            R3, #0
49BCFC:  LDR             R1, [R0]
49BCFE:  LDR             R4, [R1,#0x1C]
49BD00:  MOV             R1, R9
49BD02:  BLX             R4
49BD04:  CMP             R0, #1
49BD06:  BNE.W           loc_49BEB6
49BD0A:  LDR.W           R0, [R9,#0x14]
49BD0E:  ADD.W           R4, R8, #4
49BD12:  LDR.W           R1, [R8,#dword_14]
49BD16:  ADD.W           R2, R0, #0x30 ; '0'
49BD1A:  CMP             R0, #0
49BD1C:  IT EQ
49BD1E:  ADDEQ.W         R2, R9, #4
49BD22:  CMP             R1, #0
49BD24:  MOV             R0, R4
49BD26:  VLDR            S0, [R2]
49BD2A:  VLDR            S2, [R2,#4]
49BD2E:  VLDR            S4, [R2,#8]
49BD32:  IT NE
49BD34:  ADDNE.W         R0, R1, #0x30 ; '0'
49BD38:  VLDR            S6, [R0]
49BD3C:  VSUB.F32        S16, S6, S0
49BD40:  VSTR            S16, [SP,#0xD0+var_48]
49BD44:  VLDR            S0, [R0,#4]
49BD48:  VSUB.F32        S18, S0, S2
49BD4C:  VSTR            S18, [SP,#0xD0+var_48+4]
49BD50:  VLDR            S0, [R0,#8]
49BD54:  VSUB.F32        S20, S0, S4
49BD58:  VSTR            S20, [SP,#0xD0+var_40]
49BD5C:  LDR             R0, [SP,#0xD0+var_40]
49BD5E:  STR             R0, [SP,#0xD0+var_50]
49BD60:  ADD             R0, SP, #0xD0+var_58; this
49BD62:  VLDR            D16, [SP,#0xD0+var_48]
49BD66:  VSTR            D16, [SP,#0xD0+var_58]
49BD6A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
49BD6E:  VMOV.F32        S0, #0.25
49BD72:  VLDR            S4, [SP,#0xD0+var_58+4]
49BD76:  VLDR            S6, [SP,#0xD0+var_50]
49BD7A:  MOV             R1, R4
49BD7C:  VLDR            S2, [SP,#0xD0+var_58]
49BD80:  VMUL.F32        S4, S4, S0
49BD84:  VMUL.F32        S6, S6, S0
49BD88:  VMUL.F32        S0, S2, S0
49BD8C:  VSUB.F32        S4, S18, S4
49BD90:  VSUB.F32        S6, S20, S6
49BD94:  VSUB.F32        S0, S16, S0
49BD98:  VSTR            S4, [SP,#0xD0+var_48+4]
49BD9C:  VSTR            S6, [SP,#0xD0+var_40]
49BDA0:  LDR.W           R0, [R8,#dword_14]
49BDA4:  CMP             R0, #0
49BDA6:  IT NE
49BDA8:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
49BDAC:  VLDR            S2, [R1]
49BDB0:  VSUB.F32        S18, S2, S0
49BDB4:  VSTR            S18, [SP,#0xD0+var_48]
49BDB8:  VLDR            S0, [R1,#4]
49BDBC:  VSUB.F32        S20, S0, S4
49BDC0:  VSTR            S20, [SP,#0xD0+var_48+4]
49BDC4:  VLDR            S0, [R1,#8]
49BDC8:  VSUB.F32        S16, S0, S6
49BDCC:  VSTR            S16, [SP,#0xD0+var_40]
49BDD0:  LDR             R0, [SP,#0xD0+var_40]
49BDD2:  STR             R0, [SP,#0xD0+var_60]
49BDD4:  ADD             R0, SP, #0xD0+var_68; this
49BDD6:  VLDR            D16, [SP,#0xD0+var_48]
49BDDA:  VSTR            D16, [SP,#0xD0+var_68]
49BDDE:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
49BDE2:  CMP             R0, #1
49BDE4:  BNE             loc_49BDFE
49BDE6:  LDR             R0, [SP,#0xD0+var_60]
49BDE8:  VLDR            D16, [SP,#0xD0+var_68]
49BDEC:  STR             R0, [SP,#0xD0+var_40]
49BDEE:  VLDR            S16, [SP,#0xD0+var_40]
49BDF2:  VSTR            D16, [SP,#0xD0+var_48]
49BDF6:  VLDR            S18, [SP,#0xD0+var_48]
49BDFA:  VLDR            S20, [SP,#0xD0+var_48+4]
49BDFE:  LDR.W           R0, [R8,#dword_14]
49BE02:  ADD             R5, SP, #0xD0+var_B0
49BE04:  CMP             R0, #0
49BE06:  MOV             R1, R5; CMatrix *
49BE08:  IT NE
49BE0A:  ADDNE.W         R4, R0, #0x30 ; '0'
49BE0E:  MOVS            R0, #0
49BE10:  VLDR            S0, [R4]
49BE14:  VSUB.F32        S0, S18, S0
49BE18:  VSTR            S0, [SP,#0xD0+var_48]
49BE1C:  VLDR            S0, [R4,#4]
49BE20:  VSUB.F32        S0, S20, S0
49BE24:  VSTR            S0, [SP,#0xD0+var_48+4]
49BE28:  VLDR            S0, [R4,#8]
49BE2C:  VSUB.F32        S0, S16, S0
49BE30:  VSTR            S0, [SP,#0xD0+var_40]
49BE34:  STRD.W          R0, R0, [SP,#0xD0+var_70]
49BE38:  LDR.W           R0, [R8,#dword_14]; CMatrix *
49BE3C:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
49BE40:  ADD             R0, SP, #0xD0+var_BC; this
49BE42:  ADD             R2, SP, #0xD0+var_48; CVector *
49BE44:  MOV             R1, R5; CMatrix *
49BE46:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
49BE4A:  LDRD.W          R0, R1, [SP,#0xD0+var_58]; float
49BE4E:  MOVS            R2, #0; float
49BE50:  MOVS            R3, #0; float
49BE52:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
49BE56:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
49BE5A:  LDRSB.W         R1, [R9,#0x71C]
49BE5E:  VMOV            S0, R0
49BE62:  ADD             R6, SP, #0xD0+var_BC
49BE64:  MOV             R0, #0x3E4CCCCD
49BE6C:  RSB.W           R1, R1, R1,LSL#3
49BE70:  ADD.W           R1, R9, R1,LSL#2
49BE74:  LDR.W           R1, [R1,#0x5A4]
49BE78:  LDM             R6, {R2,R3,R6}; int
49BE7A:  STR             R1, [SP,#0xD0+var_C4]; int
49BE7C:  VCVT.U32.F32    S0, S0
49BE80:  STR             R0, [SP,#0xD0+var_C8]; float
49BE82:  MOV             R1, R8; this
49BE84:  VMOV            R0, S0
49BE88:  STRD.W          R6, R0, [SP,#0xD0+var_D0]; int
49BE8C:  MOV             R0, R9; int
49BE8E:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
49BE92:  MOVS            R0, #dword_20; this
49BE94:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49BE98:  MOV             R6, R0
49BE9A:  MOV.W           R0, #0x41000000
49BE9E:  STR             R0, [SP,#0xD0+var_D0]; float
49BEA0:  MOV             R0, R6; this
49BEA2:  MOV.W           R1, #0x7D0; int
49BEA6:  MOVS            R2, #0; bool
49BEA8:  MOVS            R3, #0; bool
49BEAA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49BEAE:  MOV             R0, R5; this
49BEB0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
49BEB4:  B               loc_49C212
49BEB6:  LDR             R0, [R5,#8]
49BEB8:  LDR             R1, [R0]
49BEBA:  LDR             R1, [R1,#0x14]
49BEBC:  BLX             R1
49BEBE:  MOVW            R1, #0x38A
49BEC2:  CMP             R0, R1
49BEC4:  BEQ             loc_49BED8
49BEC6:  LDR             R0, [R5,#8]
49BEC8:  LDR             R1, [R0]
49BECA:  LDR             R1, [R1,#0x14]
49BECC:  BLX             R1
49BECE:  MOVW            R1, #0x387
49BED2:  CMP             R0, R1
49BED4:  BNE.W           loc_49C19E
49BED8:  LDR             R2, [R5,#0xC]; CEntity *
49BEDA:  CBZ             R2, loc_49BEFC
49BEDC:  LDRB.W          R0, [R5,#0x3C]
49BEE0:  CBZ             R0, loc_49BF24
49BEE2:  LDRB.W          R0, [R5,#0x3D]
49BEE6:  CBZ             R0, loc_49BF12
49BEE8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49BEF0)
49BEEA:  MOVS            R1, #0
49BEEC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49BEEE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49BEF0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49BEF2:  STRB.W          R1, [R5,#0x3D]
49BEF6:  STR             R0, [R5,#0x34]
49BEF8:  MOV             R1, R0
49BEFA:  B               loc_49BF1C
49BEFC:  LDR             R0, [R5,#8]
49BEFE:  MOVS            R2, #1
49BF00:  MOVS            R3, #0
49BF02:  LDR             R1, [R0]
49BF04:  LDR             R4, [R1,#0x1C]
49BF06:  MOV             R1, R9
49BF08:  BLX             R4
49BF0A:  CMP             R0, #0
49BF0C:  IT NE
49BF0E:  MOVNE           R6, #0
49BF10:  B               loc_49C19E
49BF12:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49BF1A)
49BF14:  LDR             R1, [R5,#0x34]
49BF16:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49BF18:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49BF1A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49BF1C:  LDR             R3, [R5,#0x38]
49BF1E:  ADD             R1, R3
49BF20:  CMP             R1, R0
49BF22:  BLS             loc_49BF48
49BF24:  LDRB.W          R0, [R5,#0x30]
49BF28:  CMP             R0, #0
49BF2A:  BEQ.W           loc_49C19E
49BF2E:  LDRB.W          R0, [R5,#0x31]
49BF32:  CBZ             R0, loc_49BF6A
49BF34:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49BF3C)
49BF36:  MOVS            R1, #0
49BF38:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49BF3A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49BF3C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49BF3E:  STRB.W          R1, [R5,#0x31]
49BF42:  STR             R0, [R5,#0x28]
49BF44:  MOV             R1, R0
49BF46:  B               loc_49BF74
49BF48:  LDR             R0, [R5,#8]
49BF4A:  MOVS            R2, #1
49BF4C:  MOVS            R3, #0
49BF4E:  LDR             R1, [R0]
49BF50:  LDR             R4, [R1,#0x1C]
49BF52:  MOV             R1, R9
49BF54:  BLX             R4
49BF56:  CMP             R0, #1
49BF58:  BNE.W           loc_49C19E
49BF5C:  LDRB.W          R0, [R5,#0x4C]
49BF60:  LSLS            R0, R0, #0x1F
49BF62:  BNE.W           loc_49C0F6
49BF66:  MOVS            R6, #0
49BF68:  B               loc_49C19E
49BF6A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x49BF72)
49BF6C:  LDR             R1, [R5,#0x28]
49BF6E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
49BF70:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
49BF72:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
49BF74:  LDR             R3, [R5,#0x2C]
49BF76:  ADD             R1, R3
49BF78:  CMP             R1, R0
49BF7A:  BHI.W           loc_49C19E
49BF7E:  LDR             R1, [R5,#0x14]
49BF80:  MOVS            R3, #1
49BF82:  ADD.W           R8, R5, #0x40 ; '@'
49BF86:  STRB.W          R3, [R5,#0x30]
49BF8A:  ADD             R3, SP, #0xD0+var_48; CVector *
49BF8C:  STRD.W          R0, R1, [R5,#0x28]
49BF90:  MOV             R0, R8; this
49BF92:  MOV             R1, R9; CPed *
49BF94:  BLX             j__ZNK33CEntitySeekPosCalculatorVehicleId20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorVehicleId::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49BF98:  LDR.W           R0, [R9,#0x14]
49BF9C:  VLDR            S0, [SP,#0xD0+var_48]
49BFA0:  ADD.W           R1, R0, #0x30 ; '0'
49BFA4:  CMP             R0, #0
49BFA6:  VLDR            S2, [SP,#0xD0+var_48+4]
49BFAA:  IT EQ
49BFAC:  ADDEQ.W         R1, R9, #4
49BFB0:  VLDR            S4, [R1]
49BFB4:  VLDR            S6, [R1,#4]
49BFB8:  VSUB.F32        S0, S4, S0
49BFBC:  LDR             R0, [R5,#8]
49BFBE:  VSUB.F32        S2, S6, S2
49BFC2:  LDR             R1, [R0]
49BFC4:  LDR             R1, [R1,#0x14]
49BFC6:  VMUL.F32        S0, S0, S0
49BFCA:  VMUL.F32        S2, S2, S2
49BFCE:  VADD.F32        S0, S0, S2
49BFD2:  VLDR            S2, =0.0
49BFD6:  VADD.F32        S16, S0, S2
49BFDA:  BLX             R1
49BFDC:  MOVW            R1, #0x38A
49BFE0:  CMP             R0, R1
49BFE2:  BNE             loc_49C06C
49BFE4:  VLDR            S0, [R5,#0x20]
49BFE8:  VCMP.F32        S0, #0.0
49BFEC:  VMRS            APSR_nzcv, FPSCR
49BFF0:  BEQ.W           loc_49C108
49BFF4:  VMOV.F32        S2, #-1.0
49BFF8:  VADD.F32        S0, S0, S2
49BFFC:  VMUL.F32        S0, S0, S0
49C000:  VCMPE.F32       S16, S0
49C004:  VMRS            APSR_nzcv, FPSCR
49C008:  BGE             loc_49C108
49C00A:  LDR             R0, [R5,#8]
49C00C:  MOVS            R2, #1
49C00E:  MOVS            R3, #0
49C010:  MOV.W           R11, #0
49C014:  LDR             R1, [R0]
49C016:  LDR             R6, [R1,#0x1C]
49C018:  MOV             R1, R9
49C01A:  BLX             R6
49C01C:  CMP             R0, #1
49C01E:  BNE.W           loc_49C19C
49C022:  MOVS            R0, #word_28; this
49C024:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49C028:  ADD.W           R10, SP, #0xD0+var_B0
49C02C:  LDR             R2, [R5,#0xC]; CEntity *
49C02E:  MOV             R6, R0
49C030:  MOV             R0, R8; this
49C032:  MOV             R1, R9; CPed *
49C034:  MOV             R3, R10; CVector *
49C036:  LDR             R4, [R5,#0x48]
49C038:  BLX             j__ZNK33CEntitySeekPosCalculatorVehicleId20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorVehicleId::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49C03C:  LDR             R3, [R5,#0x18]; float
49C03E:  MOV             R0, R6; this
49C040:  VLDR            S0, [R5,#0x1C]
49C044:  MOV             R1, R4; int
49C046:  MOV             R2, R10; CVector *
49C048:  STRD.W          R11, R11, [SP,#0xD0+var_CC]; bool
49C04C:  VSTR            S0, [SP,#0xD0+var_D0]
49C050:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49C054:  LDRB.W          R0, [R5,#0x4C]
49C058:  LDRB.W          R1, [R6,#0x24]
49C05C:  AND.W           R0, R0, #8
49C060:  AND.W           R1, R1, #0xF7
49C064:  ORRS            R0, R1
49C066:  STRB.W          R0, [R6,#0x24]
49C06A:  B               loc_49C212
49C06C:  LDR             R0, [R5,#8]
49C06E:  LDRB.W          R1, [R0,#0x24]
49C072:  TST.W           R1, #0x10
49C076:  BNE.W           loc_49C19C
49C07A:  VLDR            S0, [R5,#0x20]
49C07E:  VCMP.F32        S0, #0.0
49C082:  VMRS            APSR_nzcv, FPSCR
49C086:  BEQ             loc_49C138
49C088:  VMOV.F32        S2, #1.0
49C08C:  VADD.F32        S0, S0, S2
49C090:  VMUL.F32        S0, S0, S0
49C094:  VCMPE.F32       S16, S0
49C098:  VMRS            APSR_nzcv, FPSCR
49C09C:  BLE             loc_49C138
49C09E:  LDR             R1, [R0]
49C0A0:  MOVS            R2, #1
49C0A2:  MOVS            R3, #0
49C0A4:  MOV.W           R11, #0
49C0A8:  LDR             R6, [R1,#0x1C]
49C0AA:  MOV             R1, R9
49C0AC:  BLX             R6
49C0AE:  CMP             R0, #1
49C0B0:  BNE             loc_49C19C
49C0B2:  MOVS            R0, #dword_60; this
49C0B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49C0B8:  ADD.W           R10, SP, #0xD0+var_B0
49C0BC:  LDR             R2, [R5,#0xC]; CEntity *
49C0BE:  MOV             R6, R0
49C0C0:  MOV             R0, R8; this
49C0C2:  MOV             R1, R9; CPed *
49C0C4:  MOV             R3, R10; CVector *
49C0C6:  LDR             R4, [R5,#0x48]
49C0C8:  BLX             j__ZNK33CEntitySeekPosCalculatorVehicleId20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorVehicleId::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49C0CC:  LDR             R3, [R5,#0x18]; float
49C0CE:  MOV.W           R0, #0xFFFFFFFF
49C0D2:  VLDR            S0, [R5,#0x1C]
49C0D6:  MOV             R1, R4; int
49C0D8:  VLDR            S2, [R5,#0x24]
49C0DC:  MOV             R2, R10; CVector *
49C0DE:  STRD.W          R11, R0, [SP,#0xD0+var_C8]; bool
49C0E2:  MOVS            R0, #1
49C0E4:  STR             R0, [SP,#0xD0+var_C0]; bool
49C0E6:  MOV             R0, R6; this
49C0E8:  VSTR            S0, [SP,#0xD0+var_D0]
49C0EC:  VSTR            S2, [SP,#0xD0+var_CC]
49C0F0:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49C0F4:  B               loc_49C212
49C0F6:  MOVS            R0, #dword_1C; this
49C0F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49C0FC:  MOV.W           R1, #0x3E8; int
49C100:  MOV             R6, R0
49C102:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49C106:  B               loc_49C19E
49C108:  LDR             R3, [R5,#0x18]; float
49C10A:  MOVS            R1, #0
49C10C:  LDR             R0, [R5,#8]; this
49C10E:  ADD             R2, SP, #0xD0+var_48; CVector *
49C110:  VLDR            S0, [R5,#0x1C]
49C114:  VLDR            S2, [R5,#0x24]
49C118:  STR             R1, [SP,#0xD0+var_C8]; bool
49C11A:  MOV             R1, R9; CPed *
49C11C:  VSTR            S0, [SP,#0xD0+var_D0]
49C120:  VSTR            S2, [SP,#0xD0+var_CC]
49C124:  BLX             j__ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb; CTaskComplexFollowNodeRoute::SetTarget(CPed const*,CVector const&,float,float,float,bool)
49C128:  B               loc_49C19C
49C12A:  LDR.W           R0, [R8,#0x5A0]
49C12E:  CMP             R0, #5
49C130:  IT NE
49C132:  MOVNE.W         R8, #0
49C136:  B               loc_49BCC6
49C138:  VLDR            S2, [SP,#0xD0+var_48]
49C13C:  VLDR            S4, [R0,#0x10]
49C140:  LDR             R2, [R5,#0x18]
49C142:  VCMP.F32        S4, S2
49C146:  VLDR            S0, [R5,#0x1C]
49C14A:  VMRS            APSR_nzcv, FPSCR
49C14E:  BNE             loc_49C182
49C150:  VLDR            S2, [SP,#0xD0+var_48+4]
49C154:  VLDR            S4, [R0,#0x14]
49C158:  VCMP.F32        S4, S2
49C15C:  VMRS            APSR_nzcv, FPSCR
49C160:  BNE             loc_49C182
49C162:  VLDR            S2, [SP,#0xD0+var_40]
49C166:  VLDR            S4, [R0,#0x18]
49C16A:  VCMP.F32        S4, S2
49C16E:  VMRS            APSR_nzcv, FPSCR
49C172:  BNE             loc_49C182
49C174:  VLDR            S2, [R0,#0x20]
49C178:  VCMP.F32        S2, S0
49C17C:  VMRS            APSR_nzcv, FPSCR
49C180:  BEQ             loc_49C19C
49C182:  VLDR            D16, [SP,#0xD0+var_48]
49C186:  ORR.W           R1, R1, #4
49C18A:  LDR             R3, [SP,#0xD0+var_40]
49C18C:  STRD.W          R3, R2, [R0,#0x18]
49C190:  VSTR            S0, [R0,#0x20]
49C194:  STRB.W          R1, [R0,#0x24]
49C198:  VSTR            D16, [R0,#0x10]
49C19C:  LDR             R6, [R5,#8]
49C19E:  LDR             R0, [R5,#0xC]; this
49C1A0:  CMP             R0, #0
49C1A2:  BEQ             loc_49C212
49C1A4:  LDRB.W          R1, [R0,#0x3A]
49C1A8:  AND.W           R1, R1, #7
49C1AC:  CMP             R1, #3
49C1AE:  BNE             loc_49C212
49C1B0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
49C1B4:  CMP             R0, #1
49C1B6:  BNE             loc_49C212
49C1B8:  MOV.W           R0, #0xFFFFFFFF; int
49C1BC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
49C1C0:  LDR.W           R0, [R0,#0x444]
49C1C4:  MOV.W           R2, #0x2D4
49C1C8:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x49C1D0)
49C1CA:  LDR             R0, [R0,#0x38]
49C1CC:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
49C1CE:  LDR             R1, [R1]; CPedGroups::ms_groups ...
49C1D0:  MLA.W           R0, R0, R2, R1
49C1D4:  MOV             R1, R9; CPed *
49C1D6:  ADDS            R0, #8; this
49C1D8:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
49C1DC:  CMP             R0, #1
49C1DE:  BNE             loc_49C212
49C1E0:  LDR.W           R0, [R9,#0x450]
49C1E4:  SUBS            R0, #5
49C1E6:  CMP             R0, #2
49C1E8:  BHI             loc_49C212
49C1EA:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x49C1F4)
49C1EC:  LDRH.W          R1, [R9,#0x24]
49C1F0:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
49C1F2:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
49C1F4:  LDR             R0, [R0]; CTimer::m_FrameCounter
49C1F6:  ADD             R0, R1
49C1F8:  LSLS            R0, R0, #0x12
49C1FA:  BNE             loc_49C212
49C1FC:  MOVS            R0, #0
49C1FE:  MOVS            R1, #0x5B ; '['; unsigned __int16
49C200:  STRD.W          R0, R0, [SP,#0xD0+var_D0]; unsigned __int8
49C204:  MOVS            R2, #0; unsigned int
49C206:  STR             R0, [SP,#0xD0+var_C8]; unsigned __int8
49C208:  MOV             R0, R9; this
49C20A:  MOV.W           R3, #0x3F800000; float
49C20E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
49C212:  MOV             R0, R6
49C214:  ADD             SP, SP, #0x98
49C216:  VPOP            {D8-D10}
49C21A:  ADD             SP, SP, #4
49C21C:  POP.W           {R8-R11}
49C220:  POP             {R4-R7,PC}
