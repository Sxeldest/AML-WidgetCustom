; =========================================================
; Game Engine Function: _ZNK22CEventEditableResponse11InformGroupEP4CPed
; Address            : 0x37081C - 0x370866
; =========================================================

37081C:  PUSH            {R4-R7,LR}
37081E:  ADD             R7, SP, #0xC
370820:  PUSH.W          {R8}
370824:  MOV             R8, R1
370826:  MOV             R5, R0
370828:  MOV             R0, R8; this
37082A:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
37082E:  MOV             R6, R0
370830:  MOVS            R4, #0
370832:  CBZ             R6, loc_37085E
370834:  LDR             R0, [R5]
370836:  LDR             R1, [R0,#0x14]
370838:  MOV             R0, R5
37083A:  BLX             R1
37083C:  MOV             R5, R0
37083E:  MOVS            R0, #0xC8
370840:  STRH            R0, [R5,#0xA]
370842:  MOV             R0, R8; this
370844:  MOV             R1, R6; CPed *
370846:  MOV             R2, R5; CPedGroup *
370848:  STRB            R4, [R5,#9]
37084A:  BLX             j__ZN22CInformGroupEventQueue3AddEP4CPedP9CPedGroupP6CEvent; CInformGroupEventQueue::Add(CPed *,CPedGroup *,CEvent *)
37084E:  MOVS            R4, #1
370850:  CBZ             R5, loc_37085E
370852:  CBNZ            R0, loc_37085E
370854:  LDR             R0, [R5]
370856:  LDR             R1, [R0,#4]
370858:  MOV             R0, R5
37085A:  BLX             R1
37085C:  MOVS            R4, #1
37085E:  MOV             R0, R4
370860:  POP.W           {R8}
370864:  POP             {R4-R7,PC}
