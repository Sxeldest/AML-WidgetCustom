; =========================================================
; Game Engine Function: _ZN23CTaskSimpleDoHandSignalC2Ev
; Address            : 0x519D88 - 0x519DA0
; =========================================================

519D88:  PUSH            {R7,LR}; Alternative name is 'CTaskSimpleDoHandSignal::CTaskSimpleDoHandSignal(void)'
519D8A:  MOV             R7, SP
519D8C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
519D90:  LDR             R1, =(_ZTV23CTaskSimpleDoHandSignal_ptr - 0x519D9A)
519D92:  MOVS            R2, #0
519D94:  STRB            R2, [R0,#8]
519D96:  ADD             R1, PC; _ZTV23CTaskSimpleDoHandSignal_ptr
519D98:  LDR             R1, [R1]; `vtable for'CTaskSimpleDoHandSignal ...
519D9A:  ADDS            R1, #8
519D9C:  STR             R1, [R0]
519D9E:  POP             {R7,PC}
