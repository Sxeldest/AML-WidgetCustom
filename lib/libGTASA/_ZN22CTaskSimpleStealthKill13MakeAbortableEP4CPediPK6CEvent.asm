; =========================================================
; Game Engine Function: _ZN22CTaskSimpleStealthKill13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4E86D8 - 0x4E8760
; =========================================================

4E86D8:  PUSH            {R4-R7,LR}
4E86DA:  ADD             R7, SP, #0xC
4E86DC:  PUSH.W          {R11}
4E86E0:  MOV             R6, R3
4E86E2:  MOV             R4, R0
4E86E4:  CMP             R2, #1
4E86E6:  BEQ             loc_4E8710
4E86E8:  CMP             R2, #2
4E86EA:  BNE             loc_4E8714
4E86EC:  LDR             R0, [R4,#0x18]
4E86EE:  CBZ             R0, loc_4E870A
4E86F0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4E86FE)
4E86F2:  MOVS            R2, #0xC47A0000
4E86F8:  MOVS            R5, #0
4E86FA:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4E86FC:  STR             R2, [R0,#0x1C]
4E86FE:  LDR             R0, [R4,#0x18]; this
4E8700:  MOVS            R2, #0; void *
4E8702:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4E8704:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4E8708:  STR             R5, [R4,#0x18]
4E870A:  MOVS            R5, #1
4E870C:  STRB            R5, [R4,#0x14]
4E870E:  B               loc_4E8716
4E8710:  LDRB            R0, [R4,#8]
4E8712:  CBZ             R0, loc_4E871E
4E8714:  MOVS            R5, #0
4E8716:  MOV             R0, R5
4E8718:  POP.W           {R11}
4E871C:  POP             {R4-R7,PC}
4E871E:  LDR             R0, [R4,#0x18]
4E8720:  MOVS            R5, #0
4E8722:  CMP             R0, #0
4E8724:  IT NE
4E8726:  CMPNE           R6, #0
4E8728:  BEQ             loc_4E8716
4E872A:  LDRH            R0, [R0,#0x2C]
4E872C:  CMP.W           R0, #0x15E
4E8730:  BNE             loc_4E8716
4E8732:  LDR             R0, [R6]
4E8734:  LDR             R1, [R0,#8]
4E8736:  MOV             R0, R6
4E8738:  BLX             R1
4E873A:  CMP             R0, #9
4E873C:  BNE             loc_4E8714
4E873E:  LDR             R0, [R4,#0xC]
4E8740:  MOVS            R5, #0
4E8742:  LDR             R1, [R6,#0x10]
4E8744:  CMP             R1, R0
4E8746:  BNE             loc_4E8716
4E8748:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4E8752)
4E874A:  MOVS            R2, #1
4E874C:  LDR             R0, [R4,#0x18]; this
4E874E:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4E8750:  STRB            R2, [R4,#0x14]
4E8752:  MOVS            R2, #0; void *
4E8754:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4E8756:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4E875A:  STR             R5, [R4,#0x18]
4E875C:  MOVS            R5, #1
4E875E:  B               loc_4E8716
