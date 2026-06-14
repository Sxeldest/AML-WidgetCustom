; =========================================================
; Game Engine Function: _ZN20CAERadioTrackManager21CheckForStationRetuneEv
; Address            : 0x3A112C - 0x3A1318
; =========================================================

3A112C:  PUSH            {R4-R7,LR}
3A112E:  ADD             R7, SP, #0xC
3A1130:  PUSH.W          {R11}
3A1134:  SUB             SP, SP, #8
3A1136:  MOV             R4, R0
3A1138:  LDRB.W          R0, [R4,#0xE9]
3A113C:  CMP             R0, #0
3A113E:  BEQ.W           loc_3A12B8
3A1142:  LDR             R1, [R4,#0x68]
3A1144:  MOVS            R2, #0
3A1146:  STRB            R2, [R4,#6]
3A1148:  CMP             R1, #3
3A114A:  BCC             loc_3A115E
3A114C:  LDRB            R1, [R4]
3A114E:  CBNZ            R1, loc_3A115E
3A1150:  LDR             R1, [R4,#0x6C]
3A1152:  CMP             R1, #0
3A1154:  ITT EQ
3A1156:  LDREQ           R1, [R4,#0x70]
3A1158:  CMPEQ           R1, #0
3A115A:  BEQ.W           loc_3A12C0
3A115E:  LDR             R0, =(AudioEngine_ptr - 0x3A1164)
3A1160:  ADD             R0, PC; AudioEngine_ptr
3A1162:  LDR             R0, [R0]; AudioEngine ; this
3A1164:  BLX             j__ZN12CAudioEngine22GetCutsceneTrackStatusEv; CAudioEngine::GetCutsceneTrackStatus(void)
3A1168:  CMP             R0, #0
3A116A:  BEQ             loc_3A120C
3A116C:  LDR             R0, [R4,#0x6C]
3A116E:  CMP             R0, #0
3A1170:  ITT EQ
3A1172:  LDREQ           R1, [R4,#0x70]
3A1174:  CMPEQ           R1, #0
3A1176:  BEQ.W           loc_3A12B8
3A117A:  LDRB.W          R1, [R4,#0xAD]
3A117E:  ADDS            R5, R0, R1
3A1180:  LSLS            R2, R5, #0x18
3A1182:  SXTB            R1, R5
3A1184:  CMP.W           R2, #0x1000000
3A1188:  BGE             loc_3A1190
3A118A:  ADD.W           R5, R1, #0xD
3A118E:  B               loc_3A119A
3A1190:  CMP.W           R2, #0xD000000
3A1194:  IT GT
3A1196:  SUBGT.W         R5, R1, #0xD
3A119A:  UXTB            R1, R5
3A119C:  CMP             R1, #0xC
3A119E:  BNE             loc_3A11A8
3A11A0:  CMP             R0, #1
3A11A2:  ITE LT
3A11A4:  SUBLT           R5, #1
3A11A6:  ADDGE           R5, #1
3A11A8:  UXTB            R0, R5
3A11AA:  CMP             R0, #0xD
3A11AC:  BNE             loc_3A11EA
3A11AE:  MOV             R0, R4
3A11B0:  MOVS            R1, #0
3A11B2:  MOVS            R2, #0
3A11B4:  MOVS            R6, #0
3A11B6:  BLX             j__ZN20CAERadioTrackManager9StopRadioEP21tVehicleAudioSettingsh; CAERadioTrackManager::StopRadio(tVehicleAudioSettings *,uchar)
3A11BA:  LDR             R0, =(AudioEngine_ptr - 0x3A11C8)
3A11BC:  MOVS            R1, #0x26 ; '&'; int
3A11BE:  MOVS            R2, #0; float
3A11C0:  MOV.W           R3, #0x3F800000; float
3A11C4:  ADD             R0, PC; AudioEngine_ptr
3A11C6:  LDR             R5, [R0]; AudioEngine
3A11C8:  MOV             R0, R5; this
3A11CA:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
3A11CE:  MOV             R0, R5; this
3A11D0:  MOVS            R1, #0x23 ; '#'; int
3A11D2:  MOVS            R2, #0; float
3A11D4:  MOV.W           R3, #0x3F800000; float
3A11D8:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
3A11DC:  LDR.W           R3, [R4,#0xEC]
3A11E0:  MOV             R0, R4
3A11E2:  LDRSB.W         R2, [R4,#0xEA]
3A11E6:  MOVS            R1, #0xD
3A11E8:  B               loc_3A12AE
3A11EA:  LDRB.W          R0, [R4,#0xE9]
3A11EE:  CMP             R0, #0xD
3A11F0:  BNE             loc_3A124A
3A11F2:  LDR             R0, =(AudioEngine_ptr - 0x3A1200)
3A11F4:  MOVS            R1, #0x25 ; '%'; int
3A11F6:  MOVS            R2, #0; float
3A11F8:  MOV.W           R3, #0x3F800000; float
3A11FC:  ADD             R0, PC; AudioEngine_ptr
3A11FE:  LDR             R0, [R0]; AudioEngine ; this
3A1200:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
3A1204:  MOVS            R0, #0xFF
3A1206:  STRB.W          R0, [R4,#0xE9]
3A120A:  B               loc_3A1254
3A120C:  BLX             j__ZN21CAEVehicleAudioEntity43StaticGetPlayerVehicleAudioSettingsForRadioEv; CAEVehicleAudioEntity::StaticGetPlayerVehicleAudioSettingsForRadio(void)
3A1210:  CMP             R0, #0
3A1212:  BEQ             loc_3A116C
3A1214:  LDRB            R0, [R0,#0x1B]; this
3A1216:  CMP             R0, #3
3A1218:  BHI             loc_3A116C
3A121A:  CMP             R0, #1
3A121C:  BEQ             loc_3A116C
3A121E:  BLX             j__ZN21CAEVehicleAudioEntity43StaticGetPlayerVehicleAudioSettingsForRadioEv; CAEVehicleAudioEntity::StaticGetPlayerVehicleAudioSettingsForRadio(void)
3A1222:  LDRB            R0, [R0,#0x1B]
3A1224:  CMP             R0, #0
3A1226:  BNE             loc_3A12B8
3A1228:  LDR             R0, [R4,#0x7C]
3A122A:  CMP             R0, #0
3A122C:  BLT             loc_3A12C8
3A122E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3A123C)
3A1230:  MOV.W           R6, #0xFFFFFFFF
3A1234:  LDRSB.W         R2, [R4,#0xAD]
3A1238:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3A123A:  LDR             R3, [R4,#0x6C]
3A123C:  STR             R6, [R4,#0x7C]
3A123E:  SUBS            R0, R0, R2
3A1240:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3A1242:  STR             R3, [R4,#0x70]
3A1244:  STR             R0, [R4,#0x6C]
3A1246:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds
3A1248:  B               loc_3A130E
3A124A:  MOV             R0, R4
3A124C:  MOVS            R1, #0
3A124E:  MOVS            R2, #0
3A1250:  BLX             j__ZN20CAERadioTrackManager9StopRadioEP21tVehicleAudioSettingsh; CAERadioTrackManager::StopRadio(tVehicleAudioSettings *,uchar)
3A1254:  LDR             R0, =(AudioEngine_ptr - 0x3A1262)
3A1256:  MOVS            R1, #0x22 ; '"'; int
3A1258:  MOVS            R2, #0; float
3A125A:  MOV.W           R3, #0x3F800000; float
3A125E:  ADD             R0, PC; AudioEngine_ptr
3A1260:  LDR             R0, [R0]; AudioEngine ; this
3A1262:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
3A1266:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3A126E)
3A1268:  LDR             R1, [R4,#0x50]
3A126A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3A126C:  ADDW            R1, R1, #0x5DC
3A1270:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3A1272:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3A1274:  CMP             R0, R1
3A1276:  BLS             loc_3A12B8
3A1278:  LDR             R1, =(TheCamera_ptr - 0x3A1286)
3A127A:  MOV.W           R2, #0x7D0
3A127E:  VLDR            S0, =0.9
3A1282:  ADD             R1, PC; TheCamera_ptr
3A1284:  LDR             R1, [R1]; TheCamera
3A1286:  VLDR            S2, [R1,#0x120]
3A128A:  LDR             R1, [R4,#0x60]
3A128C:  VCMPE.F32       S2, S0
3A1290:  VMRS            APSR_nzcv, FPSCR
3A1294:  IT GT
3A1296:  MOVGT.W         R2, #0xFA0
3A129A:  ADD             R1, R2
3A129C:  CMP             R0, R1
3A129E:  BLS             loc_3A12B8
3A12A0:  LDR.W           R3, [R4,#0xEC]; float
3A12A4:  MOVS            R6, #0
3A12A6:  LDRSB.W         R2, [R4,#0xEA]; signed __int8
3A12AA:  SXTB            R1, R5; signed __int8
3A12AC:  MOV             R0, R4; this
3A12AE:  STR             R6, [SP,#0x18+var_18]; unsigned __int8
3A12B0:  BLX             j__ZN20CAERadioTrackManager10StartRadioEaafh; CAERadioTrackManager::StartRadio(signed char,signed char,float,uchar)
3A12B4:  STR             R6, [R4,#0x6C]
3A12B6:  STR             R6, [R4,#0x70]
3A12B8:  ADD             SP, SP, #8
3A12BA:  POP.W           {R11}
3A12BE:  POP             {R4-R7,PC}
3A12C0:  CMP             R0, #0xD
3A12C2:  BNE.W           loc_3A116C
3A12C6:  B               loc_3A115E
3A12C8:  MOVS            R0, #0; this
3A12CA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3A12CE:  BLX             j__ZN4CPad17NextStationJustUpEv; CPad::NextStationJustUp(void)
3A12D2:  CMP             R0, #1
3A12D4:  BNE             loc_3A12E8
3A12D6:  MOVS            R0, #dword_40; this
3A12D8:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3A12DC:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3A12E4)
3A12DE:  LDR             R1, [R4,#0x6C]
3A12E0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3A12E2:  STR             R1, [R4,#0x70]
3A12E4:  ADDS            R1, #1
3A12E6:  B               loc_3A1308
3A12E8:  MOVS            R0, #0; this
3A12EA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3A12EE:  BLX             j__ZN4CPad17LastStationJustUpEv; CPad::LastStationJustUp(void)
3A12F2:  CMP             R0, #1
3A12F4:  BNE.W           loc_3A116C
3A12F8:  MOVS            R0, #dword_40; this
3A12FA:  BLX             j__ZN15CWidgetHelpText18ConditionSatisfiedEj; CWidgetHelpText::ConditionSatisfied(uint)
3A12FE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3A1306)
3A1300:  LDR             R1, [R4,#0x6C]
3A1302:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3A1304:  STR             R1, [R4,#0x70]
3A1306:  SUBS            R1, #1
3A1308:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3A130A:  STR             R1, [R4,#0x6C]
3A130C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3A130E:  MOVS            R1, #1
3A1310:  STRB            R1, [R4,#1]
3A1312:  STR             R0, [R4,#0x50]
3A1314:  STRB            R1, [R4,#6]
3A1316:  B               loc_3A116C
