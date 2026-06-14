; =========================================================
; Game Engine Function: _ZN11FxManager_c15UnloadFxProjectEv
; Address            : 0x36D59C - 0x36D624
; =========================================================

36D59C:  PUSH            {R4-R7,LR}
36D59E:  ADD             R7, SP, #0xC
36D5A0:  PUSH.W          {R8}
36D5A4:  MOV             R4, R0
36D5A6:  LDR             R1, [R4,#0xC]; FxSystem_c *
36D5A8:  CBZ             R1, loc_36D5B8
36D5AA:  MOV             R0, R4; this
36D5AC:  LDR             R5, [R1,#4]
36D5AE:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
36D5B2:  CMP             R5, #0
36D5B4:  MOV             R1, R5
36D5B6:  BNE             loc_36D5AA
36D5B8:  MOV             R0, R4; this
36D5BA:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
36D5BE:  ADD.W           R0, R4, #0xAC; this
36D5C2:  BLX             j__ZN14FxMemoryPool_c5ResetEv; FxMemoryPool_c::Reset(void)
36D5C6:  ADD.W           R5, R4, #0x1C
36D5CA:  MOV             R0, R5; this
36D5CC:  BLX             j__ZN6List_c9RemoveAllEv; List_c::RemoveAll(void)
36D5D0:  MOVW            R0, #(elf_hash_bucket+0xE96C); this
36D5D4:  BLX             j__ZN14FxEmitterPrt_cnaEj; FxEmitterPrt_c::operator new[](uint)
36D5D8:  ADD.W           R8, R0, #8
36D5DC:  MOVS            R1, #0x3C ; '<'
36D5DE:  MOV.W           R2, #0x3E8
36D5E2:  MOVW            R6, #0xEA60
36D5E6:  STRD.W          R1, R2, [R0]
36D5EA:  MOV             R0, R8; this
36D5EC:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
36D5F0:  SUBS            R6, #0x3C ; '<'
36D5F2:  ADD.W           R0, R0, #0x3C ; '<'
36D5F6:  BNE             loc_36D5EC
36D5F8:  MOV             R0, R5; this
36D5FA:  MOV             R1, R8; ListItem_c *
36D5FC:  STR.W           R8, [R4,#0x18]
36D600:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
36D604:  MOVS            R6, #0
36D606:  MOVW            R8, #0xEA24
36D60A:  LDR             R0, [R4,#0x18]
36D60C:  ADD             R0, R6
36D60E:  ADD.W           R1, R0, #0x3C ; '<'; ListItem_c *
36D612:  MOV             R0, R5; this
36D614:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
36D618:  ADDS            R6, #0x3C ; '<'
36D61A:  CMP             R6, R8
36D61C:  BNE             loc_36D60A
36D61E:  POP.W           {R8}
36D622:  POP             {R4-R7,PC}
