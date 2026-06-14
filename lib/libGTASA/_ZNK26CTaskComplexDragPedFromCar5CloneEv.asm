; =========================================================
; Game Engine Function: _ZNK26CTaskComplexDragPedFromCar5CloneEv
; Address            : 0x4FDA68 - 0x4FDAE2
; =========================================================

4FDA68:  PUSH            {R4-R7,LR}
4FDA6A:  ADD             R7, SP, #0xC
4FDA6C:  PUSH.W          {R11}
4FDA70:  MOV             R5, R0
4FDA72:  MOVS            R0, #dword_54; this
4FDA74:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FDA78:  LDR             R6, [R5,#0x20]
4FDA7A:  MOV             R4, R0
4FDA7C:  LDR             R5, [R5,#0x50]
4FDA7E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FDA82:  LDR             R0, =(_ZTV26CTaskComplexDragPedFromCar_ptr - 0x4FDA92)
4FDA84:  VMOV.I32        Q8, #0
4FDA88:  ADD.W           R1, R4, #0x14
4FDA8C:  MOVS            R2, #6
4FDA8E:  ADD             R0, PC; _ZTV26CTaskComplexDragPedFromCar_ptr
4FDA90:  CMP             R5, #0
4FDA92:  VST1.32         {D16-D17}, [R1]
4FDA96:  MOV.W           R1, #0
4FDA9A:  LDR             R0, [R0]; `vtable for'CTaskComplexDragPedFromCar ...
4FDA9C:  STR             R1, [R4,#0xC]
4FDA9E:  STR             R2, [R4,#0x24]
4FDAA0:  ADD.W           R0, R0, #8
4FDAA4:  STRH            R1, [R4,#0x28]
4FDAA6:  STR             R1, [R4,#0x38]
4FDAA8:  STRB.W          R1, [R4,#0x3C]
4FDAAC:  STR             R1, [R4,#0x40]
4FDAAE:  STRB.W          R1, [R4,#0x44]
4FDAB2:  MOVW            R1, #0
4FDAB6:  LDRB            R2, [R4,#0x10]
4FDAB8:  MOVT            R1, #0xBF80
4FDABC:  STR             R1, [R4,#0x48]
4FDABE:  MOV             R1, R4
4FDAC0:  STR             R0, [R4]
4FDAC2:  AND.W           R0, R2, #0xF0
4FDAC6:  ORR.W           R0, R0, #4
4FDACA:  STRB            R0, [R4,#0x10]
4FDACC:  STR.W           R5, [R1,#0x50]!; CEntity **
4FDAD0:  ITT NE
4FDAD2:  MOVNE           R0, R5; this
4FDAD4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FDAD8:  STR             R6, [R4,#0x20]
4FDADA:  MOV             R0, R4
4FDADC:  POP.W           {R11}
4FDAE0:  POP             {R4-R7,PC}
