; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleCarShuffle5CloneEv
; Address            : 0x506D30 - 0x506D7A
; =========================================================

506D30:  PUSH            {R4-R7,LR}
506D32:  ADD             R7, SP, #0xC
506D34:  PUSH.W          {R8}
506D38:  MOV             R6, R0
506D3A:  MOVS            R0, #dword_1C; this
506D3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506D40:  LDRD.W          R5, R8, [R6,#0x10]
506D44:  MOV             R4, R0
506D46:  LDR             R6, [R6,#0x18]
506D48:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506D4C:  LDR             R0, =(_ZTV21CTaskSimpleCarShuffle_ptr - 0x506D58)
506D4E:  MOVS            R1, #0
506D50:  STRB            R1, [R4,#8]
506D52:  CMP             R5, #0
506D54:  ADD             R0, PC; _ZTV21CTaskSimpleCarShuffle_ptr
506D56:  STR             R1, [R4,#0xC]
506D58:  MOV             R1, R4
506D5A:  STRD.W          R8, R6, [R4,#0x14]
506D5E:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarShuffle ...
506D60:  ADD.W           R0, R0, #8
506D64:  STR             R0, [R4]
506D66:  STR.W           R5, [R1,#0x10]!; CEntity **
506D6A:  ITT NE
506D6C:  MOVNE           R0, R5; this
506D6E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506D72:  MOV             R0, R4
506D74:  POP.W           {R8}
506D78:  POP             {R4-R7,PC}
