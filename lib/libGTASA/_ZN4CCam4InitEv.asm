; =========================================================
; Game Engine Function: _ZN4CCam4InitEv
; Address            : 0x3D2220 - 0x3D23A2
; =========================================================

3D2220:  PUSH            {R4-R7,LR}
3D2222:  ADD             R7, SP, #0xC
3D2224:  PUSH.W          {R8-R10}
3D2228:  VPUSH           {D8-D9}
3D222C:  MOV             R4, R0
3D222E:  LDR             R0, =(gIdleCam_ptr - 0x3D2238)
3D2230:  LDR             R2, =(currentPad_ptr - 0x3D223C)
3D2232:  MOVS            R6, #0
3D2234:  ADD             R0, PC; gIdleCam_ptr
3D2236:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D2244)
3D2238:  ADD             R2, PC; currentPad_ptr
3D223A:  VMOV.I32        Q4, #0
3D223E:  LDR             R3, [R0]; gIdleCam
3D2240:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D2242:  LDR             R0, [R2]; currentPad
3D2244:  MOVS            R2, #0
3D2246:  MOVS            R5, #0
3D2248:  MOVT            R6, #0xBF80
3D224C:  MOV.W           R8, #3
3D2250:  MOVT            R2, #0x428C
3D2254:  STRD.W          R5, R5, [R3,#(dword_952CD4 - 0x952CBC)]
3D2258:  MOV.W           R9, #0x3F800000
3D225C:  STR             R5, [R3,#(dword_952CDC - 0x952CBC)]
3D225E:  STR             R6, [R3,#(dword_952CE8 - 0x952CBC)]
3D2260:  STR             R6, [R3,#(dword_952CF0 - 0x952CBC)]
3D2262:  STR             R6, [R3,#(dword_952CF8 - 0x952CBC)]
3D2264:  STR             R2, [R3,#(dword_952D2C - 0x952CBC)]
3D2266:  STRD.W          R5, R8, [R3,#(dword_952D10 - 0x952CBC)]
3D226A:  STRD.W          R6, R6, [R3,#(dword_952D18 - 0x952CBC)]
3D226E:  LDR             R1, [R1]; int
3D2270:  LDR             R0, [R0]
3D2272:  STR             R6, [R3,#(dword_952D20 - 0x952CBC)]
3D2274:  STR.W           R6, [R3,#(dword_952D3C - 0x952CBC)]
3D2278:  CMP             R0, #0
3D227A:  STR.W           R9, [R3,#(dword_952CE0 - 0x952CBC)]
3D227E:  STRH.W          R5, [R3,#(word_952D34 - 0x952CBC)]
3D2282:  VST1.32         {D8-D9}, [R3]!
3D2286:  LDR.W           R10, [R1]; CTimer::m_snTimeInMilliseconds
3D228A:  STR             R6, [R3]
3D228C:  ITT EQ
3D228E:  MOVEQ           R0, #0; this
3D2290:  BLXEQ           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3D2294:  STR.W           R10, [R0,#0x134]
3D2298:  MOVS            R0, #4
3D229A:  STRH            R0, [R4,#0xE]
3D229C:  MOV.W           LR, #1
3D22A0:  STRD.W          R5, R5, [R4,#0x168]
3D22A4:  ADR             R1, dword_3D23B0
3D22A6:  STR.W           R6, [R4,#0x170]
3D22AA:  MOVS            R6, #9
3D22AC:  STRD.W          R5, R5, [R4,#0x18C]
3D22B0:  STR.W           R9, [R4,#0x194]
3D22B4:  STR.W           LR, [R4,#0x14]
3D22B8:  STRB            R5, [R4,#0xC]
3D22BA:  STRD.W          R6, R5, [R4,#0x18]
3D22BE:  MOV.W           R6, #0x3F400000
3D22C2:  VLD1.64         {D16-D17}, [R1@128]
3D22C6:  STR             R5, [R4,#0x64]
3D22C8:  STR.W           R5, [R4,#0x88]
3D22CC:  STR.W           R6, [R4,#0xB0]
3D22D0:  ADD.W           R6, R4, #0x9C
3D22D4:  STRD.W          R5, R5, [R4,#0x204]
3D22D8:  STRB.W          LR, [R4,#0xA]
3D22DC:  STRB.W          LR, [R4,#0xB]
3D22E0:  STRD.W          R5, R5, [R4,#0x94]
3D22E4:  STRD.W          R5, R5, [R4,#0x6C]
3D22E8:  STRH.W          LR, [R4,#3]
3D22EC:  STRB            R5, [R4,#7]
3D22EE:  VST1.32         {D16-D17}, [R6]
3D22F2:  ADD.W           R6, R4, #0x38 ; '8'
3D22F6:  VST1.32         {D8-D9}, [R6]
3D22FA:  ADD.W           R6, R4, #0xDC
3D22FE:  VST1.32         {D8-D9}, [R6]
3D2302:  ADD.W           R6, R4, #0x1E0
3D2306:  VST1.32         {D8-D9}, [R6]
3D230A:  ADD.W           R6, R4, #0x1D0
3D230E:  VST1.32         {D8-D9}, [R6]
3D2312:  ADD.W           R6, R4, #0x1C0
3D2316:  VST1.32         {D8-D9}, [R6]
3D231A:  ADD.W           R6, R4, #0x1B0
3D231E:  VST1.32         {D8-D9}, [R6]
3D2322:  MOV             R6, #0x3EB2B8C3
3D232A:  LDR             R3, =(TheCamera_ptr - 0x3D2334)
3D232C:  LDR             R1, =(gPlayerPedVisible_ptr - 0x3D233C)
3D232E:  LDR             R2, =(gbCineyCamMessageDisplayed_ptr - 0x3D233E)
3D2330:  ADD             R3, PC; TheCamera_ptr
3D2332:  STR             R6, [R4,#0x5C]
3D2334:  MOV.W           R6, #0x3F000000
3D2338:  ADD             R1, PC; gPlayerPedVisible_ptr
3D233A:  ADD             R2, PC; gbCineyCamMessageDisplayed_ptr
3D233C:  LDR             R0, =(dword_952D74 - 0x3D234A)
3D233E:  STR             R6, [R4,#0x24]
3D2340:  MOV.W           R6, #0x3FC00000
3D2344:  STR             R6, [R4,#0x60]
3D2346:  ADD             R0, PC; dword_952D74
3D2348:  LDR.W           R12, =(dword_6A9F18 - 0x3D2354)
3D234C:  LDR             R6, =(dword_952D70 - 0x3D2358)
3D234E:  STRB            R5, [R4,#9]
3D2350:  ADD             R12, PC; dword_6A9F18
3D2352:  STRB            R5, [R4,#8]
3D2354:  ADD             R6, PC; dword_952D70
3D2356:  STR.W           R9, [R4,#0xF0]
3D235A:  LDR.W           R9, =(dword_6A9F20 - 0x3D2366)
3D235E:  LDR             R3, [R3]; TheCamera
3D2360:  LDR             R1, [R1]; gPlayerPedVisible
3D2362:  ADD             R9, PC; dword_6A9F20
3D2364:  LDR             R2, [R2]; gbCineyCamMessageDisplayed
3D2366:  STR.W           R8, [R4,#0x20]
3D236A:  STRB            R5, [R4,#6]
3D236C:  STR             R5, [R4,#0x58]
3D236E:  STR             R5, [R4,#0x48]
3D2370:  STR.W           R5, [R4,#0xEC]
3D2374:  STRD.W          R5, R5, [R4,#0xF4]
3D2378:  STR.W           R5, [R4,#0x1F0]
3D237C:  MOV.W           R4, #0xFFFFFFFF
3D2380:  STR             R5, [R0]
3D2382:  MOVS            R0, #2
3D2384:  STR.W           R8, [R12]
3D2388:  STR.W           R4, [R9]
3D238C:  STR             R5, [R6]
3D238E:  STRB            R0, [R2]
3D2390:  STRB.W          LR, [R1]
3D2394:  STRB.W          R5, [R3,#(byte_952C20 - 0x951FA8)]
3D2398:  VPOP            {D8-D9}
3D239C:  POP.W           {R8-R10}
3D23A0:  POP             {R4-R7,PC}
