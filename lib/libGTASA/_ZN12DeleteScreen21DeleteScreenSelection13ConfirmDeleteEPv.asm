; =========================================================
; Game Engine Function: _ZN12DeleteScreen21DeleteScreenSelection13ConfirmDeleteEPv
; Address            : 0x2A7BB8 - 0x2A7BD2
; =========================================================

2A7BB8:  PUSH            {R7,LR}
2A7BBA:  MOV             R7, SP
2A7BBC:  LDR             R0, [R0,#8]; int
2A7BBE:  BLX             j__Z15Menu_DeleteSloti; Menu_DeleteSlot(int)
2A7BC2:  CMP             R0, #1
2A7BC4:  IT NE
2A7BC6:  POPNE           {R7,PC}
2A7BC8:  MOVS            R0, #1; bool
2A7BCA:  POP.W           {R7,LR}
2A7BCE:  B.W             j_j__Z18Menu_PopulateSavesb; j_Menu_PopulateSaves(bool)
