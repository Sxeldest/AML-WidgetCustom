; =========================================================
; Game Engine Function: _ZNK20CTaskComplexCarDrive5CloneEv
; Address            : 0x4FEC68 - 0x4FECC0
; =========================================================

4FEC68:  PUSH            {R4-R7,LR}
4FEC6A:  ADD             R7, SP, #0xC
4FEC6C:  PUSH.W          {R8-R10}
4FEC70:  MOV             R4, R0
4FEC72:  MOVS            R0, #dword_24; this
4FEC74:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FEC78:  ADD.W           R10, R4, #0xC
4FEC7C:  MOV             R5, R0
4FEC7E:  LDM.W           R10, {R6,R8-R10}
4FEC82:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FEC86:  LDR             R0, =(_ZTV20CTaskComplexCarDrive_ptr - 0x4FEC96)
4FEC88:  ADD.W           R1, R5, #0x10
4FEC8C:  STM.W           R1, {R8-R10}
4FEC90:  MOVS            R1, #1
4FEC92:  ADD             R0, PC; _ZTV20CTaskComplexCarDrive_ptr
4FEC94:  STRB            R1, [R5,#0x1C]
4FEC96:  MOVS            R1, #0
4FEC98:  LDR             R0, [R0]; `vtable for'CTaskComplexCarDrive ...
4FEC9A:  CMP             R6, #0
4FEC9C:  STRB.W          R1, [R5,#0x20]
4FECA0:  MOV             R1, R5
4FECA2:  ADD.W           R0, R0, #8
4FECA6:  STR             R0, [R5]
4FECA8:  STR.W           R6, [R1,#0xC]!; CEntity **
4FECAC:  ITT NE
4FECAE:  MOVNE           R0, R6; this
4FECB0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FECB4:  LDRB            R0, [R4,#0x1C]
4FECB6:  STRB            R0, [R5,#0x1C]
4FECB8:  MOV             R0, R5
4FECBA:  POP.W           {R8-R10}
4FECBE:  POP             {R4-R7,PC}
