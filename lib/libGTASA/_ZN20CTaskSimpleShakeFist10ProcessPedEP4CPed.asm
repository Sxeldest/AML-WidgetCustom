; =========================================================
; Game Engine Function: _ZN20CTaskSimpleShakeFist10ProcessPedEP4CPed
; Address            : 0x540BE4 - 0x540C38
; =========================================================

540BE4:  PUSH            {R4,R5,R7,LR}
540BE6:  ADD             R7, SP, #8
540BE8:  MOV             R5, R0
540BEA:  LDRB            R0, [R5,#8]
540BEC:  CMP             R0, #0
540BEE:  ITTT NE
540BF0:  MOVNE           R4, #1
540BF2:  MOVNE           R0, R4
540BF4:  POPNE           {R4,R5,R7,PC}
540BF6:  LDR             R0, [R5,#0xC]
540BF8:  CMP             R0, #0
540BFA:  ITTT NE
540BFC:  MOVNE           R4, #0
540BFE:  MOVNE           R0, R4
540C00:  POPNE           {R4,R5,R7,PC}
540C02:  LDR             R0, [R1,#0x18]; int
540C04:  MOVS            R1, #0; int
540C06:  MOVS            R2, #0x90; unsigned int
540C08:  MOV.W           R3, #0x40800000
540C0C:  MOVS            R4, #0
540C0E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
540C12:  STR             R0, [R5,#0xC]
540C14:  LDRH            R1, [R0,#0x2E]
540C16:  ORR.W           R1, R1, #8
540C1A:  STRH            R1, [R0,#0x2E]
540C1C:  LDR             R0, [R5,#0xC]
540C1E:  LDR             R1, =(_ZN20CTaskSimpleShakeFist21FinishAnimShakeFistCBEP21CAnimBlendAssociationPv_ptr - 0x540C26)
540C20:  LDRH            R2, [R0,#0x2E]
540C22:  ADD             R1, PC; _ZN20CTaskSimpleShakeFist21FinishAnimShakeFistCBEP21CAnimBlendAssociationPv_ptr
540C24:  ORR.W           R2, R2, #4
540C28:  STRH            R2, [R0,#0x2E]
540C2A:  LDR             R0, [R5,#0xC]; this
540C2C:  MOV             R2, R5; void *
540C2E:  LDR             R1, [R1]; CTaskSimpleShakeFist::FinishAnimShakeFistCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
540C30:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
540C34:  MOV             R0, R4
540C36:  POP             {R4,R5,R7,PC}
