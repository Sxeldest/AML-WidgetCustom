; =========================================================
; Game Engine Function: _ZN6CCheat24CountrysideInvasionCheatEv
; Address            : 0x2FE4B4 - 0x2FE56A
; =========================================================

2FE4B4:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FE4BC)
2FE4B6:  MOVS            R2, #0
2FE4B8:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FE4BA:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FE4BC:  LDRB.W          R1, [R0,#(byte_796847 - 0x7967F4)]
2FE4C0:  CMP             R1, #0
2FE4C2:  IT EQ
2FE4C4:  MOVEQ           R2, #1
2FE4C6:  STRB.W          R2, [R0,#(byte_796847 - 0x7967F4)]
2FE4CA:  IT NE
2FE4CC:  BXNE            LR
2FE4CE:  PUSH            {R7,LR}
2FE4D0:  MOV             R7, SP
2FE4D2:  SUB             SP, SP, #0x20 ; ' '
2FE4D4:  LDR             R0, =(unk_60FD88 - 0x2FE4DA)
2FE4D6:  ADD             R0, PC; unk_60FD88
2FE4D8:  VLD1.64         {D16-D17}, [R0]!
2FE4DC:  VLD1.64         {D18-D19}, [R0]
2FE4E0:  MOV             R0, SP; this
2FE4E2:  MOV             R1, R0
2FE4E4:  VST1.64         {D16-D17}, [R1]!; int *
2FE4E8:  VST1.64         {D18-D19}, [R1]
2FE4EC:  BLX             j__ZN10CStreaming25StreamPedsIntoRandomSlotsEPi; CStreaming::StreamPedsIntoRandomSlots(int *)
2FE4F0:  MOV.W           R0, #0xFFFFFFFF; int
2FE4F4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE4F8:  LDR.W           R0, [R0,#0x444]
2FE4FC:  ADR             R1, aTimberfawn; "timberfawn"
2FE4FE:  LDR             R2, =(aBask1 - 0x2FE508); "bask1"
2FE500:  MOVS            R3, #3; int
2FE502:  LDR             R0, [R0,#4]; this
2FE504:  ADD             R2, PC; "bask1"
2FE506:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
2FE50A:  MOV.W           R0, #0xFFFFFFFF; int
2FE50E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE512:  LDR.W           R0, [R0,#0x444]
2FE516:  ADR             R1, aCaptruck; "captruck"
2FE518:  MOVS            R3, #0x10; int
2FE51A:  MOV             R2, R1; char *
2FE51C:  LDR             R0, [R0,#4]; this
2FE51E:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
2FE522:  MOV.W           R0, #0xFFFFFFFF; int
2FE526:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE52A:  LDR.W           R0, [R0,#0x444]
2FE52E:  ADR             R1, aCountrytr; "countrytr"
2FE530:  MOVS            R3, #0x11; int
2FE532:  MOV             R2, R1; char *
2FE534:  LDR             R0, [R0,#4]; this
2FE536:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEPKcS1_i; CPedClothesDesc::SetTextureAndModel(char const*,char const*,int)
2FE53A:  MOV.W           R0, #0xFFFFFFFF; int
2FE53E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE542:  LDR.W           R0, [R0,#0x44C]
2FE546:  CMP             R0, #0x32 ; '2'
2FE548:  BEQ             loc_2FE558
2FE54A:  MOV.W           R0, #0xFFFFFFFF; int
2FE54E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE552:  MOVS            R1, #0; CPlayerPed *
2FE554:  BLX             j__ZN8CClothes13RebuildPlayerEP10CPlayerPedb; CClothes::RebuildPlayer(CPlayerPed *,bool)
2FE558:  MOVS            R0, #0x53 ; 'S'
2FE55A:  BLX             j__ZN6CCheat28ClearVehiclePopulationCheatsENS_6eCheatE; CCheat::ClearVehiclePopulationCheats(CCheat::eCheat)
2FE55E:  BLX             j__ZN10CStreaming20ReclassifyLoadedCarsEv; CStreaming::ReclassifyLoadedCars(void)
2FE562:  ADD             SP, SP, #0x20 ; ' '
2FE564:  POP.W           {R7,LR}
2FE568:  BX              LR
