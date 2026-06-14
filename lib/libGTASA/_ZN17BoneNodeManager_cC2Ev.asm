; =========================================================
; Game Engine Function: _ZN17BoneNodeManager_cC2Ev
; Address            : 0x4D25D8 - 0x4D2600
; =========================================================

4D25D8:  PUSH            {R4,R5,R7,LR}
4D25DA:  ADD             R7, SP, #8
4D25DC:  MOV             R4, R0
4D25DE:  MOVS            R5, #0
4D25E0:  ADDS            R0, R4, R5; this
4D25E2:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
4D25E6:  ADDS            R0, #0x30 ; '0'; this
4D25E8:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
4D25EC:  ADDS            R5, #0x98
4D25EE:  CMP.W           R5, #0x4C00
4D25F2:  BNE             loc_4D25E0
4D25F4:  ADD.W           R0, R4, #0x4C00; this
4D25F8:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
4D25FC:  MOV             R0, R4
4D25FE:  POP             {R4,R5,R7,PC}
