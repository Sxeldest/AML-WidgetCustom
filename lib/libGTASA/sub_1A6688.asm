; =========================================================
; Game Engine Function: sub_1A6688
; Address            : 0x1A6688 - 0x1A66FA
; =========================================================

1A6688:  PUSH            {R4,R5,R7,LR}
1A668A:  ADD             R7, SP, #8
1A668C:  LDR             R0, =(g_furnitureMan_ptr - 0x1A6692)
1A668E:  ADD             R0, PC; g_furnitureMan_ptr
1A6690:  LDR             R4, [R0]; g_furnitureMan
1A6692:  MOV             R0, R4; this
1A6694:  BLX             j__ZN18FurnitureManager_cC2Ev; FurnitureManager_c::FurnitureManager_c(void)
1A6698:  LDR             R0, =(_ZN18FurnitureManager_cD2Ev_ptr - 0x1A66A2)
1A669A:  MOV             R1, R4; obj
1A669C:  LDR             R2, =(unk_67A000 - 0x1A66A4)
1A669E:  ADD             R0, PC; _ZN18FurnitureManager_cD2Ev_ptr
1A66A0:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A66A2:  LDR             R0, [R0]; FurnitureManager_c::~FurnitureManager_c() ; lpfunc
1A66A4:  BLX             __cxa_atexit
1A66A8:  LDR             R0, =(g_subGroupStore_ptr - 0x1A66B0)
1A66AA:  MOVS            R4, #0
1A66AC:  ADD             R0, PC; g_subGroupStore_ptr
1A66AE:  LDR             R5, [R0]; g_subGroupStore
1A66B0:  ADDS            R0, R5, R4; this
1A66B2:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
1A66B6:  ADDS            R0, #0xC; this
1A66B8:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
1A66BC:  ADDS            R4, #0x1C
1A66BE:  CMP.W           R4, #0xE00
1A66C2:  BNE             loc_1A66B0
1A66C4:  LDR             R0, =(sub_1A6630+1 - 0x1A66D0)
1A66C6:  MOVS            R1, #0; obj
1A66C8:  LDR             R2, =(unk_67A000 - 0x1A66D2)
1A66CA:  MOVS            R4, #0
1A66CC:  ADD             R0, PC; sub_1A6630 ; lpfunc
1A66CE:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A66D0:  BLX             __cxa_atexit
1A66D4:  LDR             R0, =(g_furnitureStore_ptr - 0x1A66DA)
1A66D6:  ADD             R0, PC; g_furnitureStore_ptr
1A66D8:  LDR             R5, [R0]; g_furnitureStore
1A66DA:  ADDS            R0, R5, R4; this
1A66DC:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
1A66E0:  ADDS            R4, #0x14
1A66E2:  CMP.W           R4, #0x1400
1A66E6:  BNE             loc_1A66DA
1A66E8:  LDR             R0, =(sub_1A6664+1 - 0x1A66F2)
1A66EA:  MOVS            R1, #0; obj
1A66EC:  LDR             R2, =(unk_67A000 - 0x1A66F4)
1A66EE:  ADD             R0, PC; sub_1A6664 ; lpfunc
1A66F0:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A66F2:  POP.W           {R4,R5,R7,LR}
1A66F6:  B.W             j___cxa_atexit
