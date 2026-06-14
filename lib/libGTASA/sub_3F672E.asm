; =========================================================
; Game Engine Function: sub_3F672E
; Address            : 0x3F672E - 0x3F673A
; =========================================================

3F672E:  LDR.W           R1, [R0,#0x3C8]
3F6732:  PUSH            {R1-R3,LR}
3F6734:  BLX             j__ZN9CTxdStore13FinishLoadTxdEiP8RwStream; CTxdStore::FinishLoadTxd(int,RwStream *)
3F6738:  POP             {R1-R3,PC}
