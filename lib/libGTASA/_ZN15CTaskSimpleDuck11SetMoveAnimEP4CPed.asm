; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDuck11SetMoveAnimEP4CPed
; Address            : 0x543450 - 0x543572
; =========================================================

543450:  PUSH            {R4,R5,R7,LR}
543452:  ADD             R7, SP, #8
543454:  MOV             R4, R0
543456:  MOV             R5, R1
543458:  VLDR            S0, [R4,#0x1C]
54345C:  VCMP.F32        S0, #0.0
543460:  VMRS            APSR_nzcv, FPSCR
543464:  BEQ             loc_5434B6
543466:  LDR             R0, [R4,#0x14]; this
543468:  CBZ             R0, loc_543486
54346A:  LDRSH.W         R1, [R0,#0x2C]
54346E:  ORR.W           R1, R1, #2
543472:  CMP             R1, #0x3A ; ':'
543474:  BNE             locret_543570
543476:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x54347E)
543478:  MOVS            R2, #0; void *
54347A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
54347C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
54347E:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543482:  VLDR            S0, [R4,#0x1C]
543486:  VCMPE.F32       S0, #0.0
54348A:  LDR             R0, [R5,#0x18]; int
54348C:  VMRS            APSR_nzcv, FPSCR
543490:  MOV.W           R2, #0x39 ; '9'
543494:  MOV.W           R1, #0; int
543498:  MOV.W           R3, #0x41000000
54349C:  IT GT
54349E:  MOVGT           R2, #0x3B ; ';'; unsigned int
5434A0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5434A4:  LDR             R1, =(_ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5434AE)
5434A6:  MOV             R2, R4
5434A8:  STR             R0, [R4,#0x14]
5434AA:  ADD             R1, PC; _ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr
5434AC:  LDR             R1, [R1]; CTaskSimpleDuck::DeleteDuckAnimCB(CAnimBlendAssociation *,void *)
5434AE:  POP.W           {R4,R5,R7,LR}
5434B2:  B.W             sub_18C20C
5434B6:  VLDR            S0, [R4,#0x20]
5434BA:  VCMPE.F32       S0, #0.0
5434BE:  VMRS            APSR_nzcv, FPSCR
5434C2:  BLE             loc_543502
5434C4:  LDR             R0, [R4,#0x14]; this
5434C6:  CBZ             R0, loc_5434DA
5434C8:  LDRH            R1, [R0,#0x2C]
5434CA:  CMP             R1, #0x38 ; '8'
5434CC:  BNE             loc_5434FC
5434CE:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5434D6)
5434D0:  MOVS            R2, #0; void *
5434D2:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
5434D4:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5434D6:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5434DA:  LDR             R0, [R5,#0x18]; int
5434DC:  MOVS            R1, #0; int
5434DE:  MOVS            R2, #0x3A ; ':'; unsigned int
5434E0:  MOV.W           R3, #0x41000000
5434E4:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5434E8:  LDR             R1, =(_ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr - 0x5434F2)
5434EA:  MOV             R2, R4; void *
5434EC:  STR             R0, [R4,#0x14]
5434EE:  ADD             R1, PC; _ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr
5434F0:  LDR             R1, [R1]; CTaskSimpleDuck::DeleteDuckAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
5434F2:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
5434F6:  LDR             R0, [R4,#0x14]
5434F8:  VLDR            S0, [R4,#0x20]
5434FC:  VLDR            S2, =0.6
543500:  B               loc_543544
543502:  LDR             R0, [R4,#0x14]; this
543504:  BGE             loc_54354E
543506:  CBZ             R0, loc_54351A
543508:  LDRH            R1, [R0,#0x2C]
54350A:  CMP             R1, #0x3A ; ':'
54350C:  BNE             loc_54353C
54350E:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x543516)
543510:  MOVS            R2, #0; void *
543512:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
543514:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543516:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
54351A:  LDR             R0, [R5,#0x18]; int
54351C:  MOVS            R1, #0; int
54351E:  MOVS            R2, #0x38 ; '8'; unsigned int
543520:  MOV.W           R3, #0x41000000
543524:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
543528:  LDR             R1, =(_ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr - 0x543532)
54352A:  MOV             R2, R4; void *
54352C:  STR             R0, [R4,#0x14]
54352E:  ADD             R1, PC; _ZN15CTaskSimpleDuck16DeleteDuckAnimCBEP21CAnimBlendAssociationPv_ptr
543530:  LDR             R1, [R1]; CTaskSimpleDuck::DeleteDuckAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
543532:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
543536:  LDR             R0, [R4,#0x14]
543538:  VLDR            S0, [R4,#0x20]
54353C:  VLDR            S2, =0.6
543540:  VNEG.F32        S0, S0
543544:  VMAX.F32        D0, D0, D1
543548:  VSTR            S0, [R0,#0x24]
54354C:  POP             {R4,R5,R7,PC}
54354E:  CBZ             R0, locret_543570
543550:  LDRSH.W         R1, [R0,#0x2C]
543554:  ORR.W           R1, R1, #2
543558:  CMP             R1, #0x3A ; ':'
54355A:  IT NE
54355C:  POPNE           {R4,R5,R7,PC}
54355E:  LDRH            R1, [R0,#0x2E]
543560:  BIC.W           R1, R1, #1
543564:  STRH            R1, [R0,#0x2E]
543566:  LDR             R0, [R4,#0x14]
543568:  MOVS            R1, #0xC0800000
54356E:  STR             R1, [R0,#0x1C]
543570:  POP             {R4,R5,R7,PC}
