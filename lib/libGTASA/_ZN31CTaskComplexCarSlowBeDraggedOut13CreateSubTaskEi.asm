; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOut13CreateSubTaskEi
; Address            : 0x504E78 - 0x504F64
; =========================================================

504E78:  PUSH            {R4-R7,LR}
504E7A:  ADD             R7, SP, #0xC
504E7C:  PUSH.W          {R8,R9,R11}
504E80:  MOV             R5, R0
504E82:  SUB.W           R0, R1, #0x330; switch 19 cases
504E86:  MOVS            R4, #0
504E88:  CMP             R0, #0x12
504E8A:  BHI.W           def_504E8E; jumptable 00504E8E default case, cases 817-820,823-833
504E8E:  TBB.W           [PC,R0]; switch jump
504E92:  DCB 0xA; jump table for switch statement
504E93:  DCB 0x65
504E94:  DCB 0x65
504E95:  DCB 0x65
504E96:  DCB 0x65
504E97:  DCB 0x20
504E98:  DCB 0x38
504E99:  DCB 0x65
504E9A:  DCB 0x65
504E9B:  DCB 0x65
504E9C:  DCB 0x65
504E9D:  DCB 0x65
504E9E:  DCB 0x65
504E9F:  DCB 0x65
504EA0:  DCB 0x65
504EA1:  DCB 0x65
504EA2:  DCB 0x65
504EA3:  DCB 0x65
504EA4:  DCB 0x4A
504EA5:  ALIGN 2
504EA6:  MOVS            R0, #off_18; jumptable 00504E8E case 816
504EA8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504EAC:  LDRD.W          R6, R8, [R5,#0xC]
504EB0:  MOV             R4, R0
504EB2:  LDRB            R5, [R5,#0x14]
504EB4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504EB8:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x504EC6)
504EBA:  EOR.W           R1, R5, #1
504EBE:  STR.W           R8, [R4,#0xC]
504EC2:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
504EC4:  STRB            R1, [R4,#0x10]
504EC6:  MOVS            R1, #0; unsigned int
504EC8:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
504ECA:  STRB            R1, [R4,#0x15]
504ECC:  STR.W           R1, [R4,#0x11]
504ED0:  B               loc_504F1A
504ED2:  MOVS            R0, #dword_20; jumptable 00504E8E case 821
504ED4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504ED8:  LDRD.W          R6, R8, [R5,#0xC]
504EDC:  MOV             R4, R0
504EDE:  LDR.W           R9, [R5,#0x18]
504EE2:  LDRB            R5, [R5,#0x14]
504EE4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504EE8:  LDR             R0, =(_ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr - 0x504EF2)
504EEA:  MOVS            R1, #0; unsigned int
504EEC:  STRB            R1, [R4,#8]
504EEE:  ADD             R0, PC; _ZTV30CTaskSimpleCarSlowBeDraggedOut_ptr
504EF0:  STR             R1, [R4,#0xC]
504EF2:  STR.W           R8, [R4,#0x14]
504EF6:  STRB            R5, [R4,#0x18]
504EF8:  STRB            R1, [R4,#0x19]
504EFA:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSlowBeDraggedOut ...
504EFC:  STR.W           R9, [R4,#0x1C]
504F00:  B               loc_504F48
504F02:  MOVS            R0, #word_10; jumptable 00504E8E case 822
504F04:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504F08:  MOV             R4, R0
504F0A:  LDRD.W          R6, R5, [R5,#0xC]
504F0E:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504F12:  LDR             R0, =(_ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr - 0x504F1A)
504F14:  STR             R5, [R4,#0xC]
504F16:  ADD             R0, PC; _ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr
504F18:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedSlowDraggedOut ...
504F1A:  MOV             R1, R4
504F1C:  ADDS            R0, #8
504F1E:  STR             R0, [R4]
504F20:  STR.W           R6, [R1,#8]!; unsigned int
504F24:  B               loc_504F52
504F26:  MOVS            R0, #dword_1C; jumptable 00504E8E case 834
504F28:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504F2C:  LDRD.W          R6, R8, [R5,#0xC]
504F30:  MOV             R4, R0
504F32:  LDR             R5, [R5,#0x18]
504F34:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504F38:  LDR             R0, =(_ZTV21CTaskSimpleCarFallOut_ptr - 0x504F42)
504F3A:  MOVS            R1, #0
504F3C:  STRB            R1, [R4,#8]
504F3E:  ADD             R0, PC; _ZTV21CTaskSimpleCarFallOut_ptr
504F40:  STR             R1, [R4,#0xC]
504F42:  STRD.W          R8, R5, [R4,#0x14]
504F46:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarFallOut ...
504F48:  MOV             R1, R4
504F4A:  ADDS            R0, #8
504F4C:  STR             R0, [R4]
504F4E:  STR.W           R6, [R1,#0x10]!; CEntity **
504F52:  CMP             R6, #0
504F54:  ITT NE
504F56:  MOVNE           R0, R6; this
504F58:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
504F5C:  MOV             R0, R4; jumptable 00504E8E default case, cases 817-820,823-833
504F5E:  POP.W           {R8,R9,R11}
504F62:  POP             {R4-R7,PC}
