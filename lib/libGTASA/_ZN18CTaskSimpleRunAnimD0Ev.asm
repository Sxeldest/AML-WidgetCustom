; =========================================================
; Game Engine Function: _ZN18CTaskSimpleRunAnimD0Ev
; Address            : 0x4D7FFC - 0x4D8064
; =========================================================

4D7FFC:  PUSH            {R4,R5,R7,LR}
4D7FFE:  ADD             R7, SP, #8
4D8000:  MOV             R4, R0
4D8002:  LDR             R0, =(_ZTV15CTaskSimpleAnim_ptr - 0x4D8008)
4D8004:  ADD             R0, PC; _ZTV15CTaskSimpleAnim_ptr
4D8006:  LDR             R1, [R0]; `vtable for'CTaskSimpleAnim ...
4D8008:  LDR             R0, [R4,#8]; this
4D800A:  ADDS            R1, #8
4D800C:  STR             R1, [R4]
4D800E:  CBZ             R0, loc_4D8056
4D8010:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D801A)
4D8012:  MOVS            R2, #0; void *
4D8014:  MOVS            R5, #0
4D8016:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4D8018:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D801A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D801E:  LDR             R0, [R4,#8]
4D8020:  LDRH            R1, [R0,#0x2E]
4D8022:  ORR.W           R1, R1, #4
4D8026:  STRH            R1, [R0,#0x2E]
4D8028:  LDRB            R0, [R4,#0xC]
4D802A:  LSLS            R0, R0, #0x1D
4D802C:  BMI             loc_4D8054
4D802E:  LDR             R0, [R4,#8]
4D8030:  VLDR            S0, [R0,#0x18]
4D8034:  VCMPE.F32       S0, #0.0
4D8038:  VMRS            APSR_nzcv, FPSCR
4D803C:  BLE             loc_4D8054
4D803E:  VLDR            S0, [R0,#0x1C]
4D8042:  VCMPE.F32       S0, #0.0
4D8046:  VMRS            APSR_nzcv, FPSCR
4D804A:  ITTT GE
4D804C:  MOVGE           R1, #0
4D804E:  MOVTGE          R1, #0xC080
4D8052:  STRGE           R1, [R0,#0x1C]
4D8054:  STR             R5, [R4,#8]
4D8056:  MOV             R0, R4; this
4D8058:  BLX             j__ZN5CTaskD2Ev; CTask::~CTask()
4D805C:  POP.W           {R4,R5,R7,LR}
4D8060:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
