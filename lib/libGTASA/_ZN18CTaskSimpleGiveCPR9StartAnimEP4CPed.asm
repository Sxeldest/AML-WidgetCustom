; =========================================================
; Game Engine Function: _ZN18CTaskSimpleGiveCPR9StartAnimEP4CPed
; Address            : 0x5103B0 - 0x5103D8
; =========================================================

5103B0:  PUSH            {R4,R6,R7,LR}
5103B2:  ADD             R7, SP, #8
5103B4:  MOV             R4, R0
5103B6:  LDR             R0, [R1,#0x18]; int
5103B8:  MOVS            R1, #0x2E ; '.'; int
5103BA:  MOV.W           R2, #0x104; unsigned int
5103BE:  MOV.W           R3, #0x40800000
5103C2:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5103C6:  LDR             R1, =(_ZN18CTaskSimpleGiveCPR19FinishGiveCPRAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5103D0)
5103C8:  MOV             R2, R4
5103CA:  STR             R0, [R4,#0x10]
5103CC:  ADD             R1, PC; _ZN18CTaskSimpleGiveCPR19FinishGiveCPRAnimCBEP21CAnimBlendAssociationPv_ptr
5103CE:  LDR             R1, [R1]; CTaskSimpleGiveCPR::FinishGiveCPRAnimCB(CAnimBlendAssociation *,void *)
5103D0:  POP.W           {R4,R6,R7,LR}
5103D4:  B.W             sub_18C20C
