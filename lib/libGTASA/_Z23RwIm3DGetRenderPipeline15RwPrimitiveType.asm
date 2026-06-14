; =========================================================
; Game Engine Function: _Z23RwIm3DGetRenderPipeline15RwPrimitiveType
; Address            : 0x1DD4E4 - 0x1DD598
; =========================================================

1DD4E4:  PUSH            {R4,R6,R7,LR}
1DD4E6:  ADD             R7, SP, #8
1DD4E8:  SUB             SP, SP, #8
1DD4EA:  MOV             R1, R0
1DD4EC:  SUBS            R0, R1, #1; switch 6 cases
1DD4EE:  CMP             R0, #5
1DD4F0:  BHI             def_1DD4F2; jumptable 001DD4F2 default case
1DD4F2:  TBB.W           [PC,R0]; switch jump
1DD4F6:  DCB 3; jump table for switch statement
1DD4F7:  DCB 0x18
1DD4F8:  DCB 0x23
1DD4F9:  DCB 0x2E
1DD4FA:  DCB 0x39
1DD4FB:  DCB 0x44
1DD4FC:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD504); jumptable 001DD4F2 case 1
1DD4FE:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD506)
1DD500:  ADD             R0, PC; _rwIm3DModule_ptr
1DD502:  ADD             R1, PC; RwEngineInstance_ptr
1DD504:  LDR             R0, [R0]; _rwIm3DModule
1DD506:  LDR             R1, [R1]; RwEngineInstance
1DD508:  LDR             R0, [R0]
1DD50A:  LDR             R1, [R1]
1DD50C:  ADD             R0, R1
1DD50E:  LDR             R4, [R0,#0x10]
1DD510:  B               loc_1DD592
1DD512:  MOVS            R4, #0; jumptable 001DD4F2 default case
1DD514:  MOVS            R0, #0x25 ; '%'; int
1DD516:  STR             R4, [SP,#0x10+var_10]
1DD518:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DD51C:  STR             R0, [SP,#0x10+var_C]
1DD51E:  MOV             R0, SP
1DD520:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DD524:  B               loc_1DD592
1DD526:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD52E); jumptable 001DD4F2 case 2
1DD528:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD530)
1DD52A:  ADD             R0, PC; _rwIm3DModule_ptr
1DD52C:  ADD             R1, PC; RwEngineInstance_ptr
1DD52E:  LDR             R0, [R0]; _rwIm3DModule
1DD530:  LDR             R1, [R1]; RwEngineInstance
1DD532:  LDR             R0, [R0]
1DD534:  LDR             R1, [R1]
1DD536:  ADD             R0, R1
1DD538:  LDR             R4, [R0,#0x14]
1DD53A:  B               loc_1DD592
1DD53C:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD544); jumptable 001DD4F2 case 3
1DD53E:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD546)
1DD540:  ADD             R0, PC; _rwIm3DModule_ptr
1DD542:  ADD             R1, PC; RwEngineInstance_ptr
1DD544:  LDR             R0, [R0]; _rwIm3DModule
1DD546:  LDR             R1, [R1]; RwEngineInstance
1DD548:  LDR             R0, [R0]
1DD54A:  LDR             R1, [R1]
1DD54C:  ADD             R0, R1
1DD54E:  LDR             R4, [R0,#4]
1DD550:  B               loc_1DD592
1DD552:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD55A); jumptable 001DD4F2 case 4
1DD554:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD55C)
1DD556:  ADD             R0, PC; _rwIm3DModule_ptr
1DD558:  ADD             R1, PC; RwEngineInstance_ptr
1DD55A:  LDR             R0, [R0]; _rwIm3DModule
1DD55C:  LDR             R1, [R1]; RwEngineInstance
1DD55E:  LDR             R0, [R0]
1DD560:  LDR             R1, [R1]
1DD562:  ADD             R0, R1
1DD564:  LDR             R4, [R0,#0xC]
1DD566:  B               loc_1DD592
1DD568:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD570); jumptable 001DD4F2 case 5
1DD56A:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD572)
1DD56C:  ADD             R0, PC; _rwIm3DModule_ptr
1DD56E:  ADD             R1, PC; RwEngineInstance_ptr
1DD570:  LDR             R0, [R0]; _rwIm3DModule
1DD572:  LDR             R1, [R1]; RwEngineInstance
1DD574:  LDR             R0, [R0]
1DD576:  LDR             R1, [R1]
1DD578:  ADD             R0, R1
1DD57A:  LDR             R4, [R0,#8]
1DD57C:  B               loc_1DD592
1DD57E:  LDR             R0, =(_rwIm3DModule_ptr - 0x1DD586); jumptable 001DD4F2 case 6
1DD580:  LDR             R1, =(RwEngineInstance_ptr - 0x1DD588)
1DD582:  ADD             R0, PC; _rwIm3DModule_ptr
1DD584:  ADD             R1, PC; RwEngineInstance_ptr
1DD586:  LDR             R0, [R0]; _rwIm3DModule
1DD588:  LDR             R1, [R1]; RwEngineInstance
1DD58A:  LDR             R0, [R0]
1DD58C:  LDR             R1, [R1]
1DD58E:  ADD             R0, R1
1DD590:  LDR             R4, [R0,#0x18]
1DD592:  MOV             R0, R4
1DD594:  ADD             SP, SP, #8
1DD596:  POP             {R4,R6,R7,PC}
