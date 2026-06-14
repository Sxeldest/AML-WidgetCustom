; =========================================================
; Game Engine Function: _ZN9CDummyPedC2Ev
; Address            : 0x49ED2C - 0x49ED40
; =========================================================

49ED2C:  PUSH            {R7,LR}
49ED2E:  MOV             R7, SP
49ED30:  BLX             j__ZN6CDummyC2Ev; CDummy::CDummy(void)
49ED34:  LDR             R1, =(_ZTV9CDummyPed_ptr - 0x49ED3A)
49ED36:  ADD             R1, PC; _ZTV9CDummyPed_ptr
49ED38:  LDR             R1, [R1]; `vtable for'CDummyPed ...
49ED3A:  ADDS            R1, #8
49ED3C:  STR             R1, [R0]
49ED3E:  POP             {R7,PC}
