; =========================================================
; Game Engine Function: _ZN4Fx_c15DestroyEntityFxEP7CEntity
; Address            : 0x366774 - 0x3667B4
; =========================================================

366774:  PUSH            {R4-R7,LR}
366776:  ADD             R7, SP, #0xC
366778:  PUSH.W          {R8}
36677C:  MOV             R8, R0
36677E:  MOV             R4, R1
366780:  LDR.W           R6, [R8,#0x44]!
366784:  CMP             R6, #0
366786:  BEQ             loc_3667AE
366788:  LDR             R0, [R6,#0xC]
36678A:  LDR             R5, [R6,#4]
36678C:  CMP             R0, R4
36678E:  BNE             loc_3667A8
366790:  MOV             R0, R8; this
366792:  MOV             R1, R6; ListItem_c *
366794:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
366798:  LDR             R0, [R6,#8]; this
36679A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
36679E:  MOV             R0, R6; this
3667A0:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
3667A4:  BLX             _ZdlPv; operator delete(void *)
3667A8:  CMP             R5, #0
3667AA:  MOV             R6, R5
3667AC:  BNE             loc_366788
3667AE:  POP.W           {R8}
3667B2:  POP             {R4-R7,PC}
