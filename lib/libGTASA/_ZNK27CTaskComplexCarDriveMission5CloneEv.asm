; =========================================================
; Game Engine Function: _ZNK27CTaskComplexCarDriveMission5CloneEv
; Address            : 0x4FEF98 - 0x4FF014
; =========================================================

4FEF98:  PUSH            {R4-R7,LR}
4FEF9A:  ADD             R7, SP, #0xC
4FEF9C:  PUSH.W          {R8-R10}
4FEFA0:  MOV             R5, R0
4FEFA2:  MOVS            R0, #word_2C; this
4FEFA4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FEFA8:  LDRD.W          R6, R9, [R5,#0xC]
4FEFAC:  MOV             R4, R0
4FEFAE:  LDR.W           R10, [R5,#0x18]
4FEFB2:  LDRD.W          R8, R5, [R5,#0x24]
4FEFB6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FEFBA:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FEFCA)
4FEFBC:  MOV.W           R1, #0xFFFFFFFF
4FEFC0:  STRD.W          R9, R1, [R4,#0x10]
4FEFC4:  MOVS            R1, #1
4FEFC6:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FEFC8:  STR.W           R10, [R4,#0x18]
4FEFCC:  STRB            R1, [R4,#0x1C]
4FEFCE:  MOVS            R1, #0
4FEFD0:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FEFD2:  CMP             R6, #0
4FEFD4:  STRB.W          R1, [R4,#0x20]
4FEFD8:  MOV             R1, R4
4FEFDA:  ADD.W           R0, R0, #8
4FEFDE:  STR             R0, [R4]
4FEFE0:  STR.W           R6, [R1,#0xC]!; CEntity **
4FEFE4:  ITT NE
4FEFE6:  MOVNE           R0, R6; this
4FEFE8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FEFEC:  LDR             R0, =(_ZTV27CTaskComplexCarDriveMission_ptr - 0x4FEFFA)
4FEFEE:  MOV             R1, R4
4FEFF0:  STR             R5, [R4,#0x28]
4FEFF2:  CMP.W           R8, #0
4FEFF6:  ADD             R0, PC; _ZTV27CTaskComplexCarDriveMission_ptr
4FEFF8:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDriveMission ...
4FEFFA:  ADD.W           R0, R0, #8
4FEFFE:  STR             R0, [R4]
4FF000:  STR.W           R8, [R1,#0x24]!; CEntity **
4FF004:  ITT NE
4FF006:  MOVNE           R0, R8; this
4FF008:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FF00C:  MOV             R0, R4
4FF00E:  POP.W           {R8-R10}
4FF012:  POP             {R4-R7,PC}
