; =========================================================
; Game Engine Function: _ZN12CDummyObjectC2Ev
; Address            : 0x45278C - 0x4527A0
; =========================================================

45278C:  PUSH            {R7,LR}
45278E:  MOV             R7, SP
452790:  BLX             j__ZN6CDummyC2Ev; CDummy::CDummy(void)
452794:  LDR             R1, =(_ZTV12CDummyObject_ptr - 0x45279A)
452796:  ADD             R1, PC; _ZTV12CDummyObject_ptr
452798:  LDR             R1, [R1]; `vtable for'CDummyObject ...
45279A:  ADDS            R1, #8
45279C:  STR             R1, [R0]
45279E:  POP             {R7,PC}
