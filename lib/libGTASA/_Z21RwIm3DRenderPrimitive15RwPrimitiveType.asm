; =========================================================
; Game Engine Function: _Z21RwIm3DRenderPrimitive15RwPrimitiveType
; Address            : 0x1DD244 - 0x1DD34E
; =========================================================

1DD244:  PUSH            {R4,R5,R7,LR}
1DD246:  ADD             R7, SP, #8
1DD248:  SUB             SP, SP, #8
1DD24A:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD254)
1DD24C:  MOV             R5, R0
1DD24E:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD256)
1DD250:  ADD             R1, PC; RwEngineInstance_ptr
1DD252:  ADD             R0, PC; _rwIm3DModule_ptr
1DD254:  LDR             R1, [R1]; RwEngineInstance
1DD256:  LDR             R0, [R0]; _rwIm3DModule
1DD258:  LDR             R1, [R1]
1DD25A:  LDR             R0, [R0]
1DD25C:  ADD             R0, R1
1DD25E:  LDR             R4, [R0,#0x3C]
1DD260:  BLX             j__Z19RxHeapGetGlobalHeapv; RxHeapGetGlobalHeap(void)
1DD264:  CBZ             R4, loc_1DD2B4
1DD266:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD26E)
1DD268:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD270)
1DD26A:  ADD             R0, PC; _rwIm3DModule_ptr
1DD26C:  ADD             R1, PC; RwEngineInstance_ptr
1DD26E:  LDR             R2, [R0]; _rwIm3DModule
1DD270:  LDR             R1, [R1]; RwEngineInstance
1DD272:  LDR             R0, [R2]
1DD274:  LDR             R3, [R1]
1DD276:  ADD             R3, R0
1DD278:  MOVS            R0, #0
1DD27A:  ADD.W           R4, R3, #0x44 ; 'D'
1DD27E:  STRD.W          R0, R5, [R3,#0x64]
1DD282:  STR             R0, [R3,#0x6C]
1DD284:  LDR             R2, [R2]
1DD286:  LDR             R1, [R1]
1DD288:  ADD             R1, R2
1DD28A:  LDRH            R1, [R1,#0x38]
1DD28C:  STR             R1, [R3,#0x70]
1DD28E:  SUBS            R1, R5, #1; switch 5 cases
1DD290:  CMP             R1, #4
1DD292:  BHI             def_1DD294; jumptable 001DD294 default case
1DD294:  TBB.W           [PC,R1]; switch jump
1DD298:  DCB 3; jump table for switch statement
1DD299:  DCB 0x23
1DD29A:  DCB 0x2E
1DD29B:  DCB 0x39
1DD29C:  DCB 0x44
1DD29D:  ALIGN 2
1DD29E:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD2A6); jumptable 001DD294 case 1
1DD2A0:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD2A8)
1DD2A2:  ADD             R0, PC; _rwIm3DModule_ptr
1DD2A4:  ADD             R1, PC; RwEngineInstance_ptr
1DD2A6:  LDR             R0, [R0]; _rwIm3DModule
1DD2A8:  LDR             R1, [R1]; RwEngineInstance
1DD2AA:  LDR             R0, [R0]
1DD2AC:  LDR             R1, [R1]
1DD2AE:  ADD             R0, R1
1DD2B0:  LDR             R0, [R0,#0x10]
1DD2B2:  B               loc_1DD334
1DD2B4:  MOVS            R0, #0
1DD2B6:  STR             R0, [SP,#0x10+var_10]
1DD2B8:  MOVS            R0, #0x23 ; '#'; int
1DD2BA:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DD2BE:  STR             R0, [SP,#0x10+var_C]
1DD2C0:  MOV             R0, SP
1DD2C2:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DD2C6:  B               loc_1DD348
1DD2C8:  STR             R0, [SP,#0x10+var_10]; jumptable 001DD294 default case
1DD2CA:  MOVS            R0, #0x25 ; '%'; int
1DD2CC:  MOV             R1, R5
1DD2CE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DD2D2:  STR             R0, [SP,#0x10+var_C]
1DD2D4:  MOV             R0, SP
1DD2D6:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DD2DA:  LDR             R0, [R4,#0x20]
1DD2DC:  B               loc_1DD336
1DD2DE:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD2E6); jumptable 001DD294 case 2
1DD2E0:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD2E8)
1DD2E2:  ADD             R0, PC; _rwIm3DModule_ptr
1DD2E4:  ADD             R1, PC; RwEngineInstance_ptr
1DD2E6:  LDR             R0, [R0]; _rwIm3DModule
1DD2E8:  LDR             R1, [R1]; RwEngineInstance
1DD2EA:  LDR             R0, [R0]
1DD2EC:  LDR             R1, [R1]
1DD2EE:  ADD             R0, R1
1DD2F0:  LDR             R0, [R0,#0x14]
1DD2F2:  B               loc_1DD334
1DD2F4:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD2FC); jumptable 001DD294 case 3
1DD2F6:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD2FE)
1DD2F8:  ADD             R0, PC; _rwIm3DModule_ptr
1DD2FA:  ADD             R1, PC; RwEngineInstance_ptr
1DD2FC:  LDR             R0, [R0]; _rwIm3DModule
1DD2FE:  LDR             R1, [R1]; RwEngineInstance
1DD300:  LDR             R0, [R0]
1DD302:  LDR             R1, [R1]
1DD304:  ADD             R0, R1
1DD306:  LDR             R0, [R0,#4]
1DD308:  B               loc_1DD334
1DD30A:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD312); jumptable 001DD294 case 4
1DD30C:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD314)
1DD30E:  ADD             R0, PC; _rwIm3DModule_ptr
1DD310:  ADD             R1, PC; RwEngineInstance_ptr
1DD312:  LDR             R0, [R0]; _rwIm3DModule
1DD314:  LDR             R1, [R1]; RwEngineInstance
1DD316:  LDR             R0, [R0]
1DD318:  LDR             R1, [R1]
1DD31A:  ADD             R0, R1
1DD31C:  LDR             R0, [R0,#0xC]
1DD31E:  B               loc_1DD334
1DD320:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD328); jumptable 001DD294 case 5
1DD322:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD32A)
1DD324:  ADD             R0, PC; _rwIm3DModule_ptr
1DD326:  ADD             R1, PC; RwEngineInstance_ptr
1DD328:  LDR             R0, [R0]; _rwIm3DModule
1DD32A:  LDR             R1, [R1]; RwEngineInstance
1DD32C:  LDR             R0, [R0]
1DD32E:  LDR             R1, [R1]
1DD330:  ADD             R0, R1
1DD332:  LDR             R0, [R0,#8]
1DD334:  STR             R0, [R4,#0x20]
1DD336:  MOV             R1, R4
1DD338:  MOVS            R2, #0
1DD33A:  BLX             j__Z17RxPipelineExecuteP10RxPipelinePvi; RxPipelineExecute(RxPipeline *,void *,int)
1DD33E:  CMP             R0, #0
1DD340:  ITTT NE
1DD342:  MOVNE           R0, #1
1DD344:  ADDNE           SP, SP, #8
1DD346:  POPNE           {R4,R5,R7,PC}
1DD348:  MOVS            R0, #0
1DD34A:  ADD             SP, SP, #8
1DD34C:  POP             {R4,R5,R7,PC}
