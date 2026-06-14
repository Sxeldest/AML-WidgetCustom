; =========================================================
; Game Engine Function: _ZN22CTaskInteriorSitAtDesk13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52A8FC - 0x52A936
; =========================================================

52A8FC:  PUSH            {R4,R5,R7,LR}
52A8FE:  ADD             R7, SP, #8
52A900:  MOV             R4, R0
52A902:  CMP             R2, #2
52A904:  BNE             loc_52A928
52A906:  LDR             R0, [R4,#0x14]
52A908:  CBZ             R0, loc_52A932
52A90A:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A918)
52A90C:  MOVS            R2, #0xC47A0000
52A912:  MOVS            R5, #0
52A914:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52A916:  STR             R2, [R0,#0x1C]
52A918:  LDR             R0, [R4,#0x14]; this
52A91A:  MOVS            R2, #0; void *
52A91C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A91E:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A922:  MOVS            R0, #1
52A924:  STR             R5, [R4,#0x14]
52A926:  POP             {R4,R5,R7,PC}
52A928:  MOVS            R0, #1
52A92A:  STRB.W          R0, [R4,#0x36]
52A92E:  MOVS            R0, #0
52A930:  POP             {R4,R5,R7,PC}
52A932:  MOVS            R0, #1
52A934:  POP             {R4,R5,R7,PC}
