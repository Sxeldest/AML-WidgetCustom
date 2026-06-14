; =========================================================
; Game Engine Function: _ZN15CClothesBuilder18InitPaletteOctTreeEi
; Address            : 0x45BDC0 - 0x45BDE6
; =========================================================

45BDC0:  PUSH            {R4,R6,R7,LR}
45BDC2:  ADD             R7, SP, #8
45BDC4:  MOV             R4, R0
45BDC6:  LDR             R0, =(PC_Scratch_ptr - 0x45BDD0)
45BDC8:  MOV.W           R1, #(elf_hash_bucket+0x3B04); void *
45BDCC:  ADD             R0, PC; PC_Scratch_ptr
45BDCE:  LDR             R0, [R0]; PC_Scratch
45BDD0:  ADD.W           R0, R0, #0x1000; this
45BDD4:  BLX             j__ZN8COctTree8InitPoolEPvi; COctTree::InitPool(void *,int)
45BDD8:  LDR             R0, =(unk_9A7530 - 0x45BDE0)
45BDDA:  MOV             R1, R4; int
45BDDC:  ADD             R0, PC; unk_9A7530 ; this
45BDDE:  POP.W           {R4,R6,R7,LR}
45BDE2:  B.W             j_j__ZN12COctTreeBase4InitEi; j_COctTreeBase::Init(int)
