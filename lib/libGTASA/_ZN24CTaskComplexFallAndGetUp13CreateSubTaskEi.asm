; =========================================================
; Game Engine Function: _ZN24CTaskComplexFallAndGetUp13CreateSubTaskEi
; Address            : 0x52BB9C - 0x52BBFE
; =========================================================

52BB9C:  PUSH            {R4-R7,LR}
52BB9E:  ADD             R7, SP, #0xC
52BBA0:  PUSH.W          {R8}
52BBA4:  MOV             R5, R0
52BBA6:  MOVS            R4, #0
52BBA8:  CMP             R1, #0xCD
52BBAA:  BEQ             loc_52BBDC
52BBAC:  CMP             R1, #0xCF
52BBAE:  BNE             loc_52BBF6
52BBB0:  MOVS            R0, #dword_20; this
52BBB2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BBB6:  LDRD.W          R6, R8, [R5,#0xC]
52BBBA:  MOV             R4, R0
52BBBC:  LDR             R5, [R5,#0x14]
52BBBE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BBC2:  LDR             R0, =(_ZTV15CTaskSimpleFall_ptr - 0x52BBCC)
52BBC4:  MOVS            R1, #0; unsigned int
52BBC6:  STRB            R1, [R4,#8]
52BBC8:  ADD             R0, PC; _ZTV15CTaskSimpleFall_ptr
52BBCA:  STRD.W          R6, R8, [R4,#0xC]
52BBCE:  STRD.W          R1, R5, [R4,#0x14]
52BBD2:  LDR             R0, [R0]; `vtable for'CTaskSimpleFall ...
52BBD4:  STR             R5, [R4,#0x1C]
52BBD6:  ADDS            R0, #8
52BBD8:  STR             R0, [R4]
52BBDA:  B               loc_52BBF6
52BBDC:  MOVS            R0, #word_10; this
52BBDE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52BBE2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
52BBE6:  LDR             R1, =(_ZTV16CTaskSimpleGetUp_ptr - 0x52BBEE)
52BBE8:  STRH            R4, [R0,#8]
52BBEA:  ADD             R1, PC; _ZTV16CTaskSimpleGetUp_ptr
52BBEC:  STR             R4, [R0,#0xC]
52BBEE:  MOV             R4, R0
52BBF0:  LDR             R1, [R1]; `vtable for'CTaskSimpleGetUp ...
52BBF2:  ADDS            R1, #8
52BBF4:  STR             R1, [R0]
52BBF6:  MOV             R0, R4
52BBF8:  POP.W           {R8}
52BBFC:  POP             {R4-R7,PC}
