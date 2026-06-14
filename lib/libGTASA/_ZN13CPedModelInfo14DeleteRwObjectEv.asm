; =========================================================
; Game Engine Function: _ZN13CPedModelInfo14DeleteRwObjectEv
; Address            : 0x38682C - 0x386848
; =========================================================

38682C:  PUSH            {R4,R6,R7,LR}
38682E:  ADD             R7, SP, #8
386830:  MOV             R4, R0
386832:  BLX             j__ZN15CClumpModelInfo14DeleteRwObjectEv; CClumpModelInfo::DeleteRwObject(void)
386836:  LDR             R0, [R4,#0x4C]; this
386838:  CBZ             R0, loc_386842
38683A:  BLX             j__ZN9CColModelD2Ev; CColModel::~CColModel()
38683E:  BLX             j__ZN9CColModeldlEPv; CColModel::operator delete(void *)
386842:  MOVS            R0, #0
386844:  STR             R0, [R4,#0x4C]
386846:  POP             {R4,R6,R7,PC}
