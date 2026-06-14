; =========================================================
; Game Engine Function: _ZN11CPlayerSkin8ShutdownEv
; Address            : 0x5B1150 - 0x5B115C
; =========================================================

5B1150:  LDR             R0, =(_ZN11CPlayerSkin9m_txdSlotE_ptr - 0x5B1156)
5B1152:  ADD             R0, PC; _ZN11CPlayerSkin9m_txdSlotE_ptr
5B1154:  LDR             R0, [R0]; CPlayerSkin::m_txdSlot ...
5B1156:  LDR             R0, [R0]; this
5B1158:  B.W             j_j__ZN9CTxdStore13RemoveTxdSlotEi; j_CTxdStore::RemoveTxdSlot(int)
