; =========================================================
; Game Engine Function: _ZNK21CTaskInteriorBeInShop5CloneEv
; Address            : 0x529110 - 0x529182
; =========================================================

529110:  PUSH            {R4-R7,LR}
529112:  ADD             R7, SP, #0xC
529114:  PUSH.W          {R11}
529118:  SUB             SP, SP, #8
52911A:  MOV             R5, R0
52911C:  MOVS            R0, #dword_34; this
52911E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529122:  MOV             R4, R0
529124:  LDR             R5, [R5,#0x28]
529126:  BLX             rand
52912A:  UXTH            R0, R0
52912C:  VLDR            S2, =0.000015259
529130:  VMOV            S0, R0
529134:  MOVW            R0, #0xCCCD
529138:  VMOV.F32        S4, #8.0
52913C:  MOVT            R0, #0x3E4C
529140:  VCVT.F32.S32    S0, S0
529144:  MOVS            R1, #4; int
529146:  MOVS            R3, #1; bool
529148:  MOVS            R6, #1
52914A:  VMUL.F32        S0, S0, S2
52914E:  VMUL.F32        S0, S0, S4
529152:  VCVT.S32.F32    S0, S0
529156:  STR             R0, [SP,#0x18+var_18]; float
529158:  VMOV            R0, S0
52915C:  UXTB            R2, R0; unsigned __int8
52915E:  MOV             R0, R4; this
529160:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
529164:  LDR             R0, =(_ZTV21CTaskInteriorBeInShop_ptr - 0x52916A)
529166:  ADD             R0, PC; _ZTV21CTaskInteriorBeInShop_ptr
529168:  LDR             R0, [R0]; `vtable for'CTaskInteriorBeInShop ...
52916A:  ADDS            R0, #8
52916C:  STR             R0, [R4]
52916E:  MOVS            R0, #0
529170:  STRD.W          R5, R0, [R4,#0x28]
529174:  MOV             R0, R4
529176:  STRB.W          R6, [R4,#0x30]
52917A:  ADD             SP, SP, #8
52917C:  POP.W           {R11}
529180:  POP             {R4-R7,PC}
