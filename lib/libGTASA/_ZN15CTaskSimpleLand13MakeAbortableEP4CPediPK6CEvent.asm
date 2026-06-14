; =========================================================
; Game Engine Function: _ZN15CTaskSimpleLand13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x52CC2C - 0x52CC90
; =========================================================

52CC2C:  PUSH            {R4-R7,LR}
52CC2E:  ADD             R7, SP, #0xC
52CC30:  PUSH.W          {R8}
52CC34:  MOV             R4, R1
52CC36:  MOV             R5, R0
52CC38:  CMP             R2, #2
52CC3A:  BNE             loc_52CC88
52CC3C:  LDR             R0, [R5,#8]
52CC3E:  CBZ             R0, loc_52CC74
52CC40:  MOVS            R2, #0
52CC42:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52CC52)
52CC44:  MOVT            R2, #0xC47A
52CC48:  MOV.W           R8, #0
52CC4C:  STR             R2, [R0,#0x1C]
52CC4E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52CC50:  LDR             R0, [R5,#8]
52CC52:  LDR             R6, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *)
52CC54:  LDRH            R2, [R0,#0x2E]
52CC56:  ORR.W           R1, R2, #4
52CC5A:  STRH            R1, [R0,#0x2E]
52CC5C:  LDR             R0, [R5,#8]; this
52CC5E:  MOV             R1, R6; void (*)(CAnimBlendAssociation *, void *)
52CC60:  MOVS            R2, #0; void *
52CC62:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52CC66:  LDR             R0, [R5,#8]; this
52CC68:  MOV             R1, R6; void (*)(CAnimBlendAssociation *, void *)
52CC6A:  MOVS            R2, #0; void *
52CC6C:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52CC70:  STR.W           R8, [R5,#8]
52CC74:  LDR.W           R0, [R4,#0x484]
52CC78:  BIC.W           R0, R0, #0x400
52CC7C:  STR.W           R0, [R4,#0x484]
52CC80:  MOVS            R0, #1
52CC82:  POP.W           {R8}
52CC86:  POP             {R4-R7,PC}
52CC88:  MOVS            R0, #0
52CC8A:  POP.W           {R8}
52CC8E:  POP             {R4-R7,PC}
