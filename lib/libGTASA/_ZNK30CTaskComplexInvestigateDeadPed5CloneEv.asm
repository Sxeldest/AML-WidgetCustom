; =========================================================
; Game Engine Function: _ZNK30CTaskComplexInvestigateDeadPed5CloneEv
; Address            : 0x547D24 - 0x547D76
; =========================================================

547D24:  PUSH            {R4,R5,R7,LR}
547D26:  ADD             R7, SP, #8
547D28:  MOV             R5, R0
547D2A:  MOVS            R0, #off_3C; this
547D2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547D30:  MOV             R4, R0
547D32:  LDR             R5, [R5,#0xC]
547D34:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
547D38:  VMOV.I32        Q8, #0
547D3C:  LDR             R0, =(_ZTV30CTaskComplexInvestigateDeadPed_ptr - 0x547D48)
547D3E:  ADD.W           R1, R4, #0x2C ; ','
547D42:  CMP             R5, #0
547D44:  ADD             R0, PC; _ZTV30CTaskComplexInvestigateDeadPed_ptr
547D46:  VST1.32         {D16-D17}, [R1]
547D4A:  ADD.W           R1, R4, #0x1C
547D4E:  LDR             R0, [R0]; `vtable for'CTaskComplexInvestigateDeadPed ...
547D50:  VST1.32         {D16-D17}, [R1]
547D54:  MOV.W           R1, #0
547D58:  ADD.W           R0, R0, #8
547D5C:  STRH            R1, [R4,#0x18]
547D5E:  STRD.W          R1, R1, [R4,#0x10]
547D62:  MOV             R1, R4
547D64:  STR             R0, [R4]
547D66:  STR.W           R5, [R1,#0xC]!; CEntity **
547D6A:  ITT NE
547D6C:  MOVNE           R0, R5; this
547D6E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
547D72:  MOV             R0, R4
547D74:  POP             {R4,R5,R7,PC}
