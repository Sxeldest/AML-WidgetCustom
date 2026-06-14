; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c9SetupPedsEv
; Address            : 0x4499A8 - 0x4499FA
; =========================================================

4499A8:  PUSH            {R4,R5,R7,LR}
4499AA:  ADD             R7, SP, #8
4499AC:  MOV             R4, R0
4499AE:  LDR             R0, [R4,#0x30]
4499B0:  CBZ             R0, locret_4499F8
4499B2:  LDR             R0, =(g_interiorMan_ptr - 0x4499BC)
4499B4:  MOVW            R1, #(byte_99D8E6 - 0x999194); int
4499B8:  ADD             R0, PC; g_interiorMan_ptr
4499BA:  LDR             R0, [R0]; g_interiorMan
4499BC:  LDRB            R0, [R0,R1]
4499BE:  CMP             R0, #0
4499C0:  IT EQ
4499C2:  POPEQ           {R4,R5,R7,PC}
4499C4:  LDRB            R0, [R4,#0xE]
4499C6:  CMP             R0, #2
4499C8:  BEQ             loc_4499D8
4499CA:  CMP             R0, #1
4499CC:  BEQ             loc_4499EC
4499CE:  CBNZ            R0, loc_4499F2
4499D0:  MOV             R0, R4; this
4499D2:  BLX             j__ZN15InteriorGroup_c14SetupHousePedsEv; InteriorGroup_c::SetupHousePeds(void)
4499D6:  B               loc_4499F2
4499D8:  MOVS            R0, #(stderr+2); this
4499DA:  BLX             j__ZN10CStreaming21StreamPedsForInteriorEi; CStreaming::StreamPedsForInterior(int)
4499DE:  MOVS            R0, #0; this
4499E0:  MOVS            R5, #0
4499E2:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
4499E6:  STRB.W          R5, [R4,#0x36]
4499EA:  B               loc_4499F2
4499EC:  MOV             R0, R4; this
4499EE:  BLX             j__ZN15InteriorGroup_c13SetupShopPedsEv; InteriorGroup_c::SetupShopPeds(void)
4499F2:  MOVS            R0, #1
4499F4:  STRB.W          R0, [R4,#0xB9]
4499F8:  POP             {R4,R5,R7,PC}
