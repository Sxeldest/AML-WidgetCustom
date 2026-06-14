; =========================================================
; Game Engine Function: _ZN15ProcObjectMan_cD2Ev
; Address            : 0x456E20 - 0x456E62
; =========================================================

456E20:  PUSH            {R4-R7,LR}; Alternative name is 'ProcObjectMan_c::~ProcObjectMan_c()'
456E22:  ADD             R7, SP, #0xC
456E24:  PUSH.W          {R11}
456E28:  MOV             R4, R0
456E2A:  MOVW            R0, #0x4C08
456E2E:  ADD             R0, R4; this
456E30:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
456E34:  MOVW            R0, #0x4BF4
456E38:  ADDS            R5, R4, R0
456E3A:  MOVS            R6, #0
456E3C:  ADDS            R0, R5, R6; this
456E3E:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
456E42:  SUBS            R6, #0x14
456E44:  CMN.W           R6, #0x2800
456E48:  BNE             loc_456E3C
456E4A:  MOVW            R5, #0x23FC
456E4E:  ADDS            R0, R4, R5; this
456E50:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
456E54:  SUBS            R5, #0x48 ; 'H'
456E56:  ADDS            R0, R5, #4
456E58:  BNE             loc_456E4E
456E5A:  MOV             R0, R4
456E5C:  POP.W           {R11}
456E60:  POP             {R4-R7,PC}
