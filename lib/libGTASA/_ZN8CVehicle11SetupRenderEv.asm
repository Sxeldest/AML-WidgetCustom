; =========================================================
; Game Engine Function: _ZN8CVehicle11SetupRenderEv
; Address            : 0x5822C4 - 0x582376
; =========================================================

5822C4:  PUSH            {R4-R7,LR}
5822C6:  ADD             R7, SP, #0xC
5822C8:  PUSH.W          {R11}
5822CC:  SUB             SP, SP, #8
5822CE:  MOV             R4, R0
5822D0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5822DA)
5822D2:  LDRSH.W         R1, [R4,#0x26]
5822D6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5822D8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5822DA:  LDR.W           R5, [R0,R1,LSL#2]
5822DE:  MOVS            R0, #0x14
5822E0:  MOVS            R1, #1
5822E2:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5822E6:  LDR.W           R0, [R4,#0x5A0]
5822EA:  CBNZ            R0, loc_5822F4
5822EC:  MOV             R0, R4; this
5822EE:  MOV             R1, R5; CVehicleModelInfo *
5822F0:  BLX             j__ZN11CAutomobile35CustomCarPlate_BeforeRenderingStartEP17CVehicleModelInfo; CAutomobile::CustomCarPlate_BeforeRenderingStart(CVehicleModelInfo *)
5822F4:  LDR.W           R0, [R4,#0x5AC]; char *
5822F8:  CBZ             R0, loc_58232E
5822FA:  LDR.W           R1, [R4,#0x5B0]
5822FE:  ADD.W           R6, R4, #0x5B0
582302:  CMP             R1, #0
582304:  ITT NE
582306:  MOVNE           R1, #0
582308:  STRNE           R1, [R6]
58230A:  STR.W           R0, [R4,#0x5A8]
58230E:  MOVS            R1, #0
582310:  STR.W           R1, [R4,#0x5AC]
582314:  MOVS            R1, #0; char *
582316:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
58231A:  LDRB.W          R1, [R4,#0x433]
58231E:  STR.W           R0, [R4,#0x5B0]
582322:  LSLS            R0, R1, #0x1D
582324:  ITT PL
582326:  MOVPL           R0, #1
582328:  STRBPL.W        R0, [R4,#0x438]
58232C:  B               loc_58233E
58232E:  LDR.W           R0, [R4,#0x430]
582332:  ADD.W           R6, R4, #0x5B0
582336:  BIC.W           R0, R0, #0x4000000
58233A:  STR.W           R0, [R4,#0x430]
58233E:  LDRB.W          R1, [R4,#0x438]; unsigned __int8
582342:  LDRB.W          R2, [R4,#0x439]; unsigned __int8
582346:  LDRB.W          R3, [R4,#0x43A]; unsigned __int8
58234A:  LDRB.W          R0, [R4,#0x43B]
58234E:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
582350:  MOV             R0, R5; this
582352:  BLX             j__ZN17CVehicleModelInfo16SetVehicleColourEhhhh; CVehicleModelInfo::SetVehicleColour(uchar,uchar,uchar,uchar)
582356:  MOV             R0, R4; this
582358:  BLX             j__ZN17CVehicleModelInfo15SetupLightFlagsEP8CVehicle; CVehicleModelInfo::SetupLightFlags(CVehicle *)
58235C:  LDR             R0, =(_ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr - 0x582364)
58235E:  LDR             R1, [R6]
582360:  ADD             R0, PC; _ZN17CVehicleModelInfo16ms_pRemapTextureE_ptr
582362:  LDR             R0, [R0]; CVehicleModelInfo::ms_pRemapTexture ...
582364:  STR             R1, [R0]; CVehicleModelInfo::ms_pRemapTexture
582366:  LDR             R0, [R4,#0x18]
582368:  ADD             SP, SP, #8
58236A:  POP.W           {R11}
58236E:  POP.W           {R4-R7,LR}
582372:  B.W             sub_18AA44
