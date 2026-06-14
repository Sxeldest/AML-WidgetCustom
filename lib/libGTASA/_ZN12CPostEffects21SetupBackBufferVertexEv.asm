; =========================================================
; Game Engine Function: _ZN12CPostEffects21SetupBackBufferVertexEv
; Address            : 0x5B2240 - 0x5B235A
; =========================================================

5B2240:  PUSH            {R4,R5,R7,LR}
5B2242:  ADD             R7, SP, #8
5B2244:  VPUSH           {D8}
5B2248:  LDR             R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B224E)
5B224A:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B224C:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B224E:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer
5B2250:  CBZ             R0, loc_5B226C
5B2252:  LDR             R1, [R0,#0xC]
5B2254:  CMP             R1, #0x40 ; '@'
5B2256:  ITT EQ
5B2258:  LDREQ           R1, [R0,#0x10]
5B225A:  CMPEQ           R1, #0x40 ; '@'
5B225C:  BEQ             loc_5B229E
5B225E:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5B2262:  LDR             R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B226A)
5B2264:  MOVS            R1, #0
5B2266:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B2268:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B226A:  STR             R1, [R0]; CPostEffects::pRasterFrontBuffer
5B226C:  LDR             R0, =(Scene_ptr - 0x5B2276)
5B226E:  MOVS            R1, #0x40 ; '@'; int
5B2270:  MOVS            R3, #5; int
5B2272:  ADD             R0, PC; Scene_ptr
5B2274:  LDR             R0, [R0]; Scene
5B2276:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
5B2278:  LDR             R0, [R0,#0x60]
5B227A:  LDR             R2, [R0,#0x14]; int
5B227C:  MOVS            R0, #0x40 ; '@'; int
5B227E:  BLX.W           j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
5B2282:  LDR             R1, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B228A)
5B2284:  CMP             R0, #0
5B2286:  ADD             R1, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B2288:  LDR             R1, [R1]; CPostEffects::pRasterFrontBuffer ...
5B228A:  STR             R0, [R1]; CPostEffects::pRasterFrontBuffer
5B228C:  BNE             loc_5B229E
5B228E:  MOVS            R0, #0
5B2290:  MOVS            R4, #0
5B2292:  BLX.W           j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
5B2296:  LDR             R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B229C)
5B2298:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B229A:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B229C:  STR             R4, [R0]; CPostEffects::pRasterFrontBuffer
5B229E:  LDR             R4, =(dword_A4785C - 0x5B22A8)
5B22A0:  MOVS            R1, #0
5B22A2:  LDR             R0, =(Scene_ptr - 0x5B22AA)
5B22A4:  ADD             R4, PC; dword_A4785C
5B22A6:  ADD             R0, PC; Scene_ptr
5B22A8:  STRD.W          R1, R1, [R4]
5B22AC:  LDR             R5, [R0]; Scene
5B22AE:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B22B2:  VMOV.F32        S16, #1.0
5B22B6:  LDR             R1, [R5,#(dword_9FC93C - 0x9FC938)]
5B22B8:  STR             R0, [R4,#(dword_A47864 - 0xA4785C)]
5B22BA:  ADR             R0, dword_5B2360
5B22BC:  VLD1.64         {D16-D17}, [R0@128]
5B22C0:  ADD.W           R0, R4, #0x14
5B22C4:  VLDR            S0, [R1,#0x80]
5B22C8:  VST1.32         {D16-D17}, [R0]
5B22CC:  VDIV.F32        S0, S16, S0
5B22D0:  VSTR            S0, [R4,#0xC]
5B22D4:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B22D8:  STR             R0, [R4,#(dword_A47880 - 0xA4785C)]
5B22DA:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
5B22DC:  VLDR            S0, [R0,#0x80]
5B22E0:  ADR             R0, dword_5B2370
5B22E2:  VLD1.64         {D16-D17}, [R0@128]
5B22E6:  ADD.W           R0, R4, #0x30 ; '0'
5B22EA:  VDIV.F32        S0, S16, S0
5B22EE:  VST1.32         {D16-D17}, [R0]
5B22F2:  VSTR            S0, [R4,#0x28]
5B22F6:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B22FA:  STR             R0, [R4,#(dword_A4789C - 0xA4785C)]
5B22FC:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
5B22FE:  VLDR            S0, [R0,#0x80]
5B2302:  ADR             R0, dword_5B2380
5B2304:  VLD1.64         {D16-D17}, [R0@128]
5B2308:  ADD.W           R0, R4, #0x4C ; 'L'
5B230C:  VDIV.F32        S0, S16, S0
5B2310:  VST1.32         {D16-D17}, [R0]
5B2314:  VSTR            S0, [R4,#0x44]
5B2318:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B231C:  STR             R0, [R4,#(dword_A478B8 - 0xA4785C)]
5B231E:  MOVS            R1, #0
5B2320:  LDR             R0, [R5,#(dword_9FC93C - 0x9FC938)]
5B2322:  MOVT            R1, #0x3F81
5B2326:  MOV.W           R2, #0x3C000000
5B232A:  VLDR            S0, [R0,#0x80]
5B232E:  LDR             R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B233C)
5B2330:  VDIV.F32        S0, S16, S0
5B2334:  STRD.W          R1, R2, [R4,#(dword_A478C4 - 0xA4785C)]
5B2338:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B233A:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B233C:  LDR             R0, [R0]; this
5B233E:  CMP             R0, #0
5B2340:  VSTR            S0, [R4,#0x60]
5B2344:  ITT EQ
5B2346:  VPOPEQ          {D8}
5B234A:  POPEQ           {R4,R5,R7,PC}
5B234C:  BLX.W           j__ZN12CPostEffects34ImmediateModeFilterStuffInitializeEv; CPostEffects::ImmediateModeFilterStuffInitialize(void)
5B2350:  VPOP            {D8}
5B2354:  POP.W           {R4,R5,R7,LR}
5B2358:  B               _ZN12CPostEffects14HeatHazeFXInitEv; CPostEffects::HeatHazeFXInit(void)
