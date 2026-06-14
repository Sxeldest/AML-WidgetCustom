; =========================================================
; Game Engine Function: _ZNK20CTaskSimpleCarGetOut5CloneEv
; Address            : 0x506F0C - 0x506F58
; =========================================================

506F0C:  PUSH            {R4-R7,LR}
506F0E:  ADD             R7, SP, #0xC
506F10:  PUSH.W          {R8}
506F14:  MOV             R6, R0
506F16:  MOVS            R0, #dword_20; this
506F18:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506F1C:  LDRD.W          R5, R8, [R6,#0x14]
506F20:  MOV             R4, R0
506F22:  LDR             R6, [R6,#0x1C]
506F24:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506F28:  LDR             R0, =(_ZTV20CTaskSimpleCarGetOut_ptr - 0x506F34)
506F2A:  MOVS            R1, #0
506F2C:  STRH            R1, [R4,#8]
506F2E:  CMP             R5, #0
506F30:  ADD             R0, PC; _ZTV20CTaskSimpleCarGetOut_ptr
506F32:  STR             R1, [R4,#0xC]
506F34:  STRB            R1, [R4,#0x10]
506F36:  MOV             R1, R4
506F38:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarGetOut ...
506F3A:  STRD.W          R8, R6, [R4,#0x18]
506F3E:  ADD.W           R0, R0, #8
506F42:  STR             R0, [R4]
506F44:  STR.W           R5, [R1,#0x14]!; CEntity **
506F48:  ITT NE
506F4A:  MOVNE           R0, R5; this
506F4C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506F50:  MOV             R0, R4
506F52:  POP.W           {R8}
506F56:  POP             {R4-R7,PC}
