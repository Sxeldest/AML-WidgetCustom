; =========================================================
; Game Engine Function: _ZN7CClouds4InitEv
; Address            : 0x59E660 - 0x59E710
; =========================================================

59E660:  PUSH            {R4,R5,R7,LR}
59E662:  ADD             R7, SP, #8
59E664:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
59E668:  ADR             R0, aParticle_4; "particle"
59E66A:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
59E66E:  MOVS            R1, #0; int
59E670:  MOVS            R4, #0
59E672:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
59E676:  ADR             R0, aCloud1; "cloud1"
59E678:  MOVS            R1, #0; char *
59E67A:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
59E67E:  LDR             R1, =(gpCloudTex_ptr - 0x59E684)
59E680:  ADD             R1, PC; gpCloudTex_ptr
59E682:  LDR             R5, [R1]; gpCloudTex
59E684:  MOVS            R1, #0; char *
59E686:  STR             R0, [R5]
59E688:  ADR             R0, aCloudmasked; "cloudmasked"
59E68A:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
59E68E:  STR             R0, [R5,#(dword_A23DEC - 0xA23DE8)]
59E690:  ADR             R0, aLunar; "lunar"
59E692:  ADR             R1, aLunarm; "lunarm"
59E694:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
59E698:  LDR             R1, =(gpMoonMask_ptr - 0x59E69E)
59E69A:  ADD             R1, PC; gpMoonMask_ptr
59E69C:  LDR             R1, [R1]; gpMoonMask
59E69E:  STR             R0, [R1]
59E6A0:  ADR             R0, aCloudhigh; "cloudhigh"
59E6A2:  ADR             R1, aCloudhighm; "cloudhighm"
59E6A4:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
59E6A8:  LDR             R1, =(_ZN7CClouds5ms_vcE_ptr - 0x59E6B2)
59E6AA:  MOVW            R2, #(dword_A25340 - 0xA23E28)
59E6AE:  ADD             R1, PC; _ZN7CClouds5ms_vcE_ptr
59E6B0:  LDR             R1, [R1]; CClouds::ms_vc ...
59E6B2:  STR             R0, [R1,R2]
59E6B4:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
59E6B8:  LDR             R0, =(_ZN7CClouds13CloudRotationE_ptr - 0x59E6BE)
59E6BA:  ADD             R0, PC; _ZN7CClouds13CloudRotationE_ptr
59E6BC:  LDR             R0, [R0]; this
59E6BE:  STR             R4, [R0]; CClouds::CloudRotation
59E6C0:  BLX.W           j__ZN7CClouds20VolumetricCloudsInitEv; CClouds::VolumetricCloudsInit(void)
59E6C4:  LDR             R0, =(_ZN7CClouds5ms_mfE_ptr - 0x59E6D4)
59E6C6:  ADR             R1, dword_59E710
59E6C8:  VLD1.64         {D18-D19}, [R1@128]
59E6CC:  VMOV.I32        Q8, #0
59E6D0:  ADD             R0, PC; _ZN7CClouds5ms_mfE_ptr
59E6D2:  MOVS            R2, #2
59E6D4:  LDR             R0, [R0]; CClouds::ms_mf ...
59E6D6:  ADD.W           R1, R0, #0x5E8
59E6DA:  VST1.32         {D18-D19}, [R1]
59E6DE:  ADD.W           R1, R0, #0x20 ; ' '
59E6E2:  VST1.32         {D16-D17}, [R1]
59E6E6:  MOVS            R1, #3
59E6E8:  STR.W           R2, [R0,#(dword_A25AC8 - 0xA254D0)]
59E6EC:  STR.W           R1, [R0,#(dword_A25ACC - 0xA254D0)]
59E6F0:  MOV             R1, #0x3D75C28F
59E6F8:  STR.W           R1, [R0,#(dword_A259B4 - 0xA254D0)]
59E6FC:  STR.W           R1, [R0,#(dword_A259B8 - 0xA254D0)]
59E700:  STR.W           R4, [R0,#(dword_A259BC - 0xA254D0)]
59E704:  STRH            R4, [R0,#(word_A25500 - 0xA254D0)]
59E706:  VST1.32         {D16-D17}, [R0]!
59E70A:  VST1.32         {D16-D17}, [R0]
59E70E:  POP             {R4,R5,R7,PC}
