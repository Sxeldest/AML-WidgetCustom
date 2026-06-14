; =========================================================
; Game Engine Function: sub_1C9590
; Address            : 0x1C9590 - 0x1C95E0
; =========================================================

1C9590:  PUSH            {R4,R5,R7,LR}
1C9592:  ADD             R7, SP, #8
1C9594:  MOV             R5, R0
1C9596:  MOV             R4, R3
1C9598:  LDR             R0, [R5,#0x18]
1C959A:  CBZ             R0, loc_1C95DC
1C959C:  LDR             R1, =(_rpSkinGlobals_ptr - 0x1C95A2)
1C959E:  ADD             R1, PC; _rpSkinGlobals_ptr
1C95A0:  LDR             R1, [R1]; _rpSkinGlobals
1C95A2:  LDR             R1, [R1,#(dword_6B727C - 0x6B7274)]
1C95A4:  LDR             R0, [R0,R1]
1C95A6:  CBZ             R0, loc_1C95DC
1C95A8:  MOV.W           R0, #0x120; unsigned int
1C95AC:  BLX             j__Z23RwEngineGetPluginOffsetj; RwEngineGetPluginOffset(uint)
1C95B0:  CMP             R4, #2
1C95B2:  IT EQ
1C95B4:  ADDSEQ.W        R0, R0, #1
1C95B8:  BNE             loc_1C95BE
1C95BA:  MOVS            R4, #1
1C95BC:  B               loc_1C95D4
1C95BE:  MOV.W           R0, #0x12E; unsigned int
1C95C2:  BLX             j__Z23RwEngineGetPluginOffsetj; RwEngineGetPluginOffset(uint)
1C95C6:  EOR.W           R1, R4, #3
1C95CA:  ORN.W           R0, R1, R0
1C95CE:  CMP             R0, #0
1C95D0:  IT EQ
1C95D2:  MOVEQ           R4, #1
1C95D4:  MOV             R0, R5
1C95D6:  MOV             R1, R4
1C95D8:  BLX             j__Z22_rpSkinPipelinesAttachP8RpAtomic10RpSkinType; _rpSkinPipelinesAttach(RpAtomic *,RpSkinType)
1C95DC:  MOVS            R0, #1
1C95DE:  POP             {R4,R5,R7,PC}
