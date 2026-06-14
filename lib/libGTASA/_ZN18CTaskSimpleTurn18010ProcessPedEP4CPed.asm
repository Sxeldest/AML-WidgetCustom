; =========================================================
; Game Engine Function: _ZN18CTaskSimpleTurn18010ProcessPedEP4CPed
; Address            : 0x4ECE40 - 0x4ECE84
; =========================================================

4ECE40:  PUSH            {R4,R5,R7,LR}
4ECE42:  ADD             R7, SP, #8
4ECE44:  MOV             R5, R0
4ECE46:  LDRB            R0, [R5,#8]
4ECE48:  CBZ             R0, loc_4ECE56
4ECE4A:  MOV             R0, R1; this
4ECE4C:  BLX             j__ZN4CPed18RestoreHeadingRateEv; CPed::RestoreHeadingRate(void)
4ECE50:  MOVS            R4, #1
4ECE52:  MOV             R0, R4
4ECE54:  POP             {R4,R5,R7,PC}
4ECE56:  LDR             R0, [R5,#0xC]
4ECE58:  MOVS            R4, #0
4ECE5A:  CBZ             R0, loc_4ECE60
4ECE5C:  MOV             R0, R4
4ECE5E:  POP             {R4,R5,R7,PC}
4ECE60:  LDR             R0, [R1,#0x18]; int
4ECE62:  MOVS            R2, #0x88; unsigned int
4ECE64:  STR.W           R4, [R1,#0x564]
4ECE68:  MOVS            R1, #0; int
4ECE6A:  MOV.W           R3, #0x40800000
4ECE6E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4ECE72:  LDR             R1, =(_ZN18CTaskSimpleTurn18019FinishAnimTurn180CBEP21CAnimBlendAssociationPv_ptr - 0x4ECE7C)
4ECE74:  MOV             R2, R5; void *
4ECE76:  STR             R0, [R5,#0xC]
4ECE78:  ADD             R1, PC; _ZN18CTaskSimpleTurn18019FinishAnimTurn180CBEP21CAnimBlendAssociationPv_ptr
4ECE7A:  LDR             R1, [R1]; CTaskSimpleTurn180::FinishAnimTurn180CB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4ECE7C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4ECE80:  MOV             R0, R4
4ECE82:  POP             {R4,R5,R7,PC}
