; =========================================================
; Game Engine Function: _ZN8CClothes13RebuildPlayerEP10CPlayerPedb
; Address            : 0x45751C - 0x4575AE
; =========================================================

45751C:  PUSH            {R4-R7,LR}
45751E:  ADD             R7, SP, #0xC
457520:  PUSH.W          {R8}; bool
457524:  MOV             R4, R0
457526:  MOV             R6, R1
457528:  LDR             R0, [R4,#0x18]
45752A:  BLX             j__Z35RpAnimBlendClumpExtractAssociationsP7RpClump; RpAnimBlendClumpExtractAssociations(RpClump *)
45752E:  MOV             R8, R0
457530:  LDR.W           R0, [R4,#0x440]
457534:  MOVS            R1, #5; int
457536:  ADDS            R0, #4; this
457538:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
45753C:  CBZ             R0, loc_45754A
45753E:  LDR             R1, [R0]
457540:  MOVS            R2, #2
457542:  MOVS            R3, #0
457544:  LDR             R5, [R1,#0x1C]
457546:  MOV             R1, R4
457548:  BLX             R5
45754A:  LDR             R0, [R4]
45754C:  LDR             R1, [R0,#0x24]
45754E:  MOV             R0, R4
457550:  BLX             R1
457552:  MOV             R0, R4; this
457554:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
457558:  CBNZ            R6, loc_457576
45755A:  LDR.W           R0, [R4,#0x444]
45755E:  LDR             R5, [R0,#4]
457560:  MOVS            R0, #(dword_14+1); this
457562:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457566:  STR             R0, [R5,#0x70]
457568:  LDR.W           R0, [R4,#0x444]
45756C:  LDR             R5, [R0,#4]
45756E:  MOVS            R0, #(dword_14+3); this
457570:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457574:  STR             R0, [R5,#0x74]
457576:  LDR.W           R1, [R4,#0x444]
45757A:  MOVS            R3, #0; CPedClothesDesc *
45757C:  LDR             R6, =(unk_9A74B8 - 0x457586)
45757E:  LDRSH.W         R0, [R4,#0x26]; this
457582:  ADD             R6, PC; unk_9A74B8
457584:  LDR             R1, [R1,#4]; unsigned int
457586:  MOV             R2, R6; CPedClothesDesc *
457588:  BLX             j__ZN8CClothes17ConstructPedModelEjR15CPedClothesDescPKS0_b; CClothes::ConstructPedModel(uint,CPedClothesDesc &,CPedClothesDesc const*,bool)
45758C:  MOV             R0, R4; this
45758E:  BLX             j__ZN4CPed5DressEv; CPed::Dress(void)
457592:  LDR             R0, [R4,#0x18]
457594:  MOV             R1, R8
457596:  BLX             j__Z32RpAnimBlendClumpGiveAssociationsP7RpClumpP21CAnimBlendAssociation; RpAnimBlendClumpGiveAssociations(RpClump *,CAnimBlendAssociation *)
45759A:  LDR.W           R0, [R4,#0x444]
45759E:  MOVS            R2, #0x78 ; 'x'; size_t
4575A0:  LDR             R1, [R0,#4]; void *
4575A2:  MOV             R0, R6; void *
4575A4:  BLX             memcpy_0
4575A8:  POP.W           {R8}
4575AC:  POP             {R4-R7,PC}
