; =========================================================
; Game Engine Function: _ZN17InteriorManager_cD2Ev
; Address            : 0x44CF70 - 0x44D030
; =========================================================

44CF70:  PUSH            {R4,R6,R7,LR}
44CF72:  ADD             R7, SP, #8
44CF74:  MOV             R4, R0
44CF76:  MOVW            R0, #0x4298
44CF7A:  ADD             R0, R4; this
44CF7C:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
44CF80:  MOVW            R0, #0x428C
44CF84:  ADD             R0, R4; this
44CF86:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
44CF8A:  MOVW            R0, #0x41D0
44CF8E:  ADD             R0, R4; this
44CF90:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CF94:  MOVW            R0, #0x4114
44CF98:  ADD             R0, R4; this
44CF9A:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CF9E:  MOVW            R0, #0x4058
44CFA2:  ADD             R0, R4; this
44CFA4:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CFA8:  MOVW            R0, #0x3F9C
44CFAC:  ADD             R0, R4; this
44CFAE:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CFB2:  MOVW            R0, #0x3EE0
44CFB6:  ADD             R0, R4; this
44CFB8:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CFBC:  MOVW            R0, #0x3E24
44CFC0:  ADD             R0, R4; this
44CFC2:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CFC6:  MOVW            R0, #0x3D68
44CFCA:  ADD             R0, R4; this
44CFCC:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CFD0:  MOVW            R0, #0x3CAC
44CFD4:  ADD             R0, R4; this
44CFD6:  BLX             j__ZN10ListItem_cD2Ev; ListItem_c::~ListItem_c()
44CFDA:  MOVW            R0, #0x3CA0
44CFDE:  ADD             R0, R4; this
44CFE0:  BLX             j__ZN6List_cD2Ev; List_c::~List_c()
44CFE4:  MOVW            R0, #0x350C
44CFE8:  ADD             R0, R4; this
44CFEA:  BLX             j__ZN10Interior_cD2Ev; Interior_c::~Interior_c()
44CFEE:  MOVW            R0, #0x2D78
44CFF2:  ADD             R0, R4; this
44CFF4:  BLX             j__ZN10Interior_cD2Ev; Interior_c::~Interior_c()
44CFF8:  MOVW            R0, #0x25E4
44CFFC:  ADD             R0, R4; this
44CFFE:  BLX             j__ZN10Interior_cD2Ev; Interior_c::~Interior_c()
44D002:  MOVW            R0, #0x1E50
44D006:  ADD             R0, R4; this
44D008:  BLX             j__ZN10Interior_cD2Ev; Interior_c::~Interior_c()
44D00C:  MOVW            R0, #0x16BC
44D010:  ADD             R0, R4; this
44D012:  BLX             j__ZN10Interior_cD2Ev; Interior_c::~Interior_c()
44D016:  ADDW            R0, R4, #0xF28; this
44D01A:  BLX             j__ZN10Interior_cD2Ev; Interior_c::~Interior_c()
44D01E:  ADDW            R0, R4, #0x794; this
44D022:  BLX             j__ZN10Interior_cD2Ev; Interior_c::~Interior_c()
44D026:  MOV             R0, R4; this
44D028:  POP.W           {R4,R6,R7,LR}
44D02C:  B.W             j_j__ZN10Interior_cD2Ev; j_Interior_c::~Interior_c()
