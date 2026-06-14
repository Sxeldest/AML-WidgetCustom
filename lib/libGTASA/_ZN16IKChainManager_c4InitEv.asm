; =========================================================
; Game Engine Function: _ZN16IKChainManager_c4InitEv
; Address            : 0x4D31D2 - 0x4D31FA
; =========================================================

4D31D2:  PUSH            {R4-R7,LR}
4D31D4:  ADD             R7, SP, #0xC
4D31D6:  PUSH.W          {R11}
4D31DA:  MOV             R4, R0
4D31DC:  ADDW            R5, R4, #0xB0C
4D31E0:  MOVS            R6, #0
4D31E2:  ADDS            R1, R4, R6; ListItem_c *
4D31E4:  MOV             R0, R5; this
4D31E6:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
4D31EA:  ADDS            R6, #0x58 ; 'X'
4D31EC:  CMP.W           R6, #0xB00
4D31F0:  BNE             loc_4D31E2
4D31F2:  MOVS            R0, #1
4D31F4:  POP.W           {R11}
4D31F8:  POP             {R4-R7,PC}
