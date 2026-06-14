; =========================================================
; Game Engine Function: _ZN8CCoronas4InitEv
; Address            : 0x5A37D0 - 0x5A3842
; =========================================================

5A37D0:  PUSH            {R4-R7,LR}
5A37D2:  ADD             R7, SP, #0xC
5A37D4:  PUSH.W          {R8}
5A37D8:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5A37DC:  ADR             R0, aParticle_5; "particle"
5A37DE:  BLX.W           j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5A37E2:  MOVS            R1, #0; int
5A37E4:  MOVS            R4, #0
5A37E6:  BLX.W           j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5A37EA:  LDR             R0, =(gpCoronaTexture_ptr - 0x5A37F2)
5A37EC:  LDR             R6, =(aCoronastar - 0x5A37F8); "coronastar"
5A37EE:  ADD             R0, PC; gpCoronaTexture_ptr
5A37F0:  LDR.W           R8, =(unk_6B1B34 - 0x5A37FC)
5A37F4:  ADD             R6, PC; "coronastar"
5A37F6:  LDR             R5, [R0]; gpCoronaTexture
5A37F8:  ADD             R8, PC; unk_6B1B34
5A37FA:  LDR             R0, [R5]
5A37FC:  CBNZ            R0, loc_5A380E
5A37FE:  LDRB            R0, [R6,R4]
5A3800:  CBZ             R0, loc_5A380E
5A3802:  ADDS            R0, R6, R4; char *
5A3804:  ADD.W           R1, R8, R4; char *
5A3808:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5A380C:  STR             R0, [R5]
5A380E:  ADDS            R4, #0x1A
5A3810:  ADDS            R5, #4
5A3812:  CMP.W           R4, #0x104
5A3816:  BNE             loc_5A37FA
5A3818:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
5A381C:  LDR             R1, =(_ZN8CCoronas8aCoronasE_ptr - 0x5A3826)
5A381E:  MOVS            R0, #0
5A3820:  MOVS            R2, #0
5A3822:  ADD             R1, PC; _ZN8CCoronas8aCoronasE_ptr
5A3824:  LDR             R1, [R1]; CCoronas::aCoronas ...
5A3826:  ADDS            R3, R1, R2
5A3828:  ADDS            R2, #0x3C ; '<'
5A382A:  CMP.W           R2, #0xF00
5A382E:  STR             R0, [R3,#0xC]
5A3830:  BNE             loc_5A3826
5A3832:  LDR             R0, =(_ZN8CCoronas10NumCoronasE_ptr - 0x5A383A)
5A3834:  MOVS            R1, #0
5A3836:  ADD             R0, PC; _ZN8CCoronas10NumCoronasE_ptr
5A3838:  LDR             R0, [R0]; CCoronas::NumCoronas ...
5A383A:  STR             R1, [R0]; CCoronas::NumCoronas
5A383C:  POP.W           {R8}
5A3840:  POP             {R4-R7,PC}
