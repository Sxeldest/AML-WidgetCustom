; =========================================================
; Game Engine Function: _ZN15CTaskSimpleAnimD2Ev
; Address            : 0x4D7D9C - 0x4D7E00
; =========================================================

4D7D9C:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CTaskSimpleAnim::~CTaskSimpleAnim()'
4D7D9E:  ADD             R7, SP, #8
4D7DA0:  MOV             R4, R0
4D7DA2:  LDR             R0, =(_ZTV15CTaskSimpleAnim_ptr - 0x4D7DA8)
4D7DA4:  ADD             R0, PC; _ZTV15CTaskSimpleAnim_ptr
4D7DA6:  LDR             R1, [R0]; `vtable for'CTaskSimpleAnim ...
4D7DA8:  LDR             R0, [R4,#8]; this
4D7DAA:  ADDS            R1, #8
4D7DAC:  STR             R1, [R4]
4D7DAE:  CBZ             R0, loc_4D7DF6
4D7DB0:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D7DBA)
4D7DB2:  MOVS            R2, #0; void *
4D7DB4:  MOVS            R5, #0
4D7DB6:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D7DB8:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D7DBA:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D7DBE:  LDR             R0, [R4,#8]
4D7DC0:  LDRH            R1, [R0,#0x2E]
4D7DC2:  ORR.W           R1, R1, #4
4D7DC6:  STRH            R1, [R0,#0x2E]
4D7DC8:  LDRB            R0, [R4,#0xC]
4D7DCA:  LSLS            R0, R0, #0x1D
4D7DCC:  BMI             loc_4D7DF4
4D7DCE:  LDR             R0, [R4,#8]
4D7DD0:  VLDR            S0, [R0,#0x18]
4D7DD4:  VCMPE.F32       S0, #0.0
4D7DD8:  VMRS            APSR_nzcv, FPSCR
4D7DDC:  BLE             loc_4D7DF4
4D7DDE:  VLDR            S0, [R0,#0x1C]
4D7DE2:  VCMPE.F32       S0, #0.0
4D7DE6:  VMRS            APSR_nzcv, FPSCR
4D7DEA:  ITTT GE
4D7DEC:  MOVGE           R1, #0
4D7DEE:  MOVTGE          R1, #0xC080
4D7DF2:  STRGE           R1, [R0,#0x1C]
4D7DF4:  STR             R5, [R4,#8]
4D7DF6:  MOV             R0, R4; this
4D7DF8:  POP.W           {R4,R5,R7,LR}
4D7DFC:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
