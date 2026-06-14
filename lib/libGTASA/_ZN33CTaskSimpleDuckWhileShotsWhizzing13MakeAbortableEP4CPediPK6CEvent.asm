; =========================================================
; Game Engine Function: _ZN33CTaskSimpleDuckWhileShotsWhizzing13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x5437E4 - 0x543860
; =========================================================

5437E4:  PUSH            {R4-R7,LR}
5437E6:  ADD             R7, SP, #0xC
5437E8:  PUSH.W          {R8}
5437EC:  MOV             R4, R2
5437EE:  MOV             R6, R3
5437F0:  MOV             R8, R1
5437F2:  MOV             R5, R0
5437F4:  CMP             R4, #2
5437F6:  BNE             loc_543800
5437F8:  MOV             R0, R5
5437FA:  MOV             R1, R8
5437FC:  MOVS            R2, #2
5437FE:  B               loc_543852
543800:  CBZ             R6, loc_54384C
543802:  LDR             R0, [R6]
543804:  LDR             R1, [R0,#8]
543806:  MOV             R0, R6
543808:  BLX             R1
54380A:  CMP             R0, #0x31 ; '1'
54380C:  BNE             loc_54384C
54380E:  LDR             R0, [R5,#0x10]; this
543810:  MOVS            R4, #0
543812:  CBZ             R0, loc_543844
543814:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x54381C)
543816:  MOVS            R2, #0; void *
543818:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
54381A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
54381C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543820:  LDR             R0, [R5,#0x14]; this
543822:  STR             R4, [R5,#0x10]
543824:  CBZ             R0, loc_543836
543826:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x543830)
543828:  MOVS            R2, #0; void *
54382A:  MOVS            R4, #0
54382C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
54382E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543830:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543834:  STR             R4, [R5,#0x14]
543836:  LDR.W           R0, [R8,#0x484]
54383A:  MOVS            R4, #1
54383C:  BIC.W           R0, R0, #0x4000000
543840:  STR.W           R0, [R8,#0x484]
543844:  MOV             R0, R4
543846:  POP.W           {R8}
54384A:  POP             {R4-R7,PC}
54384C:  MOV             R0, R5; this
54384E:  MOV             R1, R8; CPed *
543850:  MOV             R2, R4; int
543852:  MOV             R3, R6; CEvent *
543854:  POP.W           {R8}
543858:  POP.W           {R4-R7,LR}
54385C:  B.W             _ZN15CTaskSimpleDuck13MakeAbortableEP4CPediPK6CEvent; CTaskSimpleDuck::MakeAbortable(CPed *,int,CEvent const*)
