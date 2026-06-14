; =========================================================
; Game Engine Function: _ZNK25CEventAcquaintancePedHate13CloneEditableEv
; Address            : 0x2FCE2C - 0x2FCE4A
; =========================================================

2FCE2C:  PUSH            {R4,R6,R7,LR}
2FCE2E:  ADD             R7, SP, #8
2FCE30:  MOV             R4, R0
2FCE32:  MOVS            R0, #dword_14; this
2FCE34:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
2FCE38:  LDR             R1, [R4,#0x10]; CPed *
2FCE3A:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
2FCE3E:  LDR             R1, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x2FCE44)
2FCE40:  ADD             R1, PC; _ZTV25CEventAcquaintancePedHate_ptr
2FCE42:  LDR             R1, [R1]; `vtable for'CEventAcquaintancePedHate ...
2FCE44:  ADDS            R1, #8
2FCE46:  STR             R1, [R0]
2FCE48:  POP             {R4,R6,R7,PC}
