; =========================================================
; Game Engine Function: _ZN33CTaskSimpleDuckWhileShotsWhizzingD2Ev
; Address            : 0x542E20 - 0x542EAA
; =========================================================

542E20:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CTaskSimpleDuck::~CTaskSimpleDuck()'
542E22:  ADD             R7, SP, #8
542E24:  MOV             R4, R0
542E26:  LDR             R0, =(_ZTV15CTaskSimpleDuck_ptr - 0x542E2C)
542E28:  ADD             R0, PC; _ZTV15CTaskSimpleDuck_ptr
542E2A:  LDR             R1, [R0]; `vtable for'CTaskSimpleDuck ...
542E2C:  LDR             R0, [R4,#0x10]; this
542E2E:  ADDS            R1, #8
542E30:  STR             R1, [R4]
542E32:  CBZ             R0, loc_542E6C
542E34:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x542E3C)
542E36:  MOVS            R2, #0; void *
542E38:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
542E3A:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
542E3C:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
542E40:  LDR             R0, [R4,#0x10]
542E42:  VLDR            S0, [R0,#0x18]
542E46:  VCMPE.F32       S0, #0.0
542E4A:  VMRS            APSR_nzcv, FPSCR
542E4E:  BLE             loc_542E6C
542E50:  VLDR            S0, [R0,#0x1C]
542E54:  VCMPE.F32       S0, #0.0
542E58:  VMRS            APSR_nzcv, FPSCR
542E5C:  BLT             loc_542E6C
542E5E:  LDRB.W          R1, [R0,#0x2E]
542E62:  LSLS            R1, R1, #0x1B
542E64:  ITT MI
542E66:  MOVMI.W         R1, #0xC1000000
542E6A:  STRMI           R1, [R0,#0x1C]
542E6C:  LDR             R0, [R4,#0x14]; this
542E6E:  CBZ             R0, loc_542EA0
542E70:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x542E78)
542E72:  MOVS            R2, #0; void *
542E74:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
542E76:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
542E78:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
542E7C:  LDR             R0, [R4,#0x14]
542E7E:  VLDR            S0, [R0,#0x18]
542E82:  VCMPE.F32       S0, #0.0
542E86:  VMRS            APSR_nzcv, FPSCR
542E8A:  BLE             loc_542EA0
542E8C:  VLDR            S0, [R0,#0x1C]
542E90:  VCMPE.F32       S0, #0.0
542E94:  VMRS            APSR_nzcv, FPSCR
542E98:  ITT GE
542E9A:  MOVGE.W         R1, #0xC1000000
542E9E:  STRGE           R1, [R0,#0x1C]
542EA0:  MOV             R0, R4; this
542EA2:  POP.W           {R4,R6,R7,LR}
542EA6:  B.W             j_j__ZN5CTaskD2Ev; j_CTask::~CTask()
