; =========================================================
; Game Engine Function: _ZN11CPlayerSkin10InitialiseEv
; Address            : 0x5B1118 - 0x5B113C
; =========================================================

5B1118:  PUSH            {R4,R6,R7,LR}
5B111A:  ADD             R7, SP, #8
5B111C:  ADR             R0, aSkin; "skin"
5B111E:  ADR             R1, aPlayer_4; "player"
5B1120:  MOVS            R2, #0; char *
5B1122:  BLX.W           j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
5B1126:  LDR             R1, =(_ZN11CPlayerSkin9m_txdSlotE_ptr - 0x5B112C)
5B1128:  ADD             R1, PC; _ZN11CPlayerSkin9m_txdSlotE_ptr ; int
5B112A:  LDR             R4, [R1]; CPlayerSkin::m_txdSlot ...
5B112C:  STR             R0, [R4]; CPlayerSkin::m_txdSlot
5B112E:  BLX.W           j__ZN9CTxdStore6CreateEi; CTxdStore::Create(int)
5B1132:  LDR             R0, [R4]; this
5B1134:  POP.W           {R4,R6,R7,LR}
5B1138:  B.W             j_j__ZN9CTxdStore6AddRefEi; j_CTxdStore::AddRef(int)
