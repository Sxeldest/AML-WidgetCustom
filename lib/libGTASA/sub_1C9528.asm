; =========================================================
; Game Engine Function: sub_1C9528
; Address            : 0x1C9528 - 0x1C958A
; =========================================================

1C9528:  PUSH            {R4,R5,R7,LR}
1C952A:  ADD             R7, SP, #8
1C952C:  MOV             R4, R0
1C952E:  MOV.W           R0, #0x120; unsigned int
1C9532:  BLX             j__Z23RwEngineGetPluginOffsetj; RwEngineGetPluginOffset(uint)
1C9536:  ADDS            R0, #1
1C9538:  BEQ             loc_1C954E
1C953A:  MOV.W           R0, #0x120; unsigned int
1C953E:  BLX             j__Z23RpAtomicGetPluginOffsetj; RpAtomicGetPluginOffset(uint)
1C9542:  LDRB            R0, [R4,R0]
1C9544:  MOVS            R5, #2
1C9546:  CMP             R0, #0
1C9548:  IT EQ
1C954A:  MOVEQ           R5, #1
1C954C:  B               loc_1C9550
1C954E:  MOVS            R5, #1
1C9550:  LDR             R0, [R4,#0x18]
1C9552:  CBZ             R0, loc_1C9586
1C9554:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C955A)
1C9556:  ADD             R1, PC; _rpSkinGlobals_ptr
1C9558:  LDR             R1, [R1]; _rpSkinGlobals
1C955A:  LDR             R1, [R1,#(dword_6B727C - 0x6B7274)]
1C955C:  LDR             R0, [R0,R1]
1C955E:  CBZ             R0, loc_1C9586
1C9560:  MOV.W           R0, #0x120; unsigned int
1C9564:  BLX             j__Z23RwEngineGetPluginOffsetj; RwEngineGetPluginOffset(uint)
1C9568:  CMP             R5, #2
1C956A:  IT EQ
1C956C:  ADDSEQ.W        R0, R0, #1
1C9570:  BNE             loc_1C9576
1C9572:  MOVS            R5, #1
1C9574:  B               loc_1C957E
1C9576:  MOV.W           R0, #0x12E; unsigned int
1C957A:  BLX             j__Z23RwEngineGetPluginOffsetj; RwEngineGetPluginOffset(uint)
1C957E:  MOV             R0, R4
1C9580:  MOV             R1, R5
1C9582:  BLX             j__Z22_rpSkinPipelinesAttachP8RpAtomic10RpSkinType; _rpSkinPipelinesAttach(RpAtomic *,RpSkinType)
1C9586:  MOVS            R0, #1
1C9588:  POP             {R4,R5,R7,PC}
