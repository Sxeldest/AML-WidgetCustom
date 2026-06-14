; =========================================================
; Game Engine Function: _ZN15CWidgetListShop12AssignImagesEv
; Address            : 0x2BADDC - 0x2BAE0E
; =========================================================

2BADDC:  PUSH            {R4-R7,LR}
2BADDE:  ADD             R7, SP, #0xC
2BADE0:  PUSH.W          {R11}
2BADE4:  MOV             R4, R0
2BADE6:  MOV             R0, #0x11CB0
2BADEE:  LDR             R1, [R4,R0]
2BADF0:  CMP             R1, #1
2BADF2:  BLT             loc_2BAE08
2BADF4:  ADDS            R6, R4, R0
2BADF6:  MOVS            R5, #0
2BADF8:  MOV             R0, R4; this
2BADFA:  MOV             R1, R5; int
2BADFC:  BLX             j__ZN15CWidgetListShop11AssignImageEi; CWidgetListShop::AssignImage(int)
2BAE00:  LDR             R0, [R6]
2BAE02:  ADDS            R5, #1
2BAE04:  CMP             R5, R0
2BAE06:  BLT             loc_2BADF8
2BAE08:  POP.W           {R11}
2BAE0C:  POP             {R4-R7,PC}
