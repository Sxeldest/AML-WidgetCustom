; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager28UpdateAmbienceTrackAndVolumeEv
; Address            : 0x390FCC - 0x3916DC
; =========================================================

390FCC:  PUSH            {R4-R7,LR}
390FCE:  ADD             R7, SP, #0xC
390FD0:  PUSH.W          {R8}
390FD4:  VPUSH           {D8-D10}
390FD8:  SUB             SP, SP, #0x20
390FDA:  MOV             R4, R0
390FDC:  MOVS            R0, #0
390FDE:  STRB            R0, [R4,#2]
390FE0:  STRB            R0, [R4]
390FE2:  MOVS            R0, #0xFF
390FE4:  LDR             R5, [R4,#0xC]
390FE6:  LDRSB.W         R6, [R4,#3]
390FEA:  CMP             R5, #0
390FEC:  STRB            R0, [R4,#3]
390FEE:  BLT             loc_391032
390FF0:  MOVS            R0, #1
390FF2:  VMOV.F32        S16, #-6.0
390FF6:  STRB            R0, [R4]
390FF8:  MOV.W           R8, #0
390FFC:  STRB            R0, [R4,#2]
390FFE:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391000:  SXTB            R0, R0
391002:  CMP.W           R0, #0xFFFFFFFF
391006:  BLE             loc_39106A
391008:  LDR.W           R0, =(AudioEngine_ptr - 0x391010)
39100C:  ADD             R0, PC; AudioEngine_ptr
39100E:  LDR             R0, [R0]; AudioEngine ; this
391010:  BLX             j__ZN12CAudioEngine9IsRadioOnEv; CAudioEngine::IsRadioOn(void)
391014:  CBZ             R0, loc_391090
391016:  LDR.W           R0, =(AudioEngine_ptr - 0x39101E)
39101A:  ADD             R0, PC; AudioEngine_ptr
39101C:  LDR             R0, [R0]; AudioEngine ; this
39101E:  BLX             j__ZN12CAudioEngine24GetCurrentRadioStationIDEv; CAudioEngine::GetCurrentRadioStationID(void)
391022:  LDRB            R1, [R4,#3]
391024:  UXTB            R0, R0
391026:  CMP             R0, R1
391028:  BEQ             loc_3910A2
39102A:  LDR.W           R0, =(AudioEngine_ptr - 0x391032)
39102E:  ADD             R0, PC; AudioEngine_ptr
391030:  B               loc_391084
391032:  LDR.W           R0, =(_ZN8CWeather9SandstormE_ptr - 0x39103A)
391036:  ADD             R0, PC; _ZN8CWeather9SandstormE_ptr
391038:  LDR             R0, [R0]; CWeather::Sandstorm ...
39103A:  VLDR            S0, [R0]
39103E:  VCMPE.F32       S0, #0.0
391042:  VMRS            APSR_nzcv, FPSCR
391046:  BLE             loc_3910AE
391048:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x391050)
39104C:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
39104E:  LDR             R0, [R0]; CGame::currArea ...
391050:  LDR             R0, [R0]; this
391052:  CBNZ            R0, loc_391064
391054:  BLX             j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
391058:  CBNZ            R0, loc_391064
39105A:  BLX             j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
39105E:  CMP             R0, #0
391060:  BEQ.W           loc_391298
391064:  MOV.W           R8, #1
391068:  B               loc_3910B2
39106A:  LDR.W           R0, =(AudioEngine_ptr - 0x391072)
39106E:  ADD             R0, PC; AudioEngine_ptr
391070:  LDR             R0, [R0]; AudioEngine ; this
391072:  BLX             j__ZN12CAudioEngine9IsRadioOnEv; CAudioEngine::IsRadioOn(void)
391076:  CMP             R6, #0
391078:  BLT.W           loc_3911BC
39107C:  CBZ             R0, loc_3910A2
39107E:  LDR.W           R0, =(AudioEngine_ptr - 0x391086)
391082:  ADD             R0, PC; AudioEngine_ptr
391084:  LDR             R0, [R0]; AudioEngine
391086:  MOVS            R1, #0
391088:  MOVS            R2, #0
39108A:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
39108E:  B               loc_3910A2
391090:  LDR.W           R0, =(AudioEngine_ptr - 0x39109E)
391094:  MOVS            R2, #2; signed __int8
391096:  LDRSB.W         R1, [R4,#3]; signed __int8
39109A:  ADD             R0, PC; AudioEngine_ptr
39109C:  LDR             R0, [R0]; AudioEngine ; this
39109E:  BLX             j__ZN12CAudioEngine10StartRadioEaa; CAudioEngine::StartRadio(signed char,signed char)
3910A2:  ADD             SP, SP, #0x20 ; ' '
3910A4:  VPOP            {D8-D10}
3910A8:  POP.W           {R8}
3910AC:  POP             {R4-R7,PC}
3910AE:  MOV.W           R8, #0
3910B2:  LDR.W           R0, =(_ZN11CAudioZones18m_NumActiveSpheresE_ptr - 0x3910BA)
3910B6:  ADD             R0, PC; _ZN11CAudioZones18m_NumActiveSpheresE_ptr
3910B8:  LDR             R0, [R0]; CAudioZones::m_NumActiveSpheres ...
3910BA:  LDR             R0, [R0]; CAudioZones::m_NumActiveSpheres
3910BC:  CMP             R0, #1
3910BE:  BLT             loc_3910EA
3910C0:  LDR.W           R0, =(_ZN11CAudioZones16m_aActiveSpheresE_ptr - 0x3910CC)
3910C4:  LDR.W           R1, =(_ZN11CAudioZones10m_aSpheresE_ptr - 0x3910CE)
3910C8:  ADD             R0, PC; _ZN11CAudioZones16m_aActiveSpheresE_ptr
3910CA:  ADD             R1, PC; _ZN11CAudioZones10m_aSpheresE_ptr
3910CC:  LDR             R0, [R0]; CAudioZones::m_aActiveSpheres ...
3910CE:  LDR             R1, [R1]; CAudioZones::m_aSpheres ...
3910D0:  LDR             R0, [R0]; CAudioZones::m_aActiveSpheres
3910D2:  RSB.W           R0, R0, R0,LSL#3
3910D6:  ADD.W           R1, R1, R0,LSL#2
3910DA:  VLDR            D16, [R1,#0xC]
3910DE:  LDRH            R0, [R1,#8]
3910E0:  LDR             R1, [R1,#0x14]
3910E2:  STR             R1, [SP,#0x48+var_30]
3910E4:  VSTR            D16, [SP,#0x48+var_38]
3910E8:  B               loc_391116
3910EA:  LDR.W           R0, =(_ZN11CAudioZones16m_NumActiveBoxesE_ptr - 0x3910F2)
3910EE:  ADD             R0, PC; _ZN11CAudioZones16m_NumActiveBoxesE_ptr
3910F0:  LDR             R0, [R0]; CAudioZones::m_NumActiveBoxes ...
3910F2:  LDR             R0, [R0]; CAudioZones::m_NumActiveBoxes
3910F4:  CMP             R0, #1
3910F6:  BLT.W           loc_3911EE
3910FA:  LDR.W           R0, =(_ZN11CAudioZones14m_aActiveBoxesE_ptr - 0x391106)
3910FE:  LDR.W           R1, =(_ZN11CAudioZones8m_aBoxesE_ptr - 0x391108)
391102:  ADD             R0, PC; _ZN11CAudioZones14m_aActiveBoxesE_ptr
391104:  ADD             R1, PC; _ZN11CAudioZones8m_aBoxesE_ptr
391106:  LDR             R0, [R0]; CAudioZones::m_aActiveBoxes ...
391108:  LDR             R1, [R1]; CAudioZones::m_aBoxes ...
39110A:  LDR             R0, [R0]; CAudioZones::m_aActiveBoxes
39110C:  ADD.W           R0, R0, R0,LSL#1
391110:  ADD.W           R0, R1, R0,LSL#3
391114:  LDRH            R0, [R0,#8]
391116:  VMOV.F32        S16, #-6.0
39111A:  SXTH            R0, R0
39111C:  CMP             R0, #0
39111E:  BLT.W           loc_3911E8
391122:  SUBS            R1, R0, #4; switch 64 cases
391124:  MOV.W           R5, #0xFFFFFFFF
391128:  CMP             R1, #0x3F ; '?'
39112A:  BHI.W           def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
39112E:  MOVS            R0, #(stderr+2); this
391130:  TBH.W           [PC,R1,LSL#1]; switch jump
391134:  DCW 0x149; jump table for switch statement
391136:  DCW 0x15E
391138:  DCW 0x40
39113A:  DCW 0x40
39113C:  DCW 0x180
39113E:  DCW 0x40
391140:  DCW 0x182
391142:  DCW 0x40
391144:  DCW 0x1A8
391146:  DCW 0x1AA
391148:  DCW 0x40
39114A:  DCW 0x1D2
39114C:  DCW 0x40
39114E:  DCW 0x1D4
391150:  DCW 0x40
391152:  DCW 0x1D6
391154:  DCW 0x1D8
391156:  DCW 0x1DA
391158:  DCW 0x40
39115A:  DCW 0x1DC
39115C:  DCW 0x1DE
39115E:  DCW 0x1E0
391160:  DCW 0x1E2
391162:  DCW 0x40
391164:  DCW 0x42
391166:  DCW 0x42
391168:  DCW 0x1E4
39116A:  DCW 0x40
39116C:  DCW 0x40
39116E:  DCW 0x40
391170:  DCW 0x1EC
391172:  DCW 0x40
391174:  DCW 0x1EE
391176:  DCW 0x1F0
391178:  DCW 0x40
39117A:  DCW 0x1F3
39117C:  DCW 0x40
39117E:  DCW 0x1F5
391180:  DCW 0x40
391182:  DCW 0x40
391184:  DCW 0x1F9
391186:  DCW 0x40
391188:  DCW 0x40
39118A:  DCW 0x40
39118C:  DCW 0x1FB
39118E:  DCW 0x40
391190:  DCW 0x1FD
391192:  DCW 0x1FF
391194:  DCW 0x201
391196:  DCW 0x214
391198:  DCW 0x203
39119A:  DCW 0x205
39119C:  DCW 0x207
39119E:  DCW 0x209
3911A0:  DCW 0x20B
3911A2:  DCW 0x20D
3911A4:  DCW 0x20F
3911A6:  DCW 0x211
3911A8:  DCW 0x213
3911AA:  DCW 0x40
3911AC:  DCW 0x216
3911AE:  DCW 0x40
3911B0:  DCW 0x218
3911B2:  DCW 0x21A
3911B4:  LDRB            R0, [R4,#3]; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3911B6:  B               loc_391000
3911B8:  MOVS            R5, #0x93; jumptable 00391130 cases 28,29
3911BA:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3911BC:  CBZ             R0, loc_3911F8
3911BE:  LDRB            R0, [R4]
3911C0:  CBZ             R0, loc_391214
3911C2:  LDR.W           R0, =(AudioEngine_ptr - 0x3911CE)
3911C6:  MOVS            R1, #0
3911C8:  MOVS            R2, #0
3911CA:  ADD             R0, PC; AudioEngine_ptr
3911CC:  LDR             R5, [R0]; AudioEngine
3911CE:  MOV             R0, R5
3911D0:  BLX             j__ZN12CAudioEngine9StopRadioEP21tVehicleAudioSettingsh; CAudioEngine::StopRadio(tVehicleAudioSettings *,uchar)
3911D4:  MOV             R0, R5; this
3911D6:  MOVS            R1, #0x23 ; '#'; int
3911D8:  MOVS            R2, #0; float
3911DA:  MOV.W           R3, #0x3F800000; float
3911DE:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
3911E2:  LDRB            R0, [R4]
3911E4:  STRB            R0, [R4,#1]
3911E6:  B               loc_3910A2
3911E8:  MOV.W           R5, #0xFFFFFFFF
3911EC:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3911EE:  VMOV.F32        S16, #-6.0
3911F2:  MOV.W           R5, #0xFFFFFFFF
3911F6:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3911F8:  CMP             R5, #0
3911FA:  BLT             loc_39121A
3911FC:  LDRD.W          R0, R1, [R4,#8]
391200:  CMP             R5, R1
391202:  BNE             loc_3912C2
391204:  CMP             R0, #8
391206:  BEQ.W           loc_391332
39120A:  LDR             R1, [R4,#0x20]
39120C:  CMP             R1, R5
39120E:  BEQ.W           loc_3910A2
391212:  B               loc_39157A
391214:  MOVS            R0, #0
391216:  STRB            R0, [R4,#1]
391218:  B               loc_3910A2
39121A:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x391226)
39121E:  VMOV.F32        S20, #0.5
391222:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
391224:  LDR             R0, [R0]; CWeather::UnderWaterness ...
391226:  VLDR            S0, [R0]
39122A:  VCMPE.F32       S0, S20
39122E:  VMRS            APSR_nzcv, FPSCR
391232:  BGE             loc_3912E4
391234:  LDR.W           R0, =(TheCamera_ptr - 0x39123C)
391238:  ADD             R0, PC; TheCamera_ptr
39123A:  LDR             R0, [R0]; TheCamera
39123C:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]; float
39123E:  VLDR            S0, [R0,#0xE0]
391242:  ADD.W           R2, R1, #0x30 ; '0'
391246:  CMP             R1, #0
391248:  VLDR            S2, [R0,#0xE4]
39124C:  IT EQ
39124E:  ADDEQ           R2, R0, #4
391250:  VLDR            S4, [R2,#8]
391254:  VMUL.F32        S0, S0, S0
391258:  VSUB.F32        S2, S4, S2
39125C:  VMUL.F32        S2, S2, S2
391260:  VADD.F32        S0, S0, S2
391264:  VMOV.F32        S2, #1.75
391268:  VSQRT.F32       S0, S0
39126C:  VDIV.F32        S0, S0, S2
391270:  VMOV            R0, S0; this
391274:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
391278:  VMOV.F32        S0, #-12.0
39127C:  VMOV            S2, R0
391280:  VADD.F32        S18, S2, S0
391284:  VLDR            S0, =-34.0
391288:  VCMPE.F32       S18, S0
39128C:  VMRS            APSR_nzcv, FPSCR
391290:  BLE             loc_3912F2
391292:  VMOV.F32        S16, #1.0
391296:  B               loc_3912EC
391298:  LDR.W           R0, =(_ZN8CWeather9SandstormE_ptr - 0x3912A0)
39129C:  ADD             R0, PC; _ZN8CWeather9SandstormE_ptr
39129E:  LDR             R0, [R0]; CWeather::Sandstorm ...
3912A0:  LDR             R0, [R0]; x
3912A2:  BLX             log10f
3912A6:  VMOV.F32        S0, #20.0
3912AA:  MOVS            R5, #0xA7
3912AC:  VMOV            S2, R0
3912B0:  MOV.W           R8, #1
3912B4:  VMOV.F32        S4, #-6.0
3912B8:  VMUL.F32        S0, S2, S0
3912BC:  VADD.F32        S16, S0, S4
3912C0:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3912C2:  CMP             R0, #8
3912C4:  BEQ             loc_39133C
3912C6:  LDR             R1, [R4,#0x20]
3912C8:  VLDR            S0, [R4,#0x18]
3912CC:  CMP             R1, R5
3912CE:  BNE.W           loc_39156C
3912D2:  VMOV.F32        S2, #1.0
3912D6:  VADD.F32        S0, S0, S2
3912DA:  VMIN.F32        D0, D0, D8
3912DE:  VSTR            S0, [R4,#0x18]
3912E2:  B               loc_3910A2
3912E4:  VMOV.F32        S18, #14.0
3912E8:  VLDR            S16, =0.0625
3912EC:  BLX             j__Z13IsPostLoadingv; IsPostLoading(void)
3912F0:  CBZ             R0, loc_391352
3912F2:  BLX             j__ZN10CGameLogic17LaRiotsActiveHereEv; CGameLogic::LaRiotsActiveHere(void)
3912F6:  LDR             R1, [R4,#8]
3912F8:  CMP             R0, #1
3912FA:  BNE             loc_391392
3912FC:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x391304)
391300:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
391302:  LDR             R0, [R0]; CGame::currArea ...
391304:  LDR             R0, [R0]; CGame::currArea
391306:  CMP             R0, #0
391308:  BNE             loc_391392
39130A:  CMP             R1, #8
39130C:  BEQ.W           loc_3915AC
391310:  LDR             R0, [R4,#0x20]
391312:  VLDR            S0, [R4,#0x18]
391316:  CMP             R0, #0xA6
391318:  BNE.W           loc_391600
39131C:  VMOV.F32        S2, #1.0
391320:  VMOV.F32        S4, #-12.0
391324:  VADD.F32        S0, S0, S2
391328:  VMIN.F32        D0, D0, D2
39132C:  VSTR            S0, [R4,#0x18]
391330:  B               loc_3910A2
391332:  MOVS            R0, #0
391334:  STR             R0, [R4,#8]
391336:  MOV.W           R0, #0xC0000000
39133A:  B               loc_391346
39133C:  MOVS            R0, #0
39133E:  STR             R0, [R4,#8]
391340:  MOVS            R0, #0xC2080000
391346:  MOV.W           R1, #0x3F800000
39134A:  STR             R0, [R4,#0x18]
39134C:  STR             R1, [R4,#0x1C]
39134E:  STR             R5, [R4,#0x20]
391350:  B               loc_3910A2
391352:  LDR             R0, [R4,#8]
391354:  CMP             R0, #8
391356:  BNE.W           loc_39158A
39135A:  LDR.W           R0, =(_ZN8CWeather14UnderWaternessE_ptr - 0x391368)
39135E:  MOVS            R1, #0
391360:  STR             R1, [R4,#8]
391362:  MOVS            R1, #0xAE
391364:  ADD             R0, PC; _ZN8CWeather14UnderWaternessE_ptr
391366:  STR             R1, [R4,#0x20]
391368:  MOVS            R1, #0
39136A:  VLDR            S4, =0.0625
39136E:  LDR             R0, [R0]; CWeather::UnderWaterness ...
391370:  MOVT            R1, #0xC208
391374:  STR             R1, [R4,#0x18]
391376:  VMOV.F32        S0, #1.0
39137A:  VLDR            S2, [R0]
39137E:  VCMPE.F32       S2, S20
391382:  VMRS            APSR_nzcv, FPSCR
391386:  IT GE
391388:  VMOVGE.F32      S0, S4
39138C:  VSTR            S0, [R4,#0x1C]
391390:  B               loc_39169E
391392:  CMP             R1, #8
391394:  BEQ.W           loc_3910A2
391398:  LDR             R0, [R4,#0x20]
39139A:  CMP             R0, #0xAE
39139C:  BNE.W           loc_39161C
3913A0:  VLDR            S0, =-40.0
3913A4:  VCMPE.F32       S18, S0
3913A8:  VMRS            APSR_nzcv, FPSCR
3913AC:  BGE             loc_3913BC
3913AE:  CMP             R1, #3
3913B0:  ITT LS
3913B2:  MOVLS           R0, #4
3913B4:  STRLS           R0, [R4,#8]
3913B6:  MOVS            R0, #0
3913B8:  STRB            R0, [R4,#2]
3913BA:  STRH            R0, [R4]
3913BC:  MOVS            R0, #0xC2C80000
3913C2:  STR             R0, [R4,#0x18]
3913C4:  B               loc_391674
3913C6:  LDR             R0, =(TheCamera_ptr - 0x3913D0); jumptable 00391130 case 4
3913C8:  VLDR            S0, =1372.0
3913CC:  ADD             R0, PC; TheCamera_ptr
3913CE:  LDR             R0, [R0]; TheCamera
3913D0:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
3913D2:  ADD.W           R2, R1, #0x30 ; '0'
3913D6:  CMP             R1, #0
3913D8:  IT EQ
3913DA:  ADDEQ           R2, R0, #4; CVector *
3913DC:  VLDR            S2, [R2,#8]
3913E0:  VCMPE.F32       S2, S0
3913E4:  VMRS            APSR_nzcv, FPSCR
3913E8:  BLE.W           loc_3915C4
3913EC:  MOVS            R5, #0x8F
3913EE:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3913F0:  ADD             R0, SP, #0x48+var_44; jumptable 00391130 case 5
3913F2:  ADD             R1, SP, #0x48+var_38; CVector *
3913F4:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
3913F8:  VLDR            S0, [SP,#0x48+var_44]
3913FC:  VLDR            S2, [SP,#0x48+var_40]
391400:  VMUL.F32        S0, S0, S0
391404:  VLDR            S4, [SP,#0x48+var_3C]
391408:  VMUL.F32        S2, S2, S2
39140C:  VMUL.F32        S4, S4, S4
391410:  VADD.F32        S0, S0, S2
391414:  VMOV.F32        S2, #5.0
391418:  VADD.F32        S0, S0, S4
39141C:  VSQRT.F32       S0, S0
391420:  VDIV.F32        S0, S0, S2
391424:  VMOV            R0, S0; this
391428:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
39142C:  VMOV.F32        S0, #-6.0
391430:  MOVS            R5, #0x8C
391432:  B               loc_39147A
391434:  MOVS            R5, #0xA5; jumptable 00391130 case 8
391436:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391438:  ADD             R0, SP, #0x48+var_44; jumptable 00391130 case 10
39143A:  ADD             R1, SP, #0x48+var_38; CVector *
39143C:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
391440:  VLDR            S0, [SP,#0x48+var_44]
391444:  VLDR            S2, [SP,#0x48+var_40]
391448:  VMUL.F32        S0, S0, S0
39144C:  VLDR            S4, [SP,#0x48+var_3C]
391450:  VMUL.F32        S2, S2, S2
391454:  VMUL.F32        S4, S4, S4
391458:  VADD.F32        S0, S0, S2
39145C:  VMOV.F32        S2, #5.0
391460:  VADD.F32        S0, S0, S4
391464:  VSQRT.F32       S0, S0
391468:  VDIV.F32        S0, S0, S2
39146C:  VMOV            R0, S0; this
391470:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
391474:  VMOV.F32        S0, #-6.0
391478:  MOVS            R5, #0x8B
39147A:  VMOV            S2, R0
39147E:  VADD.F32        S16, S2, S0
391482:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391484:  MOVS            R5, #0xA8; jumptable 00391130 case 12
391486:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391488:  ADD             R0, SP, #0x48+var_44; jumptable 00391130 case 13
39148A:  ADD             R1, SP, #0x48+var_38; CVector *
39148C:  BLX             j__ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_; CAEAudioEnvironment::GetPositionRelativeToCamera(CVector *,CVector *)
391490:  VLDR            S0, [SP,#0x48+var_44]
391494:  VLDR            S2, [SP,#0x48+var_40]
391498:  VMUL.F32        S0, S0, S0
39149C:  VLDR            S4, [SP,#0x48+var_3C]
3914A0:  VMUL.F32        S2, S2, S2
3914A4:  VMUL.F32        S4, S4, S4
3914A8:  VADD.F32        S0, S0, S2
3914AC:  VMOV.F32        S2, #5.0
3914B0:  VADD.F32        S0, S0, S4
3914B4:  VSQRT.F32       S0, S0
3914B8:  VDIV.F32        S0, S0, S2
3914BC:  VMOV            R0, S0; this
3914C0:  BLX             j__ZN19CAEAudioEnvironment22GetDistanceAttenuationEf; CAEAudioEnvironment::GetDistanceAttenuation(float)
3914C4:  VMOV.F32        S0, #-6.0
3914C8:  MOVS            R5, #0x9D
3914CA:  VMOV            S2, R0
3914CE:  MOVS            R0, #1
3914D0:  STRB            R0, [R4]
3914D2:  VADD.F32        S16, S2, S0
3914D6:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914D8:  MOVS            R5, #0xA4; jumptable 00391130 case 15
3914DA:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914DC:  MOVS            R5, #0x92; jumptable 00391130 case 17
3914DE:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914E0:  MOVS            R5, #0x8A; jumptable 00391130 case 19
3914E2:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914E4:  MOVS            R5, #0x88; jumptable 00391130 case 20
3914E6:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914E8:  MOVS            R5, #0x87; jumptable 00391130 case 21
3914EA:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914EC:  MOVS            R5, #0x94; jumptable 00391130 case 23
3914EE:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914F0:  MOVS            R5, #0x9F; jumptable 00391130 case 24
3914F2:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914F4:  MOVS            R5, #0x9E; jumptable 00391130 case 25
3914F6:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914F8:  MOVS            R5, #0x9A; jumptable 00391130 case 26
3914FA:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3914FC:  BLX             j__ZN6CStats28FindMostFavoriteRadioStationEv; jumptable 00391130 case 30
391500:  VMOV.F32        S16, #-6.0
391504:  STRB            R0, [R4,#3]
391506:  MOV.W           R5, #0xFFFFFFFF
39150A:  B               loc_391000
39150C:  MOVS            R5, #0xA2; jumptable 00391130 case 34
39150E:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391510:  MOVS            R5, #0x9B; jumptable 00391130 case 36
391512:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391514:  MOVS            R0, #1; jumptable 00391130 case 37
391516:  MOVS            R5, #0x90
391518:  B               loc_390FFC
39151A:  MOVS            R5, #0xA3; jumptable 00391130 case 39
39151C:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
39151E:  MOVS            R0, #1; jumptable 00391130 case 41
391520:  MOVS            R5, #0xA9
391522:  STRB            R0, [R4]
391524:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391526:  MOVS            R5, #0x98; jumptable 00391130 case 44
391528:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
39152A:  MOVS            R5, #0x89; jumptable 00391130 case 48
39152C:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
39152E:  MOVS            R5, #0xAD; jumptable 00391130 case 50
391530:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391532:  MOVS            R5, #0x9C; jumptable 00391130 case 51
391534:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391536:  MOVS            R0, #1; jumptable 00391130 case 52
391538:  B               loc_39155C; jumptable 00391130 case 53
39153A:  MOVS            R0, #3; jumptable 00391130 case 54
39153C:  B               loc_39155C; jumptable 00391130 case 53
39153E:  MOVS            R0, #4; jumptable 00391130 case 55
391540:  B               loc_39155C; jumptable 00391130 case 53
391542:  MOVS            R0, #5; jumptable 00391130 case 56
391544:  B               loc_39155C; jumptable 00391130 case 53
391546:  MOVS            R0, #6; jumptable 00391130 case 57
391548:  B               loc_39155C; jumptable 00391130 case 53
39154A:  MOVS            R0, #7; jumptable 00391130 case 58
39154C:  B               loc_39155C; jumptable 00391130 case 53
39154E:  MOVS            R0, #8; jumptable 00391130 case 59
391550:  B               loc_39155C; jumptable 00391130 case 53
391552:  MOVS            R0, #9; jumptable 00391130 case 60
391554:  B               loc_39155C; jumptable 00391130 case 53
391556:  MOVS            R0, #0xA; jumptable 00391130 case 61
391558:  B               loc_39155C; jumptable 00391130 case 53
39155A:  MOVS            R0, #0xB; jumptable 00391130 case 62
39155C:  STRB            R0, [R4,#3]; jumptable 00391130 case 53
39155E:  B               loc_391008
391560:  MOVS            R5, #0x97; jumptable 00391130 case 64
391562:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391564:  MOVS            R5, #0xAA; jumptable 00391130 case 66
391566:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
391568:  MOVS            R5, #0xAB; jumptable 00391130 case 67
39156A:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
39156C:  VLDR            S2, =-40.0
391570:  VCMPE.F32       S0, S2
391574:  VMRS            APSR_nzcv, FPSCR
391578:  BGT             loc_39160E
39157A:  CMP             R0, #3
39157C:  BHI             loc_391582
39157E:  MOVS            R0, #4
391580:  STR             R0, [R4,#8]
391582:  MOVS            R0, #0
391584:  STRB            R0, [R4,#2]
391586:  STRH            R0, [R4]
391588:  B               loc_3910A2
39158A:  LDR             R1, [R4,#0x20]
39158C:  VLDR            S0, [R4,#0x18]
391590:  CMP             R1, #0xAE
391592:  BNE             loc_3915DC
391594:  VCMPE.F32       S18, S0
391598:  VMRS            APSR_nzcv, FPSCR
39159C:  BLE             loc_39167C
39159E:  VMOV.F32        S2, #1.0
3915A2:  VADD.F32        S0, S0, S2
3915A6:  VMIN.F32        D0, D0, D9
3915AA:  B               loc_39168A
3915AC:  MOVS            R1, #0
3915AE:  MOVS            R0, #0
3915B0:  STR             R0, [R4,#8]
3915B2:  MOVS            R0, #0xA6
3915B4:  MOVT            R1, #0xC208
3915B8:  MOV.W           R2, #0x3F800000
3915BC:  STRD.W          R1, R2, [R4,#0x18]
3915C0:  STR             R0, [R4,#0x20]
3915C2:  B               loc_3910A2
3915C4:  VSUB.F32        S0, S0, S2
3915C8:  MOVS            R5, #0x8F
3915CA:  VMOV.F32        S4, #-9.0
3915CE:  VMOV.F32        S2, #-6.0
3915D2:  VMUL.F32        S0, S0, S4
3915D6:  VADD.F32        S16, S0, S2
3915DA:  B               def_391130; jumptable 00391130 default case, cases 6,7,9,11,14,16,18,22,27,31-33,35,38,40,42,43,45-47,49,63,65
3915DC:  VLDR            S2, =-40.0
3915E0:  VCMPE.F32       S0, S2
3915E4:  VMRS            APSR_nzcv, FPSCR
3915E8:  BLE             loc_391690
3915EA:  VLDR            S2, =-0.4
3915EE:  VADD.F32        S0, S0, S2
3915F2:  VSTR            S0, [R4,#0x18]
3915F6:  B               loc_39169E
3915F8:  DCFS -34.0
3915FC:  DCFS 0.0625
391600:  VLDR            S2, =-40.0
391604:  VCMPE.F32       S0, S2
391608:  VMRS            APSR_nzcv, FPSCR
39160C:  BLE             loc_3916D4
39160E:  VLDR            S2, =-0.4
391612:  VADD.F32        S0, S0, S2
391616:  VSTR            S0, [R4,#0x18]
39161A:  B               loc_3910A2
39161C:  CMP.W           R8, #0
391620:  BEQ             loc_391642
391622:  VLDR            S2, =-40.0
391626:  VLDR            S0, [R4,#0x18]
39162A:  VCMPE.F32       S0, S2
39162E:  VMRS            APSR_nzcv, FPSCR
391632:  BLE             loc_391642
391634:  VLDR            S2, =-0.4
391638:  VADD.F32        S0, S0, S2
39163C:  VSTR            S0, [R4,#0x18]
391640:  B               loc_391674
391642:  CMP             R1, #3
391644:  MOV.W           R1, #0
391648:  ITT LS
39164A:  MOVLS           R0, #4
39164C:  STRLS           R0, [R4,#8]
39164E:  STRB            R1, [R4,#2]
391650:  LDR             R0, =(AudioEngine_ptr - 0x391658)
391652:  STRH            R1, [R4]
391654:  ADD             R0, PC; AudioEngine_ptr
391656:  LDR             R0, [R0]; AudioEngine ; this
391658:  BLX             j__ZN12CAudioEngine20IsVehicleRadioActiveEv; CAudioEngine::IsVehicleRadioActive(void)
39165C:  CBZ             R0, loc_391674
39165E:  LDR             R0, =(AudioEngine_ptr - 0x391664)
391660:  ADD             R0, PC; AudioEngine_ptr
391662:  LDR             R5, [R0]; AudioEngine
391664:  MOV             R0, R5; this
391666:  BLX             j__ZN12CAudioEngine24GetCurrentRadioStationIDEv; CAudioEngine::GetCurrentRadioStationID(void)
39166A:  MOV             R1, R0; signed __int8
39166C:  MOV             R0, R5; this
39166E:  MOVS            R2, #0; signed __int8
391670:  BLX             j__ZN12CAudioEngine10StartRadioEaa; CAudioEngine::StartRadio(signed char,signed char)
391674:  MOV.W           R0, #0x3F800000
391678:  STR             R0, [R4,#0x1C]
39167A:  B               loc_3910A2
39167C:  BGE             loc_39169E
39167E:  VMOV.F32        S2, #-1.0
391682:  VADD.F32        S0, S0, S2
391686:  VMAX.F32        D0, D0, D9
39168A:  VSTR            S0, [R4,#0x18]
39168E:  B               loc_39169E
391690:  CMP             R0, #3
391692:  ITT LS
391694:  MOVLS           R0, #4
391696:  STRLS           R0, [R4,#8]
391698:  MOVS            R0, #0
39169A:  STRB            R0, [R4,#2]
39169C:  STRH            R0, [R4]
39169E:  VLDR            S0, [R4,#0x1C]
3916A2:  VCMPE.F32       S16, S0
3916A6:  VMRS            APSR_nzcv, FPSCR
3916AA:  BLE             loc_3916BE
3916AC:  VMOV.F32        S2, #0.25
3916B0:  VADD.F32        S0, S0, S2
3916B4:  VMIN.F32        D0, D0, D8
3916B8:  VSTR            S0, [R4,#0x1C]
3916BC:  B               loc_3910A2
3916BE:  BGE.W           loc_3910A2
3916C2:  VMOV.F32        S2, #-0.25
3916C6:  VADD.F32        S0, S0, S2
3916CA:  VMAX.F32        D0, D0, D8
3916CE:  VSTR            S0, [R4,#0x1C]
3916D2:  B               loc_3910A2
3916D4:  CMP             R1, #3
3916D6:  BLS.W           loc_39157E
3916DA:  B               loc_391582
