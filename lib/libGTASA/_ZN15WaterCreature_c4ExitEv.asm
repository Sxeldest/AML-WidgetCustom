; =========================================================
; Game Engine Function: _ZN15WaterCreature_c4ExitEv
; Address            : 0x59226C - 0x5922B2
; =========================================================

59226C:  PUSH            {R4,R5,R7,LR}
59226E:  ADD             R7, SP, #8
592270:  MOV             R4, R0
592272:  LDR             R0, =(g_waterCreatureMan_ptr - 0x59227A)
592274:  MOV             R1, R4; ListItem_c *
592276:  ADD             R0, PC; g_waterCreatureMan_ptr
592278:  LDR             R5, [R0]; g_waterCreatureMan
59227A:  MOVW            R0, #0x1A0C
59227E:  ADD             R0, R5; this
592280:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
592284:  ADD.W           R0, R5, #0x1A00; this
592288:  MOV             R1, R4; ListItem_c *
59228A:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
59228E:  LDR             R0, [R4,#8]; this
592290:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
592294:  LDR             R0, [R4,#8]
592296:  CMP             R0, #0
592298:  ITTT NE
59229A:  LDRNE           R1, [R0]
59229C:  LDRNE           R1, [R1,#4]
59229E:  BLXNE           R1
5922A0:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x5922AA)
5922A2:  MOVS            R1, #0
5922A4:  STR             R1, [R4,#8]
5922A6:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
5922A8:  LDR             R0, [R0]; CObject::nNoTempObjects ...
5922AA:  LDRH            R1, [R0]; CObject::nNoTempObjects
5922AC:  SUBS            R1, #1
5922AE:  STRH            R1, [R0]; CObject::nNoTempObjects
5922B0:  POP             {R4,R5,R7,PC}
