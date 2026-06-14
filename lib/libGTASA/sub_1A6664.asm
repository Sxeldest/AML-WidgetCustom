; =========================================================
; Game Engine Function: sub_1A6664
; Address            : 0x1A6664 - 0x1A6682
; =========================================================

1A6664:  PUSH            {R4,R5,R7,LR}
1A6666:  ADD             R7, SP, #8
1A6668:  LDR             R0, =(g_furnitureStore_ptr - 0x1A6672)
1A666A:  MOVW            R4, #0x13EC
1A666E:  ADD             R0, PC; g_furnitureStore_ptr
1A6670:  LDR             R5, [R0]; g_furnitureStore
1A6672:  ADDS            R0, R5, R4; this
1A6674:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
1A6678:  SUBS            R4, #0x14
1A667A:  ADDS.W          R0, R4, #0x14
1A667E:  BNE             loc_1A6672
1A6680:  POP             {R4,R5,R7,PC}
