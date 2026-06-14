; =========================================================
; Game Engine Function: _ZN17CTaskSimpleFacial13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x540CC4 - 0x540CF8
; =========================================================

540CC4:  LDR             R0, [R0,#0x14]
540CC6:  CMP             R0, #8
540CC8:  BHI             loc_540CD4
540CCA:  LDR             R2, =(unk_61E9B0 - 0x540CD0)
540CCC:  ADD             R2, PC; unk_61E9B0
540CCE:  LDR.W           R2, [R2,R0,LSL#2]
540CD2:  B               loc_540CD8
540CD4:  MOV.W           R2, #0xFFFFFFFF
540CD8:  PUSH            {R7,LR}
540CDA:  MOV             R7, SP
540CDC:  LDR             R0, [R1,#0x18]
540CDE:  MOV             R1, R2
540CE0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
540CE4:  CMP             R0, #0
540CE6:  POP.W           {R7,LR}
540CEA:  ITTT NE
540CEC:  MOVNE           R1, #0
540CEE:  MOVTNE          R1, #0xC080
540CF2:  STRNE           R1, [R0,#0x1C]
540CF4:  MOVS            R0, #1
540CF6:  BX              LR
