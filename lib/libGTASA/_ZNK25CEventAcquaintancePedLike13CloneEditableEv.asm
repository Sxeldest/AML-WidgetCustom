; =========================================================
; Game Engine Function: _ZNK25CEventAcquaintancePedLike13CloneEditableEv
; Address            : 0x4C2578 - 0x4C2596
; =========================================================

4C2578:  PUSH            {R4,R6,R7,LR}
4C257A:  ADD             R7, SP, #8
4C257C:  MOV             R4, R0
4C257E:  MOVS            R0, #dword_14; this
4C2580:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4C2584:  LDR             R1, [R4,#0x10]; CPed *
4C2586:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4C258A:  LDR             R1, =(_ZTV25CEventAcquaintancePedLike_ptr - 0x4C2590)
4C258C:  ADD             R1, PC; _ZTV25CEventAcquaintancePedLike_ptr
4C258E:  LDR             R1, [R1]; `vtable for'CEventAcquaintancePedLike ...
4C2590:  ADDS            R1, #8
4C2592:  STR             R1, [R0]
4C2594:  POP             {R4,R6,R7,PC}
