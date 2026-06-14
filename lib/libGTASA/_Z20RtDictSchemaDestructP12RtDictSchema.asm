; =========================================================
; Game Engine Function: _Z20RtDictSchemaDestructP12RtDictSchema
; Address            : 0x1ED3E2 - 0x1ED3F0
; =========================================================

1ED3E2:  PUSH            {R7,LR}
1ED3E4:  MOV             R7, SP
1ED3E6:  LDR             R0, [R0,#0x10]
1ED3E8:  BLX             j__Z15_rwSListDestroyP7RwSList; _rwSListDestroy(RwSList *)
1ED3EC:  MOVS            R0, #1
1ED3EE:  POP             {R7,PC}
