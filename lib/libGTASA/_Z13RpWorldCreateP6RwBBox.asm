; =========================================================
; Game Engine Function: _Z13RpWorldCreateP6RwBBox
; Address            : 0x21D1C4 - 0x21D3B6
; =========================================================

21D1C4:  PUSH            {R4-R7,LR}
21D1C6:  ADD             R7, SP, #0xC
21D1C8:  PUSH.W          {R8,R9,R11}
21D1CC:  SUB             SP, SP, #8
21D1CE:  MOV             R6, R0
21D1D0:  LDR             R0, =(RwEngineInstance_ptr - 0x21D1D8)
21D1D2:  LDR             R1, =(worldTKList_ptr - 0x21D1DA)
21D1D4:  ADD             R0, PC; RwEngineInstance_ptr
21D1D6:  ADD             R1, PC; worldTKList_ptr
21D1D8:  LDR             R0, [R0]; RwEngineInstance
21D1DA:  LDR             R1, [R1]; worldTKList
21D1DC:  LDR             R2, [R0]
21D1DE:  LDR             R0, [R1]
21D1E0:  LDR.W           R1, [R2,#0x12C]
21D1E4:  BLX             R1
21D1E6:  MOVW            R8, #0x13
21D1EA:  MOV             R4, R0
21D1EC:  MOVT            R8, #0x8000
21D1F0:  CMP             R4, #0
21D1F2:  BEQ.W           loc_21D36A
21D1F6:  MOV.W           R9, #0
21D1FA:  MOVS            R0, #7
21D1FC:  STRB.W          R9, [R4,#7]
21D200:  STRH.W          R9, [R4,#5]
21D204:  STR.W           R9, [R4,#1]
21D208:  STRB            R0, [R4]
21D20A:  ADD.W           R0, R4, #0x10
21D20E:  BLX             j__Z25_rpMaterialListInitializeP14RpMaterialList; _rpMaterialListInitialize(RpMaterialList *)
21D212:  LDR             R1, =(RwEngineInstance_ptr - 0x21D21C)
21D214:  MOVS            R2, #2
21D216:  LDR             R0, =(sectorTKList_ptr - 0x21D222)
21D218:  ADD             R1, PC; RwEngineInstance_ptr
21D21A:  STRD.W          R9, R2, [R4,#8]
21D21E:  ADD             R0, PC; sectorTKList_ptr
21D220:  LDR             R1, [R1]; RwEngineInstance
21D222:  LDR             R0, [R0]; sectorTKList
21D224:  LDR             R1, [R1]
21D226:  LDR             R0, [R0]
21D228:  LDR.W           R1, [R1,#0x12C]
21D22C:  BLX             R1
21D22E:  MOV             R5, R0
21D230:  CMP             R5, #0
21D232:  BEQ.W           loc_21D386
21D236:  MOV.W           R0, #0xFFFFFFFF
21D23A:  ADD.W           R1, R5, #0x40 ; '@'
21D23E:  STR             R0, [R5]
21D240:  ADD.W           R0, R5, #0x38 ; '8'
21D244:  VMOV.I32        Q8, #0
21D248:  STR.W           R9, [R5,#0x80]
21D24C:  STRD.W          R9, R0, [R5,#0x34]
21D250:  ADD.W           R2, R5, #0x48 ; 'H'
21D254:  STRD.W          R0, R1, [R5,#0x3C]
21D258:  ADD.W           R0, R5, #0x24 ; '$'
21D25C:  STRD.W          R1, R2, [R5,#0x44]
21D260:  STR             R2, [R5,#0x4C]
21D262:  VST1.32         {D16-D17}, [R0]
21D266:  ADD.W           R0, R5, #0x14
21D26A:  VST1.32         {D16-D17}, [R0]
21D26E:  ADDS            R0, R5, #4
21D270:  VST1.32         {D16-D17}, [R0]
21D274:  STR.W           R9, [R5,#0x8A]
21D278:  VLDR            D16, [R6,#0xC]
21D27C:  LDR             R0, [R6,#0x14]
21D27E:  STR             R0, [R5,#0x64]
21D280:  VSTR            D16, [R5,#0x5C]
21D284:  VLDR            D16, [R6]
21D288:  LDR             R0, [R6,#8]
21D28A:  STR             R0, [R5,#0x58]
21D28C:  VSTR            D16, [R5,#0x50]
21D290:  VLDR            D16, [R6,#0xC]
21D294:  LDR             R0, [R6,#0x14]
21D296:  STR             R0, [R5,#0x7C]
21D298:  VSTR            D16, [R5,#0x74]
21D29C:  VLDR            D16, [R6]
21D2A0:  LDR             R0, [R6,#8]
21D2A2:  STR             R0, [R5,#0x70]
21D2A4:  VSTR            D16, [R5,#0x68]
21D2A8:  STR.W           R9, [R5,#0x84]
21D2AC:  STRD.W          R5, R9, [R4,#0x1C]
21D2B0:  STRD.W          R9, R9, [R4,#0x44]
21D2B4:  STR.W           R9, [R4,#0x4C]
21D2B8:  LDR             R2, =(RwEngineInstance_ptr - 0x21D2C4)
21D2BA:  VLDR            D16, [R6,#0xC]
21D2BE:  LDR             R0, [R6,#0x14]
21D2C0:  ADD             R2, PC; RwEngineInstance_ptr
21D2C2:  LDR             R1, =(_Z30_rpSectorDefaultRenderCallBackP13RpWorldSector_ptr - 0x21D2CE)
21D2C4:  STR             R0, [R4,#0x64]
21D2C6:  VSTR            D16, [R4,#0x5C]
21D2CA:  ADD             R1, PC; _Z30_rpSectorDefaultRenderCallBackP13RpWorldSector_ptr
21D2CC:  LDR.W           R12, =(dword_6BD630 - 0x21D2EC)
21D2D0:  LDR             R0, [R6,#8]
21D2D2:  VLDR            D16, [R6]
21D2D6:  ADD.W           R6, R4, #0x34 ; '4'
21D2DA:  LDR.W           LR, [R2]; RwEngineInstance
21D2DE:  ADD.W           R2, R4, #0x3C ; '<'
21D2E2:  STR             R0, [R4,#0x58]
21D2E4:  ADD.W           R0, R4, #0x2C ; ','
21D2E8:  ADD             R12, PC; dword_6BD630
21D2EA:  LDR             R1, [R1]; _rpSectorDefaultRenderCallBack(RpWorldSector *)
21D2EC:  STRD.W          R9, R0, [R4,#0x24]
21D2F0:  STRD.W          R0, R0, [R4,#0x2C]
21D2F4:  STRD.W          R6, R6, [R4,#0x34]
21D2F8:  STRD.W          R2, R2, [R4,#0x3C]
21D2FC:  STRD.W          R1, R9, [R4,#0x68]
21D300:  VSTR            D16, [R4,#0x50]
21D304:  LDR             R3, =(worldTKList_ptr - 0x21D312)
21D306:  LDR.W           R0, [R12]
21D30A:  LDR.W           R1, [LR]
21D30E:  ADD             R3, PC; worldTKList_ptr
21D310:  LDR             R3, [R3]; worldTKList
21D312:  LDR             R0, [R1,R0]
21D314:  LDR.W           R1, [R1,#0x13C]
21D318:  LDR             R6, [R3]
21D31A:  BLX             R1
21D31C:  CBZ             R0, loc_21D342
21D31E:  LDR             R1, =(RwEngineInstance_ptr - 0x21D326)
21D320:  LDR             R2, =(dword_6BD630 - 0x21D32A)
21D322:  ADD             R1, PC; RwEngineInstance_ptr
21D324:  STR             R6, [R0,#4]
21D326:  ADD             R2, PC; dword_6BD630
21D328:  STR             R4, [R0]
21D32A:  LDR             R1, [R1]; RwEngineInstance
21D32C:  LDR             R2, [R2]
21D32E:  LDR             R1, [R1]
21D330:  ADD             R1, R2
21D332:  LDR.W           R2, [R1,#4]!
21D336:  STRD.W          R2, R1, [R0,#8]
21D33A:  ADDS            R0, #8
21D33C:  LDR             R2, [R1]
21D33E:  STR             R0, [R2,#4]
21D340:  STR             R0, [R1]
21D342:  LDR             R0, =(worldTKList_ptr - 0x21D34A)
21D344:  MOV             R1, R4
21D346:  ADD             R0, PC; worldTKList_ptr
21D348:  LDR             R0, [R0]; worldTKList
21D34A:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
21D34E:  LDR             R0, =(sectorTKList_ptr - 0x21D356)
21D350:  MOV             R1, R5
21D352:  ADD             R0, PC; sectorTKList_ptr
21D354:  LDR             R0, [R0]; sectorTKList
21D356:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
21D35A:  MOV             R0, R4
21D35C:  BLX             j__Z13RpWorldUnlockP7RpWorld; RpWorldUnlock(RpWorld *)
21D360:  CBNZ            R0, loc_21D3AC
21D362:  MOV             R0, R4
21D364:  BLX             j__Z14RpWorldDestroyP7RpWorld; RpWorldDestroy(RpWorld *)
21D368:  B               loc_21D3AA
21D36A:  LDR             R0, =(worldTKList_ptr - 0x21D374)
21D36C:  MOVS            R4, #0
21D36E:  STR             R4, [SP,#0x20+var_20]
21D370:  ADD             R0, PC; worldTKList_ptr
21D372:  LDR             R0, [R0]; worldTKList
21D374:  LDR             R1, [R0]
21D376:  MOV             R0, R8; int
21D378:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21D37C:  STR             R0, [SP,#0x20+var_1C]
21D37E:  MOV             R0, SP
21D380:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21D384:  B               loc_21D3AC
21D386:  MOV             R0, R8; int
21D388:  MOVS            R1, #4
21D38A:  STR.W           R9, [SP,#0x20+var_20]
21D38E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21D392:  STR             R0, [SP,#0x20+var_1C]
21D394:  MOV             R0, SP
21D396:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
21D39A:  LDR             R0, =(RwEngineInstance_ptr - 0x21D3A0)
21D39C:  ADD             R0, PC; RwEngineInstance_ptr
21D39E:  LDR             R0, [R0]; RwEngineInstance
21D3A0:  LDR             R0, [R0]
21D3A2:  LDR.W           R1, [R0,#0x130]
21D3A6:  MOV             R0, R4
21D3A8:  BLX             R1
21D3AA:  MOVS            R4, #0
21D3AC:  MOV             R0, R4
21D3AE:  ADD             SP, SP, #8
21D3B0:  POP.W           {R8,R9,R11}
21D3B4:  POP             {R4-R7,PC}
