; =========================================================
; Game Engine Function: _ZN16FurnitureGroup_c11AddSubGroupEiiiiihhh
; Address            : 0x444724 - 0x44477A
; =========================================================

444724:  PUSH            {R4-R7,LR}
444726:  ADD             R7, SP, #0xC
444728:  PUSH.W          {R11}
44472C:  LDR             R2, =(g_currSubGroupId_ptr - 0x444732)
44472E:  ADD             R2, PC; g_currSubGroupId_ptr
444730:  LDR             R2, [R2]; g_currSubGroupId
444732:  LDRH            R2, [R2]
444734:  CMP             R2, #0x7F
444736:  BHI             loc_444772
444738:  LDR             R5, =(g_subGroupStore_ptr - 0x444746)
44473A:  ADDS            R6, R2, #1
44473C:  LDR             R4, =(g_currSubGroupId_ptr - 0x44474C)
44473E:  RSB.W           R2, R2, R2,LSL#3
444742:  ADD             R5, PC; g_subGroupStore_ptr
444744:  LDRD.W          R3, LR, [R7,#arg_8]
444748:  ADD             R4, PC; g_currSubGroupId_ptr
44474A:  LDR.W           R12, [R7,#arg_10]
44474E:  LDR             R5, [R5]; g_subGroupStore
444750:  LDR             R4, [R4]; g_currSubGroupId
444752:  ADD.W           R2, R5, R2,LSL#2
444756:  STRB            R3, [R2,#0x18]
444758:  STR             R1, [R2,#8]
44475A:  MOV             R1, R2; ListItem_c *
44475C:  STRB.W          LR, [R2,#0x19]
444760:  STRH            R6, [R4]
444762:  STRB.W          R12, [R2,#0x1A]
444766:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
44476A:  MOVS            R0, #1
44476C:  POP.W           {R11}
444770:  POP             {R4-R7,PC}
444772:  MOVS            R0, #0
444774:  POP.W           {R11}
444778:  POP             {R4-R7,PC}
