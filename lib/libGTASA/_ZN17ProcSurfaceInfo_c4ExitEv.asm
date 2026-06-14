; =========================================================
; Game Engine Function: _ZN17ProcSurfaceInfo_c4ExitEv
; Address            : 0x456270 - 0x4562CE
; =========================================================

456270:  PUSH            {R4-R7,LR}
456272:  ADD             R7, SP, #0xC
456274:  PUSH.W          {R8,R9,R11}
456278:  MOV             R9, R0
45627A:  LDR.W           R5, [R9,#0x3C]!
45627E:  CMP             R5, #0
456280:  BEQ             loc_4562C8
456282:  LDR             R0, =(g_procObjMan_ptr - 0x456290)
456284:  MOVW            R1, #0x4C08
456288:  MOV.W           R8, #0
45628C:  ADD             R0, PC; g_procObjMan_ptr
45628E:  LDR             R0, [R0]; g_procObjMan
456290:  ADDS            R6, R0, R1
456292:  MOV             R0, R9; this
456294:  MOV             R1, R5; ListItem_c *
456296:  LDR             R4, [R5,#4]
456298:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
45629C:  MOV             R0, R6; this
45629E:  MOV             R1, R5; ListItem_c *
4562A0:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4562A4:  LDR             R0, [R5,#8]
4562A6:  LDR             R1, [R0]
4562A8:  LDR             R1, [R1,#0x24]
4562AA:  BLX             R1
4562AC:  LDR             R0, [R5,#8]; this
4562AE:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4562B2:  LDR             R0, [R5,#8]
4562B4:  CMP             R0, #0
4562B6:  ITTT NE
4562B8:  LDRNE           R1, [R0]
4562BA:  LDRNE           R1, [R1,#4]
4562BC:  BLXNE           R1
4562BE:  STR.W           R8, [R5,#8]
4562C2:  CMP             R4, #0
4562C4:  MOV             R5, R4
4562C6:  BNE             loc_456292
4562C8:  POP.W           {R8,R9,R11}
4562CC:  POP             {R4-R7,PC}
