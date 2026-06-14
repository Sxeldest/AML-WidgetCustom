; =========================================================
; Game Engine Function: _ZN6CWorld3AddEP7CEntity
; Address            : 0x4233C8 - 0x423418
; =========================================================

4233C8:  PUSH            {R4,R6,R7,LR}
4233CA:  ADD             R7, SP, #8
4233CC:  MOV             R4, R0
4233CE:  LDR             R0, [R4,#0x18]
4233D0:  CBZ             R0, loc_4233E6
4233D2:  LDR             R1, [R0,#4]
4233D4:  LDR             R0, [R4,#0x14]
4233D6:  ADDS            R1, #0x10
4233D8:  CBZ             R0, loc_4233E0
4233DA:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
4233DE:  B               loc_4233E6
4233E0:  ADDS            R0, R4, #4
4233E2:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
4233E6:  MOV             R0, R4; this
4233E8:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
4233EC:  LDR             R0, [R4]
4233EE:  LDR             R1, [R0,#8]
4233F0:  MOV             R0, R4
4233F2:  BLX             R1
4233F4:  LDRB.W          R0, [R4,#0x3A]
4233F8:  MOVS            R1, #1
4233FA:  BFI.W           R0, R1, #2, #0x1E
4233FE:  CMP             R0, #5
423400:  IT EQ
423402:  POPEQ           {R4,R6,R7,PC}
423404:  LDR             R0, [R4,#0x1C]
423406:  TST.W           R0, #0x40004
42340A:  BEQ             loc_42340E
42340C:  POP             {R4,R6,R7,PC}
42340E:  MOV             R0, R4; this
423410:  POP.W           {R4,R6,R7,LR}
423414:  B.W             sub_18BFE0
