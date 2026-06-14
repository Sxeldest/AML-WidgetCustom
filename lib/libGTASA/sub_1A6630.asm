; =========================================================
; Game Engine Function: sub_1A6630
; Address            : 0x1A6630 - 0x1A665E
; =========================================================

1A6630:  PUSH            {R4-R7,LR}
1A6632:  ADD             R7, SP, #0xC
1A6634:  PUSH.W          {R11}
1A6638:  LDR             R0, =(g_subGroupStore_ptr - 0x1A6642)
1A663A:  MOV.W           R4, #0xE00
1A663E:  ADD             R0, PC; g_subGroupStore_ptr
1A6640:  LDR             R5, [R0]; g_subGroupStore
1A6642:  ADDS            R6, R5, R4
1A6644:  SUB.W           R0, R6, #0x10; this
1A6648:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
1A664C:  SUB.W           R0, R6, #0x1C; this
1A6650:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
1A6654:  SUBS            R4, #0x1C
1A6656:  BNE             loc_1A6642
1A6658:  POP.W           {R11}
1A665C:  POP             {R4-R7,PC}
