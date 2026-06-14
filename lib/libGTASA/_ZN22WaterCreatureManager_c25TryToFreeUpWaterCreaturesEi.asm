; =========================================================
; Game Engine Function: _ZN22WaterCreatureManager_c25TryToFreeUpWaterCreaturesEi
; Address            : 0x593224 - 0x5932AA
; =========================================================

593224:  PUSH            {R4-R7,LR}
593226:  ADD             R7, SP, #0xC
593228:  PUSH.W          {R8-R11}
59322C:  SUB             SP, SP, #4
59322E:  MOVW            R8, #0x1A0C
593232:  MOV             R10, R1
593234:  LDR.W           R4, [R0,R8]
593238:  MOVS            R5, #0
59323A:  LDR             R0, =(g_waterCreatureMan_ptr - 0x593240)
59323C:  ADD             R0, PC; g_waterCreatureMan_ptr
59323E:  LDR.W           R11, [R0]; g_waterCreatureMan
593242:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x593248)
593244:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
593246:  LDR.W           R9, [R0]; CObject::nNoTempObjects ...
59324A:  CBZ             R4, loc_5932A0
59324C:  MOV             R6, R4
59324E:  LDRD.W          R4, R0, [R6,#4]
593252:  LDRB            R0, [R0,#0x1E]
593254:  LSLS            R0, R0, #0x1E
593256:  BPL             loc_59325C
593258:  LDR             R0, [R6,#0x1C]
59325A:  CBNZ            R0, loc_593264
59325C:  CMP             R4, #0
59325E:  MOV             R6, R4
593260:  BNE             loc_59324E
593262:  B               loc_5932A0
593264:  ADD.W           R0, R11, R8; this
593268:  MOV             R1, R6; ListItem_c *
59326A:  BLX.W           j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
59326E:  ADD.W           R0, R11, #0x1A00; this
593272:  MOV             R1, R6; ListItem_c *
593274:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
593278:  LDR             R0, [R6,#8]; this
59327A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
59327E:  LDR             R0, [R6,#8]
593280:  CMP             R0, #0
593282:  ITTT NE
593284:  LDRNE           R1, [R0]
593286:  LDRNE           R1, [R1,#4]
593288:  BLXNE           R1
59328A:  MOVS            R0, #0
59328C:  ADDS            R5, #1
59328E:  STR             R0, [R6,#8]
593290:  CMP             R5, R10
593292:  LDRH.W          R0, [R9]; CObject::nNoTempObjects
593296:  SUB.W           R0, R0, #1
59329A:  STRH.W          R0, [R9]; CObject::nNoTempObjects
59329E:  BLT             loc_59324A
5932A0:  MOV             R0, R5
5932A2:  ADD             SP, SP, #4
5932A4:  POP.W           {R8-R11}
5932A8:  POP             {R4-R7,PC}
