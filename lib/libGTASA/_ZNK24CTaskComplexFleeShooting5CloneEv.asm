; =========================================================
; Game Engine Function: _ZNK24CTaskComplexFleeShooting5CloneEv
; Address            : 0x514E6C - 0x514F10
; =========================================================

514E6C:  PUSH            {R4-R7,LR}
514E6E:  ADD             R7, SP, #0xC
514E70:  PUSH.W          {R8-R11}
514E74:  SUB             SP, SP, #0xC
514E76:  MOV             R6, R0
514E78:  MOVS            R0, #dword_54; this
514E7A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514E7E:  LDR.W           R10, [R6,#0xC]
514E82:  MOV             R4, R0
514E84:  LDRD.W          R5, R11, [R6,#0x1C]
514E88:  LDR             R0, [R6,#0x40]
514E8A:  STR             R0, [SP,#0x28+var_20]
514E8C:  LDR             R0, [R6,#0x44]
514E8E:  STR             R0, [SP,#0x28+var_24]
514E90:  MOV             R0, R4; this
514E92:  LDRD.W          R8, R9, [R6,#0x28]
514E96:  LDRB.W          R6, [R6,#0x24]
514E9A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
514E9E:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514EAC)
514EA0:  MOVS            R1, #7
514EA2:  STRB.W          R6, [R4,#0x24]
514EA6:  MOV             R6, R4
514EA8:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514EAA:  STR.W           R8, [R4,#0x28]
514EAE:  STRD.W          R5, R11, [R4,#0x1C]
514EB2:  MOVS            R5, #0
514EB4:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514EB6:  CMP.W           R10, #0
514EBA:  STR.W           R9, [R4,#0x2C]
514EBE:  STR             R1, [R4,#0x30]
514EC0:  ADD.W           R0, R0, #8
514EC4:  STRH            R5, [R4,#0x3C]
514EC6:  STRD.W          R5, R5, [R4,#0x34]
514ECA:  STR             R0, [R4]
514ECC:  STR.W           R10, [R6,#0xC]!
514ED0:  BEQ             loc_514EDE
514ED2:  MOV             R0, R10; this
514ED4:  MOV             R1, R6; CEntity **
514ED6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
514EDA:  LDR             R0, [R6]
514EDC:  B               loc_514EE0
514EDE:  MOVS            R0, #0; this
514EE0:  LDR             R1, =(_ZTV24CTaskComplexFleeShooting_ptr - 0x514EEA)
514EE2:  CMP             R0, #0
514EE4:  LDR             R2, [SP,#0x28+var_20]
514EE6:  ADD             R1, PC; _ZTV24CTaskComplexFleeShooting_ptr
514EE8:  STR             R2, [R4,#0x40]
514EEA:  LDR             R2, [SP,#0x28+var_24]
514EEC:  LDR             R1, [R1]; `vtable for'CTaskComplexFleeShooting ...
514EEE:  STR             R2, [R4,#0x44]
514EF0:  STRH.W          R5, [R4,#0x50]
514EF4:  ADD.W           R1, R1, #8
514EF8:  STRD.W          R5, R5, [R4,#0x48]
514EFC:  STR             R1, [R4]
514EFE:  ITT NE
514F00:  MOVNE           R1, R6; CEntity **
514F02:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
514F06:  MOV             R0, R4
514F08:  ADD             SP, SP, #0xC
514F0A:  POP.W           {R8-R11}
514F0E:  POP             {R4-R7,PC}
