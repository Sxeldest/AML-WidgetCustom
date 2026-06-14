; =========================================================
; Game Engine Function: _ZN22CTaskInteriorBeInHouseC2EP15InteriorGroup_c
; Address            : 0x528C28 - 0x528C46
; =========================================================

528C28:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskInteriorBeInHouse::CTaskInteriorBeInHouse(InteriorGroup_c *)'
528C2A:  ADD             R7, SP, #8
528C2C:  MOV             R4, R1
528C2E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
528C32:  LDR             R1, =(_ZTV22CTaskInteriorBeInHouse_ptr - 0x528C3C)
528C34:  MOVS            R2, #0
528C36:  STR             R4, [R0,#0xC]
528C38:  ADD             R1, PC; _ZTV22CTaskInteriorBeInHouse_ptr
528C3A:  STRD.W          R2, R2, [R0,#0x10]
528C3E:  LDR             R1, [R1]; `vtable for'CTaskInteriorBeInHouse ...
528C40:  ADDS            R1, #8
528C42:  STR             R1, [R0]
528C44:  POP             {R4,R6,R7,PC}
