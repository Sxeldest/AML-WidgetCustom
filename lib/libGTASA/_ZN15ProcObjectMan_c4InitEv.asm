; =========================================================
; Game Engine Function: _ZN15ProcObjectMan_c4InitEv
; Address            : 0x456E62 - 0x456EA6
; =========================================================

456E62:  PUSH            {R4-R7,LR}
456E64:  ADD             R7, SP, #0xC
456E66:  PUSH.W          {R8}
456E6A:  MOV             R8, R0
456E6C:  MOVW            R0, #0x2408
456E70:  ADD.W           R6, R8, R0
456E74:  MOVW            R0, #0x4C08
456E78:  ADD.W           R5, R8, R0
456E7C:  MOVS            R4, #0
456E7E:  ADDS            R1, R6, R4; ListItem_c *
456E80:  MOV             R0, R5; this
456E82:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
456E86:  ADDS            R4, #0x14
456E88:  CMP.W           R4, #0x2800
456E8C:  BNE             loc_456E7E
456E8E:  MOVS            R4, #0
456E90:  MOV             R0, R8; this
456E92:  STR.W           R4, [R8,#4]
456E96:  BLX             j__ZN15ProcObjectMan_c12LoadDataFileEv; ProcObjectMan_c::LoadDataFile(void)
456E9A:  STR.W           R4, [R8]
456E9E:  MOVS            R0, #1
456EA0:  POP.W           {R8}
456EA4:  POP             {R4-R7,PC}
