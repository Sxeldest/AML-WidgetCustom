; =========================================================
; Game Engine Function: _ZN17BoneNodeManager_c5ResetEv
; Address            : 0x4D2664 - 0x4D2690
; =========================================================

4D2664:  PUSH            {R4-R7,LR}
4D2666:  ADD             R7, SP, #0xC
4D2668:  PUSH.W          {R11}
4D266C:  MOV             R4, R0
4D266E:  ADD.W           R5, R4, #0x4C00
4D2672:  MOV             R0, R5; this
4D2674:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
4D2678:  MOVS            R6, #0
4D267A:  ADDS            R1, R4, R6; ListItem_c *
4D267C:  MOV             R0, R5; this
4D267E:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4D2682:  ADDS            R6, #0x98
4D2684:  CMP.W           R6, #0x4C00
4D2688:  BNE             loc_4D267A
4D268A:  POP.W           {R11}
4D268E:  POP             {R4-R7,PC}
