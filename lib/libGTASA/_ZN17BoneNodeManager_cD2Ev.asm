; =========================================================
; Game Engine Function: _ZN17BoneNodeManager_cD2Ev
; Address            : 0x4D2600 - 0x4D2634
; =========================================================

4D2600:  PUSH            {R4-R7,LR}; Alternative name is 'BoneNodeManager_c::~BoneNodeManager_c()'
4D2602:  ADD             R7, SP, #0xC
4D2604:  PUSH.W          {R11}
4D2608:  MOV             R4, R0
4D260A:  ADD.W           R0, R4, #0x4C00; this
4D260E:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4D2612:  MOV.W           R5, #0x4C00
4D2616:  ADDS            R6, R4, R5
4D2618:  SUB.W           R0, R6, #0x68 ; 'h'; this
4D261C:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4D2620:  SUB.W           R0, R6, #0x98; this
4D2624:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
4D2628:  SUBS            R5, #0x98
4D262A:  BNE             loc_4D2616
4D262C:  MOV             R0, R4
4D262E:  POP.W           {R11}
4D2632:  POP             {R4-R7,PC}
