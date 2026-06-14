; =========================================================
; Game Engine Function: _ZN4Fx_c17ExitEntitySystemsEv
; Address            : 0x363CB0 - 0x363CF0
; =========================================================

363CB0:  PUSH            {R4-R7,LR}
363CB2:  ADD             R7, SP, #0xC
363CB4:  PUSH.W          {R8}
363CB8:  MOV             R8, R0
363CBA:  LDR.W           R5, [R8,#0x44]!
363CBE:  CMP             R5, #0
363CC0:  BEQ             loc_363CEA
363CC2:  LDR             R0, =(g_fxMan_ptr - 0x363CC8)
363CC4:  ADD             R0, PC; g_fxMan_ptr
363CC6:  LDR             R6, [R0]; g_fxMan
363CC8:  MOV             R0, R8; this
363CCA:  MOV             R1, R5; ListItem_c *
363CCC:  LDR             R4, [R5,#4]
363CCE:  BLX             j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
363CD2:  LDR             R1, [R5,#8]; FxSystem_c *
363CD4:  MOV             R0, R6; this
363CD6:  BLX             j__ZN11FxManager_c15DestroyFxSystemEP10FxSystem_c; FxManager_c::DestroyFxSystem(FxSystem_c *)
363CDA:  MOV             R0, R5; this
363CDC:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
363CE0:  BLX             _ZdlPv; operator delete(void *)
363CE4:  CMP             R4, #0
363CE6:  MOV             R5, R4
363CE8:  BNE             loc_363CC8
363CEA:  POP.W           {R8}
363CEE:  POP             {R4-R7,PC}
