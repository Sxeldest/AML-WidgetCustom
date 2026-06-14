; =========================================================
; Game Engine Function: _ZNK34CTaskSimpleCarSetPedSlowDraggedOut5CloneEv
; Address            : 0x50716C - 0x5071AC
; =========================================================

50716C:  PUSH            {R4-R7,LR}
50716E:  ADD             R7, SP, #0xC
507170:  PUSH.W          {R11}
507174:  MOV             R6, R0
507176:  MOVS            R0, #word_10; this
507178:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50717C:  MOV             R4, R0
50717E:  LDRD.W          R5, R6, [R6,#8]
507182:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
507186:  LDR             R0, =(_ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr - 0x507192)
507188:  MOV             R1, R4
50718A:  STR             R6, [R4,#0xC]
50718C:  CMP             R5, #0
50718E:  ADD             R0, PC; _ZTV34CTaskSimpleCarSetPedSlowDraggedOut_ptr
507190:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarSetPedSlowDraggedOut ...
507192:  ADD.W           R0, R0, #8
507196:  STR             R0, [R4]
507198:  STR.W           R5, [R1,#8]!; CEntity **
50719C:  ITT NE
50719E:  MOVNE           R0, R5; this
5071A0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5071A4:  MOV             R0, R4
5071A6:  POP.W           {R11}
5071AA:  POP             {R4-R7,PC}
