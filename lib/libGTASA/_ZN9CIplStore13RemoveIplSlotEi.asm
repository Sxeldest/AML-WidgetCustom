; =========================================================
; Game Engine Function: _ZN9CIplStore13RemoveIplSlotEi
; Address            : 0x28064C - 0x2806D6
; =========================================================

28064C:  PUSH            {R4,R6,R7,LR}
28064E:  ADD             R7, SP, #8
280650:  MOV             R4, R0
280652:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280658)
280654:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
280656:  LDR             R0, [R0]; CIplStore::ms_pPool ...
280658:  LDR             R1, [R0]; int
28065A:  MOVS            R0, #0x34 ; '4'
28065C:  LDR             R2, [R1]
28065E:  MLA.W           R0, R4, R0, R2
280662:  LDRB.W          R0, [R0,#0x2D]
280666:  CBZ             R0, loc_280676
280668:  MOV             R0, R4; this
28066A:  BLX             j__ZN9CIplStore9RemoveIplEi; CIplStore::RemoveIpl(int)
28066E:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x280674)
280670:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
280672:  LDR             R0, [R0]; CIplStore::ms_pPool ...
280674:  LDR             R1, [R0]; CIplStore::ms_pPool
280676:  LDR             R0, =(_ZN9CIplStore12ms_pQuadTreeE_ptr - 0x28067E)
280678:  LDR             R2, [R1,#4]
28067A:  ADD             R0, PC; _ZN9CIplStore12ms_pQuadTreeE_ptr
28067C:  LDR             R0, [R0]; CIplStore::ms_pQuadTree ...
28067E:  LDRSB           R2, [R2,R4]
280680:  LDR             R0, [R0]; this
280682:  CMP             R2, #0
280684:  BLT             loc_280690
280686:  MOVS            R2, #0x34 ; '4'
280688:  LDR             R1, [R1]
28068A:  MLA.W           R1, R4, R2, R1
28068E:  B               loc_280692
280690:  MOVS            R1, #0; void *
280692:  BLX             j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
280696:  LDR             R0, =(_ZN9CIplStore8ms_pPoolE_ptr - 0x28069C)
280698:  ADD             R0, PC; _ZN9CIplStore8ms_pPoolE_ptr
28069A:  LDR             R0, [R0]; CIplStore::ms_pPool ...
28069C:  LDR             R0, [R0]; CIplStore::ms_pPool
28069E:  LDR             R1, [R0,#4]
2806A0:  LDRSB           R2, [R1,R4]
2806A2:  CMP.W           R2, #0xFFFFFFFF
2806A6:  BLE             loc_2806B2
2806A8:  MOVS            R3, #0x34 ; '4'
2806AA:  LDR             R2, [R0]
2806AC:  MLA.W           R3, R4, R3, R2
2806B0:  B               loc_2806B6
2806B2:  LDR             R2, [R0]
2806B4:  MOVS            R3, #0
2806B6:  SUBS            R2, R3, R2
2806B8:  MOV             R3, #0xC4EC4EC5
2806C0:  ASRS            R2, R2, #2
2806C2:  MULS            R2, R3
2806C4:  LDRB            R3, [R1,R2]
2806C6:  ORR.W           R3, R3, #0x80
2806CA:  STRB            R3, [R1,R2]
2806CC:  LDR             R1, [R0,#0xC]
2806CE:  CMP             R2, R1
2806D0:  IT LT
2806D2:  STRLT           R2, [R0,#0xC]
2806D4:  POP             {R4,R6,R7,PC}
