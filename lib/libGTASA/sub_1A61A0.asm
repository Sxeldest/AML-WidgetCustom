; =========================================================
; Game Engine Function: sub_1A61A0
; Address            : 0x1A61A0 - 0x1A61BC
; =========================================================

1A61A0:  PUSH            {R4,R5,R7,LR}
1A61A2:  ADD             R7, SP, #8
1A61A4:  LDR             R0, =(_ZN6CWorld15ms_aLodPtrListsE_ptr - 0x1A61AE)
1A61A6:  MOVW            R4, #0xE0C
1A61AA:  ADD             R0, PC; _ZN6CWorld15ms_aLodPtrListsE_ptr
1A61AC:  LDR             R5, [R0]; CWorld::ms_aLodPtrLists ...
1A61AE:  ADDS            R0, R5, R4; this
1A61B0:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
1A61B4:  SUBS            R4, #4
1A61B6:  ADDS            R0, R4, #4
1A61B8:  BNE             loc_1A61AE
1A61BA:  POP             {R4,R5,R7,PC}
