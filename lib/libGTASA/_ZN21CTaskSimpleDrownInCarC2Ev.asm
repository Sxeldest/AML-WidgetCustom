; =========================================================
; Game Engine Function: _ZN21CTaskSimpleDrownInCarC2Ev
; Address            : 0x4EB4D0 - 0x4EB4E4
; =========================================================

4EB4D0:  PUSH            {R7,LR}; Alternative name is 'CTaskSimpleDrownInCar::CTaskSimpleDrownInCar(void)'
4EB4D2:  MOV             R7, SP
4EB4D4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EB4D8:  LDR             R1, =(_ZTV21CTaskSimpleDrownInCar_ptr - 0x4EB4DE)
4EB4DA:  ADD             R1, PC; _ZTV21CTaskSimpleDrownInCar_ptr
4EB4DC:  LDR             R1, [R1]; `vtable for'CTaskSimpleDrownInCar ...
4EB4DE:  ADDS            R1, #8
4EB4E0:  STR             R1, [R0]
4EB4E2:  POP             {R7,PC}
