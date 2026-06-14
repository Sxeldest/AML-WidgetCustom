; =========================================================
; Game Engine Function: _ZN31CTaskComplexCarSlowBeDraggedOut17CreateNextSubTaskEP4CPed
; Address            : 0x504F74 - 0x505024
; =========================================================

504F74:  PUSH            {R4-R7,LR}
504F76:  ADD             R7, SP, #0xC
504F78:  PUSH.W          {R8,R9,R11}
504F7C:  MOV             R5, R0
504F7E:  LDRB.W          R0, [R1,#0x485]
504F82:  LSLS            R0, R0, #0x1F
504F84:  BEQ             loc_504FD6
504F86:  LDR.W           R0, [R1,#0x590]
504F8A:  CBZ             R0, loc_504FD6
504F8C:  LDR             R0, [R5,#8]
504F8E:  LDR             R1, [R0]
504F90:  LDR             R1, [R1,#0x14]
504F92:  BLX             R1
504F94:  MOVW            R1, #0x342; unsigned int
504F98:  MOVS            R4, #0
504F9A:  CMP             R0, R1
504F9C:  BEQ             loc_504FE0
504F9E:  MOVW            R1, #0x335; unsigned int
504FA2:  CMP             R0, R1
504FA4:  BNE             loc_504FD8
504FA6:  MOVS            R0, #word_10; this
504FA8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504FAC:  MOV             R4, R0
504FAE:  LDRD.W          R6, R5, [R5,#0xC]
504FB2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504FB6:  LDR             R0, =(_ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr - 0x504FC2)
504FB8:  MOV             R1, R4
504FBA:  STR             R5, [R4,#0xC]
504FBC:  CMP             R6, #0
504FBE:  ADD             R0, PC; _ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr
504FC0:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedSlowDraggedOut ...
504FC2:  ADD.W           R0, R0, #8
504FC6:  STR             R0, [R4]
504FC8:  STR.W           R6, [R1,#8]!; CEntity **
504FCC:  BEQ             loc_504FD8
504FCE:  MOV             R0, R6; this
504FD0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
504FD4:  B               loc_504FD8
504FD6:  MOVS            R4, #0
504FD8:  MOV             R0, R4
504FDA:  POP.W           {R8,R9,R11}
504FDE:  POP             {R4-R7,PC}
504FE0:  MOVS            R0, #off_18; this
504FE2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
504FE6:  LDRD.W          R8, R9, [R5,#0xC]
504FEA:  MOV             R6, R0
504FEC:  LDRB            R5, [R5,#0x14]
504FEE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
504FF2:  LDR             R0, =(_ZTV23CTaskSimpleCarSetPedOut_ptr - 0x505004)
504FF4:  EOR.W           R1, R5, #1
504FF8:  STR.W           R9, [R6,#0xC]
504FFC:  CMP.W           R8, #0
505000:  ADD             R0, PC; _ZTV23CTaskSimpleCarSetPedOut_ptr
505002:  STRB            R1, [R6,#0x10]
505004:  MOV             R1, R6
505006:  STRB            R4, [R6,#0x15]
505008:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedOut ...
50500A:  STR.W           R4, [R6,#0x11]
50500E:  ADD.W           R0, R0, #8
505012:  STR             R0, [R6]
505014:  STR.W           R8, [R1,#8]!; CEntity **
505018:  ITT NE
50501A:  MOVNE           R0, R8; this
50501C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
505020:  MOV             R4, R6
505022:  B               loc_504FD8
