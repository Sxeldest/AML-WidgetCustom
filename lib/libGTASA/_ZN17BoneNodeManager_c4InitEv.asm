; =========================================================
; Game Engine Function: _ZN17BoneNodeManager_c4InitEv
; Address            : 0x4D2634 - 0x4D265C
; =========================================================

4D2634:  PUSH            {R4-R7,LR}
4D2636:  ADD             R7, SP, #0xC
4D2638:  PUSH.W          {R11}
4D263C:  MOV             R4, R0
4D263E:  ADD.W           R5, R4, #0x4C00
4D2642:  MOVS            R6, #0
4D2644:  ADDS            R1, R4, R6; ListItem_c *
4D2646:  MOV             R0, R5; this
4D2648:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4D264C:  ADDS            R6, #0x98
4D264E:  CMP.W           R6, #0x4C00
4D2652:  BNE             loc_4D2644
4D2654:  MOVS            R0, #1
4D2656:  POP.W           {R11}
4D265A:  POP             {R4-R7,PC}
