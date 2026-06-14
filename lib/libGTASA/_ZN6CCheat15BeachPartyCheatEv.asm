; =========================================================
; Game Engine Function: _ZN6CCheat15BeachPartyCheatEv
; Address            : 0x2FDD1C - 0x2FDDF0
; =========================================================

2FDD1C:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FDD24)
2FDD1E:  MOVS            R2, #0
2FDD20:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FDD22:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FDD24:  LDRB.W          R1, [R0,#(byte_796825 - 0x7967F4)]
2FDD28:  CMP             R1, #0
2FDD2A:  IT EQ
2FDD2C:  MOVEQ           R2, #1
2FDD2E:  STRB.W          R2, [R0,#(byte_796825 - 0x7967F4)]
2FDD32:  IT NE
2FDD34:  BXNE            LR
2FDD36:  PUSH            {R7,LR}
2FDD38:  MOV             R7, SP
2FDD3A:  SUB             SP, SP, #0x20 ; ' '
2FDD3C:  LDR             R0, =(unk_60FCE8 - 0x2FDD42)
2FDD3E:  ADD             R0, PC; unk_60FCE8
2FDD40:  VLD1.64         {D16-D17}, [R0]!
2FDD44:  VLD1.64         {D18-D19}, [R0]
2FDD48:  MOV             R0, SP; this
2FDD4A:  MOV             R1, R0
2FDD4C:  VST1.64         {D16-D17}, [R1]!; int *
2FDD50:  VST1.64         {D18-D19}, [R1]
2FDD54:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
2FDD58:  MOV.W           R0, #0xFFFFFFFF; int
2FDD5C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDD60:  LDR.W           R0, [R0,#0x444]
2FDD64:  MOVS            R2, #0; char *
2FDD66:  LDR             R1, =(aPlayerTorso+7 - 0x2FDD70); "torso"
2FDD68:  MOVS            R3, #0; int
2FDD6A:  LDR             R0, [R0,#4]; this
2FDD6C:  ADD             R1, PC; CKeyGen *
2FDD6E:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
2FDD72:  MOV.W           R0, #0xFFFFFFFF; int
2FDD76:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDD7A:  LDR.W           R0, [R0,#0x444]
2FDD7E:  ADR             R1, aShortskhaki; "shortskhaki"
2FDD80:  ADR             R2, aShorts; "shorts"
2FDD82:  MOVS            R3, #2; int
2FDD84:  LDR             R0, [R0,#4]; this
2FDD86:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
2FDD8A:  MOV.W           R0, #0xFFFFFFFF; int
2FDD8E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDD92:  LDR.W           R0, [R0,#0x444]
2FDD96:  ADR             R1, aFlipflop; "flipflop"
2FDD98:  MOVS            R3, #3; int
2FDD9A:  MOV             R2, R1; char *
2FDD9C:  LDR             R0, [R0,#4]; this
2FDD9E:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
2FDDA2:  MOV.W           R0, #0xFFFFFFFF; int
2FDDA6:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDDAA:  LDR.W           R0, [R0,#0x444]
2FDDAE:  ADR             R1, aGlasses04dark; "glasses04dark"
2FDDB0:  ADR             R2, aGlasses04; "glasses04"
2FDDB2:  MOVS            R3, #0xF; int
2FDDB4:  LDR             R0, [R0,#4]; this
2FDDB6:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
2FDDBA:  MOV.W           R0, #0xFFFFFFFF; int
2FDDBE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDDC2:  LDR.W           R0, [R0,#0x44C]
2FDDC6:  CMP             R0, #0x32 ; '2'
2FDDC8:  BEQ             loc_2FDDD8
2FDDCA:  MOV.W           R0, #0xFFFFFFFF; int
2FDDCE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FDDD2:  MOVS            R1, #0; CPlayerPed *
2FDDD4:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
2FDDD8:  MOVS            R0, #0; this
2FDDDA:  BLX             j__ZN8CWeather15ForceWeatherNowEs; CWeather::ForceWeatherNow(short)
2FDDDE:  MOVS            R0, #0x31 ; '1'
2FDDE0:  BLX             j__ZN6CCheat28ClearVehiclePopulationCheatsENS_6eCheatE; CCheat::ClearVehiclePopulationCheats(CCheat::eCheat)
2FDDE4:  BLX             j__ZN10CStreaming20ReclassifyLoadedCarsEv; CStreaming::ReclassifyLoadedCars(void)
2FDDE8:  ADD             SP, SP, #0x20 ; ' '
2FDDEA:  POP.W           {R7,LR}
2FDDEE:  BX              LR
