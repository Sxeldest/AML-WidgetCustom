; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroupC2Eib
; Address            : 0x4EEB74 - 0x4EEBA2
; =========================================================

4EEB74:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskComplexBeInGroup::CTaskComplexBeInGroup(int, bool)'
4EEB76:  ADD             R7, SP, #8
4EEB78:  MOV             R4, R2
4EEB7A:  MOV             R5, R1
4EEB7C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EEB80:  LDR             R1, =(_ZTV21CTaskComplexBeInGroup_ptr - 0x4EEB8C)
4EEB82:  MOVS            R2, #0
4EEB84:  MOVS            R3, #0xC8
4EEB86:  STR             R5, [R0,#0xC]
4EEB88:  ADD             R1, PC; _ZTV21CTaskComplexBeInGroup_ptr
4EEB8A:  STRB            R4, [R0,#0x10]
4EEB8C:  STRD.W          R2, R2, [R0,#0x14]
4EEB90:  LDR             R1, [R1]; `vtable for'CTaskComplexBeInGroup ...
4EEB92:  STRD.W          R3, R2, [R0,#0x1C]
4EEB96:  MOV.W           R2, #0xFFFFFFFF
4EEB9A:  STR             R2, [R0,#0x24]
4EEB9C:  ADDS            R1, #8
4EEB9E:  STR             R1, [R0]
4EEBA0:  POP             {R4,R5,R7,PC}
