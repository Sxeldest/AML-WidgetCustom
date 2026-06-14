; =========================================================
; Game Engine Function: _ZN18FurnitureManager_cD2Ev
; Address            : 0x44497E - 0x4449E8
; =========================================================

44497E:  PUSH            {R4,R5,R7,LR}
444980:  ADD             R7, SP, #8
444982:  MOV             R4, R0
444984:  MOVW            R0, #0x206C
444988:  ADD             R0, R4; this
44498A:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
44498E:  MOVW            R5, #0x205C
444992:  ADDS            R0, R4, R5; this
444994:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
444998:  SUBS            R5, #0x10
44499A:  CMP             R5, #0x5C ; '\'
44499C:  BNE             loc_444992
44499E:  ADD.W           R0, R4, #0x60 ; '`'; this
4449A2:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449A6:  ADD.W           R0, R4, #0x54 ; 'T'; this
4449AA:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449AE:  ADD.W           R0, R4, #0x48 ; 'H'; this
4449B2:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449B6:  ADD.W           R0, R4, #0x3C ; '<'; this
4449BA:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449BE:  ADD.W           R0, R4, #0x30 ; '0'; this
4449C2:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449C6:  ADD.W           R0, R4, #0x24 ; '$'; this
4449CA:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449CE:  ADD.W           R0, R4, #0x18; this
4449D2:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449D6:  ADD.W           R0, R4, #0xC; this
4449DA:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
4449DE:  MOV             R0, R4; this
4449E0:  POP.W           {R4,R5,R7,LR}
4449E4:  B.W             j_j__ZN6List_cD2Ev; j_List_c::~List_c()
