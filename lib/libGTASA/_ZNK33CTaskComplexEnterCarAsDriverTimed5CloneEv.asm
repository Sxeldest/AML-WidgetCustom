; =========================================================
; Game Engine Function: _ZNK33CTaskComplexEnterCarAsDriverTimed5CloneEv
; Address            : 0x4FDBF0 - 0x4FDC44
; =========================================================

4FDBF0:  PUSH            {R4-R7,LR}
4FDBF2:  ADD             R7, SP, #0xC
4FDBF4:  PUSH.W          {R8}
4FDBF8:  MOV             R4, R0
4FDBFA:  MOVS            R0, #dword_24; this
4FDBFC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FDC00:  MOV             R5, R0
4FDC02:  LDRD.W          R6, R8, [R4,#0xC]
4FDC06:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4FDC0A:  LDR             R0, =(_ZTV33CTaskComplexEnterCarAsDriverTimed_ptr - 0x4FDC18)
4FDC0C:  MOVS            R1, #6
4FDC0E:  STR.W           R8, [R5,#0x10]
4FDC12:  CMP             R6, #0
4FDC14:  ADD             R0, PC; _ZTV33CTaskComplexEnterCarAsDriverTimed_ptr
4FDC16:  STR             R1, [R5,#0x14]
4FDC18:  MOV.W           R1, #0
4FDC1C:  LDR             R0, [R0]; `vtable for'CTaskComplexEnterCarAsDriverTimed ...
4FDC1E:  STRH            R1, [R5,#0x20]
4FDC20:  STRD.W          R1, R1, [R5,#0x18]
4FDC24:  MOV             R1, R5
4FDC26:  ADD.W           R0, R0, #8
4FDC2A:  STR             R0, [R5]
4FDC2C:  STR.W           R6, [R1,#0xC]!; CEntity **
4FDC30:  ITT NE
4FDC32:  MOVNE           R0, R6; this
4FDC34:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FDC38:  LDR             R0, [R4,#0x14]
4FDC3A:  STR             R0, [R5,#0x14]
4FDC3C:  MOV             R0, R5
4FDC3E:  POP.W           {R8}
4FDC42:  POP             {R4-R7,PC}
