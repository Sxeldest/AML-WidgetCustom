; =========================================================
; Game Engine Function: _ZN8CCarCtrl16UpdateCarOnRailsEP8CVehicle
; Address            : 0x2ECC14 - 0x2ED058
; =========================================================

2ECC14:  PUSH            {R4-R7,LR}
2ECC16:  ADD             R7, SP, #0xC
2ECC18:  PUSH.W          {R8-R11}
2ECC1C:  SUB             SP, SP, #4
2ECC1E:  VPUSH           {D8-D12}
2ECC22:  SUB             SP, SP, #0x78; CVector *
2ECC24:  MOV             R4, R0
2ECC26:  ADD.W           R0, R4, #0x394; this
2ECC2A:  LDRH.W          R2, [R4,#0x3A8]
2ECC2E:  MOVW            R1, #0xFFFF
2ECC32:  CMP             R2, R1
2ECC34:  BEQ             loc_2ECCB0
2ECC36:  LDR.W           R3, =(ThePaths_ptr - 0x2ECC42)
2ECC3A:  UBFX.W          R2, R2, #0xA, #6
2ECC3E:  ADD             R3, PC; ThePaths_ptr
2ECC40:  LDR             R3, [R3]; ThePaths
2ECC42:  ADD.W           R2, R3, R2,LSL#2
2ECC46:  LDR.W           R2, [R2,#0x804]
2ECC4A:  CMP             R2, #0
2ECC4C:  ITT NE
2ECC4E:  LDRHNE.W        R2, [R4,#0x3AA]
2ECC52:  CMPNE           R2, R1
2ECC54:  BEQ             loc_2ECCB0
2ECC56:  LDR.W           R3, =(ThePaths_ptr - 0x2ECC62)
2ECC5A:  UBFX.W          R2, R2, #0xA, #6
2ECC5E:  ADD             R3, PC; ThePaths_ptr
2ECC60:  LDR             R3, [R3]; ThePaths
2ECC62:  ADD.W           R2, R3, R2,LSL#2
2ECC66:  LDR.W           R2, [R2,#0x804]
2ECC6A:  CMP             R2, #0
2ECC6C:  ITT NE
2ECC6E:  LDRHNE          R2, [R0]
2ECC70:  CMPNE           R2, R1
2ECC72:  BEQ             loc_2ECCB0
2ECC74:  LDR.W           R2, =(ThePaths_ptr - 0x2ECC7E)
2ECC78:  LDRH            R3, [R0]
2ECC7A:  ADD             R2, PC; ThePaths_ptr
2ECC7C:  LDR             R2, [R2]; ThePaths
2ECC7E:  ADD.W           R2, R2, R3,LSL#2
2ECC82:  LDR.W           R2, [R2,#0x804]
2ECC86:  CMP             R2, #0
2ECC88:  ITT NE
2ECC8A:  LDRHNE.W        R2, [R4,#0x398]
2ECC8E:  CMPNE           R2, R1
2ECC90:  BEQ             loc_2ECCB0
2ECC92:  LDR             R1, =(ThePaths_ptr - 0x2ECC9C)
2ECC94:  LDRH.W          R2, [R4,#0x398]
2ECC98:  ADD             R1, PC; ThePaths_ptr
2ECC9A:  LDR             R1, [R1]; ThePaths
2ECC9C:  ADD.W           R1, R1, R2,LSL#2
2ECCA0:  LDR.W           R1, [R1,#0x804]
2ECCA4:  CBZ             R1, loc_2ECCB0
2ECCA6:  LDRH.W          R1, [R4,#0x3DF]
2ECCAA:  LSLS            R1, R1, #0x17
2ECCAC:  BPL             loc_2ECCC2
2ECCAE:  B               loc_2ED04A
2ECCB0:  LDRH.W          R1, [R4,#0x3DF]
2ECCB4:  ORR.W           R1, R1, #0x100
2ECCB8:  STRH.W          R1, [R4,#0x3DF]
2ECCBC:  LSLS            R1, R1, #0x17
2ECCBE:  BMI.W           loc_2ED04A
2ECCC2:  LDRSB.W         R1, [R4,#0x3BF]; CVehicle *
2ECCC6:  CMP             R1, #0x18
2ECCC8:  BEQ             loc_2ECCD2
2ECCCA:  CMP             R1, #0xC
2ECCCC:  BEQ             loc_2ECCFA
2ECCCE:  CMP             R1, #1
2ECCD0:  BNE             loc_2ECD0A
2ECCD2:  MOVS            R5, #0
2ECCD4:  MOVS            R1, #0; float
2ECCD6:  STRD.W          R5, R5, [R4,#0x48]
2ECCDA:  STR             R5, [R4,#0x50]
2ECCDC:  BLX             j__ZN10CAutoPilot11ModifySpeedEf; CAutoPilot::ModifySpeed(float)
2ECCE0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2ECCEA)
2ECCE2:  LDR.W           R1, [R4,#0x3C0]
2ECCE6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2ECCE8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2ECCEA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2ECCEC:  CMP             R0, R1
2ECCEE:  ITT HI
2ECCF0:  STRDHI.W        R0, R0, [R4,#0x3B0]
2ECCF4:  STRBHI.W        R5, [R4,#0x3BF]
2ECCF8:  B               loc_2ED04A
2ECCFA:  MOVS            R1, #0
2ECCFC:  STRD.W          R1, R1, [R4,#0x48]
2ECD00:  STR             R1, [R4,#0x50]
2ECD02:  MOVS            R1, #0; float
2ECD04:  BLX             j__ZN10CAutoPilot11ModifySpeedEf; CAutoPilot::ModifySpeed(float)
2ECD08:  B               loc_2ED04A
2ECD0A:  MOV             R0, R4; this
2ECD0C:  BLX             j__ZN8CCarCtrl37SlowCarOnRailsDownForTrafficAndLightsEP8CVehicle; CCarCtrl::SlowCarOnRailsDownForTrafficAndLights(CVehicle *)
2ECD10:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2ECD1A)
2ECD12:  LDRD.W          R1, R2, [R4,#0x3A0]
2ECD16:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2ECD18:  ADD             R1, R2; CVehicle *
2ECD1A:  MOVS            R2, #0
2ECD1C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2ECD1E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2ECD20:  SUBS            R0, R0, R1
2ECD22:  SBCS.W          R0, R2, R1,ASR#31
2ECD26:  ITT GE
2ECD28:  MOVGE           R0, R4; this
2ECD2A:  BLXGE           j__ZN8CCarCtrl29PickNextNodeAccordingStrategyEP8CVehicle; CCarCtrl::PickNextNodeAccordingStrategy(CVehicle *)
2ECD2E:  LDRB.W          R0, [R4,#0x3A]
2ECD32:  AND.W           R0, R0, #0xF8
2ECD36:  CMP             R0, #0x18
2ECD38:  BEQ.W           loc_2ED04A
2ECD3C:  LDR             R1, =(ThePaths_ptr - 0x2ECD44)
2ECD3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2ECD4E)
2ECD40:  ADD             R1, PC; ThePaths_ptr
2ECD42:  LDRH.W          R2, [R4,#0x3A8]
2ECD46:  LDRH.W          R3, [R4,#0x3AA]
2ECD4A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2ECD4C:  LDR             R1, [R1]; ThePaths
2ECD4E:  UBFX.W          R6, R2, #0xA, #6
2ECD52:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2ECD54:  UBFX.W          R5, R3, #0xA, #6
2ECD58:  BFC.W           R3, #0xA, #0x16
2ECD5C:  ADDW            R9, R1, #0x924
2ECD60:  BFC.W           R2, #0xA, #0x16
2ECD64:  RSB.W           R3, R3, R3,LSL#3
2ECD68:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2ECD6A:  LDR.W           R1, [R9,R5,LSL#2]
2ECD6E:  STR             R0, [SP,#0xC0+var_94]
2ECD70:  ADD.W           R1, R1, R3,LSL#1
2ECD74:  LDR.W           R0, [R9,R6,LSL#2]
2ECD78:  LDRSB.W         R3, [R1,#9]
2ECD7C:  STR             R3, [SP,#0xC0+var_B0]; CVector *
2ECD7E:  LDRSB.W         R6, [R1,#8]
2ECD82:  RSB.W           R1, R2, R2,LSL#3
2ECD86:  LDR.W           R2, [R4,#0x3A0]
2ECD8A:  STR             R2, [SP,#0xC0+var_98]
2ECD8C:  ADD.W           R0, R0, R1,LSL#1; this
2ECD90:  VLDR            S0, [R4,#0x3A4]
2ECD94:  LDRSB.W         R1, [R4,#0x3BB]
2ECD98:  STR             R1, [SP,#0xC0+var_9C]
2ECD9A:  LDRSB.W         R5, [R4,#0x3BA]
2ECD9E:  LDRSB.W         R11, [R4,#0x3B9]
2ECDA2:  LDRSB.W         R8, [R0,#9]
2ECDA6:  VCVT.F32.S32    S16, S0
2ECDAA:  LDRSB.W         R10, [R0,#8]
2ECDAE:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2ECDB2:  STR             R0, [SP,#0xC0+var_A0]
2ECDB4:  LDRH.W          R0, [R4,#0x3AA]
2ECDB8:  UBFX.W          R1, R0, #0xA, #6
2ECDBC:  BFC.W           R0, #0xA, #0x16
2ECDC0:  LDR.W           R1, [R9,R1,LSL#2]
2ECDC4:  RSB.W           R0, R0, R0,LSL#3
2ECDC8:  ADD.W           R0, R1, R0,LSL#1; this
2ECDCC:  LDRSB.W         R1, [R4,#0x3BC]
2ECDD0:  STR             R1, [SP,#0xC0+var_A8]
2ECDD2:  BLX             j__ZN12CCarPathLink16OneWayLaneOffsetEv; CCarPathLink::OneWayLaneOffset(void)
2ECDD6:  STR             R0, [SP,#0xC0+var_AC]
2ECDD8:  VMOV            S12, R8
2ECDDC:  LDR.W           R0, [R4,#0x5A4]
2ECDE0:  VMOV            S14, R10
2ECDE4:  STR             R0, [SP,#0xC0+var_A4]
2ECDE6:  VMOV            S10, R6
2ECDEA:  LDRH            R0, [R4,#0x24]
2ECDEC:  VMOV            S1, R5
2ECDF0:  LDRH.W          R1, [R4,#0x3AA]
2ECDF4:  VMOV            S3, R11
2ECDF8:  VLDR            S5, =0.01
2ECDFC:  ADD.W           R8, SP, #0xC0+var_6C
2ECE00:  ADD             R1, R0
2ECE02:  MOV.W           R10, #0
2ECE06:  UBFX.W          R2, R1, #3, #3
2ECE0A:  AND.W           R1, R1, #7
2ECE0E:  SUBS            R1, #3
2ECE10:  SUBS            R2, #3
2ECE12:  VMOV            S2, R1
2ECE16:  LDRH.W          R1, [R4,#0x3A8]
2ECE1A:  VMOV            S0, R2
2ECE1E:  ADD             R0, R1
2ECE20:  UBFX.W          R1, R0, #3, #3
2ECE24:  AND.W           R0, R0, #7
2ECE28:  SUBS            R0, #3
2ECE2A:  SUBS            R1, #3
2ECE2C:  VMOV            S6, R0
2ECE30:  LDR             R0, [SP,#0xC0+var_B0]
2ECE32:  VCVT.F32.S32    S14, S14
2ECE36:  VCVT.F32.S32    S12, S12
2ECE3A:  VMOV            S8, R0
2ECE3E:  MOV             R0, R8; this
2ECE40:  VCVT.F32.S32    S10, S10
2ECE44:  VCVT.F32.S32    S8, S8
2ECE48:  VMOV            S4, R1
2ECE4C:  VCVT.F32.S32    S3, S3
2ECE50:  VMUL.F32        S14, S14, S5
2ECE54:  VCVT.F32.S32    S6, S6
2ECE58:  VMUL.F32        S12, S12, S5
2ECE5C:  VCVT.F32.S32    S4, S4
2ECE60:  VCVT.F32.S32    S1, S1
2ECE64:  VMUL.F32        S10, S10, S5
2ECE68:  VMUL.F32        S8, S8, S5
2ECE6C:  VLDR            S5, =0.009
2ECE70:  VCVT.F32.S32    S2, S2
2ECE74:  VCVT.F32.S32    S0, S0
2ECE78:  STR.W           R10, [SP,#0xC0+var_70]
2ECE7C:  VMUL.F32        S22, S14, S3
2ECE80:  VMUL.F32        S6, S6, S5
2ECE84:  VMUL.F32        S24, S12, S3
2ECE88:  VMUL.F32        S4, S4, S5
2ECE8C:  VMUL.F32        S18, S10, S1
2ECE90:  VMUL.F32        S2, S2, S5
2ECE94:  VMUL.F32        S20, S8, S1
2ECE98:  VMUL.F32        S0, S0, S5
2ECE9C:  VADD.F32        S6, S22, S6
2ECEA0:  VADD.F32        S4, S24, S4
2ECEA4:  VADD.F32        S2, S18, S2
2ECEA8:  VADD.F32        S0, S20, S0
2ECEAC:  VSTR            S6, [SP,#0xC0+var_6C]
2ECEB0:  VSTR            S4, [SP,#0xC0+var_68]
2ECEB4:  STR.W           R10, [SP,#0xC0+var_64]
2ECEB8:  VSTR            S2, [SP,#0xC0+var_78]
2ECEBC:  VSTR            S0, [SP,#0xC0+var_74]
2ECEC0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2ECEC4:  ADD             R6, SP, #0xC0+var_78
2ECEC6:  MOV             R0, R6; this
2ECEC8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
2ECECC:  LDR             R0, [SP,#0xC0+var_AC]
2ECECE:  ADD             R5, SP, #0xC0+var_54
2ECED0:  VLDR            S12, =1.458
2ECED4:  MOV             R3, R6; CVector *
2ECED6:  VMOV            S0, R0
2ECEDA:  LDRH.W          R0, [R4,#0x3A8]
2ECEDE:  UBFX.W          R1, R0, #0xA, #6
2ECEE2:  BFC.W           R0, #0xA, #0x16
2ECEE6:  LDR.W           R1, [R9,R1,LSL#2]
2ECEEA:  RSB.W           R0, R0, R0,LSL#3
2ECEEE:  LDRSH.W         R2, [R1,R0,LSL#1]
2ECEF2:  ADD.W           R0, R1, R0,LSL#1
2ECEF6:  LDRSH.W         R0, [R0,#2]
2ECEFA:  VMOV            S2, R2
2ECEFE:  VMOV            S4, R0
2ECF02:  LDR             R0, [SP,#0xC0+var_A0]
2ECF04:  VMOV            S6, R0
2ECF08:  LDR             R0, [SP,#0xC0+var_A8]
2ECF0A:  VMOV            S8, R0
2ECF0E:  LDR             R0, [SP,#0xC0+var_9C]
2ECF10:  VMOV            S10, R0
2ECF14:  VCVT.F32.S32    S10, S10
2ECF18:  VCVT.F32.S32    S8, S8
2ECF1C:  LDR             R0, [SP,#0xC0+var_A4]
2ECF1E:  CMP             R0, #0xA
2ECF20:  VADD.F32        S6, S6, S10
2ECF24:  VLDR            S10, =5.4
2ECF28:  VADD.F32        S0, S0, S8
2ECF2C:  VMUL.F32        S6, S6, S10
2ECF30:  VMUL.F32        S0, S0, S10
2ECF34:  VADD.F32        S14, S6, S12
2ECF38:  IT EQ
2ECF3A:  VMOVEQ.F32      S6, S14
2ECF3E:  VCVT.F32.S32    S4, S4
2ECF42:  VMOV.F32        S14, #0.125
2ECF46:  CMP             R0, #0xA
2ECF48:  VCVT.F32.S32    S2, S2
2ECF4C:  VMUL.F32        S8, S22, S6
2ECF50:  VMUL.F32        S6, S24, S6
2ECF54:  VMUL.F32        S4, S4, S14
2ECF58:  VMUL.F32        S2, S2, S14
2ECF5C:  VSUB.F32        S4, S4, S8
2ECF60:  VADD.F32        S2, S6, S2
2ECF64:  VADD.F32        S6, S0, S12
2ECF68:  IT EQ
2ECF6A:  VMOVEQ.F32      S0, S6
2ECF6E:  STR.W           R10, [SP,#0xC0+var_7C]
2ECF72:  VSTR            S4, [SP,#0xC0+var_80]
2ECF76:  VMUL.F32        S8, S18, S0
2ECF7A:  VSTR            S2, [SP,#0xC0+var_84]
2ECF7E:  VMUL.F32        S0, S20, S0
2ECF82:  LDRH.W          R0, [R4,#0x3AA]
2ECF86:  UBFX.W          R1, R0, #0xA, #6
2ECF8A:  BFC.W           R0, #0xA, #0x16
2ECF8E:  LDR.W           R1, [R9,R1,LSL#2]
2ECF92:  RSB.W           R0, R0, R0,LSL#3
2ECF96:  LDRSH.W         R2, [R1,R0,LSL#1]
2ECF9A:  ADD.W           R0, R1, R0,LSL#1
2ECF9E:  LDRSH.W         R0, [R0,#2]
2ECFA2:  VMOV            S4, R2
2ECFA6:  MOV             R2, R8; CVector *
2ECFA8:  VMOV            S2, R0
2ECFAC:  VCVT.F32.S32    S2, S2
2ECFB0:  VCVT.F32.S32    S4, S4
2ECFB4:  LDRD.W          R1, R0, [SP,#0xC0+var_98]
2ECFB8:  SUBS            R0, R0, R1
2ECFBA:  ADD             R1, SP, #0xC0+var_60
2ECFBC:  VMOV            S6, R0
2ECFC0:  VCVT.F32.U32    S6, S6
2ECFC4:  STR.W           R10, [SP,#0xC0+var_88]
2ECFC8:  VMUL.F32        S2, S2, S14
2ECFCC:  VMUL.F32        S4, S4, S14
2ECFD0:  VDIV.F32        S6, S6, S16
2ECFD4:  VSUB.F32        S2, S2, S8
2ECFD8:  VADD.F32        S0, S0, S4
2ECFDC:  VSTR            S2, [SP,#0xC0+var_8C]
2ECFE0:  VSTR            S0, [SP,#0xC0+var_90]
2ECFE4:  LDR.W           R0, [R4,#0x3A4]
2ECFE8:  STRD.W          R0, R5, [SP,#0xC0+var_BC]; float
2ECFEC:  ADD             R0, SP, #0xC0+var_84; this
2ECFEE:  STR             R1, [SP,#0xC0+var_B4]; CVector *
2ECFF0:  ADD             R1, SP, #0xC0+var_90; CVector *
2ECFF2:  VSTR            S6, [SP,#0xC0+var_C0]
2ECFF6:  BLX             j__ZN7CCurves14CalcCurvePointERK7CVectorS2_S2_S2_fiRS0_S3_; CCurves::CalcCurvePoint(CVector const&,CVector const&,CVector const&,CVector const&,float,int,CVector&,CVector&)
2ECFFA:  MOVS            R0, #0
2ECFFC:  MOV             R1, R5; CVehicle *
2ECFFE:  MOVT            R0, #0x4170
2ED002:  STR             R0, [SP,#0xC0+var_4C]
2ED004:  MOV             R0, R4; this
2ED006:  BLX             j__ZN8CCarCtrl14DragCarToPointEP8CVehicleP7CVector; CCarCtrl::DragCarToPoint(CVehicle *,CVector *)
2ED00A:  VLDR            S0, =0.016667
2ED00E:  VLDR            S2, [SP,#0xC0+var_60]
2ED012:  VLDR            S4, [SP,#0xC0+var_60+4]
2ED016:  VLDR            S6, [SP,#0xC0+var_58]
2ED01A:  VMUL.F32        S2, S2, S0
2ED01E:  VMUL.F32        S4, S4, S0
2ED022:  VMUL.F32        S0, S6, S0
2ED026:  VSTR            S2, [SP,#0xC0+var_60]
2ED02A:  VSTR            S4, [SP,#0xC0+var_60+4]
2ED02E:  VSTR            S0, [SP,#0xC0+var_58]
2ED032:  LDRH.W          R0, [R4,#0x3AA]
2ED036:  LDRH.W          R1, [R4,#0x3A8]
2ED03A:  CMP             R1, R0
2ED03C:  ITTTT NE
2ED03E:  VLDRNE          D16, [SP,#0xC0+var_60]
2ED042:  LDRNE           R0, [SP,#0xC0+var_58]
2ED044:  STRNE           R0, [R4,#0x50]
2ED046:  VSTRNE          D16, [R4,#0x48]
2ED04A:  ADD             SP, SP, #0x78 ; 'x'
2ED04C:  VPOP            {D8-D12}
2ED050:  ADD             SP, SP, #4
2ED052:  POP.W           {R8-R11}
2ED056:  POP             {R4-R7,PC}
