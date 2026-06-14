; =========================================================
; Game Engine Function: _ZN6CRadar13Draw3dMarkersEv
; Address            : 0x442040 - 0x442468
; =========================================================

442040:  PUSH            {R4-R7,LR}
442042:  ADD             R7, SP, #0xC
442044:  PUSH.W          {R8-R11}
442048:  SUB             SP, SP, #4
44204A:  VPUSH           {D8-D13}
44204E:  SUB             SP, SP, #0x48; float
442050:  LDR.W           R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442064)
442054:  VMOV.F32        S16, #2.0
442058:  VMOV.F32        S22, #1.0
44205C:  VLDR            S18, =2.7
442060:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442062:  VMOV.F32        S24, #0.125
442066:  VLDR            S20, =0.8
44206A:  MOV.W           R8, #0
44206E:  LDR             R0, [R0]; CRadar::ms_RadarTrace ...
442070:  MOV.W           R9, #1
442074:  MOV.W           R10, #0
442078:  ADD.W           R5, R0, #0x25 ; '%'
44207C:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x442084)
442080:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
442082:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
442084:  STR             R0, [SP,#0x98+var_70]
442086:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x44208E)
44208A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
44208C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
44208E:  STR             R0, [SP,#0x98+var_74]
442090:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x442098)
442094:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
442096:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
442098:  STR             R0, [SP,#0x98+var_68]
44209A:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4420A2)
44209E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4420A0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4420A2:  STR             R0, [SP,#0x98+var_6C]
4420A4:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x4420AC)
4420A8:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
4420AA:  LDR             R0, [R0]; CGame::currArea ...
4420AC:  STR             R0, [SP,#0x98+var_64]
4420AE:  LDR.W           R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x4420B6)
4420B2:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
4420B4:  LDR             R0, [R0]; CPickups::aPickUps ...
4420B6:  STR             R0, [SP,#0x98+var_78]
4420B8:  LDR.W           R0, =(HudColour_ptr - 0x4420C0)
4420BC:  ADD             R0, PC; HudColour_ptr
4420BE:  LDR.W           R11, [R0]; HudColour
4420C2:  LDRH            R0, [R5]
4420C4:  TST.W           R0, #2
4420C8:  BEQ.W           def_442142; jumptable 00442142 default case, cases 4,6
4420CC:  LDR.W           R6, [R5,#-0x25]; CRadar::ms_RadarTrace
4420D0:  B               loc_44212C
4420D2:  BHI             loc_442136
4420D4:  AND.W           R2, R0, #1
4420D8:  MOVS            R1, #0xC
4420DA:  TBB.W           [PC,R6]; switch 9 cases
4420DE:  DCB 5; jump table for switch statement
4420DF:  DCB 0x11
4420E0:  DCB 0xB
4420E1:  DCB 0x17
4420E2:  DCB 0x1C
4420E3:  DCB 5
4420E4:  DCB 0xB
4420E5:  DCB 0x22
4420E6:  DCB 0x26
4420E7:  ALIGN 2
4420E8:  CMP             R2, #0; jumptable 004420DA cases 0,5
4420EA:  MOV.W           R1, #0
4420EE:  IT EQ
4420F0:  MOVEQ           R1, #0xA
4420F2:  B               loc_44212A; jumptable 004420DA case 8
4420F4:  CMP             R2, #0; jumptable 004420DA cases 2,6
4420F6:  MOV.W           R1, #3
4420FA:  IT EQ
4420FC:  MOVEQ           R1, #0xE
4420FE:  B               loc_44212A; jumptable 004420DA case 8
442100:  CMP             R2, #0; jumptable 004420DA case 1
442102:  MOV.W           R1, #1
442106:  IT EQ
442108:  MOVEQ           R1, #0xB
44210A:  B               loc_44212A; jumptable 004420DA case 8
44210C:  MOVS            R0, #4; jumptable 004420DA case 3
44210E:  EOR.W           R0, R0, R2,LSL#2
442112:  ADDS            R1, R0, #5
442114:  B               loc_44212A; jumptable 004420DA case 8
442116:  CMP             R2, #0; jumptable 004420DA case 4
442118:  MOV.W           R1, #0xC
44211C:  IT EQ
44211E:  MOVEQ           R1, #7
442120:  B               loc_44212A; jumptable 004420DA case 8
442122:  LSLS            R0, R0, #0x1C; jumptable 004420DA case 7
442124:  MOVS            R1, #0xE
442126:  AND.W           R1, R1, R0,ASR#31
44212A:  UXTB            R1, R1; jumptable 004420DA case 8
44212C:  MOV             R0, R6; this
44212E:  BLX             j__ZN11CHudColours12GetIntColourEh; CHudColours::GetIntColour(uchar)
442132:  MOV             R6, R0
442134:  LDRH            R0, [R5]; this
442136:  UBFX.W          R1, R0, #0xA, #4
44213A:  SUBS            R1, #1; switch 7 cases
44213C:  CMP             R1, #6
44213E:  BHI.W           def_442142; jumptable 00442142 default case, cases 4,6
442142:  TBH.W           [PC,R1,LSL#1]; switch jump
442146:  DCW 0x36; jump table for switch statement
442148:  DCW 0x4A
44214A:  DCW 7
44214C:  DCW 0x183
44214E:  DCW 0x64
442150:  DCW 0x183
442152:  DCW 7
442154:  LSRS            R1, R0, #8; jumptable 00442142 cases 3,7
442156:  BFI.W           R1, R9, #1, #0x1F; int
44215A:  CMP             R1, #3
44215C:  BNE.W           def_442142; jumptable 00442142 default case, cases 4,6
442160:  AND.W           R0, R0, #0x3C00
442164:  STRD.W          R8, R8, [SP,#0x98+var_60]
442168:  CMP.W           R0, #0xC00
44216C:  STR.W           R8, [SP,#0x98+var_58]
442170:  BNE.W           loc_442380
442174:  LDR             R1, [SP,#0x98+var_68]
442176:  MOV.W           R2, #0x1A4
44217A:  LDR.W           R0, [R5,#-0x21]
44217E:  LDR             R3, [SP,#0x98+var_6C]
442180:  LDR             R1, [R1]
442182:  LSRS            R0, R0, #8
442184:  LDR             R1, [R1]
442186:  MLA.W           R0, R0, R2, R1
44218A:  LDRSH.W         R1, [R0,#0x26]
44218E:  LDR             R2, [R0,#0x14]
442190:  LDR.W           R1, [R3,R1,LSL#2]
442194:  ADD.W           R3, R2, #0x30 ; '0'
442198:  CMP             R2, #0
44219A:  LDR             R1, [R1,#0x2C]
44219C:  IT EQ
44219E:  ADDEQ           R3, R0, #4
4421A0:  VLDR            D16, [R3]
4421A4:  LDR             R0, [R3,#8]
4421A6:  VLDR            S26, [R1,#0x14]
4421AA:  STR             R0, [SP,#0x98+var_58]
4421AC:  VSTR            D16, [SP,#0x98+var_60]
4421B0:  B               loc_4423D6
4421B2:  LDR.W           R2, [R5,#-0x21]; jumptable 00442142 case 1
4421B6:  CMP             R2, #0
4421B8:  BLT.W           loc_4422FE
4421BC:  LDR             R1, [SP,#0x98+var_70]
4421BE:  UXTB            R4, R2
4421C0:  LSRS            R2, R2, #8
4421C2:  LDR             R1, [R1]
4421C4:  LDR             R3, [R1,#4]
4421C6:  LDRB            R3, [R3,R2]
4421C8:  CMP             R3, R4
4421CA:  BNE.W           loc_4422FE
4421CE:  MOVW            R3, #0xA2C
4421D2:  LDR             R1, [R1]
4421D4:  MLA.W           R4, R2, R3, R1
4421D8:  B               loc_442300
4421DA:  LDR.W           R2, [R5,#-0x21]; jumptable 00442142 case 2
4421DE:  CMP             R2, #0
4421E0:  BLT             loc_4422A0
4421E2:  LDR             R1, [SP,#0x98+var_74]
4421E4:  UXTB            R4, R2
4421E6:  LSRS            R2, R2, #8
4421E8:  LDR             R1, [R1]
4421EA:  LDR             R3, [R1,#4]
4421EC:  LDRB            R3, [R3,R2]
4421EE:  CMP             R3, R4
4421F0:  BNE             loc_4422A0
4421F2:  LDR             R1, [R1]
4421F4:  MOVW            R3, #0x7CC
4421F8:  MLA.W           R1, R2, R3, R1
4421FC:  CMP             R1, #0
4421FE:  BEQ             loc_4422A0
442200:  LDRB.W          R2, [R1,#0x485]
442204:  LSLS            R2, R2, #0x1F
442206:  IT NE
442208:  LDRNE.W         R1, [R1,#0x590]
44220C:  B               loc_4422A2
44220E:  BLX             j__ZN11CTheScripts18IsPlayerOnAMissionEv; jumptable 00442142 case 5
442212:  CMP             R0, #0
442214:  BNE.W           def_442142; jumptable 00442142 default case, cases 4,6
442218:  LDRB            R0, [R5,#1]
44221A:  BFI.W           R0, R9, #1, #0x1F
44221E:  CMP             R0, #3
442220:  BNE.W           def_442142; jumptable 00442142 default case, cases 4,6
442224:  MOV.W           R0, #0xFFFFFFFF; int
442228:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
44222C:  CMP             R0, #0
44222E:  BEQ.W           def_442142; jumptable 00442142 default case, cases 4,6
442232:  LDR.W           R0, [R5,#-5]
442236:  CBZ             R0, loc_442250
442238:  MOV.W           R0, #0xFFFFFFFF; int
44223C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
442240:  LDRB.W          R0, [R0,#0x33]
442244:  CBNZ            R0, loc_442262
442246:  LDR.W           R0, [R5,#-5]
44224A:  CMP             R0, #0
44224C:  BNE.W           def_442142; jumptable 00442142 default case, cases 4,6
442250:  MOV.W           R0, #0xFFFFFFFF; int
442254:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
442258:  LDRB.W          R0, [R0,#0x33]
44225C:  CMP             R0, #0
44225E:  BNE.W           def_442142; jumptable 00442142 default case, cases 4,6
442262:  LDR             R1, =(byte_992230 - 0x44226C)
442264:  LDRH.W          R0, [R5,#-0x11]
442268:  ADD             R1, PC; byte_992230
44226A:  MOV             R3, R1
44226C:  ORR.W           R0, R10, R0,LSL#16; this
442270:  LDRB            R1, [R3]
442272:  LDRB            R2, [R3,#(byte_992231 - 0x992230)]
442274:  LDRB            R3, [R3,#(byte_992232 - 0x992230)]
442276:  STMEA.W         SP, {R1-R3}
44227A:  MOVS            R1, #0xE4
44227C:  SUB.W           R2, R5, #0x1D; unsigned __int16
442280:  STR             R1, [SP,#0x98+var_8C]; unsigned __int8
442282:  MOV.W           R1, #0x800
442286:  STR             R1, [SP,#0x98+var_88]; unsigned __int8
442288:  MOV             R1, #0x3E4CCCCD
442290:  MOV.W           R3, #0x40000000; CVector *
442294:  STRD.W          R1, R8, [SP,#0x98+var_84]; float
442298:  MOVS            R1, #1; unsigned int
44229A:  BLX             j__ZN10C3dMarkers14PlaceMarkerSetEjtR7CVectorfhhhhtfs; C3dMarkers::PlaceMarkerSet(uint,ushort,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short)
44229E:  B               def_442142; jumptable 00442142 default case, cases 4,6
4422A0:  MOVS            R1, #0
4422A2:  LSRS            R0, R0, #8
4422A4:  BFI.W           R0, R9, #1, #0x1F
4422A8:  CMP             R0, #3
4422AA:  BNE.W           def_442142; jumptable 00442142 default case, cases 4,6
4422AE:  LDR             R0, [R1,#0x14]
4422B0:  LSRS            R3, R6, #0x18
4422B2:  ADD.W           R2, R0, #0x30 ; '0'
4422B6:  CMP             R0, #0
4422B8:  IT EQ
4422BA:  ADDEQ           R2, R1, #4
4422BC:  MOVS            R1, #5
4422BE:  LDR             R0, [R2,#8]
4422C0:  STR             R0, [SP,#0x98+var_58]
4422C2:  VLDR            S0, [SP,#0x98+var_58]
4422C6:  VLDR            D16, [R2]
4422CA:  MOVW            R2, #0x999A
4422CE:  VADD.F32        S0, S0, S18
4422D2:  STR.W           R9, [SP,#0x98+var_80]
4422D6:  STR             R1, [SP,#0x98+var_84]
4422D8:  MOV             R1, #0x3E4CCCCD
4422E0:  LDRH.W          R0, [R5,#-0x11]
4422E4:  STR             R1, [SP,#0x98+var_88]
4422E6:  MOV.W           R1, #0x400
4422EA:  STR             R1, [SP,#0x98+var_8C]
4422EC:  MOVS            R1, #0xFF
4422EE:  VSTR            D16, [SP,#0x98+var_60]
4422F2:  ORR.W           R0, R10, R0,LSL#16
4422F6:  STR             R1, [SP,#0x98+var_90]
4422F8:  MOVT            R2, #0x3F99
4422FC:  B               loc_442436
4422FE:  MOVS            R4, #0
442300:  LSRS            R0, R0, #8
442302:  BFI.W           R0, R9, #1, #0x1F
442306:  CMP             R0, #3
442308:  BNE.W           def_442142; jumptable 00442142 default case, cases 4,6
44230C:  MOV             R0, R4; this
44230E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
442312:  VLDR            S0, [R0,#0x14]
442316:  LSRS            R3, R6, #0x18
442318:  LDR             R0, [R4,#0x14]
44231A:  MOV.W           R2, #0x40000000
44231E:  ADD.W           R1, R0, #0x30 ; '0'
442322:  CMP             R0, #0
442324:  IT EQ
442326:  ADDEQ           R1, R4, #4
442328:  VLDR            D16, [R1]
44232C:  LDR             R0, [R1,#8]
44232E:  MOVW            R1, #0x229
442332:  STR             R0, [SP,#0x98+var_58]
442334:  VSTR            D16, [SP,#0x98+var_60]
442338:  LDRH            R0, [R4,#0x26]
44233A:  CMP             R0, R1
44233C:  ADR             R0, dword_442474
44233E:  IT EQ
442340:  ADDEQ           R0, #4
442342:  MOVS            R1, #5
442344:  VLDR            S2, [R0]
442348:  STR.W           R9, [SP,#0x98+var_80]
44234C:  VMUL.F32        S0, S0, S2
442350:  VLDR            S2, [SP,#0x98+var_58]
442354:  STR             R1, [SP,#0x98+var_84]
442356:  MOV             R1, #0x3E4CCCCD
44235E:  LDRH.W          R0, [R5,#-0x11]
442362:  STR             R1, [SP,#0x98+var_88]
442364:  MOV.W           R1, #0x400
442368:  STR             R1, [SP,#0x98+var_8C]
44236A:  MOVS            R1, #0xFF
44236C:  STR             R1, [SP,#0x98+var_90]
44236E:  ORR.W           R0, R10, R0,LSL#16
442372:  VADD.F32        S0, S0, S16
442376:  B               loc_442432
442378:  DCFS 2.7
44237C:  DCFS 0.8
442380:  LDR.W           R0, [R5,#-0x21]; this
442384:  BLX             j__ZN8CPickups20GetActualPickupIndexEi; CPickups::GetActualPickupIndex(int)
442388:  VMOV.F32        S26, S16
44238C:  CMP             R0, #0
44238E:  BLT             loc_4423D6
442390:  LDR             R1, [SP,#0x98+var_78]
442392:  VMOV.F32        S26, S16
442396:  ADD.W           R0, R1, R0,LSL#5
44239A:  LDRSH.W         R1, [R0,#0x10]
44239E:  LDRSH.W         R2, [R0,#0x12]
4423A2:  LDRSH.W         R0, [R0,#0x14]
4423A6:  VMOV            S2, R1
4423AA:  VMOV            S0, R2
4423AE:  VMOV            S4, R0
4423B2:  VCVT.F32.S32    S0, S0
4423B6:  VCVT.F32.S32    S2, S2
4423BA:  VCVT.F32.S32    S4, S4
4423BE:  VMUL.F32        S0, S0, S24
4423C2:  VMUL.F32        S2, S2, S24
4423C6:  VMUL.F32        S4, S4, S24
4423CA:  VSTR            S0, [SP,#0x98+var_60+4]
4423CE:  VSTR            S2, [SP,#0x98+var_60]
4423D2:  VSTR            S4, [SP,#0x98+var_58]
4423D6:  VMOV.F32        S0, S20
4423DA:  LDR             R0, [SP,#0x98+var_64]
4423DC:  LDR             R0, [R0]
4423DE:  CBNZ            R0, loc_4423F8
4423E0:  MOV.W           R0, #0xFFFFFFFF; int
4423E4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4423E8:  LDRB.W          R0, [R0,#0x33]
4423EC:  VMOV.F32        S0, S20
4423F0:  CMP             R0, #0
4423F2:  IT EQ
4423F4:  VMOVEQ.F32      S0, S22
4423F8:  VADD.F32        S0, S26, S0
4423FC:  VLDR            S2, [SP,#0x98+var_58]
442400:  MOVS            R1, #5
442402:  STR.W           R9, [SP,#0x98+var_80]; __int16
442406:  STR             R1, [SP,#0x98+var_84]; float
442408:  MOV             R1, #0x3E4CCCCD
442410:  LDRH.W          R0, [R5,#-0x11]
442414:  STR             R1, [SP,#0x98+var_88]; float
442416:  MOV.W           R1, #0x400
44241A:  STR             R1, [SP,#0x98+var_8C]; unsigned __int8
44241C:  MOVS            R1, #0xFF
44241E:  STR             R1, [SP,#0x98+var_90]; unsigned __int8
442420:  MOVW            R2, #0xCCCD
442424:  VADD.F32        S0, S0, S20
442428:  ORR.W           R0, R10, R0,LSL#16; this
44242C:  LSRS            R3, R6, #0x18; float
44242E:  MOVT            R2, #0x3F4C; CVector *
442432:  VADD.F32        S0, S2, S0
442436:  VSTR            S0, [SP,#0x98+var_58]
44243A:  UBFX.W          R1, R6, #8, #8
44243E:  STR             R1, [SP,#0x98+var_94]; unsigned __int8
442440:  UBFX.W          R1, R6, #0x10, #8
442444:  STR             R1, [SP,#0x98+var_98]; unsigned __int8
442446:  ADD             R1, SP, #0x98+var_60; unsigned __int16
442448:  BLX             j__ZN10C3dMarkers15PlaceMarkerConeEjR7CVectorfhhhhtfsh; C3dMarkers::PlaceMarkerCone(uint,CVector &,float,uchar,uchar,uchar,uchar,ushort,float,short,uchar)
44244C:  ADD.W           R10, R10, #1; jumptable 00442142 default case, cases 4,6
442450:  ADDS            R5, #0x28 ; '('
442452:  CMP.W           R10, #0xFA
442456:  BNE.W           loc_4420C2
44245A:  ADD             SP, SP, #0x48 ; 'H'
44245C:  VPOP            {D8-D13}
442460:  ADD             SP, SP, #4
442462:  POP.W           {R8-R11}
442466:  POP             {R4-R7,PC}
