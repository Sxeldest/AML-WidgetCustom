; =========================================================
; Game Engine Function: _ZNK25CTaskComplexWaitForBackup5CloneEv
; Address            : 0x547F70 - 0x547FD0
; =========================================================

547F70:  PUSH            {R4-R7,LR}
547F72:  ADD             R7, SP, #0xC
547F74:  PUSH.W          {R8}
547F78:  MOV             R5, R0
547F7A:  MOVS            R0, #dword_24; this
547F7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547F80:  LDRD.W          R6, R8, [R5,#0xC]
547F84:  MOV             R4, R0
547F86:  LDR             R5, [R5,#0x14]
547F88:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
547F8C:  LDR             R0, =(_ZTV25CTaskComplexWaitForBackup_ptr - 0x547F98)
547F8E:  MOVS            R1, #0
547F90:  STR             R6, [R4,#0xC]
547F92:  MOV             R6, R4
547F94:  ADD             R0, PC; _ZTV25CTaskComplexWaitForBackup_ptr
547F96:  STRH            R1, [R4,#0x20]
547F98:  STRD.W          R1, R1, [R4,#0x18]
547F9C:  MOV             R1, R4
547F9E:  LDR             R0, [R0]; `vtable for'CTaskComplexWaitForBackup ...
547FA0:  CMP.W           R8, #0
547FA4:  ADD.W           R0, R0, #8
547FA8:  STR             R0, [R4]
547FAA:  STR.W           R5, [R6,#0x14]!
547FAE:  STR.W           R8, [R1,#0x10]!; CEntity **
547FB2:  BEQ             loc_547FBC
547FB4:  MOV             R0, R8; this
547FB6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
547FBA:  LDR             R5, [R6]
547FBC:  CMP             R5, #0
547FBE:  ITTT NE
547FC0:  MOVNE           R0, R5; this
547FC2:  MOVNE           R1, R6; CEntity **
547FC4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
547FC8:  MOV             R0, R4
547FCA:  POP.W           {R8}
547FCE:  POP             {R4-R7,PC}
