; =========================================================
; Game Engine Function: _ZN18CCustomRoadsignMgr10InitialiseEv
; Address            : 0x5A5740 - 0x5A578A
; =========================================================

5A5740:  PUSH            {R4,R6,R7,LR}
5A5742:  ADD             R7, SP, #8
5A5744:  ADR             R0, aParticle_6; "particle"
5A5746:  BLX.W           j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
5A574A:  MOV             R4, R0
5A574C:  BLX.W           j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
5A5750:  MOV             R0, R4; this
5A5752:  MOVS            R1, #0; int
5A5754:  BLX.W           j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
5A5758:  ADR             R0, aRoadsignfont; "roadsignfont"
5A575A:  MOVS            R1, #0; char *
5A575C:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5A5760:  LDR             R1, =(_ZN18CCustomRoadsignMgr11pCharsetTexE_ptr - 0x5A5766)
5A5762:  ADD             R1, PC; _ZN18CCustomRoadsignMgr11pCharsetTexE_ptr
5A5764:  LDR             R4, [R1]; CCustomRoadsignMgr::pCharsetTex ...
5A5766:  MOVW            R1, #0x3301
5A576A:  STRH.W          R1, [R0,#0x50]
5A576E:  STR             R0, [R4]; CCustomRoadsignMgr::pCharsetTex
5A5770:  BLX.W           j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
5A5774:  LDR             R0, [R4]; CCustomRoadsignMgr::pCharsetTex
5A5776:  MOVS            R1, #0
5A5778:  MOVS            R2, #2
5A577A:  LDR             R0, [R0]
5A577C:  BLX.W           j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
5A5780:  LDR             R1, =(dword_A26A7C - 0x5A5786)
5A5782:  ADD             R1, PC; dword_A26A7C
5A5784:  STR             R0, [R1]
5A5786:  MOVS            R0, #1
5A5788:  POP             {R4,R6,R7,PC}
