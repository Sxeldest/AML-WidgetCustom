; =========================================================
; Game Engine Function: _ZNK24CTaskComplexFleeAnyMeans5CloneEv
; Address            : 0x514F20 - 0x514FCA
; =========================================================

514F20:  PUSH            {R4-R7,LR}
514F22:  ADD             R7, SP, #0xC
514F24:  PUSH.W          {R8-R11}
514F28:  SUB             SP, SP, #0xC
514F2A:  MOV             R5, R0
514F2C:  MOVS            R0, #dword_54; this
514F2E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514F32:  MOV             R4, R0
514F34:  LDRB.W          R0, [R5,#0x40]
514F38:  STR             R0, [SP,#0x28+var_20]
514F3A:  LDR             R0, [R5,#0x44]
514F3C:  STR             R0, [SP,#0x28+var_24]
514F3E:  LDR             R0, [R5,#0x48]
514F40:  STR             R0, [SP,#0x28+var_28]
514F42:  MOV             R0, R4; this
514F44:  LDR.W           R11, [R5,#0x4C]
514F48:  LDRD.W          R8, R9, [R5,#0x28]
514F4C:  LDR             R6, [R5,#0xC]
514F4E:  LDRD.W          R10, R5, [R5,#0x1C]
514F52:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
514F56:  MOVS            R0, #7
514F58:  STRD.W          R10, R5, [R4,#0x1C]
514F5C:  STRD.W          R8, R9, [R4,#0x28]
514F60:  MOV             R5, R4
514F62:  STR             R0, [R4,#0x30]
514F64:  MOV.W           R8, #0
514F68:  LDR             R0, =(_ZTV27CTaskComplexSmartFleeEntity_ptr - 0x514F70)
514F6A:  CMP             R6, #0
514F6C:  ADD             R0, PC; _ZTV27CTaskComplexSmartFleeEntity_ptr
514F6E:  LDR             R0, [R0]; `vtable for'CTaskComplexSmartFleeEntity ...
514F70:  ADD.W           R0, R0, #8
514F74:  STR             R0, [R4]
514F76:  STR.W           R6, [R5,#0xC]!
514F7A:  STRB.W          R8, [R4,#0x24]
514F7E:  STRH.W          R8, [R4,#0x3C]
514F82:  STRD.W          R8, R8, [R4,#0x34]
514F86:  BEQ             loc_514F94
514F88:  MOV             R0, R6; this
514F8A:  MOV             R1, R5; CEntity **
514F8C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
514F90:  LDR             R0, [R5]
514F92:  B               loc_514F96
514F94:  MOVS            R0, #0; this
514F96:  LDR             R1, =(_ZTV24CTaskComplexFleeAnyMeans_ptr - 0x514FA0)
514F98:  CMP             R0, #0
514F9A:  LDR             R2, [SP,#0x28+var_20]
514F9C:  ADD             R1, PC; _ZTV24CTaskComplexFleeAnyMeans_ptr
514F9E:  STRB.W          R2, [R4,#0x40]
514FA2:  LDR             R2, [SP,#0x28+var_24]
514FA4:  STR             R2, [R4,#0x44]
514FA6:  LDR             R1, [R1]; `vtable for'CTaskComplexFleeAnyMeans ...
514FA8:  LDR             R2, [SP,#0x28+var_28]
514FAA:  STRD.W          R2, R11, [R4,#0x48]
514FAE:  ADD.W           R1, R1, #8
514FB2:  STR.W           R8, [R4,#0x50]
514FB6:  STR             R1, [R4]
514FB8:  ITT NE
514FBA:  MOVNE           R1, R5; CEntity **
514FBC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
514FC0:  MOV             R0, R4
514FC2:  ADD             SP, SP, #0xC
514FC4:  POP.W           {R8-R11}
514FC8:  POP             {R4-R7,PC}
