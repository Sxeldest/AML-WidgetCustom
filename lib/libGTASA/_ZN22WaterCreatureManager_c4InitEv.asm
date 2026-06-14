; =========================================================
; Game Engine Function: _ZN22WaterCreatureManager_c4InitEv
; Address            : 0x592CA6 - 0x592CD6
; =========================================================

592CA6:  PUSH            {R4-R7,LR}
592CA8:  ADD             R7, SP, #0xC
592CAA:  PUSH.W          {R11}
592CAE:  MOV             R4, R0
592CB0:  ADD.W           R5, R4, #0x1A00
592CB4:  MOVS            R6, #0
592CB6:  ADDS            R1, R4, R6; ListItem_c *
592CB8:  MOV             R0, R5; this
592CBA:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
592CBE:  ADDS            R6, #0x34 ; '4'
592CC0:  CMP.W           R6, #0x1A00
592CC4:  BNE             loc_592CB6
592CC6:  MOVW            R0, #0x1A18
592CCA:  MOVS            R1, #0
592CCC:  STR             R1, [R4,R0]
592CCE:  MOVS            R0, #1
592CD0:  POP.W           {R11}
592CD4:  POP             {R4-R7,PC}
