; =========================================================
; Game Engine Function: _ZN17InteriorManager_c4InitEv
; Address            : 0x475228 - 0x47539A
; =========================================================

475228:  PUSH            {R4-R7,LR}
47522A:  ADD             R7, SP, #0xC
47522C:  PUSH.W          {R8}
475230:  MOV             R4, R0
475232:  LDR             R0, =(g_interiorMan_ptr - 0x475240)
475234:  MOVW            R1, #0x4752
475238:  MOV.W           R8, #1
47523C:  ADD             R0, PC; g_interiorMan_ptr
47523E:  STRB.W          R8, [R4,R1]
475242:  MOVW            R1, #0x4750
475246:  LDR             R5, [R0]; g_interiorMan
475248:  MOV.W           R2, #0x100
47524C:  STRH            R2, [R4,R1]
47524E:  MOV             R1, R4; Interior_c *
475250:  MOV             R0, R5; this
475252:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
475256:  ADDW            R1, R4, #0x794; Interior_c *
47525A:  MOV             R0, R5; this
47525C:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
475260:  ADDW            R1, R4, #0xF28; Interior_c *
475264:  MOV             R0, R5; this
475266:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
47526A:  MOVW            R0, #0x16BC
47526E:  ADDS            R1, R4, R0; Interior_c *
475270:  MOV             R0, R5; this
475272:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
475276:  MOVW            R0, #0x1E50
47527A:  ADDS            R1, R4, R0; Interior_c *
47527C:  MOV             R0, R5; this
47527E:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
475282:  MOVW            R0, #0x25E4
475286:  ADDS            R1, R4, R0; Interior_c *
475288:  MOV             R0, R5; this
47528A:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
47528E:  MOVW            R0, #0x2D78
475292:  ADDS            R1, R4, R0; Interior_c *
475294:  MOV             R0, R5; this
475296:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
47529A:  MOVW            R0, #0x350C
47529E:  ADDS            R1, R4, R0; Interior_c *
4752A0:  MOV             R0, R5; this
4752A2:  BLX             j__ZN17InteriorManager_c20ReturnInteriorToPoolEP10Interior_c; InteriorManager_c::ReturnInteriorToPool(Interior_c *)
4752A6:  MOVW            R0, #0x3CB8
4752AA:  MOVS            R6, #0
4752AC:  STRB            R6, [R4,R0]
4752AE:  MOVW            R0, #0x4298
4752B2:  ADDS            R5, R4, R0
4752B4:  MOVW            R0, #0x3CAC
4752B8:  ADDS            R1, R4, R0; ListItem_c *
4752BA:  MOV             R0, R5; this
4752BC:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4752C0:  MOVW            R0, #0x3D74
4752C4:  STRB.W          R8, [R4,R0]
4752C8:  MOVW            R0, #0x3D68
4752CC:  ADDS            R1, R4, R0; ListItem_c *
4752CE:  MOV             R0, R5; this
4752D0:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4752D4:  MOVW            R0, #0x3E30
4752D8:  MOVS            R1, #2
4752DA:  STRB            R1, [R4,R0]
4752DC:  MOVW            R0, #0x3E24
4752E0:  ADDS            R1, R4, R0; ListItem_c *
4752E2:  MOV             R0, R5; this
4752E4:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4752E8:  MOVW            R0, #0x3EEC
4752EC:  MOVS            R1, #3
4752EE:  STRB            R1, [R4,R0]
4752F0:  MOVW            R0, #0x3EE0
4752F4:  ADDS            R1, R4, R0; ListItem_c *
4752F6:  MOV             R0, R5; this
4752F8:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4752FC:  MOVW            R0, #0x3FA8
475300:  MOVS            R1, #4
475302:  STRB            R1, [R4,R0]
475304:  MOVW            R0, #0x3F9C
475308:  ADDS            R1, R4, R0; ListItem_c *
47530A:  MOV             R0, R5; this
47530C:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
475310:  MOVW            R0, #0x4064
475314:  MOVS            R1, #5
475316:  STRB            R1, [R4,R0]
475318:  MOVW            R0, #0x4058
47531C:  ADDS            R1, R4, R0; ListItem_c *
47531E:  MOV             R0, R5; this
475320:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
475324:  MOVW            R0, #0x4120
475328:  MOVS            R1, #6
47532A:  STRB            R1, [R4,R0]
47532C:  MOVW            R0, #0x4114
475330:  ADDS            R1, R4, R0; ListItem_c *
475332:  MOV             R0, R5; this
475334:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
475338:  MOVW            R0, #0x41DC
47533C:  MOVS            R1, #7
47533E:  STRB            R1, [R4,R0]
475340:  MOVW            R0, #0x41D0
475344:  ADDS            R1, R4, R0; ListItem_c *
475346:  MOV             R0, R5; this
475348:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
47534C:  LDR             R0, =(g_furnitureMan_ptr - 0x475352)
47534E:  ADD             R0, PC; g_furnitureMan_ptr
475350:  LDR             R0, [R0]; g_furnitureMan ; this
475352:  BLX             j__ZN18FurnitureManager_c4InitEv; FurnitureManager_c::Init(void)
475356:  MOVW            R0, #0x473C
47535A:  MOV.W           R1, #0x1010101
47535E:  STR             R6, [R4,R0]
475360:  MOVW            R0, #0x42A4
475364:  MOVW            R2, #0x40E0
475368:  STR             R6, [R4,R0]
47536A:  MOVW            R0, #0x43A8
47536E:  MOVT            R2, #0xFFFD
475372:  STR             R6, [R4,R0]
475374:  MOVW            R0, #0x4738
475378:  STR             R1, [R4,R0]
47537A:  MOVW            R0, #0x4734
47537E:  STR             R1, [R4,R0]
475380:  MOVW            R0, #0x4730
475384:  STR             R1, [R4,R0]
475386:  MOVW            R0, #0x4754
47538A:  STR             R2, [R4,R0]
47538C:  MOVW            R0, #0x472C
475390:  STR             R1, [R4,R0]
475392:  MOVS            R0, #1
475394:  POP.W           {R8}
475398:  POP             {R4-R7,PC}
