; =========================================================
; Game Engine Function: _ZNK26CTaskComplexCarDriveWander5CloneEv
; Address            : 0x4FEE28 - 0x4FEE86
; =========================================================

4FEE28:  PUSH            {R4-R7,LR}
4FEE2A:  ADD             R7, SP, #0xC
4FEE2C:  PUSH.W          {R8}
4FEE30:  MOV             R6, R0
4FEE32:  MOVS            R0, #dword_24; this
4FEE34:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FEE38:  LDRD.W          R5, R8, [R6,#0xC]
4FEE3C:  MOV             R4, R0
4FEE3E:  LDR             R6, [R6,#0x18]
4FEE40:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FEE44:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FEE54)
4FEE46:  MOV.W           R1, #0xFFFFFFFF
4FEE4A:  STRD.W          R8, R1, [R4,#0x10]
4FEE4E:  MOVS            R1, #1
4FEE50:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FEE52:  STR             R6, [R4,#0x18]
4FEE54:  STRB            R1, [R4,#0x1C]
4FEE56:  MOVS            R1, #0
4FEE58:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FEE5A:  CMP             R5, #0
4FEE5C:  STRB.W          R1, [R4,#0x20]
4FEE60:  MOV             R1, R4
4FEE62:  ADD.W           R0, R0, #8
4FEE66:  STR             R0, [R4]
4FEE68:  STR.W           R5, [R1,#0xC]!; CEntity **
4FEE6C:  ITT NE
4FEE6E:  MOVNE           R0, R5; this
4FEE70:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FEE74:  LDR             R0, =(_ZTV26CTaskComplexCarDriveWander_ptr - 0x4FEE7A)
4FEE76:  ADD             R0, PC; _ZTV26CTaskComplexCarDriveWander_ptr
4FEE78:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDriveWander ...
4FEE7A:  ADDS            R0, #8
4FEE7C:  STR             R0, [R4]
4FEE7E:  MOV             R0, R4
4FEE80:  POP.W           {R8}
4FEE84:  POP             {R4-R7,PC}
