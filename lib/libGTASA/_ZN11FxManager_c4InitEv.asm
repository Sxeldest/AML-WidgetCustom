; =========================================================
; Game Engine Function: _ZN11FxManager_c4InitEv
; Address            : 0x36D066 - 0x36D11A
; =========================================================

36D066:  PUSH            {R4-R7,LR}
36D068:  ADD             R7, SP, #0xC
36D06A:  PUSH.W          {R8}
36D06E:  MOV             R8, R0
36D070:  ADD.W           R0, R8, #0xAC; this
36D074:  BLX             j__ZN14FxMemoryPool_c4InitEv; FxMemoryPool_c::Init(void)
36D078:  MOVS            R0, #0
36D07A:  STR.W           R0, [R8,#0x88]
36D07E:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D082:  STR.W           R0, [R8,#0x8C]
36D086:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D08A:  STR.W           R0, [R8,#0x90]
36D08E:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D092:  STR.W           R0, [R8,#0x94]
36D096:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D09A:  STR.W           R0, [R8,#0x98]
36D09E:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D0A2:  STR.W           R0, [R8,#0x9C]
36D0A6:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D0AA:  STR.W           R0, [R8,#0xA0]
36D0AE:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D0B2:  STR.W           R0, [R8,#0xA4]
36D0B6:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
36D0BA:  STR.W           R0, [R8,#0xA8]
36D0BE:  MOVW            R0, #(elf_hash_bucket+0xE96C); this
36D0C2:  BLX             j__ZN14FxEmitterPrt_cnaEj; FxEmitterPrt_c::operator new[](uint)
36D0C6:  ADD.W           R6, R0, #8
36D0CA:  MOVS            R1, #0x3C ; '<'
36D0CC:  MOV.W           R2, #0x3E8
36D0D0:  MOVW            R5, #0xEA60
36D0D4:  STRD.W          R1, R2, [R0]
36D0D8:  MOV             R0, R6; this
36D0DA:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
36D0DE:  SUBS            R5, #0x3C ; '<'
36D0E0:  ADD.W           R0, R0, #0x3C ; '<'
36D0E4:  BNE             loc_36D0DA
36D0E6:  ADD.W           R5, R8, #0x1C
36D0EA:  MOV             R1, R6; ListItem_c *
36D0EC:  STR.W           R6, [R8,#0x18]
36D0F0:  MOV             R0, R5; this
36D0F2:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
36D0F6:  MOVS            R6, #0
36D0F8:  MOVW            R4, #0xEA24
36D0FC:  LDR.W           R0, [R8,#0x18]
36D100:  ADD             R0, R6
36D102:  ADD.W           R1, R0, #0x3C ; '<'; ListItem_c *
36D106:  MOV             R0, R5; this
36D108:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
36D10C:  ADDS            R6, #0x3C ; '<'
36D10E:  CMP             R6, R4
36D110:  BNE             loc_36D0FC
36D112:  MOVS            R0, #1
36D114:  POP.W           {R8}
36D118:  POP             {R4-R7,PC}
