; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeHitWhileMoving13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DF33C - 0x4DF37C
; =========================================================

4DF33C:  PUSH            {R4,R5,R7,LR}
4DF33E:  ADD             R7, SP, #8
4DF340:  MOV             R4, R0
4DF342:  SUBS            R1, R2, #1
4DF344:  LDR             R0, [R4,#0x14]; this
4DF346:  CMP             R1, #1
4DF348:  BHI             loc_4DF360
4DF34A:  CBZ             R0, loc_4DF378
4DF34C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4DF356)
4DF34E:  MOVS            R2, #0; void *
4DF350:  MOVS            R5, #0
4DF352:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4DF354:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4DF356:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4DF35A:  MOVS            R0, #1
4DF35C:  STR             R5, [R4,#0x14]
4DF35E:  POP             {R4,R5,R7,PC}
4DF360:  CBZ             R0, loc_4DF374
4DF362:  LDRH            R1, [R0,#0x2E]
4DF364:  ORR.W           R1, R1, #4
4DF368:  STRH            R1, [R0,#0x2E]
4DF36A:  LDR             R0, [R4,#0x14]
4DF36C:  MOVS            R1, #0xC0800000
4DF372:  STR             R1, [R0,#0x1C]
4DF374:  MOVS            R0, #0
4DF376:  POP             {R4,R5,R7,PC}
4DF378:  MOVS            R0, #1
4DF37A:  POP             {R4,R5,R7,PC}
