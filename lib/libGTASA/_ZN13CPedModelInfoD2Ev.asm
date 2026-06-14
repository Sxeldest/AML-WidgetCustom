; =========================================================
; Game Engine Function: _ZN13CPedModelInfoD2Ev
; Address            : 0x386C30 - 0x386C50
; =========================================================

386C30:  PUSH            {R4,R6,R7,LR}
386C32:  ADD             R7, SP, #8
386C34:  MOV             R4, R0
386C36:  LDR             R0, =(_ZTV13CPedModelInfo_ptr - 0x386C3C)
386C38:  ADD             R0, PC; _ZTV13CPedModelInfo_ptr
386C3A:  LDR             R1, [R0]; `vtable for'CPedModelInfo ...
386C3C:  LDR             R0, [R4,#0x4C]; this
386C3E:  ADDS            R1, #8
386C40:  STR             R1, [R4]
386C42:  CBZ             R0, loc_386C4C
386C44:  BLX             j__ZN9CColModelD2Ev; CColModel::~CColModel()
386C48:  BLX             j__ZN9CColModeldlEPv; CColModel::operator delete(void *)
386C4C:  MOV             R0, R4
386C4E:  POP             {R4,R6,R7,PC}
