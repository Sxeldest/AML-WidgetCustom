; =========================================================
; Game Engine Function: sub_1C9224
; Address            : 0x1C9224 - 0x1C92B8
; =========================================================

1C9224:  PUSH            {R4,R5,R7,LR}
1C9226:  ADD             R7, SP, #8
1C9228:  SUB             SP, SP, #8
1C922A:  MOV             R4, R0
1C922C:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C9232)
1C922E:  ADD             R0, PC; _rpSkinGlobals_ptr
1C9230:  LDR             R0, [R0]; _rpSkinGlobals
1C9232:  LDR             R0, [R0,#(dword_6B7294 - 0x6B7274)]
1C9234:  CBNZ            R0, loc_1C92A8
1C9236:  MOV.W           R0, #0x120; unsigned int
1C923A:  BLX             j__Z23RwEngineGetPluginOffsetj; RwEngineGetPluginOffset(uint)
1C923E:  ADDS            R0, #1
1C9240:  MOV.W           R5, #1
1C9244:  MOV.W           R0, #0x12E; unsigned int
1C9248:  IT NE
1C924A:  MOVNE           R5, #3
1C924C:  BLX             j__Z23RwEngineGetPluginOffsetj; RwEngineGetPluginOffset(uint)
1C9250:  ADDS            R0, #1
1C9252:  IT NE
1C9254:  ORRNE.W         R5, R5, #4
1C9258:  MOV             R0, R5; unsigned int
1C925A:  BLX             j__Z22_rpSkinPipelinesCreatej; _rpSkinPipelinesCreate(uint)
1C925E:  LDR             R0, =(dword_67A1B8 - 0x1C9268)
1C9260:  MOVS            R2, #4
1C9262:  LDR             R1, =(dword_67A1B4 - 0x1C926A)
1C9264:  ADD             R0, PC; dword_67A1B8
1C9266:  ADD             R1, PC; dword_67A1B4
1C9268:  LDR             R3, [R0]
1C926A:  LDR             R0, =(unk_6B8AB8 - 0x1C9272)
1C926C:  LDR             R1, [R1]
1C926E:  ADD             R0, PC; unk_6B8AB8
1C9270:  STR             R0, [SP,#0x10+var_10]
1C9272:  MOVS            R0, #0x3C ; '<'
1C9274:  BLX             j__Z35RwFreeListCreateAndPreallocateSpaceiiiiP10RwFreeList; RwFreeListCreateAndPreallocateSpace(int,int,int,int,RwFreeList *)
1C9278:  LDR             R1, =(RwEngineInstance_ptr - 0x1C9280)
1C927A:  LDR             R2, =(_rpSkinGlobals_ptr - 0x1C9282)
1C927C:  ADD             R1, PC; RwEngineInstance_ptr
1C927E:  ADD             R2, PC; _rpSkinGlobals_ptr
1C9280:  LDR             R1, [R1]; RwEngineInstance
1C9282:  LDR             R5, [R2]; _rpSkinGlobals
1C9284:  LDR             R1, [R1]
1C9286:  STR             R0, [R5,#(dword_6B728C - 0x6B7274)]
1C9288:  MOVW            R0, #0x400F
1C928C:  LDR.W           R1, [R1,#0x12C]
1C9290:  BLX             R1
1C9292:  MOVW            R1, #0x400F
1C9296:  STR             R0, [R5,#(dword_6B7284 - 0x6B7274)]
1C9298:  BLX             j___aeabi_memclr8_1
1C929C:  LDR             R1, [R5,#(dword_6B7284 - 0x6B7274)]
1C929E:  LDR             R0, [R5,#(dword_6B7294 - 0x6B7274)]
1C92A0:  ADDS            R1, #0xF
1C92A2:  BIC.W           R1, R1, #0xF
1C92A6:  STR             R1, [R5,#(dword_6B7280 - 0x6B7274)]
1C92A8:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C92B0)
1C92AA:  ADDS            R0, #1
1C92AC:  ADD             R1, PC; _rpSkinGlobals_ptr
1C92AE:  LDR             R1, [R1]; _rpSkinGlobals
1C92B0:  STR             R0, [R1,#(dword_6B7294 - 0x6B7274)]
1C92B2:  MOV             R0, R4
1C92B4:  ADD             SP, SP, #8
1C92B6:  POP             {R4,R5,R7,PC}
