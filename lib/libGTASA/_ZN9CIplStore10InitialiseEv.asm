; =========================================================
; Game Engine Function: _ZN9CIplStore10InitialiseEv
; Address            : 0x280260 - 0x28032C
; =========================================================

280260:  PUSH            {R4-R7,LR}
280262:  ADD             R7, SP, #0xC
280264:  PUSH.W          {R11}
280268:  SUB             SP, SP, #0x18
28026A:  MOV             R4, SP
28026C:  BFC.W           R4, #0, #4
280270:  MOV             SP, R4
280272:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280280)
280274:  ADR             R1, dword_280330
280276:  VLD1.64         {D16-D17}, [R1@128]
28027A:  MOV             R2, SP
28027C:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28027E:  MOVS            R5, #0
280280:  LDR             R1, =(byte_6DFD9C - 0x280288)
280282:  LDR             R0, [R0]; CIplStore::ms_pPool ...
280284:  ADD             R1, PC; byte_6DFD9C
280286:  VST1.64         {D16-D17}, [R2@128,#0x28+var_28]
28028A:  LDR             R0, [R0]; CIplStore::ms_pPool
28028C:  STRB            R5, [R1]
28028E:  CBNZ            R0, loc_2802F8
280290:  MOVS            R0, #0x14; unsigned int
280292:  BLX             _Znwj; operator new(uint)
280296:  MOV             R4, R0
280298:  MOV.W           R0, #0x3400; unsigned int
28029C:  BLX             _Znaj; operator new[](uint)
2802A0:  STR             R0, [R4]
2802A2:  MOV.W           R0, #0x100; unsigned int
2802A6:  MOV.W           R6, #0x100
2802AA:  BLX             _Znaj; operator new[](uint)
2802AE:  MOVS            R1, #1
2802B0:  MOVS            R2, #0x80
2802B2:  STRB            R1, [R4,#0x10]
2802B4:  MOV.W           R1, #0xFFFFFFFF
2802B8:  STRD.W          R0, R6, [R4,#4]
2802BC:  STR             R1, [R4,#0xC]
2802BE:  LDRB            R1, [R0,#1]
2802C0:  STRB            R2, [R0]
2802C2:  ORR.W           R1, R1, #0x80
2802C6:  STRB            R1, [R0,#1]
2802C8:  LDR             R0, [R4,#4]
2802CA:  LDRB            R1, [R0,#1]
2802CC:  AND.W           R1, R1, #0x80
2802D0:  STRB            R1, [R0,#1]
2802D2:  MOVS            R0, #2
2802D4:  LDR             R1, [R4,#4]
2802D6:  LDRB            R2, [R1,R0]
2802D8:  ORR.W           R2, R2, #0x80
2802DC:  STRB            R2, [R1,R0]
2802DE:  LDR             R1, [R4,#4]; char *
2802E0:  LDRB            R2, [R1,R0]
2802E2:  AND.W           R2, R2, #0x80
2802E6:  STRB            R2, [R1,R0]
2802E8:  ADDS            R0, #1
2802EA:  CMP.W           R0, #0x100
2802EE:  BNE             loc_2802D4
2802F0:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x2802F6)
2802F2:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
2802F4:  LDR             R0, [R0]; CIplStore::ms_pPool ...
2802F6:  STR             R4, [R0]; CIplStore::ms_pPool
2802F8:  ADR             R0, aGeneric; "generic"
2802FA:  BLX             j__ZN9CIplStore10AddIplSlotEPKc; CIplStore::AddIplSlot(char const*)
2802FE:  MOVS            R0, #word_28; this
280300:  BLX             j__ZN13CQuadTreeNodenwEj; CQuadTreeNode::operator new(uint)
280304:  MOV             R1, SP
280306:  MOVS            R2, #3
280308:  BLX             j__ZN13CQuadTreeNodeC2ERK5CRecti; CQuadTreeNode::CQuadTreeNode(CRect const&,int)
28030C:  LDR             R1, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x280318)
28030E:  SUB.W           R4, R7, #-var_10
280312:  LDR             R2, =(dword_6DFDA0 - 0x28031C)
280314:  ADD             R1, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
280316:  LDR             R3, =(dword_6DFDA4 - 0x280320)
280318:  ADD             R2, PC; dword_6DFDA0
28031A:  LDR             R1, [R1]; CIplStore::ms_pQuadTree ...
28031C:  ADD             R3, PC; dword_6DFDA4
28031E:  STR             R5, [R2]
280320:  STR             R5, [R3]
280322:  STR             R0, [R1]; CIplStore::ms_pQuadTree
280324:  MOV             SP, R4
280326:  POP.W           {R11}
28032A:  POP             {R4-R7,PC}
