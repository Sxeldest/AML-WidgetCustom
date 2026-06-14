; =========================================================
; Game Engine Function: _ZN12CMenuManager15LoadAllTexturesEv
; Address            : 0x42E5AC - 0x42E7DE
; =========================================================

42E5AC:  PUSH            {R4-R7,LR}
42E5AE:  ADD             R7, SP, #0xC
42E5B0:  PUSH.W          {R8,R9,R11}
42E5B4:  MOV             R8, R0
42E5B6:  LDRB.W          R0, [R8,#0x120]; this
42E5BA:  CMP             R0, #0
42E5BC:  ITT NE
42E5BE:  POPNE.W         {R8,R9,R11}
42E5C2:  POPNE           {R4-R7,PC}
42E5C4:  BLX             j__ZN6CTimer4StopEv; CTimer::Stop(void)
42E5C8:  MOV.W           R0, #(elf_hash_chain+0x10E98); this
42E5CC:  BLX             j__ZN10CStreaming12MakeSpaceForEi; CStreaming::MakeSpaceFor(int)
42E5D0:  BLX             j__ZN10CStreaming25ImGonnaUseStreamingMemoryEv; CStreaming::ImGonnaUseStreamingMemory(void)
42E5D4:  MOVS            R0, #0; this
42E5D6:  MOVS            R1, #1; bool
42E5D8:  BLX             j__ZN5CGame12TidyUpMemoryEbb; CGame::TidyUpMemory(bool,bool)
42E5DC:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
42E5E0:  LDR             R0, =(aFrontend1 - 0x42E5E6); "frontend1"
42E5E2:  ADD             R0, PC; "frontend1"
42E5E4:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
42E5E8:  MOV             R5, R0
42E5EA:  ADDS            R0, R5, #1
42E5EC:  BNE             loc_42E5FC
42E5EE:  LDR             R0, =(aFrontend1 - 0x42E5F8); "frontend1"
42E5F0:  ADR             R1, off_42E7E8; char *
42E5F2:  MOVS            R2, #0; char *
42E5F4:  ADD             R0, PC; "frontend1"
42E5F6:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
42E5FA:  MOV             R5, R0
42E5FC:  ADR             R1, aModelsFronten1; "MODELS\\FRONTEN1.TXD"
42E5FE:  MOV             R0, R5; this
42E600:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
42E604:  MOV             R0, R5; this
42E606:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
42E60A:  MOV             R0, R5; this
42E60C:  MOVS            R1, #0; int
42E60E:  MOVS            R6, #0
42E610:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
42E614:  LDR             R0, =(FrontEndFilenames_ptr - 0x42E61E)
42E616:  ADD.W           R9, R8, #0xBC
42E61A:  ADD             R0, PC; FrontEndFilenames_ptr
42E61C:  LDR             R4, [R0]; FrontEndFilenames
42E61E:  ADD.W           R0, R4, R6,LSL#1
42E622:  LDR.W           R1, [R4,R6,LSL#1]; char *
42E626:  ADD.W           R5, R9, R6
42E62A:  LDR             R2, [R0,#4]; char *
42E62C:  MOV             R0, R5; this
42E62E:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E632:  MOV             R0, R5
42E634:  MOVS            R1, #3
42E636:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E63A:  ADDS            R6, #4
42E63C:  CMP             R6, #0x34 ; '4'
42E63E:  BNE             loc_42E61E
42E640:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
42E644:  BLX             j__ZN10CStreaming24IHaveUsedStreamingMemoryEv; CStreaming::IHaveUsedStreamingMemory(void)
42E648:  MOV.W           R0, #(elf_hash_bucket+0x2F04); this
42E64C:  BLX             j__ZN10CStreaming12MakeSpaceForEi; CStreaming::MakeSpaceFor(int)
42E650:  BLX             j__ZN10CStreaming25ImGonnaUseStreamingMemoryEv; CStreaming::ImGonnaUseStreamingMemory(void)
42E654:  MOVS            R0, #0; this
42E656:  MOVS            R1, #1; bool
42E658:  BLX             j__ZN5CGame12TidyUpMemoryEbb; CGame::TidyUpMemory(bool,bool)
42E65C:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
42E660:  LDR             R0, =(aFrontendPc - 0x42E666); "frontend_pc"
42E662:  ADD             R0, PC; "frontend_pc"
42E664:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
42E668:  MOV             R5, R0
42E66A:  ADDS            R0, R5, #1
42E66C:  BNE             loc_42E67C
42E66E:  LDR             R0, =(aFrontendPc - 0x42E678); "frontend_pc"
42E670:  ADR             R1, off_42E7E8; char *
42E672:  MOVS            R2, #0; char *
42E674:  ADD             R0, PC; "frontend_pc"
42E676:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
42E67A:  MOV             R5, R0
42E67C:  ADR             R1, aModelsFrontenP; "MODELS/FRONTEN_pc.TXD"
42E67E:  MOV             R0, R5; this
42E680:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
42E684:  MOV             R0, R5; this
42E686:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
42E68A:  MOV             R0, R5; this
42E68C:  MOVS            R1, #0; int
42E68E:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
42E692:  LDR             R0, =(FrontEndFilenames_ptr - 0x42E69C)
42E694:  ADD.W           R5, R8, #0x118
42E698:  ADD             R0, PC; FrontEndFilenames_ptr
42E69A:  LDR             R4, [R0]; FrontEndFilenames
42E69C:  MOV             R0, R5; this
42E69E:  LDRD.W          R1, R2, [R4,#(off_6AB450 - 0x6AB398)]; "mouse"
42E6A2:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E6A6:  MOV             R0, R5
42E6A8:  MOVS            R1, #3
42E6AA:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E6AE:  ADD.W           R5, R8, #0x11C
42E6B2:  LDRD.W          R1, R2, [R4,#(off_6AB458 - 0x6AB398)]; "crosshair"
42E6B6:  MOV             R0, R5; this
42E6B8:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E6BC:  MOV             R0, R5
42E6BE:  MOVS            R1, #3
42E6C0:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E6C4:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
42E6C8:  BLX             j__ZN10CStreaming24IHaveUsedStreamingMemoryEv; CStreaming::IHaveUsedStreamingMemory(void)
42E6CC:  MOV.W           R0, #stru_4BFF8.st_size; this
42E6D0:  BLX             j__ZN10CStreaming12MakeSpaceForEi; CStreaming::MakeSpaceFor(int)
42E6D4:  BLX             j__ZN10CStreaming25ImGonnaUseStreamingMemoryEv; CStreaming::ImGonnaUseStreamingMemory(void)
42E6D8:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
42E6DC:  LDR             R0, =(aFrontend2 - 0x42E6E2); "frontend2"
42E6DE:  ADD             R0, PC; "frontend2"
42E6E0:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
42E6E4:  MOV             R5, R0
42E6E6:  ADDS            R0, R5, #1
42E6E8:  BNE             loc_42E6F8
42E6EA:  LDR             R0, =(aFrontend2 - 0x42E6F4); "frontend2"
42E6EC:  ADR             R1, off_42E7E8; char *
42E6EE:  MOVS            R2, #0; char *
42E6F0:  ADD             R0, PC; "frontend2"
42E6F2:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
42E6F6:  MOV             R5, R0
42E6F8:  ADR             R1, aModelsFronten2; "MODELS\\FRONTEN2.TXD"
42E6FA:  MOV             R0, R5; this
42E6FC:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
42E700:  MOV             R0, R5; this
42E702:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
42E706:  MOV             R0, R5; this
42E708:  MOVS            R1, #0; int
42E70A:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
42E70E:  LDR             R0, =(FrontEndFilenames_ptr - 0x42E718)
42E710:  ADD.W           R5, R8, #0xF0
42E714:  ADD             R0, PC; FrontEndFilenames_ptr
42E716:  LDR             R6, [R0]; FrontEndFilenames
42E718:  MOV             R0, R5; this
42E71A:  LDRD.W          R1, R2, [R6,#(off_6AB400 - 0x6AB398)]; "back2" ...
42E71E:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E722:  MOV             R0, R5
42E724:  MOVS            R1, #3
42E726:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E72A:  ADD.W           R5, R8, #0xF4
42E72E:  LDRD.W          R1, R2, [R6,#(off_6AB408 - 0x6AB398)]; "back3" ...
42E732:  MOV             R0, R5; this
42E734:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E738:  MOV             R0, R5
42E73A:  MOVS            R1, #3
42E73C:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E740:  ADD.W           R5, R8, #0xF8
42E744:  LDRD.W          R1, R2, [R6,#(off_6AB410 - 0x6AB398)]; "back4" ...
42E748:  MOV             R0, R5; this
42E74A:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E74E:  MOV             R0, R5
42E750:  MOVS            R1, #3
42E752:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E756:  ADD.W           R5, R8, #0xFC
42E75A:  LDRD.W          R1, R2, [R6,#(off_6AB418 - 0x6AB398)]; "back5" ...
42E75E:  MOV             R0, R5; this
42E760:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E764:  MOV             R0, R5
42E766:  MOVS            R1, #3
42E768:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E76C:  ADD.W           R5, R8, #0x100
42E770:  LDRD.W          R1, R2, [R6,#(off_6AB420 - 0x6AB398)]; "back6" ...
42E774:  MOV             R0, R5; this
42E776:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E77A:  MOV             R0, R5
42E77C:  MOVS            R1, #3
42E77E:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E782:  ADD.W           R5, R8, #0x104
42E786:  LDRD.W          R1, R2, [R6,#(off_6AB428 - 0x6AB398)]; "back7" ...
42E78A:  MOV             R0, R5; this
42E78C:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E790:  MOV             R0, R5
42E792:  MOVS            R1, #3
42E794:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E798:  ADD.W           R5, R8, #0x108
42E79C:  LDRD.W          R1, R2, [R6,#(off_6AB430 - 0x6AB398)]; "back8" ...
42E7A0:  MOV             R0, R5; this
42E7A2:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E7A6:  MOV             R0, R5
42E7A8:  MOVS            R1, #3
42E7AA:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E7AE:  ADD.W           R5, R8, #0x10C
42E7B2:  LDRD.W          R1, R2, [R6,#(off_6AB438 - 0x6AB398)]; "map" ...
42E7B6:  MOV             R0, R5; this
42E7B8:  BLX             j__ZN9CSprite2d10SetTextureEPcS0_; CSprite2d::SetTexture(char *,char *)
42E7BC:  MOV             R0, R5
42E7BE:  MOVS            R1, #3
42E7C0:  BLX             j__ZN9CSprite2d13SetAddressingE20RwTextureAddressMode; CSprite2d::SetAddressing(RwTextureAddressMode)
42E7C4:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
42E7C8:  BLX             j__ZN10CStreaming24IHaveUsedStreamingMemoryEv; CStreaming::IHaveUsedStreamingMemory(void)
42E7CC:  MOVS            R0, #(stderr+1); this
42E7CE:  STRB.W          R0, [R8,#0x120]
42E7D2:  POP.W           {R8,R9,R11}
42E7D6:  POP.W           {R4-R7,LR}
42E7DA:  B.W             j_j__ZN6CTimer6UpdateEv; j_CTimer::Update(void)
