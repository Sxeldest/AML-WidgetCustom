; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19LoadEnvironmentMapsEv
; Address            : 0x388DC0 - 0x388E08
; =========================================================

388DC0:  PUSH            {R4,R6,R7,LR}
388DC2:  ADD             R7, SP, #8
388DC4:  ADR             R0, aParticle; "particle"
388DC6:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
388DCA:  MOV             R4, R0
388DCC:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
388DD0:  MOV             R0, R4; this
388DD2:  MOVS            R1, #0; int
388DD4:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
388DD8:  LDR             R0, =(gpWhiteTexture_ptr - 0x388DDE)
388DDA:  ADD             R0, PC; gpWhiteTexture_ptr
388DDC:  LDR             R0, [R0]; gpWhiteTexture
388DDE:  LDR             R0, [R0]; this
388DE0:  CBZ             R0, loc_388DEA
388DE2:  POP.W           {R4,R6,R7,LR}
388DE6:  B.W             sub_1979CC
388DEA:  ADR             R0, aWhite_4; "white"
388DEC:  MOVS            R1, #0; char *
388DEE:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
388DF2:  LDR             R1, =(gpWhiteTexture_ptr - 0x388DF8)
388DF4:  ADD             R1, PC; gpWhiteTexture_ptr
388DF6:  LDR             R1, [R1]; gpWhiteTexture
388DF8:  STR             R0, [R1]
388DFA:  MOVS            R1, #2
388DFC:  STRB.W          R1, [R0,#0x50]
388E00:  POP.W           {R4,R6,R7,LR}
388E04:  B.W             sub_1979CC
