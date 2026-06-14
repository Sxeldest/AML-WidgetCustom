; =========================================================
; Game Engine Function: _ZNK20CTaskComplexCopInCar5CloneEv
; Address            : 0x540A60 - 0x540AF8
; =========================================================

540A60:  PUSH            {R4-R7,LR}
540A62:  ADD             R7, SP, #0xC
540A64:  PUSH.W          {R8-R10}
540A68:  MOV             R5, R0
540A6A:  MOVS            R0, #dword_34; this
540A6C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
540A70:  ADD.W           R10, R5, #0xC
540A74:  MOV             R4, R0
540A76:  LDM.W           R10, {R8-R10}
540A7A:  LDRB.W          R5, [R5,#0x30]
540A7E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
540A82:  LDR             R0, =(_ZTV20CTaskComplexCopInCar_ptr - 0x540A8E)
540A84:  MOVS            R1, #0
540A86:  STRH            R1, [R4,#0x20]
540A88:  MOV             R6, R4
540A8A:  ADD             R0, PC; _ZTV20CTaskComplexCopInCar_ptr
540A8C:  STRH            R1, [R4,#0x2C]
540A8E:  STRD.W          R1, R1, [R4,#0x24]
540A92:  CMP.W           R8, #0
540A96:  LDR             R0, [R0]; `vtable for'CTaskComplexCopInCar ...
540A98:  STRD.W          R1, R1, [R4,#0x18]
540A9C:  LDRB.W          R1, [R4,#0x30]
540AA0:  ADD.W           R0, R0, #8
540AA4:  STR             R0, [R4]
540AA6:  AND.W           R0, R5, #1
540AAA:  AND.W           R1, R1, #0xFA
540AAE:  MOV             R5, R4
540AB0:  ORR.W           R0, R0, R1
540AB4:  MOV             R1, R4
540AB6:  ORR.W           R0, R0, #4
540ABA:  STRB.W          R0, [R4,#0x30]
540ABE:  STR.W           R10, [R6,#0x14]!
540AC2:  STR.W           R9, [R5,#0x10]!
540AC6:  STR.W           R8, [R1,#0xC]!; CEntity **
540ACA:  BEQ             loc_540AD6
540ACC:  MOV             R0, R8; this
540ACE:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
540AD2:  LDR.W           R9, [R5]
540AD6:  CMP.W           R9, #0
540ADA:  ITTT NE
540ADC:  MOVNE           R0, R9; this
540ADE:  MOVNE           R1, R5; CEntity **
540AE0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
540AE4:  LDR             R0, [R6]; this
540AE6:  CMP             R0, #0
540AE8:  ITT NE
540AEA:  MOVNE           R1, R6; CEntity **
540AEC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
540AF0:  MOV             R0, R4
540AF2:  POP.W           {R8-R10}
540AF6:  POP             {R4-R7,PC}
