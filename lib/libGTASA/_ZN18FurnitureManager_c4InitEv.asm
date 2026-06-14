; =========================================================
; Game Engine Function: _ZN18FurnitureManager_c4InitEv
; Address            : 0x4753A4 - 0x47542C
; =========================================================

4753A4:  PUSH            {R4-R7,LR}
4753A6:  ADD             R7, SP, #0xC
4753A8:  PUSH.W          {R8}
4753AC:  LDR             R1, =(g_currSubGroupId_ptr - 0x4753BA)
4753AE:  MOV             R4, R0
4753B0:  LDR             R0, =(g_currFurnitureId_ptr - 0x4753C0)
4753B2:  MOVW            R8, #0x206C
4753B6:  ADD             R1, PC; g_currSubGroupId_ptr
4753B8:  ADD.W           R5, R4, R8
4753BC:  ADD             R0, PC; g_currFurnitureId_ptr
4753BE:  MOVS            R6, #0x6C ; 'l'
4753C0:  LDR             R1, [R1]; g_currSubGroupId
4753C2:  MOVS            R2, #0
4753C4:  LDR             R0, [R0]; g_currFurnitureId
4753C6:  STRH            R2, [R1]
4753C8:  STRH            R2, [R0]
4753CA:  ADDS            R1, R4, R6; ListItem_c *
4753CC:  MOV             R0, R5; this
4753CE:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4753D2:  ADDS            R6, #0x10
4753D4:  CMP             R6, R8
4753D6:  BNE             loc_4753CA
4753D8:  MOV             R0, R4; this
4753DA:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
4753DE:  ADD.W           R0, R4, #0xC; this
4753E2:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
4753E6:  ADD.W           R0, R4, #0x18; this
4753EA:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
4753EE:  ADD.W           R0, R4, #0x24 ; '$'; this
4753F2:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
4753F6:  ADD.W           R0, R4, #0x30 ; '0'; this
4753FA:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
4753FE:  ADD.W           R0, R4, #0x3C ; '<'; this
475402:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
475406:  ADD.W           R0, R4, #0x48 ; 'H'; this
47540A:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
47540E:  ADD.W           R0, R4, #0x54 ; 'T'; this
475412:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
475416:  ADD.W           R0, R4, #0x60 ; '`'; this
47541A:  BLX             j__ZN16FurnitureGroup_c4InitEv; FurnitureGroup_c::Init(void)
47541E:  MOV             R0, R4; this
475420:  BLX             j__ZN18FurnitureManager_c13LoadFurnitureEv; FurnitureManager_c::LoadFurniture(void)
475424:  MOVS            R0, #1
475426:  POP.W           {R8}
47542A:  POP             {R4-R7,PC}
