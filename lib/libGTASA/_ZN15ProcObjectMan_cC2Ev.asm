; =========================================================
; Game Engine Function: _ZN15ProcObjectMan_cC2Ev
; Address            : 0x456DDC - 0x456E20
; =========================================================

456DDC:  PUSH            {R4-R7,LR}
456DDE:  ADD             R7, SP, #0xC
456DE0:  PUSH.W          {R11}
456DE4:  MOV             R4, R0
456DE6:  MOVS            R5, #0
456DE8:  ADDS            R0, R4, R5
456DEA:  ADDS            R0, #0x44 ; 'D'; this
456DEC:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
456DF0:  ADDS            R5, #0x48 ; 'H'
456DF2:  CMP.W           R5, #0x2400
456DF6:  BNE             loc_456DE8
456DF8:  MOVW            R0, #0x2408
456DFC:  ADDS            R5, R4, R0
456DFE:  MOVS            R6, #0
456E00:  ADDS            R0, R5, R6; this
456E02:  BLX             j__ZN10ListItem_cC2Ev; ListItem_c::ListItem_c(void)
456E06:  ADDS            R6, #0x14
456E08:  CMP.W           R6, #0x2800
456E0C:  BNE             loc_456E00
456E0E:  MOVW            R0, #0x4C08
456E12:  ADD             R0, R4; this
456E14:  BLX             j__ZN6List_cC2Ev; List_c::List_c(void)
456E18:  MOV             R0, R4
456E1A:  POP.W           {R11}
456E1E:  POP             {R4-R7,PC}
