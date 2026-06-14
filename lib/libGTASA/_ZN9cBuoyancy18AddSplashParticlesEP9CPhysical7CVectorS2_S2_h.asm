; =========================================================
; Game Engine Function: _ZN9cBuoyancy18AddSplashParticlesEP9CPhysical7CVectorS2_S2_h
; Address            : 0x56FD3C - 0x5701B4
; =========================================================

56FD3C:  PUSH            {R4-R7,LR}
56FD3E:  ADD             R7, SP, #0xC
56FD40:  PUSH.W          {R8-R11}
56FD44:  SUB             SP, SP, #4
56FD46:  VPUSH           {D8-D15}
56FD4A:  SUB             SP, SP, #0x80
56FD4C:  MOV             R4, R1
56FD4E:  LDRD.W          R1, R0, [R7,#arg_10]
56FD52:  LDR             R6, [R7,#arg_18]
56FD54:  STRD.W          R1, R0, [SP,#0xE0+var_6C]
56FD58:  STR             R6, [SP,#0xE0+var_64]
56FD5A:  VLDR            S28, [R4,#0x48]
56FD5E:  VLDR            S17, [R4,#0x4C]
56FD62:  VMUL.F32        S2, S28, S28
56FD66:  VLDR            S16, [R4,#0x50]
56FD6A:  VMUL.F32        S0, S17, S17
56FD6E:  VMUL.F32        S4, S16, S16
56FD72:  VADD.F32        S0, S2, S0
56FD76:  VADD.F32        S0, S0, S4
56FD7A:  VSQRT.F32       S18, S0
56FD7E:  VLDR            S0, =0.1
56FD82:  VCMPE.F32       S18, S0
56FD86:  VMRS            APSR_nzcv, FPSCR
56FD8A:  BLE             loc_56FDB2
56FD8C:  VMOV.F32        S2, #1.0
56FD90:  VDIV.F32        S2, S2, S18
56FD94:  VMUL.F32        S4, S16, S2
56FD98:  VMUL.F32        S6, S17, S2
56FD9C:  VMUL.F32        S2, S28, S2
56FDA0:  VMOV.F32        S18, S0
56FDA4:  VMUL.F32        S16, S4, S0
56FDA8:  VMUL.F32        S17, S6, S0
56FDAC:  VMUL.F32        S28, S2, S0
56FDB0:  B               loc_56FDC2
56FDB2:  VLDR            S0, =0.05
56FDB6:  VCMPE.F32       S18, S0
56FDBA:  VMRS            APSR_nzcv, FPSCR
56FDBE:  BLE.W           loc_5701A6
56FDC2:  VMOV            S20, R3
56FDC6:  VLDR            S0, [R7,#arg_8]
56FDCA:  VMOV            S22, R2
56FDCE:  VLDR            S2, [R7,#arg_4]
56FDD2:  VSUB.F32        S24, S0, S20
56FDD6:  VLDR            S0, [R7,#arg_C]
56FDDA:  VSUB.F32        S26, S2, S22
56FDDE:  VLDR            S2, [R7,#arg_0]
56FDE2:  MOVW            R3, #0xCCCD
56FDE6:  MOVW            R2, #0xCCCD
56FDEA:  VSUB.F32        S30, S0, S2
56FDEE:  MOVT            R3, #0x3E4C
56FDF2:  MOV.W           R0, #0x3F800000
56FDF6:  MOV.W           R1, #0x3F000000
56FDFA:  MOVT            R2, #0x3DCC
56FDFE:  LDR             R5, [R7,#arg_1C]
56FE00:  STRD.W          R2, R1, [SP,#0xE0+var_E0]; float
56FE04:  MOV.W           R1, #0x3F800000; float
56FE08:  VMUL.F32        S0, S24, S24
56FE0C:  STRD.W          R0, R3, [SP,#0xE0+var_D8]; float
56FE10:  VMUL.F32        S2, S26, S26
56FE14:  ADD             R0, SP, #0xE0+var_88; this
56FE16:  MOV.W           R2, #0x3F800000; float
56FE1A:  MOV.W           R3, #0x3F800000; float
56FE1E:  VMUL.F32        S4, S30, S30
56FE22:  VADD.F32        S0, S2, S0
56FE26:  VADD.F32        S0, S4, S0
56FE2A:  VSQRT.F32       S19, S0
56FE2E:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
56FE32:  CBZ             R5, loc_56FE50
56FE34:  VMOV.F32        S0, #0.5
56FE38:  VLDR            S2, [SP,#0xE0+var_78]
56FE3C:  VLDR            S4, [SP,#0xE0+var_70]
56FE40:  VMUL.F32        S2, S2, S0
56FE44:  VMUL.F32        S0, S4, S0
56FE48:  VSTR            S2, [SP,#0xE0+var_78]
56FE4C:  VSTR            S0, [SP,#0xE0+var_70]
56FE50:  VADD.F32        S0, S19, S19
56FE54:  VCVT.S32.F32    S0, S0
56FE58:  VMOV            R11, S0
56FE5C:  CMP.W           R11, #1
56FE60:  IT LE
56FE62:  MOVLE.W         R11, #1
56FE66:  CMP.W           R11, #0
56FE6A:  BLE.W           loc_57003C
56FE6E:  VLDR            S6, =0.0
56FE72:  ADD             R6, SP, #0xE0+var_BC
56FE74:  VLDR            S4, [R4,#0x50]
56FE78:  ADD             R5, SP, #0xE0+var_94
56FE7A:  VMOV.F32        S12, S6
56FE7E:  VLDR            S0, [R4,#0x48]
56FE82:  VLDR            S2, [R4,#0x4C]
56FE86:  MOV.W           R8, #0
56FE8A:  VLDR            S10, =120.0
56FE8E:  MOV.W           R10, #0
56FE92:  LDR             R0, =(g_fx_ptr - 0x56FE9C)
56FE94:  VLDR            S31, =60.0
56FE98:  ADD             R0, PC; g_fx_ptr
56FE9A:  VMUL.F32        S6, S17, S12
56FE9E:  LDR.W           R9, [R0]; g_fx
56FEA2:  VMUL.F32        S8, S28, S12
56FEA6:  VMUL.F32        S4, S4, S12
56FEAA:  VMUL.F32        S21, S0, S12
56FEAE:  VMOV            S0, R11
56FEB2:  VMUL.F32        S17, S16, S10
56FEB6:  VLDR            S16, =0.0
56FEBA:  VMUL.F32        S19, S2, S12
56FEBE:  VMUL.F32        S23, S6, S10
56FEC2:  VMUL.F32        S25, S8, S10
56FEC6:  VMUL.F32        S27, S4, S12
56FECA:  VCVT.F32.S32    S29, S0
56FECE:  VMOV.F32        S28, #0.5
56FED2:  VMOV            S0, R10
56FED6:  VLDR            S6, [R7,#arg_0]
56FEDA:  ADD             R2, SP, #0xE0+var_A0
56FEDC:  MOV             R0, R6
56FEDE:  VCVT.F32.S32    S0, S0
56FEE2:  LDR             R1, [R4,#0x14]
56FEE4:  VDIV.F32        S0, S0, S29
56FEE8:  VMUL.F32        S2, S24, S0
56FEEC:  VMUL.F32        S4, S26, S0
56FEF0:  VMUL.F32        S0, S30, S0
56FEF4:  VADD.F32        S2, S2, S20
56FEF8:  VADD.F32        S4, S4, S22
56FEFC:  VADD.F32        S0, S0, S6
56FF00:  VSTR            S2, [SP,#0xE0+var_9C]
56FF04:  VSTR            S4, [SP,#0xE0+var_A0]
56FF08:  VSTR            S0, [SP,#0xE0+var_98]
56FF0C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
56FF10:  LDRB.W          R0, [R4,#0x3A]
56FF14:  AND.W           R0, R0, #7
56FF18:  CMP             R0, #3
56FF1A:  BEQ             loc_56FF58
56FF1C:  LDR             R0, [R4,#0x14]
56FF1E:  VLDR            S0, [SP,#0xE0+var_BC]
56FF22:  ADD.W           R1, R0, #0x30 ; '0'
56FF26:  CMP             R0, #0
56FF28:  VLDR            S2, [SP,#0xE0+var_B8]
56FF2C:  VLDR            S4, [SP,#0xE0+var_B4]
56FF30:  IT EQ
56FF32:  ADDEQ           R1, R4, #4
56FF34:  VLDR            S6, [R1]
56FF38:  VLDR            S8, [R1,#4]
56FF3C:  VLDR            S10, [R1,#8]
56FF40:  VSUB.F32        S0, S0, S6
56FF44:  VSUB.F32        S2, S2, S8
56FF48:  VSUB.F32        S4, S4, S10
56FF4C:  VSTR            S0, [SP,#0xE0+var_6C]
56FF50:  VSTR            S2, [SP,#0xE0+var_68]
56FF54:  VSTR            S4, [SP,#0xE0+var_64]
56FF58:  ADD             R0, SP, #0xE0+var_6C; this
56FF5A:  STR.W           R8, [SP,#0xE0+var_64]
56FF5E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
56FF62:  VLDR            S0, [SP,#0xE0+var_6C]
56FF66:  VLDR            S2, [SP,#0xE0+var_68]
56FF6A:  VLDR            S4, [SP,#0xE0+var_64]
56FF6E:  VMUL.F32        S0, S18, S0
56FF72:  VMUL.F32        S2, S18, S2
56FF76:  VMUL.F32        S4, S18, S4
56FF7A:  VMUL.F32        S0, S0, S31
56FF7E:  VMUL.F32        S2, S2, S31
56FF82:  VMUL.F32        S4, S4, S31
56FF86:  VADD.F32        S0, S25, S0
56FF8A:  VADD.F32        S2, S23, S2
56FF8E:  VSUB.F32        S4, S4, S17
56FF92:  VADD.F32        S0, S21, S0
56FF96:  VADD.F32        S2, S19, S2
56FF9A:  VADD.F32        S4, S27, S4
56FF9E:  VSTR            S0, [SP,#0xE0+var_94]
56FFA2:  VSTR            S2, [SP,#0xE0+var_90]
56FFA6:  VSTR            S4, [SP,#0xE0+var_8C]
56FFAA:  BLX             rand
56FFAE:  VMOV            S0, R0
56FFB2:  VLDR            S2, =4.6566e-10
56FFB6:  ADD             R1, SP, #0xE0+var_88
56FFB8:  MOV             R2, R5; int
56FFBA:  VCVT.F32.S32    S0, S0
56FFBE:  VLDR            S4, [SP,#0xE0+var_68]
56FFC2:  VLDR            S6, [SP,#0xE0+var_64]
56FFC6:  MOVS            R3, #0; int
56FFC8:  VLDR            S8, [SP,#0xE0+var_B8]
56FFCC:  VLDR            S10, [SP,#0xE0+var_B4]
56FFD0:  STR             R1, [SP,#0xE0+var_E0]; float
56FFD2:  MOVS            R1, #0xBF800000
56FFD8:  LDR.W           R0, [R9,#(dword_820558 - 0x820520)]; int
56FFDC:  STR             R1, [SP,#0xE0+var_DC]; unsigned __int8
56FFDE:  MOVW            R1, #0x999A
56FFE2:  VMUL.F32        S0, S0, S2
56FFE6:  VLDR            S2, [SP,#0xE0+var_6C]
56FFEA:  MOVT            R1, #0x3F99
56FFEE:  STR             R1, [SP,#0xE0+var_D8]; float
56FFF0:  MOV             R1, #0x3F19999A
56FFF8:  VMUL.F32        S0, S0, S28
56FFFC:  VADD.F32        S0, S0, S16
570000:  VMUL.F32        S6, S6, S0
570004:  VMUL.F32        S4, S4, S0
570008:  VMUL.F32        S0, S2, S0
57000C:  VLDR            S2, [SP,#0xE0+var_BC]
570010:  VADD.F32        S6, S6, S10
570014:  VADD.F32        S4, S4, S8
570018:  VADD.F32        S0, S2, S0
57001C:  VSTR            S6, [SP,#0xE0+var_B4]
570020:  VSTR            S4, [SP,#0xE0+var_B8]
570024:  VSTR            S0, [SP,#0xE0+var_BC]
570028:  STRD.W          R1, R8, [SP,#0xE0+var_D4]; unsigned int
57002C:  MOV             R1, R6; int
57002E:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
570032:  ADD.W           R10, R10, #1
570036:  CMP             R10, R11
570038:  BLT.W           loc_56FED2
57003C:  LDRB.W          R0, [R4,#0x3A]
570040:  AND.W           R0, R0, #7
570044:  CMP             R0, #3
570046:  BNE.W           loc_570192
57004A:  LDR             R1, [R4,#0x14]
57004C:  MOVS            R2, #0; float
57004E:  MOVS            R3, #0; float
570050:  MOVS            R5, #0
570052:  LDRD.W          R0, R1, [R1,#0x10]; float
570056:  BLX             j__ZN8CGeneral21GetAngleBetweenPointsEffff; CGeneral::GetAngleBetweenPoints(float,float,float,float)
57005A:  BLX             j__ZN8CGeneral10LimitAngleEf; CGeneral::LimitAngle(float)
57005E:  MOVW            R1, #0xCCCD
570062:  MOVW            R2, #0xCCCD
570066:  ADD.W           R8, SP, #0xE0+var_BC
57006A:  MOV             R9, R0
57006C:  MOV.W           R0, #0x3F000000
570070:  MOVT            R1, #0x3ECC
570074:  MOVT            R2, #0x3E4C
570078:  MOV.W           R3, #0x3F800000; float
57007C:  STRD.W          R2, R1, [SP,#0xE0+var_E0]; float
570080:  MOV.W           R1, #0x3F800000; float
570084:  STRD.W          R5, R0, [SP,#0xE0+var_D8]; float
570088:  MOV             R0, R8; this
57008A:  MOV.W           R2, #0x3F800000; float
57008E:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
570092:  STRD.W          R5, R5, [SP,#0xE0+var_A0]
570096:  STR             R5, [SP,#0xE0+var_98]
570098:  LDR             R0, [R4,#0x14]
57009A:  ADD.W           R6, R0, #0x30 ; '0'
57009E:  CMP             R0, #0
5700A0:  IT EQ
5700A2:  ADDEQ           R6, R4, #4
5700A4:  BEQ             loc_5700BC
5700A6:  VLDR            S4, =0.4
5700AA:  VLDR            S6, [R0,#0x18]
5700AE:  VLDR            S2, [R0,#0x10]
5700B2:  VLDR            S0, [R0,#0x14]
5700B6:  VMUL.F32        S10, S6, S4
5700BA:  B               loc_5700DC
5700BC:  LDR             R5, [R4,#0x10]
5700BE:  MOV             R0, R5; x
5700C0:  BLX             sinf
5700C4:  MOV             R10, R0
5700C6:  MOV             R0, R5; x
5700C8:  BLX             cosf
5700CC:  VMOV            S0, R0
5700D0:  EOR.W           R0, R10, #0x80000000
5700D4:  VLDR            S10, =0.0
5700D8:  VMOV            S2, R0
5700DC:  VLDR            S4, =0.4
5700E0:  VLDR            S8, [R6,#8]
5700E4:  VMUL.F32        S0, S0, S4
5700E8:  VLDR            S6, [R6,#4]
5700EC:  VMUL.F32        S2, S2, S4
5700F0:  VLDR            S4, [R6]
5700F4:  VADD.F32        S16, S10, S8
5700F8:  VADD.F32        S0, S0, S6
5700FC:  VADD.F32        S2, S4, S2
570100:  VSTR            S16, [SP,#0xE0+var_C0]
570104:  VSTR            S0, [SP,#0xE0+var_C4]
570108:  VSTR            S2, [SP,#0xE0+var_C8]
57010C:  LDR.W           R0, [R4,#0x440]; this
570110:  BLX             j__ZNK16CPedIntelligence11GetTaskSwimEv; CPedIntelligence::GetTaskSwim(void)
570114:  CMP             R0, #0
570116:  BNE             loc_570192
570118:  VLDR            S0, =180.0
57011C:  VMOV            S2, R9
570120:  LDR.W           R0, [R4,#0x444]
570124:  VADD.F32        S0, S2, S0
570128:  CBZ             R0, loc_57013C
57012A:  LDR.W           R0, [R0,#0x90]
57012E:  STR             R0, [SP,#0xE0+var_C0]
570130:  B               loc_570148
570132:  ALIGN 4
570134:  DCFS 0.1
570138:  DCFS 0.05
57013C:  VMOV.F32        S2, #0.5
570140:  VADD.F32        S2, S16, S2
570144:  VSTR            S2, [SP,#0xE0+var_C0]
570148:  LDR             R0, =(g_fx_ptr - 0x57015A)
57014A:  MOVW            R1, #0x999A
57014E:  MOVW            R2, #0x999A
570152:  MOVT            R1, #0x3F19
570156:  ADD             R0, PC; g_fx_ptr
570158:  MOVT            R2, #0x3F99
57015C:  MOVS            R5, #0
57015E:  MOVS            R3, #0; int
570160:  LDR             R0, [R0]; g_fx
570162:  LDR             R0, [R0,#(dword_820554 - 0x820520)]; int
570164:  STRD.W          R2, R1, [SP,#0xE0+var_D8]; float
570168:  ADD             R1, SP, #0xE0+var_C8; int
57016A:  ADD             R2, SP, #0xE0+var_A0; int
57016C:  STR             R5, [SP,#0xE0+var_D0]; int
57016E:  VSTR            S0, [SP,#0xE0+var_DC]
570172:  STR.W           R8, [SP,#0xE0+var_E0]; int
570176:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
57017A:  ADD.W           R0, R4, #0x13C; this
57017E:  MOVS            R1, #0x4C ; 'L'; int
570180:  MOVS            R2, #0; float
570182:  MOV.W           R3, #0x3F800000; float
570186:  STRD.W          R5, R5, [SP,#0xE0+var_E0]; CPhysical *
57018A:  STRD.W          R5, R5, [SP,#0xE0+var_D8]; int
57018E:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
570192:  LDR             R0, =(AudioEngine_ptr - 0x5701A0)
570194:  MOVS            R2, #0xC2C80000; float
57019A:  MOV             R1, R4; CPhysical *
57019C:  ADD             R0, PC; AudioEngine_ptr
57019E:  MOVS            R3, #0; unsigned __int8
5701A0:  LDR             R0, [R0]; AudioEngine ; this
5701A2:  BLX             j__ZN12CAudioEngine17ReportWaterSplashEP9CPhysicalfh; CAudioEngine::ReportWaterSplash(CPhysical *,float,uchar)
5701A6:  ADD             SP, SP, #0x80
5701A8:  VPOP            {D8-D15}
5701AC:  ADD             SP, SP, #4
5701AE:  POP.W           {R8-R11}
5701B2:  POP             {R4-R7,PC}
