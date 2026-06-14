; =========================================================
; Game Engine Function: _ZN11CAutomobile26ProcessCarOnFireAndExplodeEh
; Address            : 0x550E14 - 0x551398
; =========================================================

550E14:  PUSH            {R4-R7,LR}
550E16:  ADD             R7, SP, #0xC
550E18:  PUSH.W          {R8-R11}
550E1C:  SUB             SP, SP, #4
550E1E:  VPUSH           {D8-D11}
550E22:  SUB             SP, SP, #0x50
550E24:  MOV             R4, R0
550E26:  ADDW            R0, R4, #0x5B4; this
550E2A:  MOV             R6, R1
550E2C:  BLX             j__ZNK14CDamageManager15GetEngineStatusEv; CDamageManager::GetEngineStatus(void)
550E30:  ADDW            R5, R4, #0x4CC
550E34:  VLDR            S16, =250.0
550E38:  MOV             R8, R0
550E3A:  VLDR            S0, [R5]
550E3E:  VCMPE.F32       S0, S16
550E42:  VMRS            APSR_nzcv, FPSCR
550E46:  BGE             loc_550F0E
550E48:  LDRB.W          R0, [R4,#0x3A]
550E4C:  AND.W           R0, R0, #0xF8
550E50:  CMP             R0, #0x28 ; '('
550E52:  BEQ             loc_550F0E
550E54:  LDRB.W          R0, [R4,#0x42F]
550E58:  LSLS            R0, R0, #0x19
550E5A:  BMI             loc_550F0E
550E5C:  LDR.W           R1, [R4,#0x58C]
550E60:  MOV.W           R9, #0
550E64:  LDR.W           R0, [R4,#0x5A4]
550E68:  CBNZ            R1, loc_550E76
550E6A:  CMP             R0, #4
550E6C:  BEQ             loc_550E7C
550E6E:  CMP             R0, #3
550E70:  IT NE
550E72:  MOVNE.W         R9, #1
550E76:  SUBS            R0, #3
550E78:  CMP             R0, #1
550E7A:  BHI             loc_550F58
550E7C:  LDRB.W          R0, [R4,#0x995]
550E80:  CMP             R0, #0
550E82:  BNE.W           loc_550FA2
550E86:  LDR             R0, [R4,#0x44]
550E88:  TST.W           R0, #0x2000
550E8C:  BNE.W           loc_550F9C
550E90:  LSLS            R0, R0, #0x17
550E92:  BMI             loc_550F0A
550E94:  VMOV.F32        S0, #1.0
550E98:  ADD.W           R0, R4, #0x7E8
550E9C:  VLDR            S2, [R0]
550EA0:  VCMPE.F32       S2, S0
550EA4:  VMRS            APSR_nzcv, FPSCR
550EA8:  BLT             loc_550F0A
550EAA:  ADDW            R0, R4, #0x7EC
550EAE:  VLDR            S2, [R0]
550EB2:  VCMPE.F32       S2, S0
550EB6:  VMRS            APSR_nzcv, FPSCR
550EBA:  BLT             loc_550F0A
550EBC:  ADD.W           R0, R4, #0x7F0
550EC0:  VLDR            S2, [R0]
550EC4:  VCMPE.F32       S2, S0
550EC8:  VMRS            APSR_nzcv, FPSCR
550ECC:  BLT             loc_550F0A
550ECE:  ADDW            R0, R4, #0x7F4
550ED2:  VLDR            S2, [R0]
550ED6:  VCMPE.F32       S2, S0
550EDA:  VMRS            APSR_nzcv, FPSCR
550EDE:  BLT             loc_550F0A
550EE0:  VLDR            S0, [R4,#0x48]
550EE4:  VCMP.F32        S0, #0.0
550EE8:  VMRS            APSR_nzcv, FPSCR
550EEC:  BNE             loc_550F9C
550EEE:  VLDR            S0, [R4,#0x4C]
550EF2:  VCMP.F32        S0, #0.0
550EF6:  VMRS            APSR_nzcv, FPSCR
550EFA:  ITTT EQ
550EFC:  VLDREQ          S0, [R4,#0x50]
550F00:  VCMPEQ.F32      S0, #0.0
550F04:  VMRSEQ          APSR_nzcv, FPSCR
550F08:  BNE             loc_550F9C
550F0A:  MOVS            R0, #1
550F0C:  B               loc_550F9E
550F0E:  LDR.W           R0, [R4,#0x58C]; this
550F12:  MOVS            R6, #0
550F14:  STR.W           R6, [R4,#0x8F8]
550F18:  CBZ             R0, loc_550F22
550F1A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
550F1E:  STR.W           R6, [R4,#0x58C]
550F22:  AND.W           R0, R8, #0xFE
550F26:  CMP             R0, #0xE2
550F28:  BCC             loc_550F44
550F2A:  VLDR            S0, [R5]
550F2E:  VCMPE.F32       S0, S16
550F32:  VMRS            APSR_nzcv, FPSCR
550F36:  ITTT GT
550F38:  VMOVGT.F32      S2, #-2.0
550F3C:  VADDGT.F32      S0, S0, S2
550F40:  VSTRGT          S0, [R5]
550F44:  MOV             R0, R4; this
550F46:  BLX             j__ZN8CVehicle23ProcessDelayedExplosionEv; CVehicle::ProcessDelayedExplosion(void)
550F4A:  ADD             SP, SP, #0x50 ; 'P'
550F4C:  VPOP            {D8-D11}
550F50:  ADD             SP, SP, #4
550F52:  POP.W           {R8-R11}
550F56:  POP             {R4-R7,PC}
550F58:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x550F64)
550F5C:  VLDR            S0, =50.0
550F60:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
550F62:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
550F64:  VLDR            S2, [R0]
550F68:  ADDW            R0, R4, #0x8F8
550F6C:  VDIV.F32        S0, S2, S0
550F70:  VLDR            S2, =1000.0
550F74:  VMUL.F32        S0, S0, S2
550F78:  VCVT.U32.F32    S0, S0
550F7C:  VCVT.F32.U32    S0, S0
550F80:  VLDR            S2, [R0]
550F84:  VADD.F32        S0, S2, S0
550F88:  VLDR            S2, =5000.0
550F8C:  VCMPE.F32       S0, S2
550F90:  VSTR            S0, [R0]
550F94:  VMRS            APSR_nzcv, FPSCR
550F98:  BGT             loc_550FA4
550F9A:  B               loc_550FB4
550F9C:  MOVS            R0, #2
550F9E:  STRB.W          R0, [R4,#0x995]
550FA2:  CBZ             R6, loc_551008
550FA4:  LDR             R0, [R4]
550FA6:  MOVS            R2, #0
550FA8:  LDR.W           R1, [R4,#0x93C]
550FAC:  LDR.W           R3, [R0,#0xA8]
550FB0:  MOV             R0, R4
550FB2:  BLX             R3
550FB4:  CMP.W           R9, #0
550FB8:  BEQ             loc_55106E
550FBA:  MOVS            R0, #1
550FBC:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x550FC8)
550FC0:  LDRSH.W         R2, [R4,#0x26]
550FC4:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
550FC6:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
550FC8:  LDR.W           R1, [R1,R2,LSL#2]
550FCC:  LDR             R1, [R1,#0x74]
550FCE:  VLDR            D16, [R1,#0x54]
550FD2:  LDR             R1, [R1,#0x5C]
550FD4:  STR             R1, [SP,#0x90+var_60]
550FD6:  VSTR            D16, [SP,#0x90+var_68]
550FDA:  LDR             R1, [R4,#0x18]
550FDC:  CBZ             R1, loc_551000
550FDE:  LDR             R1, [R1,#4]
550FE0:  AND.W           R0, R0, #3
550FE4:  CMP             R0, #2
550FE6:  ADD.W           R3, R1, #0x10; int
550FEA:  BEQ             loc_551036
550FEC:  CMP             R0, #1
550FEE:  BNE             loc_551000
550FF0:  LDR.W           R0, =(g_fxMan_ptr - 0x551000)
550FF4:  MOVS            R1, #0
550FF6:  STR             R1, [SP,#0x90+var_90]
550FF8:  ADR.W           R1, aFireCar_0; "fire_car"
550FFC:  ADD             R0, PC; g_fxMan_ptr
550FFE:  B               loc_551040
551000:  LDR.W           R0, [R4,#0x58C]
551004:  CBNZ            R0, loc_55104E
551006:  B               loc_55106E
551008:  LDRSH.W         R1, [R4,#0x26]
55100C:  SUBW            R2, R1, #0x1B9
551010:  CMP             R2, #0x18
551012:  BHI             loc_551024
551014:  MOVS            R3, #1
551016:  LSL.W           R2, R3, R2
55101A:  MOVS            R3, #0x1800001
551020:  TST             R2, R3
551022:  BNE             loc_551032
551024:  CMP.W           R1, #0x234
551028:  ITT NE
55102A:  MOVWNE          R2, #0x1F5
55102E:  CMPNE           R1, R2
551030:  BNE             loc_5510A8
551032:  MOVS            R6, #1
551034:  B               loc_5510AA
551036:  LDR             R0, =(g_fxMan_ptr - 0x551042)
551038:  MOVS            R1, #0
55103A:  STR             R1, [SP,#0x90+var_90]; int
55103C:  ADR             R1, aFireLarge_0; "fire_large"
55103E:  ADD             R0, PC; g_fxMan_ptr
551040:  LDR             R0, [R0]; g_fxMan ; int
551042:  ADD             R2, SP, #0x90+var_68; int
551044:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
551048:  STR.W           R0, [R4,#0x58C]
55104C:  CBZ             R0, loc_55106E
55104E:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
551052:  ADD             R6, SP, #0x90+var_5C
551054:  MOV             R1, R4; CVehicle *
551056:  MOV             R0, R6; this
551058:  BLX             j__ZN19CEventVehicleOnFireC2EP8CVehicle; CEventVehicleOnFire::CEventVehicleOnFire(CVehicle *)
55105C:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
551060:  MOV             R1, R6; CEvent *
551062:  MOVS            R2, #0; bool
551064:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
551068:  MOV             R0, R6; this
55106A:  BLX             j__ZN19CEventVehicleOnFireD2Ev; CEventVehicleOnFire::~CEventVehicleOnFire()
55106E:  LDR.W           R0, [R4,#0x58C]
551072:  CMP             R0, #0
551074:  BEQ.W           loc_550F22
551078:  VLDR            S0, =50.0
55107C:  ADD             R1, SP, #0x90+var_5C
55107E:  VLDR            S2, [R4,#0x48]
551082:  VLDR            S4, [R4,#0x4C]
551086:  VLDR            S6, [R4,#0x50]
55108A:  VMUL.F32        S2, S2, S0
55108E:  VMUL.F32        S4, S4, S0
551092:  VMUL.F32        S0, S6, S0
551096:  VSTR            S4, [SP,#0x90+var_58]
55109A:  VSTR            S2, [SP,#0x90+var_5C]
55109E:  VSTR            S0, [SP,#0x90+var_54]
5510A2:  BLX             j__ZN10FxSystem_c9SetVelAddEP5RwV3d; FxSystem_c::SetVelAdd(RwV3d *)
5510A6:  B               loc_550F22
5510A8:  MOVS            R6, #0
5510AA:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5510BA)
5510AC:  CMP             R0, #1
5510AE:  VLDR            S0, =50.0
5510B2:  ADDW            R11, R4, #0x8F8
5510B6:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5510B8:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
5510BA:  VLDR            S2, [R1]
5510BE:  VDIV.F32        S0, S2, S0
5510C2:  VLDR            S2, =1000.0
5510C6:  VMUL.F32        S0, S0, S2
5510CA:  VLDR            S2, =0.2
5510CE:  VCVT.U32.F32    S0, S0
5510D2:  VCVT.F32.U32    S0, S0
5510D6:  VMUL.F32        S2, S0, S2
5510DA:  IT EQ
5510DC:  VMOVEQ.F32      S2, S0
5510E0:  CMP             R6, #0
5510E2:  IT NE
5510E4:  VMOVNE.F32      S2, S0
5510E8:  VLDR            S0, [R11]
5510EC:  VADD.F32        S0, S0, S2
5510F0:  VLDR            S2, =5000.0
5510F4:  VCMPE.F32       S0, S2
5510F8:  VSTR            S0, [R11]
5510FC:  VMRS            APSR_nzcv, FPSCR
551100:  BLE             loc_551124
551102:  LDR             R0, [R4]
551104:  MOVS            R2, #0
551106:  LDR.W           R1, [R4,#0x93C]
55110A:  LDR.W           R3, [R0,#0xA8]
55110E:  MOV             R0, R4
551110:  BLX             R3
551112:  B               loc_5512D4
551114:  DCFS 250.0
551118:  DCFS 50.0
55111C:  DCFS 1000.0
551120:  DCFS 5000.0
551124:  MOVW            R0, #0x999A
551128:  MOVW            R2, #0xCCCD
55112C:  ADD.W           R10, SP, #0x90+var_5C
551130:  MOVT            R0, #0x3E99
551134:  MOV.W           R1, #0x3F800000
551138:  MOVT            R2, #0x3ECC
55113C:  STRD.W          R2, R1, [SP,#0x90+var_90]; float
551140:  MOVS            R2, #0; float
551142:  STRD.W          R1, R0, [SP,#0x90+var_88]; float
551146:  MOV             R0, R10; this
551148:  MOVS            R1, #0; float
55114A:  MOVS            R3, #0; float
55114C:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
551150:  CMP             R6, #1
551152:  BNE             loc_551180
551154:  VMOV.F32        S0, #0.5
551158:  LDRB.W          R0, [R4,#0x3A]
55115C:  ADR             R1, dword_5513B4
55115E:  VLDR            S2, =0.15
551162:  AND.W           R0, R0, #0xF8
551166:  CMP             R0, #0x40 ; '@'
551168:  ITT EQ
55116A:  VMOVEQ.F32      S2, S0
55116E:  ADDEQ           R1, #4
551170:  VLDR            S0, [R1]
551174:  VSTR            S0, [SP,#0x90+var_4C]
551178:  VSTR            S0, [SP,#0x90+var_44]
55117C:  VSTR            S2, [SP,#0x90+var_50]
551180:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x551186)
551182:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
551184:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
551186:  LDRB            R0, [R0]; CTimer::m_FrameCounter
551188:  LSLS            R0, R0, #0x1F
55118A:  BNE.W           loc_5512D4
55118E:  LDR             R0, [R4,#0x14]
551190:  ADD.W           R1, R0, #0x30 ; '0'
551194:  CMP             R0, #0
551196:  IT EQ
551198:  ADDEQ           R1, R4, #4
55119A:  VLDR            D16, [R1]
55119E:  LDR             R0, [R1,#8]
5511A0:  STR             R0, [SP,#0x90+var_60]
5511A2:  VSTR            D16, [SP,#0x90+var_68]
5511A6:  BLX             rand
5511AA:  VMOV            S0, R0
5511AE:  VLDR            S18, =4.6566e-10
5511B2:  CMP             R6, #1
5511B4:  VCVT.F32.S32    S0, S0
5511B8:  VMUL.F32        S0, S0, S18
5511BC:  BNE             loc_551204
5511BE:  VMOV.F32        S20, #-0.5
5511C2:  VADD.F32        S0, S0, S20
5511C6:  VSTR            S0, [SP,#0x90+var_74]
5511CA:  BLX             rand
5511CE:  VMOV            S0, R0
5511D2:  VCVT.F32.S32    S0, S0
5511D6:  VMUL.F32        S0, S0, S18
5511DA:  VADD.F32        S0, S0, S20
5511DE:  VSTR            S0, [SP,#0x90+var_70]
5511E2:  BLX             rand
5511E6:  VMOV            S0, R0
5511EA:  VLDR            S2, =0.4
5511EE:  VLDR            S20, =-0.7
5511F2:  VCVT.F32.S32    S0, S0
5511F6:  VLDR            S22, =1.4
5511FA:  VMUL.F32        S0, S0, S18
5511FE:  VMUL.F32        S0, S0, S2
551202:  B               loc_55124C
551204:  VMOV.F32        S20, #3.0
551208:  VMOV.F32        S22, #-1.5
55120C:  VMUL.F32        S0, S0, S20
551210:  VADD.F32        S0, S0, S22
551214:  VSTR            S0, [SP,#0x90+var_74]
551218:  BLX             rand
55121C:  VMOV            S0, R0
551220:  VCVT.F32.S32    S0, S0
551224:  VMUL.F32        S0, S0, S18
551228:  VMUL.F32        S0, S0, S20
55122C:  VADD.F32        S0, S0, S22
551230:  VSTR            S0, [SP,#0x90+var_70]
551234:  BLX             rand
551238:  VMOV            S0, R0
55123C:  VMOV.F32        S20, #-2.0
551240:  VCVT.F32.S32    S0, S0
551244:  VMOV.F32        S22, #4.0
551248:  VMUL.F32        S0, S0, S18
55124C:  VLDR            S2, =0.0
551250:  VADD.F32        S0, S0, S2
551254:  VSTR            S0, [SP,#0x90+var_6C]
551258:  BLX             rand
55125C:  VMOV            S0, R0
551260:  VCVT.F32.S32    S0, S0
551264:  VLDR            S2, [SP,#0x90+var_68]
551268:  VMUL.F32        S0, S0, S18
55126C:  VMUL.F32        S0, S22, S0
551270:  VADD.F32        S0, S20, S0
551274:  VADD.F32        S0, S2, S0
551278:  VSTR            S0, [SP,#0x90+var_68]
55127C:  BLX             rand
551280:  VMOV            S0, R0
551284:  LDR             R0, =(g_fx_ptr - 0x55129A)
551286:  MOVW            R2, #0x999A
55128A:  MOVW            R3, #0x999A
55128E:  VCVT.F32.S32    S0, S0
551292:  VLDR            S2, [SP,#0x90+var_68+4]
551296:  ADD             R0, PC; g_fx_ptr
551298:  MOVS            R6, #0
55129A:  MOVS            R1, #0
55129C:  MOVT            R2, #0x3F19
5512A0:  LDR             R0, [R0]; g_fx
5512A2:  MOVT            R3, #0x3F99
5512A6:  MOVT            R6, #0xBF80
5512AA:  LDR             R0, [R0,#(dword_820540 - 0x820520)]; int
5512AC:  VMUL.F32        S0, S0, S18
5512B0:  VMUL.F32        S0, S22, S0
5512B4:  VADD.F32        S0, S20, S0
5512B8:  VADD.F32        S0, S2, S0
5512BC:  VSTR            S0, [SP,#0x90+var_68+4]
5512C0:  STRD.W          R10, R6, [SP,#0x90+var_90]; int
5512C4:  STRD.W          R3, R2, [SP,#0x90+var_88]; int
5512C8:  ADD             R2, SP, #0x90+var_74; int
5512CA:  STR             R1, [SP,#0x90+var_80]; int
5512CC:  ADD             R1, SP, #0x90+var_68; int
5512CE:  MOVS            R3, #0; int
5512D0:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
5512D4:  LDRB.W          R0, [R4,#0x3A]
5512D8:  MOVS            R1, #8
5512DA:  ORR.W           R0, R1, R0,LSR#3
5512DE:  CMP             R0, #8
5512E0:  BNE             loc_551304
5512E2:  LDR.W           R0, [R4,#0x58C]
5512E6:  CMP             R0, #0
5512E8:  BNE.W           loc_550FB4
5512EC:  VLDR            S0, =2500.0
5512F0:  VLDR            S2, [R11]
5512F4:  VCMPE.F32       S2, S0
5512F8:  VMRS            APSR_nzcv, FPSCR
5512FC:  BLE.W           loc_550FB4
551300:  MOVS            R0, #2
551302:  B               loc_550FBC
551304:  LDRSH.W         R0, [R4,#0x26]
551308:  SUBW            R1, R0, #0x1B9
55130C:  CMP             R1, #0x18
55130E:  BHI             loc_551322
551310:  MOVS            R2, #1
551312:  LSL.W           R1, R2, R1
551316:  MOVS            R2, #0x1800001
55131C:  TST             R1, R2
55131E:  BNE.W           loc_550FB4
551322:  MOVW            R1, #0x1F5
551326:  CMP             R0, R1
551328:  IT NE
55132A:  CMPNE.W         R0, #0x234
55132E:  BEQ.W           loc_550FB4
551332:  BLX             rand
551336:  UXTH            R0, R0
551338:  VLDR            S2, =0.000015259
55133C:  VMOV            S0, R0
551340:  VCVT.F32.S32    S0, S0
551344:  VMUL.F32        S0, S0, S2
551348:  VMUL.F32        S0, S0, S16
55134C:  VCVT.S32.F32    S0, S0
551350:  VMOV            R0, S0
551354:  CMP             R0, #2
551356:  BGT.W           loc_550FB4
55135A:  LDR             R0, [R4,#0x14]
55135C:  MOVW            R12, #0
551360:  LDR.W           R1, [R4,#0x93C]; int
551364:  MOVS            R6, #0
551366:  ADD.W           R2, R0, #0x30 ; '0'
55136A:  CMP             R0, #0
55136C:  IT EQ
55136E:  ADDEQ           R2, R4, #4
551370:  MOV.W           LR, #1
551374:  LDRD.W          R3, R0, [R2]; int
551378:  MOVT            R12, #0xBF80
55137C:  LDR             R2, [R2,#8]
55137E:  STMEA.W         SP, {R0,R2,R6,LR}
551382:  MOV             R0, R4; int
551384:  MOVS            R2, #2; int
551386:  STRD.W          R12, R6, [SP,#0x90+var_80]; float
55138A:  BLX             j__ZN10CExplosion12AddExplosionEP7CEntityS1_14eExplosionType7CVectorjhfh; CExplosion::AddExplosion(CEntity *,CEntity *,eExplosionType,CVector,uint,uchar,float,uchar)
55138E:  CMP.W           R9, #0
551392:  BNE.W           loc_550FBA
551396:  B               loc_55106E
