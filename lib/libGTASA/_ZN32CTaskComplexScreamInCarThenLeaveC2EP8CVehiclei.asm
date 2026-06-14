; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeaveC2EP8CVehiclei
; Address            : 0x4F9BA8 - 0x4F9BE8
; =========================================================

4F9BA8:  PUSH            {R4-R7,LR}
4F9BAA:  ADD             R7, SP, #0xC
4F9BAC:  PUSH.W          {R11}
4F9BB0:  MOV             R6, R2
4F9BB2:  MOV             R5, R1
4F9BB4:  MOV             R4, R0
4F9BB6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4F9BBA:  LDR             R0, =(_ZTV32CTaskComplexScreamInCarThenLeave_ptr - 0x4F9BC6)
4F9BBC:  MOVS            R1, #0
4F9BBE:  STR             R6, [R4,#0x10]
4F9BC0:  CMP             R5, #0
4F9BC2:  ADD             R0, PC; _ZTV32CTaskComplexScreamInCarThenLeave_ptr
4F9BC4:  STRH            R1, [R4,#0x1C]
4F9BC6:  STRD.W          R1, R1, [R4,#0x14]
4F9BCA:  MOV             R1, R4
4F9BCC:  LDR             R0, [R0]; `vtable for'CTaskComplexScreamInCarThenLeave ...
4F9BCE:  ADD.W           R0, R0, #8
4F9BD2:  STR             R0, [R4]
4F9BD4:  STR.W           R5, [R1,#0xC]!; CEntity **
4F9BD8:  ITT NE
4F9BDA:  MOVNE           R0, R5; this
4F9BDC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F9BE0:  MOV             R0, R4
4F9BE2:  POP.W           {R11}
4F9BE6:  POP             {R4-R7,PC}
