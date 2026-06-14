; =========================================================
; Game Engine Function: _ZN6CRadar7DrawMapEv
; Address            : 0x43E170 - 0x43E382
; =========================================================

43E170:  PUSH            {R7,LR}
43E172:  MOV             R7, SP
43E174:  SUB             SP, SP, #0x18
43E176:  BLX             j__ZN6CRadar21CalculateCachedSinCosEv; CRadar::CalculateCachedSinCos(void)
43E17A:  MOV.W           R0, #0xFFFFFFFF; int
43E17E:  MOVS            R1, #0; bool
43E180:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E184:  CBZ             R0, loc_43E1A2
43E186:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x43E192)
43E188:  MOV.W           R2, #0x194
43E18C:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x43E194)
43E18E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
43E190:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
43E192:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
43E194:  LDR             R1, [R1]; CWorld::Players ...
43E196:  LDR             R0, [R0]; CWorld::PlayerInFocus
43E198:  SMLABB.W        R0, R0, R2, R1; this
43E19C:  BLX             j__ZN11CPlayerInfo20IsPlayerInRemoteModeEv; CPlayerInfo::IsPlayerInRemoteMode(void)
43E1A0:  CBZ             R0, loc_43E1BA
43E1A2:  LDR             R0, =(_ZN11CTheScripts14RadarZoomValueE_ptr - 0x43E1A8)
43E1A4:  ADD             R0, PC; _ZN11CTheScripts14RadarZoomValueE_ptr
43E1A6:  LDR             R0, [R0]; CTheScripts::RadarZoomValue ...
43E1A8:  LDRB            R0, [R0]; CTheScripts::RadarZoomValue
43E1AA:  CBZ             R0, loc_43E228
43E1AC:  RSB.W           R0, R0, #0xB4
43E1B0:  VMOV            S0, R0
43E1B4:  VCVT.F32.S32    S0, S0
43E1B8:  B               loc_43E22C
43E1BA:  MOV.W           R0, #0xFFFFFFFF; int
43E1BE:  MOVS            R1, #0; bool
43E1C0:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E1C4:  CBZ             R0, loc_43E1EE
43E1C6:  MOV.W           R0, #0xFFFFFFFF; int
43E1CA:  MOVS            R1, #0; bool
43E1CC:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E1D0:  LDR.W           R0, [R0,#0x5A4]
43E1D4:  CMP             R0, #4
43E1D6:  BNE             loc_43E1EE
43E1D8:  MOV.W           R0, #0xFFFFFFFF; int
43E1DC:  MOVS            R1, #0; bool
43E1DE:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E1E2:  LDRH            R0, [R0,#0x26]
43E1E4:  MOVW            R1, #0x21B
43E1E8:  CMP             R0, R1
43E1EA:  BNE.W           loc_43E316
43E1EE:  MOV.W           R0, #0xFFFFFFFF; int
43E1F2:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
43E1F6:  VLDR            S0, [R0]
43E1FA:  VLDR            S2, [R0,#4]
43E1FE:  VMUL.F32        S0, S0, S0
43E202:  VLDR            S4, [R0,#8]
43E206:  VMUL.F32        S2, S2, S2
43E20A:  VMUL.F32        S4, S4, S4
43E20E:  VADD.F32        S0, S0, S2
43E212:  VLDR            S2, =0.3
43E216:  VADD.F32        S0, S0, S4
43E21A:  VSQRT.F32       S0, S0
43E21E:  VCMPE.F32       S0, S2
43E222:  VMRS            APSR_nzcv, FPSCR
43E226:  BGE             loc_43E2E6
43E228:  BL              sub_3F66A6
43E22C:  LDR             R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x43E232)
43E22E:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
43E230:  LDR             R0, [R0]; this
43E232:  VSTR            S0, [R0]
43E236:  BLX             j__ZN10CGameLogic17IsCoopGameGoingOnEv; CGameLogic::IsCoopGameGoingOn(void)
43E23A:  CBZ             R0, loc_43E258
43E23C:  LDR             R0, =(_ZN10CGameLogic18n2PlayerPedInFocusE_ptr - 0x43E242)
43E23E:  ADD             R0, PC; _ZN10CGameLogic18n2PlayerPedInFocusE_ptr
43E240:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus ...
43E242:  LDR             R0, [R0]; CGameLogic::n2PlayerPedInFocus
43E244:  CMP             R0, #1
43E246:  BEQ             loc_43E266
43E248:  CBNZ            R0, loc_43E2A2
43E24A:  ADD             R0, SP, #0x20+var_14; int
43E24C:  MOVS            R1, #0
43E24E:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43E252:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43E258)
43E254:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43E256:  B               loc_43E272
43E258:  ADD             R0, SP, #0x20+var_14; int
43E25A:  MOVS            R1, #0
43E25C:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43E260:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43E266)
43E262:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43E264:  B               loc_43E272
43E266:  ADD             R0, SP, #0x20+var_14; int
43E268:  MOVS            R1, #1
43E26A:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43E26E:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43E274)
43E270:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43E272:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
43E274:  LDR             R2, [SP,#0x20+var_10]
43E276:  LDR             R1, [SP,#0x20+var_14]
43E278:  STRD.W          R1, R2, [R0]; CRadar::vec2DRadarOrigin
43E27C:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x43E282)
43E27E:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
43E280:  LDR             R0, [R0]; CGame::currArea ...
43E282:  LDR             R0, [R0]; CGame::currArea
43E284:  CBZ             R0, loc_43E28A
43E286:  ADD             SP, SP, #0x18
43E288:  POP             {R7,PC}
43E28A:  MOV.W           R0, #0xFFFFFFFF; int
43E28E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
43E292:  LDRB.W          R0, [R0,#0x33]; this
43E296:  CMP             R0, #0
43E298:  IT EQ
43E29A:  BLXEQ           j__ZN6CRadar12DrawRadarMapEv; CRadar::DrawRadarMap(void)
43E29E:  ADD             SP, SP, #0x18
43E2A0:  POP             {R7,PC}
43E2A2:  ADD             R0, SP, #0x20+var_14; int
43E2A4:  MOVS            R1, #0
43E2A6:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43E2AA:  MOV             R0, SP; int
43E2AC:  MOVS            R1, #1
43E2AE:  BLX             j__Z29FindPlayerCentreOfWorldForMapi; FindPlayerCentreOfWorldForMap(int)
43E2B2:  VLDR            S0, [SP,#0x20+var_20]
43E2B6:  VMOV.F32        S8, #0.5
43E2BA:  VLDR            S4, [SP,#0x20+var_14]
43E2BE:  VLDR            S2, [SP,#0x20+var_1C]
43E2C2:  VLDR            S6, [SP,#0x20+var_10]
43E2C6:  VADD.F32        S0, S4, S0
43E2CA:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x43E2D4)
43E2CC:  VADD.F32        S2, S6, S2
43E2D0:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
43E2D2:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
43E2D4:  VMUL.F32        S0, S0, S8
43E2D8:  VMUL.F32        S2, S2, S8
43E2DC:  VSTR            S0, [R0]
43E2E0:  VSTR            S2, [R0,#4]
43E2E4:  B               loc_43E27C
43E2E6:  VLDR            S2, =0.9
43E2EA:  VCMPE.F32       S0, S2
43E2EE:  VMRS            APSR_nzcv, FPSCR
43E2F2:  BGE             loc_43E37C
43E2F4:  VLDR            S2, =-0.3
43E2F8:  VADD.F32        S0, S0, S2
43E2FC:  VLDR            S2, =170.0
43E300:  VMUL.F32        S0, S0, S2
43E304:  VLDR            S2, =0.6
43E308:  VDIV.F32        S0, S0, S2
43E30C:  BL              sub_3F66B2
43E310:  VADD.F32        S0, S0, S2
43E314:  B               loc_43E22C
43E316:  MOV.W           R0, #0xFFFFFFFF; int
43E31A:  MOVS            R1, #0; bool
43E31C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
43E320:  LDR             R1, [R0,#0x14]
43E322:  VLDR            S0, =200.0
43E326:  ADD.W           R2, R1, #0x30 ; '0'
43E32A:  CMP             R1, #0
43E32C:  IT EQ
43E32E:  ADDEQ           R2, R0, #4
43E330:  VLDR            S2, [R2,#8]
43E334:  VDIV.F32        S0, S2, S0
43E338:  VLDR            S2, =0.3
43E33C:  VCMPE.F32       S0, S2
43E340:  VMRS            APSR_nzcv, FPSCR
43E344:  BGE             loc_43E34C
43E346:  VLDR            S0, =340.0
43E34A:  B               loc_43E22C
43E34C:  VLDR            S2, =0.9
43E350:  VCMPE.F32       S0, S2
43E354:  VMRS            APSR_nzcv, FPSCR
43E358:  BGE             loc_43E37C
43E35A:  VLDR            S2, =-0.3
43E35E:  VMOV.F32        S4, #10.0
43E362:  VADD.F32        S0, S0, S2
43E366:  VLDR            S2, =0.6
43E36A:  VMUL.F32        S0, S0, S4
43E36E:  VDIV.F32        S0, S0, S2
43E372:  VLDR            S2, =340.0
43E376:  VADD.F32        S0, S0, S2
43E37A:  B               loc_43E22C
43E37C:  VLDR            S0, =350.0
43E380:  B               loc_43E22C
