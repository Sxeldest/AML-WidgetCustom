; =========================================================
; Game Engine Function: _ZN30CTaskSimpleRunAnimLoopedMiddleD0Ev
; Address            : 0x4D82AC - 0x4D8314
; =========================================================

4D82AC:  PUSH            {R4,R5,R7,LR}
4D82AE:  ADD             R7, SP, #8
4D82B0:  MOV             R4, R0
4D82B2:  LDR             R0, =(_ZTV15CTaskSimpleAnim_ptr - 0x4D82B8)
4D82B4:  ADD             R0, PC; _ZTV15CTaskSimpleAnim_ptr
4D82B6:  LDR             R1, [R0]; `vtable for'CTaskSimpleAnim ...
4D82B8:  LDR             R0, [R4,#8]; this
4D82BA:  ADDS            R1, #8
4D82BC:  STR             R1, [R4]
4D82BE:  CBZ             R0, loc_4D8306
4D82C0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D82CA)
4D82C2:  MOVS            R2, #0; void *
4D82C4:  MOVS            R5, #0
4D82C6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D82C8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D82CA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D82CE:  LDR             R0, [R4,#8]
4D82D0:  LDRH            R1, [R0,#0x2E]
4D82D2:  ORR.W           R1, R1, #4
4D82D6:  STRH            R1, [R0,#0x2E]
4D82D8:  LDRB            R0, [R4,#0xC]
4D82DA:  LSLS            R0, R0, #0x1D
4D82DC:  BMI             loc_4D8304
4D82DE:  LDR             R0, [R4,#8]
4D82E0:  VLDR            S0, [R0,#0x18]
4D82E4:  VCMPE.F32       S0, #0.0
4D82E8:  VMRS            APSR_nzcv, FPSCR
4D82EC:  BLE             loc_4D8304
4D82EE:  VLDR            S0, [R0,#0x1C]
4D82F2:  VCMPE.F32       S0, #0.0
4D82F6:  VMRS            APSR_nzcv, FPSCR
4D82FA:  ITTT GE
4D82FC:  MOVGE           R1, #0
4D82FE:  MOVTGE          R1, #0xC080
4D8302:  STRGE           R1, [R0,#0x1C]
4D8304:  STR             R5, [R4,#8]
4D8306:  MOV             R0, R4; this
4D8308:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4D830C:  POP.W           {R4,R5,R7,LR}
4D8310:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
