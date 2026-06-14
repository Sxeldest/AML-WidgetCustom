; =========================================================
; Game Engine Function: _ZN10CSkidmarks4InitEv
; Address            : 0x5BE718 - 0x5BE786
; =========================================================

5BE718:  PUSH            {R4,R6,R7,LR}
5BE71A:  ADD             R7, SP, #8
5BE71C:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5BE720:  ADR             R0, aParticle_7; "particle"
5BE722:  BLX.W           j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5BE726:  MOVS            R1, #0; int
5BE728:  MOVS            R4, #0
5BE72A:  BLX.W           j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5BE72E:  ADR             R0, aParticleskid; "particleskid"
5BE730:  MOVS            R1, #0; char *
5BE732:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5BE736:  LDR             R1, =(dword_A5626C - 0x5BE73C)
5BE738:  ADD             R1, PC; dword_A5626C
5BE73A:  STR             R0, [R1]
5BE73C:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
5BE740:  LDR             R0, =(_ZN10CSkidmarks10aSkidmarksE_ptr - 0x5BE748)
5BE742:  MOVS            R1, #0
5BE744:  ADD             R0, PC; _ZN10CSkidmarks10aSkidmarksE_ptr
5BE746:  LDR             R0, [R0]; CSkidmarks::aSkidmarks ...
5BE748:  ADDS            R2, R0, R1
5BE74A:  ADD.W           R1, R1, #0x158
5BE74E:  CMP.W           R1, #0x2B00
5BE752:  STRH.W          R4, [R2,#0x156]
5BE756:  BNE             loc_5BE748
5BE758:  LDR.W           R12, =(unk_A56270 - 0x5BE764)
5BE75C:  MOVS            R0, #0
5BE75E:  MOVS            R1, #3
5BE760:  ADD             R12, PC; unk_A56270
5BE762:  SUBS            R3, R1, #3
5BE764:  STRH.W          R3, [R12,R0]
5BE768:  ADD.W           R3, R12, R0
5BE76C:  SUBS            R4, R1, #1
5BE76E:  ADDS            R0, #0xC
5BE770:  STRH            R4, [R3,#2]
5BE772:  SUBS            R2, R1, #2
5BE774:  STRH            R2, [R3,#4]
5BE776:  CMP             R0, #0xC0
5BE778:  STRH            R2, [R3,#6]
5BE77A:  STRH            R4, [R3,#8]
5BE77C:  STRH            R1, [R3,#0xA]
5BE77E:  ADD.W           R1, R1, #2
5BE782:  BNE             loc_5BE762
5BE784:  POP             {R4,R6,R7,PC}
