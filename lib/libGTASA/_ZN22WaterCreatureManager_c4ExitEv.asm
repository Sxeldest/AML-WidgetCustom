; =========================================================
; Game Engine Function: _ZN22WaterCreatureManager_c4ExitEv
; Address            : 0x592CD8 - 0x592D4E
; =========================================================

592CD8:  PUSH            {R4-R7,LR}
592CDA:  ADD             R7, SP, #0xC
592CDC:  PUSH.W          {R8-R11}
592CE0:  SUB             SP, SP, #4
592CE2:  MOV             R8, R0
592CE4:  MOVW            R0, #0x1A0C
592CE8:  LDR.W           R5, [R8,R0]
592CEC:  CBZ             R5, loc_592D3C
592CEE:  LDR             R1, =(g_waterCreatureMan_ptr - 0x592CF8)
592CF0:  MOV.W           R10, #0
592CF4:  ADD             R1, PC; g_waterCreatureMan_ptr
592CF6:  LDR.W           R11, [R1]; g_waterCreatureMan
592CFA:  ADD.W           R9, R11, R0
592CFE:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x592D04)
592D00:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
592D02:  LDR             R6, [R0]; CObject::nNoTempObjects ...
592D04:  MOV             R0, R9; this
592D06:  MOV             R1, R5; ListItem_c *
592D08:  LDR             R4, [R5,#4]
592D0A:  BLX.W           j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
592D0E:  ADD.W           R0, R11, #0x1A00; this
592D12:  MOV             R1, R5; ListItem_c *
592D14:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
592D18:  LDR             R0, [R5,#8]; this
592D1A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
592D1E:  LDR             R0, [R5,#8]
592D20:  CMP             R0, #0
592D22:  ITTT NE
592D24:  LDRNE           R1, [R0]
592D26:  LDRNE           R1, [R1,#4]
592D28:  BLXNE           R1
592D2A:  STR.W           R10, [R5,#8]
592D2E:  CMP             R4, #0
592D30:  LDRH            R0, [R6]; CObject::nNoTempObjects
592D32:  MOV             R5, R4
592D34:  SUB.W           R0, R0, #1
592D38:  STRH            R0, [R6]; CObject::nNoTempObjects
592D3A:  BNE             loc_592D04
592D3C:  ADD.W           R0, R8, #0x1A00; this
592D40:  ADD             SP, SP, #4
592D42:  POP.W           {R8-R11}
592D46:  POP.W           {R4-R7,LR}
592D4A:  B.W             sub_19CBF8
