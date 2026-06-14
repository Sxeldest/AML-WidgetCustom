; =========================================================
; Game Engine Function: _Z12RpClumpCloneP7RpClump
; Address            : 0x2144CC - 0x2145F6
; =========================================================

2144CC:  PUSH            {R4-R7,LR}
2144CE:  ADD             R7, SP, #0xC
2144D0:  PUSH.W          {R8-R11}
2144D4:  SUB             SP, SP, #0xC
2144D6:  MOV             R8, R0
2144D8:  LDR             R0, =(RwEngineInstance_ptr - 0x2144E0)
2144DA:  LDR             R1, =(dword_6BD598 - 0x2144E2)
2144DC:  ADD             R0, PC; RwEngineInstance_ptr
2144DE:  ADD             R1, PC; dword_6BD598
2144E0:  LDR             R0, [R0]; RwEngineInstance
2144E2:  LDR             R1, [R1]
2144E4:  LDR             R0, [R0]
2144E6:  LDR.W           R2, [R0,#0x13C]
2144EA:  ADD             R0, R1
2144EC:  LDR             R0, [R0,#4]
2144EE:  BLX             R2
2144F0:  MOV             R11, R0
2144F2:  MOVS            R1, #0
2144F4:  CMP.W           R11, #0
2144F8:  BEQ             loc_21459E
2144FA:  LDR             R0, =(dword_683B60 - 0x21451C)
2144FC:  MOVS            R3, #2
2144FE:  STRB.W          R1, [R11,#7]
214502:  ADD.W           R9, R11, #8
214506:  STRH.W          R1, [R11,#5]
21450A:  ADD.W           R6, R11, #0x18
21450E:  STRB.W          R3, [R11]
214512:  ADD.W           R3, R11, #0x10
214516:  LDR             R2, =(nullsub_11+1 - 0x214526)
214518:  ADD             R0, PC; dword_683B60
21451A:  STRD.W          R9, R9, [R11,#8]
21451E:  STRD.W          R3, R3, [R11,#0x10]
214522:  ADD             R2, PC; nullsub_11
214524:  STRD.W          R6, R6, [R11,#0x18]
214528:  STRD.W          R1, R1, [R11,#0x20]
21452C:  STR.W           R1, [R11,#1]
214530:  MOV             R1, R11
214532:  STR.W           R2, [R11,#0x28]
214536:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
21453A:  LDR.W           R0, [R8,#4]
21453E:  BLX             j__Z26_rwFrameCloneAndLinkClonesP7RwFrame; _rwFrameCloneAndLinkClones(RwFrame *)
214542:  CMP             R0, #0
214544:  STR.W           R0, [R11,#4]
214548:  BEQ             loc_2145AC
21454A:  MOV             R10, R8
21454C:  LDR.W           R5, [R10,#8]!
214550:  CMP             R5, R10
214552:  BEQ             loc_2145D0
214554:  MOV             R0, R5
214556:  LDR.W           R4, [R0],#-0x40
21455A:  BLX             j__Z13RpAtomicCloneP8RpAtomic; RpAtomicClone(RpAtomic *)
21455E:  MOV             R6, R0
214560:  CMP             R6, #0
214562:  BEQ             loc_2145A4
214564:  LDR.W           R0, [R5,#-0x3C]
214568:  CBZ             R0, loc_2145B8
21456A:  LDR.W           R1, [R0,#0xA0]
21456E:  MOV             R0, R6
214570:  BLX             j__Z25_rwObjectHasFrameSetFramePvP7RwFrame; _rwObjectHasFrameSetFrame(void *,RwFrame *)
214574:  LDRB            R0, [R6,#3]
214576:  CMP             R4, R10
214578:  MOV             R5, R4
21457A:  ADD.W           R1, R6, #0x40 ; '@'
21457E:  ORR.W           R0, R0, #1
214582:  STRB            R0, [R6,#3]
214584:  LDR.W           R0, [R11,#8]
214588:  STRD.W          R0, R9, [R6,#0x40]
21458C:  LDR.W           R0, [R11,#8]
214590:  STR             R1, [R0,#4]
214592:  STR.W           R1, [R11,#8]
214596:  STR.W           R11, [R6,#0x3C]
21459A:  BNE             loc_214554
21459C:  B               loc_2145D0
21459E:  MOV.W           R11, #0
2145A2:  B               loc_2145EC
2145A4:  LDR.W           R0, [R8,#4]
2145A8:  BLX             j__Z18_rwFramePurgeCloneP7RwFrame; _rwFramePurgeClone(RwFrame *)
2145AC:  MOV             R0, R11
2145AE:  BLX             j__Z14RpClumpDestroyP7RpClump; RpClumpDestroy(RpClump *)
2145B2:  MOV.W           R11, #0
2145B6:  B               loc_2145EC
2145B8:  MOV             R0, R6
2145BA:  BLX             j__Z15RpAtomicDestroyP8RpAtomic; RpAtomicDestroy(RpAtomic *)
2145BE:  MOVS            R0, #0
2145C0:  STR             R0, [SP,#0x28+var_24]
2145C2:  MOVS            R0, #5; int
2145C4:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
2145C8:  STR             R0, [SP,#0x28+var_20]
2145CA:  ADD             R0, SP, #0x28+var_24
2145CC:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
2145D0:  LDR.W           R0, [R8,#4]
2145D4:  BLX             j__Z18_rwFramePurgeCloneP7RwFrame; _rwFramePurgeClone(RwFrame *)
2145D8:  LDR             R0, =(dword_683B60 - 0x2145E4)
2145DA:  MOV             R2, R8
2145DC:  LDR.W           R1, [R8,#0x28]
2145E0:  ADD             R0, PC; dword_683B60
2145E2:  STR.W           R1, [R11,#0x28]
2145E6:  MOV             R1, R11
2145E8:  BLX             j__Z27_rwPluginRegistryCopyObjectPK16RwPluginRegistryPvPKv; _rwPluginRegistryCopyObject(RwPluginRegistry const*,void *,void const*)
2145EC:  MOV             R0, R11
2145EE:  ADD             SP, SP, #0xC
2145F0:  POP.W           {R8-R11}
2145F4:  POP             {R4-R7,PC}
