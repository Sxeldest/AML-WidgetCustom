; =========================================================
; Game Engine Function: _ZN4Fx_c14CreateEntityFxEP7CEntityPcP5RwV3dP11RwMatrixTag
; Address            : 0x366714 - 0x36676E
; =========================================================

366714:  PUSH            {R4-R7,LR}
366716:  ADD             R7, SP, #0xC
366718:  PUSH.W          {R8}
36671C:  SUB             SP, SP, #8
36671E:  MOV             R8, R0
366720:  LDR             R0, =(g_fxMan_ptr - 0x36672A)
366722:  LDR             R6, [R7,#arg_0]
366724:  MOV             R5, R1
366726:  ADD             R0, PC; g_fxMan_ptr
366728:  MOVS            R1, #1
36672A:  STR             R1, [SP,#0x18+var_18]; int
36672C:  MOV             R1, R2; this
36672E:  LDR             R0, [R0]; g_fxMan ; int
366730:  MOV             R2, R3; int
366732:  MOV             R3, R6; int
366734:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
366738:  MOV             R6, R0
36673A:  CBZ             R6, loc_366766
36673C:  MOVS            R0, #0x10; unsigned int
36673E:  BLX             _Znwj; operator new(uint)
366742:  MOV             R4, R0
366744:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
366748:  ADD.W           R0, R8, #0x44 ; 'D'; this
36674C:  MOV             R1, R4; ListItem_c *
36674E:  STRD.W          R6, R5, [R4,#8]
366752:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
366756:  LDR             R0, [R4,#8]; this
366758:  ADD             SP, SP, #8
36675A:  POP.W           {R8}
36675E:  POP.W           {R4-R7,LR}
366762:  B.W             sub_18C114
366766:  ADD             SP, SP, #8
366768:  POP.W           {R8}
36676C:  POP             {R4-R7,PC}
