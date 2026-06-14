; =========================================================
; Game Engine Function: _ZN27CTaskComplexFallAndStayDown18CreateFirstSubTaskEP4CPed
; Address            : 0x52BD68 - 0x52BD9E
; =========================================================

52BD68:  PUSH            {R4,R5,R7,LR}
52BD6A:  ADD             R7, SP, #8
52BD6C:  MOV             R4, R0
52BD6E:  MOVS            R0, #dword_20; this
52BD70:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BD74:  LDRD.W          R5, R4, [R4,#0xC]
52BD78:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BD7C:  LDR             R1, =(_ZTV15CTaskSimpleFall_ptr - 0x52BD8C)
52BD7E:  MOVW            R3, #0xE0FF
52BD82:  MOVS            R2, #0
52BD84:  MOVT            R3, #0x5F5
52BD88:  ADD             R1, PC; _ZTV15CTaskSimpleFall_ptr
52BD8A:  STRB            R2, [R0,#8]
52BD8C:  STRD.W          R5, R4, [R0,#0xC]
52BD90:  LDR             R1, [R1]; `vtable for'CTaskSimpleFall ...
52BD92:  STRD.W          R2, R3, [R0,#0x14]
52BD96:  STR             R3, [R0,#0x1C]
52BD98:  ADDS            R1, #8
52BD9A:  STR             R1, [R0]
52BD9C:  POP             {R4,R5,R7,PC}
