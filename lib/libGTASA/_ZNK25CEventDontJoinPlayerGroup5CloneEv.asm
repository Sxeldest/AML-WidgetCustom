; =========================================================
; Game Engine Function: _ZNK25CEventDontJoinPlayerGroup5CloneEv
; Address            : 0x4CA74C - 0x4CA780
; =========================================================

4CA74C:  PUSH            {R4,R5,R7,LR}
4CA74E:  ADD             R7, SP, #8
4CA750:  MOV             R5, R0
4CA752:  MOVS            R0, #word_10; this
4CA754:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4CA758:  MOV             R4, R0
4CA75A:  LDR             R5, [R5,#0xC]
4CA75C:  BLX             j__ZN6CEventC2Ev; CEvent::CEvent(void)
4CA760:  LDR             R0, =(_ZTV25CEventDontJoinPlayerGroup_ptr - 0x4CA76A)
4CA762:  MOV             R1, R4
4CA764:  CMP             R5, #0
4CA766:  ADD             R0, PC; _ZTV25CEventDontJoinPlayerGroup_ptr
4CA768:  LDR             R0, [R0]; `vtable for'CEventDontJoinPlayerGroup ...
4CA76A:  ADD.W           R0, R0, #8
4CA76E:  STR.W           R0, [R1],#0xC; CEntity **
4CA772:  STR             R5, [R1]
4CA774:  ITT NE
4CA776:  MOVNE           R0, R5; this
4CA778:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4CA77C:  MOV             R0, R4
4CA77E:  POP             {R4,R5,R7,PC}
