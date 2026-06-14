; =========================================================
; Game Engine Function: _ZNK21CTaskSimpleCarJumpOut5CloneEv
; Address            : 0x506F64 - 0x506FE0
; =========================================================

506F64:  PUSH            {R4-R7,LR}
506F66:  ADD             R7, SP, #0xC
506F68:  PUSH.W          {R8}
506F6C:  MOV             R6, R0
506F6E:  MOVS            R0, #dword_24; this
506F70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
506F74:  MOV             R4, R0
506F76:  LDR             R5, [R6,#0x10]
506F78:  LDR.W           R8, [R6,#0x18]
506F7C:  LDR             R6, [R6,#0x20]
506F7E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
506F82:  LDR             R0, =(_ZTV21CTaskSimpleCarJumpOut_ptr - 0x506F8E)
506F84:  MOVS            R1, #0
506F86:  STRB            R1, [R4,#8]
506F88:  CMP             R5, #0
506F8A:  ADD             R0, PC; _ZTV21CTaskSimpleCarJumpOut_ptr
506F8C:  STR             R1, [R4,#0xC]
506F8E:  STRD.W          R1, R8, [R4,#0x14]
506F92:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarJumpOut ...
506F94:  STRB            R1, [R4,#0x1C]
506F96:  STRB            R1, [R4,#0x1D]
506F98:  MOV             R1, R4
506F9A:  STR             R6, [R4,#0x20]
506F9C:  ADD.W           R0, R0, #8
506FA0:  STR             R0, [R4]
506FA2:  STR.W           R5, [R1,#0x10]!; CEntity **
506FA6:  BEQ             loc_506FD8
506FA8:  MOV             R0, R5; this
506FAA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
506FAE:  LDR             R0, [R4,#0x10]
506FB0:  VLDR            S0, [R0,#0x48]
506FB4:  VLDR            S2, [R0,#0x4C]
506FB8:  VMUL.F32        S0, S0, S0
506FBC:  VLDR            S4, [R0,#0x50]
506FC0:  VMUL.F32        S2, S2, S2
506FC4:  VMUL.F32        S4, S4, S4
506FC8:  VADD.F32        S0, S0, S2
506FCC:  VADD.F32        S0, S0, S4
506FD0:  VSQRT.F32       S0, S0
506FD4:  VSTR            S0, [R4,#0x14]
506FD8:  MOV             R0, R4
506FDA:  POP.W           {R8}
506FDE:  POP             {R4-R7,PC}
