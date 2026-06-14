; =========================================================
; Game Engine Function: _ZN6CWorld31GetIsLineOfSightSectorListClearER8CPtrListRK8CColLinebb
; Address            : 0x4284B8 - 0x428574
; =========================================================

4284B8:  PUSH            {R4-R7,LR}
4284BA:  ADD             R7, SP, #0xC
4284BC:  PUSH.W          {R8-R11}
4284C0:  SUB             SP, SP, #0xC
4284C2:  STR             R2, [SP,#0x28+var_20]
4284C4:  MOV             R10, R3
4284C6:  LDR             R4, [R0]
4284C8:  MOV             R9, R1
4284CA:  CMP             R4, #0
4284CC:  BEQ             loc_428568
4284CE:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x4284D4)
4284D0:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
4284D2:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
4284D6:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x4284DC)
4284D8:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
4284DA:  LDR.W           R8, [R0]; CWorld::pIgnoreEntity ...
4284DE:  LDR             R0, =(gCurCamColVars_ptr - 0x4284E4)
4284E0:  ADD             R0, PC; gCurCamColVars_ptr
4284E2:  LDR             R0, [R0]; gCurCamColVars
4284E4:  STR             R0, [SP,#0x28+var_24]; bool
4284E6:  LDRD.W          R5, R4, [R4]
4284EA:  LDRH.W          R0, [R11]; CWorld::ms_nCurrentScanCode
4284EE:  LDRH            R1, [R5,#0x30]
4284F0:  CMP             R1, R0
4284F2:  ITT NE
4284F4:  LDRBNE          R1, [R5,#0x1C]
4284F6:  MOVSNE.W        R1, R1,LSL#31; int
4284FA:  BEQ             loc_428564
4284FC:  STRH            R0, [R5,#0x30]
4284FE:  LDR.W           R0, [R8]; CWorld::pIgnoreEntity
428502:  CMP             R0, R5
428504:  BEQ             loc_428564
428506:  CMP.W           R10, #1
42850A:  BNE             loc_428536
42850C:  LDRSH.W         R0, [R5,#0x26]; this
428510:  BLX             j__ZN8CGarages17IsModelIndexADoorEi; CGarages::IsModelIndexADoor(int)
428514:  CBNZ            R0, loc_428536
428516:  LDR.W           R0, [R5,#0x164]
42851A:  LDRB            R1, [R0,#0x1E]
42851C:  LDR             R0, [SP,#0x28+var_24]
42851E:  CMP             R1, #3
428520:  LDRB            R0, [R0]
428522:  BEQ             loc_428532
428524:  CMP             R1, #2
428526:  BEQ             loc_428536
428528:  CMP             R1, #1
42852A:  BNE             loc_428564
42852C:  CMP             R0, #0xA
42852E:  BCC             loc_428536
428530:  B               loc_428564
428532:  CMP             R0, #0xA
428534:  BCC             loc_428564
428536:  LDR             R6, [R5,#0x14]
428538:  CBNZ            R6, loc_42854A
42853A:  MOV             R0, R5; this
42853C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
428540:  LDR             R1, [R5,#0x14]; CMatrix *
428542:  ADDS            R0, R5, #4; this
428544:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
428548:  LDR             R6, [R5,#0x14]
42854A:  MOV             R0, R5; this
42854C:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
428550:  LDR             R3, [SP,#0x28+var_20]; CColModel *
428552:  MOV             R2, R0; CMatrix *
428554:  MOVS            R5, #0
428556:  MOV             R0, R9; this
428558:  MOV             R1, R6; CColLine *
42855A:  STR             R5, [SP,#0x28+var_28]; bool
42855C:  BLX             j__ZN10CCollision15TestLineOfSightERK8CColLineRK7CMatrixR9CColModelbb; CCollision::TestLineOfSight(CColLine const&,CMatrix const&,CColModel &,bool,bool)
428560:  CMP             R0, #1
428562:  BEQ             loc_42856A
428564:  CMP             R4, #0
428566:  BNE             loc_4284E6
428568:  MOVS            R5, #1
42856A:  MOV             R0, R5
42856C:  ADD             SP, SP, #0xC
42856E:  POP.W           {R8-R11}
428572:  POP             {R4-R7,PC}
