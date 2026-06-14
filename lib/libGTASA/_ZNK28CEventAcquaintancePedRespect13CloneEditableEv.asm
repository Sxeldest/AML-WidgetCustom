; =========================================================
; Game Engine Function: _ZNK28CEventAcquaintancePedRespect13CloneEditableEv
; Address            : 0x4C253C - 0x4C255A
; =========================================================

4C253C:  PUSH            {R4,R6,R7,LR}
4C253E:  ADD             R7, SP, #8
4C2540:  MOV             R4, R0
4C2542:  MOVS            R0, #dword_14; this
4C2544:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
4C2548:  LDR             R1, [R4,#0x10]; CPed *
4C254A:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
4C254E:  LDR             R1, =(_ZTV28CEventAcquaintancePedRespect_ptr - 0x4C2554)
4C2550:  ADD             R1, PC; _ZTV28CEventAcquaintancePedRespect_ptr
4C2552:  LDR             R1, [R1]; `vtable for'CEventAcquaintancePedRespect ...
4C2554:  ADDS            R1, #8
4C2556:  STR             R1, [R0]
4C2558:  POP             {R4,R6,R7,PC}
