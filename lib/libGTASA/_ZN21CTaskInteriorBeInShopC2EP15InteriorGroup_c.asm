; =========================================================
; Game Engine Function: _ZN21CTaskInteriorBeInShopC2EP15InteriorGroup_c
; Address            : 0x529088 - 0x5290F2
; =========================================================

529088:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskInteriorBeInShop::CTaskInteriorBeInShop(InteriorGroup_c *)'
52908A:  ADD             R7, SP, #0xC
52908C:  PUSH.W          {R11}
529090:  SUB             SP, SP, #8
529092:  MOV             R5, R1
529094:  MOV             R4, R0
529096:  BLX             rand
52909A:  UXTH            R0, R0
52909C:  VLDR            S2, =0.000015259
5290A0:  VMOV            S0, R0
5290A4:  MOVW            R0, #0xCCCD
5290A8:  VMOV.F32        S4, #8.0
5290AC:  MOVT            R0, #0x3E4C
5290B0:  VCVT.F32.S32    S0, S0
5290B4:  MOVS            R1, #4; int
5290B6:  MOVS            R3, #1; bool
5290B8:  MOVS            R6, #1
5290BA:  VMUL.F32        S0, S0, S2
5290BE:  VMUL.F32        S0, S0, S4
5290C2:  VCVT.S32.F32    S0, S0
5290C6:  STR             R0, [SP,#0x18+var_18]; float
5290C8:  VMOV            R0, S0
5290CC:  UXTB            R2, R0; unsigned __int8
5290CE:  MOV             R0, R4; this
5290D0:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
5290D4:  LDR             R0, =(_ZTV21CTaskInteriorBeInShop_ptr - 0x5290DA)
5290D6:  ADD             R0, PC; _ZTV21CTaskInteriorBeInShop_ptr
5290D8:  LDR             R0, [R0]; `vtable for'CTaskInteriorBeInShop ...
5290DA:  ADDS            R0, #8
5290DC:  STR             R0, [R4]
5290DE:  MOVS            R0, #0
5290E0:  STRD.W          R5, R0, [R4,#0x28]
5290E4:  MOV             R0, R4
5290E6:  STRB.W          R6, [R4,#0x30]
5290EA:  ADD             SP, SP, #8
5290EC:  POP.W           {R11}
5290F0:  POP             {R4-R7,PC}
