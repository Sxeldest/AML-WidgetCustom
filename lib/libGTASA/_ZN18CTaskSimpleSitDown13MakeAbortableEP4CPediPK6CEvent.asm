; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitDown13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4EBFE4 - 0x4EC03C
; =========================================================

4EBFE4:  PUSH            {R4,R5,R7,LR}
4EBFE6:  ADD             R7, SP, #8
4EBFE8:  MOV             R4, R0
4EBFEA:  CMP             R2, #2
4EBFEC:  BNE             loc_4EC004
4EBFEE:  LDR             R0, [R4,#0xC]
4EBFF0:  CBZ             R0, loc_4EC020
4EBFF2:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EC000)
4EBFF4:  MOVS            R2, #0xC47A0000
4EBFFA:  MOVS            R5, #0
4EBFFC:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EBFFE:  STR             R2, [R0,#0x1C]
4EC000:  LDR             R0, [R4,#0xC]
4EC002:  B               loc_4EC012
4EC004:  LDR             R0, [R4,#0xC]; this
4EC006:  CMP             R2, #1
4EC008:  BNE             loc_4EC024
4EC00A:  CBZ             R0, loc_4EC020
4EC00C:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4EC014)
4EC00E:  MOVS            R5, #0
4EC010:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4EC012:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4EC014:  MOVS            R2, #0; void *
4EC016:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4EC01A:  MOVS            R0, #1
4EC01C:  STR             R5, [R4,#0xC]
4EC01E:  POP             {R4,R5,R7,PC}
4EC020:  MOVS            R0, #1
4EC022:  POP             {R4,R5,R7,PC}
4EC024:  CBZ             R0, loc_4EC038
4EC026:  LDRH            R1, [R0,#0x2E]
4EC028:  ORR.W           R1, R1, #4
4EC02C:  STRH            R1, [R0,#0x2E]
4EC02E:  LDR             R0, [R4,#0xC]
4EC030:  MOVS            R1, #0xC0800000
4EC036:  STR             R1, [R0,#0x1C]
4EC038:  MOVS            R0, #0
4EC03A:  POP             {R4,R5,R7,PC}
