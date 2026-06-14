; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim14ProcessEffectsEP4CPed
; Address            : 0x53C008 - 0x53C54A
; =========================================================

53C008:  PUSH            {R4-R7,LR}
53C00A:  ADD             R7, SP, #0xC
53C00C:  PUSH.W          {R8-R11}
53C010:  SUB             SP, SP, #4
53C012:  VPUSH           {D8-D9}
53C016:  SUB             SP, SP, #0x60; float
53C018:  MOV             R11, R1
53C01A:  MOV             R9, R0
53C01C:  LDR.W           R0, [R11,#0x14]
53C020:  ADD.W           R8, R11, #4
53C024:  CMP             R0, #0
53C026:  MOV             R5, R8
53C028:  IT NE
53C02A:  ADDNE.W         R5, R0, #0x30 ; '0'
53C02E:  BEQ             loc_53C03E
53C030:  VLDR            S4, [R0,#0x10]
53C034:  VLDR            S2, [R0,#0x14]
53C038:  VLDR            S0, [R0,#0x18]
53C03C:  B               loc_53C060
53C03E:  LDR.W           R6, [R11,#0x10]
53C042:  MOV             R0, R6; x
53C044:  BLX             sinf
53C048:  MOV             R4, R0
53C04A:  MOV             R0, R6; x
53C04C:  BLX             cosf
53C050:  VMOV            S2, R0
53C054:  EOR.W           R0, R4, #0x80000000
53C058:  VLDR            S0, =0.0
53C05C:  VMOV            S4, R0
53C060:  VLDR            S6, =0.4
53C064:  VLDR            S8, [R5,#4]
53C068:  VMUL.F32        S2, S2, S6
53C06C:  VLDR            S10, [R5,#8]
53C070:  VMUL.F32        S0, S0, S6
53C074:  VMUL.F32        S4, S4, S6
53C078:  VLDR            S6, [R5]
53C07C:  VADD.F32        S16, S2, S8
53C080:  VADD.F32        S0, S0, S10
53C084:  VADD.F32        S18, S6, S4
53C088:  VSTR            S16, [SP,#0x90+var_40+4]
53C08C:  VSTR            S18, [SP,#0x90+var_40]
53C090:  VSTR            S0, [SP,#0x90+var_38]
53C094:  LDR.W           R0, [R11,#0x444]
53C098:  CBZ             R0, loc_53C0A2
53C09A:  LDR.W           R4, [R0,#0x90]
53C09E:  STR             R4, [SP,#0x90+var_38]
53C0A0:  B               loc_53C0B2
53C0A2:  VMOV.F32        S2, #0.5
53C0A6:  VADD.F32        S0, S0, S2
53C0AA:  VMOV            R4, S0
53C0AE:  VSTR            S0, [SP,#0x90+var_38]
53C0B2:  LDRH.W          R0, [R9,#0xA]
53C0B6:  CBZ             R0, loc_53C0CA
53C0B8:  LDR.W           R0, [R9,#0x60]; this
53C0BC:  CBZ             R0, loc_53C0FE
53C0BE:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
53C0C2:  MOVS            R0, #0
53C0C4:  STR.W           R0, [R9,#0x60]
53C0C8:  B               loc_53C0FE
53C0CA:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
53C0CE:  MOV             R6, R0
53C0D0:  STR             R4, [R6,#0x38]
53C0D2:  VSTR            S18, [R6,#0x30]
53C0D6:  VSTR            S16, [R6,#0x34]
53C0DA:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
53C0DE:  LDR.W           R0, [R9,#0x60]
53C0E2:  CMP             R0, #0
53C0E4:  BEQ.W           loc_53C428
53C0E8:  MOV             R1, R6
53C0EA:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
53C0EE:  LDR.W           R0, [R9,#0x60]; this
53C0F2:  MOVS            R1, #1; unsigned __int8
53C0F4:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
53C0F8:  MOV             R0, R6
53C0FA:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
53C0FE:  LDRH.W          R0, [R9,#0xA]
53C102:  CMP             R0, #3
53C104:  BNE             loc_53C14C
53C106:  LDRB.W          R0, [R9,#0x64]
53C10A:  CMP             R0, #0
53C10C:  BNE.W           loc_53C53C
53C110:  LDR.W           R0, =(g_fx_ptr - 0x53C11A)
53C114:  LDR             R1, [SP,#0x90+var_38]
53C116:  ADD             R0, PC; g_fx_ptr
53C118:  STR             R1, [SP,#0x90+var_58]
53C11A:  VLDR            D16, [SP,#0x90+var_40]
53C11E:  ADD             R1, SP, #0x90+var_60; CVector *
53C120:  LDR             R0, [R0]; g_fx ; this
53C122:  VSTR            D16, [SP,#0x90+var_60]
53C126:  BLX             j__ZN4Fx_c18TriggerWaterSplashER7CVector; Fx_c::TriggerWaterSplash(CVector &)
53C12A:  MOVS            R0, #1
53C12C:  MOVS            R1, #0x4B ; 'K'; int
53C12E:  STRB.W          R0, [R9,#0x64]
53C132:  MOVS            R0, #0
53C134:  STRD.W          R0, R0, [SP,#0x90+var_90]; CPhysical *
53C138:  STRD.W          R0, R0, [SP,#0x90+var_88]; int
53C13C:  ADD.W           R0, R11, #0x13C; this
53C140:  MOVS            R2, #0; float
53C142:  MOV.W           R3, #0x3F800000; float
53C146:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
53C14A:  B               loc_53C53C
53C14C:  MOVS            R1, #0
53C14E:  STRB.W          R1, [R9,#0x64]
53C152:  SUBS            R1, R0, #1
53C154:  CMP             R1, #2
53C156:  BCS.W           loc_53C3CC
53C15A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x53C166)
53C15E:  LDR.W           R1, [R9,#0x38]
53C162:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
53C164:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
53C166:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
53C168:  SUBS            R1, R0, R1
53C16A:  CMP             R1, #0x65 ; 'e'
53C16C:  BCC             loc_53C1FC
53C16E:  STR.W           R0, [R9,#0x38]
53C172:  MOVS            R2, #0; float
53C174:  LDR.W           R1, [R11,#0x14]
53C178:  MOVS            R3, #0; float
53C17A:  MOVS            R6, #0
53C17C:  LDRD.W          R0, R1, [R1,#0x10]; float
53C180:  BLX             j__ZN8CGeneral21GetAngleBetweenPointsEffff; CGeneral::GetAngleBetweenPoints(float,float,float,float)
53C184:  BLX             j__ZN8CGeneral10LimitAngleEf; CGeneral::LimitAngle(float)
53C188:  MOVW            R1, #0xCCCD
53C18C:  MOVW            R2, #0xCCCD
53C190:  MOV             R4, R0
53C192:  MOV.W           R0, #0x3F000000
53C196:  MOVT            R1, #0x3ECC
53C19A:  MOVT            R2, #0x3E4C
53C19E:  STRD.W          R2, R1, [SP,#0x90+var_90]; float
53C1A2:  MOV.W           R1, #0x3F800000; float
53C1A6:  STRD.W          R6, R0, [SP,#0x90+var_88]; float
53C1AA:  ADD             R0, SP, #0x90+var_60; this
53C1AC:  MOV.W           R2, #0x3F800000; float
53C1B0:  MOV.W           R3, #0x3F800000; float
53C1B4:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
53C1B8:  LDR.W           R1, =(g_fx_ptr - 0x53C1CC)
53C1BC:  VMOV            S2, R4
53C1C0:  VLDR            S0, =180.0
53C1C4:  MOVW            R2, #0x999A
53C1C8:  ADD             R1, PC; g_fx_ptr
53C1CA:  MOVT            R2, #0x3F99
53C1CE:  VADD.F32        S0, S2, S0
53C1D2:  LDR             R1, [R1]; g_fx
53C1D4:  LDR             R3, [R1,#(dword_820554 - 0x820520)]
53C1D6:  MOV             R1, #0x3F19999A
53C1DE:  STRD.W          R6, R6, [SP,#0x90+var_6C]
53C1E2:  STR             R6, [SP,#0x90+var_64]
53C1E4:  STRD.W          R2, R1, [SP,#0x90+var_88]; float
53C1E8:  ADD             R1, SP, #0x90+var_40; int
53C1EA:  ADD             R2, SP, #0x90+var_6C; int
53C1EC:  STR             R6, [SP,#0x90+var_80]; int
53C1EE:  VSTR            S0, [SP,#0x90+var_8C]
53C1F2:  STR             R0, [SP,#0x90+var_90]; int
53C1F4:  MOV             R0, R3; int
53C1F6:  MOVS            R3, #0; int
53C1F8:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
53C1FC:  ADD.W           R5, R11, #0x13C
53C200:  MOVS            R0, #0
53C202:  STRD.W          R0, R0, [SP,#0x90+var_90]; CPhysical *
53C206:  MOVS            R1, #0x4C ; 'L'; int
53C208:  STRD.W          R0, R0, [SP,#0x90+var_88]; int
53C20C:  MOV             R0, R5; this
53C20E:  MOVS            R2, #0; float
53C210:  MOV.W           R3, #0x3F800000; float
53C214:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
53C218:  LDRH.W          R0, [R9,#0xA]
53C21C:  CMP             R0, #2
53C21E:  BNE.W           loc_53C53C
53C222:  LDR.W           R0, [R11,#0x18]
53C226:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
53C22A:  MOVS            R1, #0x18
53C22C:  MOV             R6, R0
53C22E:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
53C232:  STR             R0, [SP,#0x90+var_7C]
53C234:  MOV             R0, R6
53C236:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
53C23A:  MOV             R9, R0
53C23C:  MOV             R0, R6
53C23E:  MOVS            R1, #0x22 ; '"'
53C240:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
53C244:  MOV             R10, R0
53C246:  MOV             R0, R6
53C248:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
53C24C:  MOV             R4, R0
53C24E:  MOV             R0, R6
53C250:  MOVS            R1, #0x35 ; '5'
53C252:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
53C256:  STR             R0, [SP,#0x90+var_74]
53C258:  MOV             R0, R6
53C25A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
53C25E:  STR             R0, [SP,#0x90+var_78]
53C260:  MOV             R0, R6
53C262:  MOVS            R1, #0x2B ; '+'
53C264:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
53C268:  STR             R0, [SP,#0x90+var_70]
53C26A:  MOV             R0, R6
53C26C:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
53C270:  MOV             R6, R0
53C272:  LDR.W           R0, [R11,#0x14]
53C276:  VLDR            S18, =0.05
53C27A:  ADD.W           R4, R4, R10,LSL#6
53C27E:  CMP             R0, #0
53C280:  IT NE
53C282:  ADDNE.W         R8, R0, #0x30 ; '0'
53C286:  LDR             R0, [SP,#0x90+var_7C]
53C288:  VLDR            S16, [R8,#8]
53C28C:  MOV             R8, R5
53C28E:  ADD.W           R0, R9, R0,LSL#6
53C292:  VLDR            S0, [R0,#0x38]
53C296:  VSUB.F32        S0, S0, S16
53C29A:  VABS.F32        S0, S0
53C29E:  VCMPE.F32       S0, S18
53C2A2:  VMRS            APSR_nzcv, FPSCR
53C2A6:  BGE             loc_53C2DA
53C2A8:  LDR             R1, =(g_fxMan_ptr - 0x53C2B6)
53C2AA:  ADD.W           R2, R0, #0x30 ; '0'; int
53C2AE:  MOVS            R5, #0
53C2B0:  MOVS            R3, #0; int
53C2B2:  ADD             R1, PC; g_fxMan_ptr
53C2B4:  STR             R5, [SP,#0x90+var_90]; int
53C2B6:  LDR             R0, [R1]; g_fxMan ; int
53C2B8:  ADR             R1, aWaterSwim; "water_swim"
53C2BA:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
53C2BE:  CBZ             R0, loc_53C2DA
53C2C0:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
53C2C4:  MOV             R0, R8; this
53C2C6:  MOVS            R1, #0x4A ; 'J'; int
53C2C8:  MOVS            R2, #0; float
53C2CA:  MOV.W           R3, #0x3F800000; float
53C2CE:  STRD.W          R5, R5, [SP,#0x90+var_90]; CPhysical *
53C2D2:  STRD.W          R5, R5, [SP,#0x90+var_88]; int
53C2D6:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
53C2DA:  LDRD.W          R1, R0, [SP,#0x90+var_78]
53C2DE:  VLDR            S0, [R4,#0x38]
53C2E2:  ADD.W           R5, R1, R0,LSL#6
53C2E6:  VSUB.F32        S0, S0, S16
53C2EA:  VABS.F32        S0, S0
53C2EE:  VCMPE.F32       S0, S18
53C2F2:  VMRS            APSR_nzcv, FPSCR
53C2F6:  BGE             loc_53C32A
53C2F8:  LDR             R0, =(g_fxMan_ptr - 0x53C306)
53C2FA:  ADD.W           R2, R4, #0x30 ; '0'; int
53C2FE:  ADR             R1, aWaterSwim; "water_swim"
53C300:  MOVS            R4, #0
53C302:  ADD             R0, PC; g_fxMan_ptr
53C304:  MOVS            R3, #0; int
53C306:  STR             R4, [SP,#0x90+var_90]; int
53C308:  LDR             R0, [R0]; g_fxMan ; int
53C30A:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
53C30E:  CBZ             R0, loc_53C32A
53C310:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
53C314:  MOV             R0, R8; this
53C316:  MOVS            R1, #0x4A ; 'J'; int
53C318:  MOVS            R2, #0; float
53C31A:  MOV.W           R3, #0x3F800000; float
53C31E:  STRD.W          R4, R4, [SP,#0x90+var_90]; CPhysical *
53C322:  STRD.W          R4, R4, [SP,#0x90+var_88]; int
53C326:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
53C32A:  VLDR            S0, [R5,#0x38]
53C32E:  LDR             R0, [SP,#0x90+var_70]
53C330:  VSUB.F32        S0, S0, S16
53C334:  ADD.W           R4, R6, R0,LSL#6
53C338:  VABS.F32        S0, S0
53C33C:  VCMPE.F32       S0, S18
53C340:  VMRS            APSR_nzcv, FPSCR
53C344:  BGE             loc_53C378
53C346:  LDR             R0, =(g_fxMan_ptr - 0x53C354)
53C348:  ADD.W           R2, R5, #0x30 ; '0'; int
53C34C:  ADR             R1, aWaterSwim; "water_swim"
53C34E:  MOVS            R5, #0
53C350:  ADD             R0, PC; g_fxMan_ptr
53C352:  MOVS            R3, #0; int
53C354:  STR             R5, [SP,#0x90+var_90]; int
53C356:  LDR             R0, [R0]; g_fxMan ; int
53C358:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
53C35C:  CBZ             R0, loc_53C378
53C35E:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
53C362:  MOV             R0, R8; this
53C364:  MOVS            R1, #0x4A ; 'J'; int
53C366:  MOVS            R2, #0; float
53C368:  MOV.W           R3, #0x3F800000; float
53C36C:  STRD.W          R5, R5, [SP,#0x90+var_90]; CPhysical *
53C370:  STRD.W          R5, R5, [SP,#0x90+var_88]; int
53C374:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
53C378:  VLDR            S0, [R4,#0x38]
53C37C:  VSUB.F32        S0, S0, S16
53C380:  VABS.F32        S0, S0
53C384:  VCMPE.F32       S0, S18
53C388:  VMRS            APSR_nzcv, FPSCR
53C38C:  BGE.W           loc_53C53C
53C390:  LDR             R0, =(g_fxMan_ptr - 0x53C39E)
53C392:  ADD.W           R2, R4, #0x30 ; '0'; int
53C396:  ADR             R1, aWaterSwim; "water_swim"
53C398:  MOVS            R4, #0
53C39A:  ADD             R0, PC; g_fxMan_ptr
53C39C:  MOVS            R3, #0; int
53C39E:  STR             R4, [SP,#0x90+var_90]; int
53C3A0:  LDR             R0, [R0]; g_fxMan ; int
53C3A2:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
53C3A6:  CMP             R0, #0
53C3A8:  BEQ.W           loc_53C53C
53C3AC:  BLX             j__ZN10FxSystem_c11PlayAndKillEv; FxSystem_c::PlayAndKill(void)
53C3B0:  MOV             R0, R8
53C3B2:  MOVS            R1, #0x4A ; 'J'
53C3B4:  STRD.W          R4, R4, [SP,#0x90+var_90]
53C3B8:  STRD.W          R4, R4, [SP,#0x90+var_88]
53C3BC:  B               loc_53C140
53C3BE:  ALIGN 0x10
53C3C0:  DCFS 0.0
53C3C4:  DCFS 0.4
53C3C8:  DCFS 180.0
53C3CC:  CMP             R0, #4
53C3CE:  BNE.W           loc_53C53C
53C3D2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x53C3DC)
53C3D4:  LDR.W           R1, [R9,#0x38]
53C3D8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
53C3DA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
53C3DC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
53C3DE:  SUBS            R1, R0, R1
53C3E0:  CMP             R1, #0x65 ; 'e'
53C3E2:  BCC.W           loc_53C53C
53C3E6:  STR.W           R0, [R9,#0x38]
53C3EA:  MOV             R0, R11; this
53C3EC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
53C3F0:  CMP             R0, #1
53C3F2:  BNE             loc_53C466
53C3F4:  LDR.W           R0, [R11,#0x444]
53C3F8:  VLDR            S16, [R0,#0x44]
53C3FC:  MOVS            R0, #8
53C3FE:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
53C402:  VMOV            S0, R0
53C406:  VLDR            S2, =100.0
53C40A:  VMOV.F32        S4, #3.0
53C40E:  VDIV.F32        S0, S16, S0
53C412:  VMUL.F32        S0, S0, S2
53C416:  VSUB.F32        S0, S2, S0
53C41A:  VDIV.F32        S0, S0, S4
53C41E:  VCVT.S32.F32    S0, S0
53C422:  VMOV            R4, S0
53C426:  B               loc_53C468
53C428:  LDR             R0, =(g_fxMan_ptr - 0x53C434)
53C42A:  MOVS            R2, #0
53C42C:  LDR             R1, =(aWaterRipples - 0x53C43A); "water_ripples"
53C42E:  MOV             R3, R6; int
53C430:  ADD             R0, PC; g_fxMan_ptr
53C432:  STRD.W          R2, R2, [SP,#0x90+var_60]
53C436:  ADD             R1, PC; "water_ripples"
53C438:  STR             R2, [SP,#0x90+var_58]
53C43A:  LDR             R0, [R0]; g_fxMan ; int
53C43C:  STR             R2, [SP,#0x90+var_90]; int
53C43E:  ADD             R2, SP, #0x90+var_60; int
53C440:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
53C444:  CMP             R0, #0
53C446:  STR.W           R0, [R9,#0x60]
53C44A:  BEQ.W           loc_53C0F8
53C44E:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
53C452:  LDR.W           R0, [R9,#0x60]; this
53C456:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
53C45A:  LDR.W           R0, [R9,#0x60]
53C45E:  CMP             R0, #0
53C460:  BNE.W           loc_53C0E8
53C464:  B               loc_53C0F8
53C466:  MOVS            R4, #5
53C468:  BLX             rand
53C46C:  UXTH            R0, R0
53C46E:  VLDR            S2, =0.000015259
53C472:  VMOV            S0, R0
53C476:  VCVT.F32.S32    S0, S0
53C47A:  VMUL.F32        S0, S0, S2
53C47E:  VLDR            S2, =100.0
53C482:  VMUL.F32        S0, S0, S2
53C486:  VCVT.S32.F32    S0, S0
53C48A:  VMOV            R0, S0
53C48E:  CMP             R4, R0
53C490:  BLE             loc_53C53C
53C492:  LDR.W           R0, [R11,#0x18]
53C496:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
53C49A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
53C49E:  LDR             R1, =(byte_9FF888 - 0x53C4AC)
53C4A0:  VLDR            D16, [R0,#0xF0]
53C4A4:  LDR.W           R0, [R0,#0xF8]
53C4A8:  ADD             R1, PC; byte_9FF888
53C4AA:  STR             R0, [SP,#0x90+var_58]
53C4AC:  VSTR            D16, [SP,#0x90+var_60]
53C4B0:  LDRB            R0, [R1]
53C4B2:  DMB.W           ISH
53C4B6:  TST.W           R0, #1
53C4BA:  BNE             loc_53C4FC
53C4BC:  LDR             R0, =(byte_9FF888 - 0x53C4C2)
53C4BE:  ADD             R0, PC; byte_9FF888 ; __guard *
53C4C0:  BLX             j___cxa_guard_acquire
53C4C4:  CBZ             R0, loc_53C4FC
53C4C6:  LDR             R0, =(unk_9FF86C - 0x53C4D6)
53C4C8:  MOVW            R3, #0x999A
53C4CC:  MOV.W           R1, #0x3F000000
53C4D0:  MOVS            R2, #0
53C4D2:  ADD             R0, PC; unk_9FF86C ; this
53C4D4:  MOVT            R3, #0x3E99
53C4D8:  MOV.W           R6, #0x3E800000
53C4DC:  STRD.W          R6, R3, [SP,#0x90+var_90]; int
53C4E0:  MOV.W           R3, #0x3F800000; float
53C4E4:  STRD.W          R2, R1, [SP,#0x90+var_88]; float
53C4E8:  MOV.W           R1, #0x3F800000; float
53C4EC:  MOV.W           R2, #0x3F800000; float
53C4F0:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
53C4F4:  LDR             R0, =(byte_9FF888 - 0x53C4FA)
53C4F6:  ADD             R0, PC; byte_9FF888 ; __guard *
53C4F8:  BLX             j___cxa_guard_release
53C4FC:  LDR             R0, =(g_fx_ptr - 0x53C50A)
53C4FE:  MOVS            R2, #0
53C500:  LDR             R1, =(unk_9FF86C - 0x53C518)
53C502:  MOV.W           R3, #0x40000000
53C506:  ADD             R0, PC; g_fx_ptr
53C508:  MOVW            R6, #0x999A
53C50C:  MOVS            R5, #0
53C50E:  STRD.W          R2, R2, [SP,#0x90+var_6C]
53C512:  LDR             R0, [R0]; g_fx
53C514:  ADD             R1, PC; unk_9FF86C
53C516:  STR             R3, [SP,#0x90+var_64]
53C518:  MOV             R3, #0x3F19999A
53C520:  MOVT            R6, #0x3F99
53C524:  LDR             R0, [R0,#(dword_820528 - 0x820520)]; int
53C526:  MOVT            R5, #0xBF80
53C52A:  STMEA.W         SP, {R1,R5,R6}
53C52E:  ADD             R1, SP, #0x90+var_60; int
53C530:  STRD.W          R3, R2, [SP,#0x90+var_84]; float
53C534:  ADD             R2, SP, #0x90+var_6C; int
53C536:  MOVS            R3, #0; int
53C538:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
53C53C:  ADD             SP, SP, #0x60 ; '`'
53C53E:  VPOP            {D8-D9}
53C542:  ADD             SP, SP, #4
53C544:  POP.W           {R8-R11}
53C548:  POP             {R4-R7,PC}
